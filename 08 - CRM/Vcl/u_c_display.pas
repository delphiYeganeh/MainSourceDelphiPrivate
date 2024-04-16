
(*$r+*)

unit u_c_display;
  interface
    uses SysUtils, Classes;
                             type c_basic_object= class
                           m_name: String;

                           destructor Destroy; Override;

                           constructor create_basic_object(p_name: String); Virtual;
                           constructor construct_empty;
                           procedure display_abstract(p_texte: string);
                         end; // c_basic_object


    type c_display= class(c_basic_object)
                      public
                        m_do_display: Boolean;
                        m_indentation: Integer;
                        m_current_string: String;
                        m_c_strings: tStrings;
                        // -- todo: implement
                        m_display_line_max: Integer;
                        m_display_indentation_max: Integer;


                        Constructor create_display(p_name: String; p_c_strings: tStrings); Virtual;

                        procedure clear_display;

                        procedure display_string(p_text: String);
                        procedure display(p_text: String);
                        procedure display_line;
                        procedure force_display(p_text: String);

                        procedure display_strings(p_c_strings: tStrings);

                        function f_save_display: Boolean;
                        procedure restore_display(p_display: Boolean);

                        procedure stop(p_text: String);
                        procedure display_bug(p_text: String);
                        procedure display_bug_stop(p_text: String);
                        procedure display_bug_halt(p_text: String);
                        // -- todo implement
                        // procedure push_stop_display(p_count: Integer);
                        // procedure pop_stop_display;

                        Destructor Destroy; Override;
                    end;

    procedure initialize_display(p_c_strings: tStrings);

    procedure clear_display;

    procedure display_string(p_text: String);
    procedure display(p_text: String);
    procedure display_line;
    procedure force_display(p_text: String);
    procedure display_strings(p_c_strings: tStrings);

    function f_save_display: Boolean;
    procedure stop_display;
    procedure start_display;
    procedure restore_display(p_display: Boolean);

    procedure push_stop_display(p_count: Integer);
    procedure pop_display;

    procedure stop(p_text: String);
    procedure display_bug(p_text: String);
    procedure display_bug_stop(p_text: String);
    procedure display_bug_halt(p_text: String);

    procedure change_indentation(p_delta: Integer);
    procedure set_indentation(p_indentation: Integer);
    function f_indentation: Integer;

    // -- THE global display, used by the non-object calls
    var g_c_display: c_display= Nil;

  implementation
    uses Windows, Dialogs;

    constructor c_basic_object.create_basic_object(p_name: String);
      begin
        m_name:= p_name;
      end; // create_basic_object

    constructor c_basic_object.construct_empty;
      begin
      end; // construct_empty

    procedure c_basic_object.display_abstract(p_texte: string);
      begin
        display_bug_halt(m_name+ ' '+ p_texte+ ': abstract procedure');
      end; // display_abstract

    destructor c_basic_object.Destroy;
      begin
      end; // Destroy

    Constructor c_display.create_display(p_name: String; p_c_strings: tStrings);
      begin
        Inherited ;

        m_c_strings:= p_c_strings;
        m_do_display:= True;

      end; // create_display

    procedure c_display.clear_display;
      begin
        m_c_strings.Clear;
      end; // clear_display

    procedure c_display.display_string(p_text: String);
        // -- add this string to the current one
      begin
        m_current_string:= m_current_string+ p_text;
      end; // display_string

    procedure c_display.display(p_text: String);
      var l_text: String;
          l_length: Integer;
      begin
        if not m_do_display
          then exit;

        l_length:= Length(p_text);
        if (l_length> 0) and (p_text[1]= '<')
          then begin
              dec(m_indentation, 2);
              if m_indentation< 0
                then begin
                    display('*** negative indent');
                    m_indentation:= 0;
                  end;
            end;

  
        // -- compute the indentation, the current strings, and this parameter
        l_text:= l_text+ m_current_string+ p_text;

        // -- add the result to the tStrings
        m_c_strings.Add(l_text);

        // -- flush to the log

        if (l_length> 0) and (p_text[1]= '>')
          then inc(m_indentation, 2);

        m_current_string:= '';
      end; // display

    procedure c_display.display_line;
        // -- a blank line
      begin
        display('');
      end; // display_line

    procedure c_display.force_display(p_text: String);
      begin
        display(p_text);
      end; // force_display
        
    procedure c_display.display_strings(p_c_strings: tStrings);
      var l_line: Integer;
      begin
        for l_line:= 0 to p_c_strings.Count- 1 do
          display(p_c_strings[l_line]);
      end; // display_strings

    // -- toggle display

    function c_display.f_save_display: Boolean;
      begin
        Result:= m_do_display;
        m_do_display:= True;
      end; // f_save_display

    procedure c_display.restore_display(p_display: Boolean);
      begin
        m_do_display:= p_display;
      end; // restore_display

    procedure push_stop_display(p_count: Integer);
      begin
      end; // push_stop_display

    procedure pop_display;
      begin
      end; // pop_display

    // -- bugs, warnings

    procedure c_display.stop(p_text: String);
      var l_save_display: Boolean;
      begin
        l_save_display:= f_save_display;
        display('*** Stop '+ p_text);
        ShowMessage(p_text);
        restore_display(l_save_display);
      end; // stop

    procedure c_display.display_bug(p_text: String);
      var l_save_display: Boolean;
      begin
        l_save_display:= f_save_display;
        display('*** BUG: '+ p_text);
        restore_display(l_save_display);
      end; // display_bug

    procedure c_display.display_bug_stop(p_text: String);
      begin
        stop('BUG '+ p_text);
      end; // display_bug_stop

    procedure c_display.display_bug_halt(p_text: String);
      begin
        display_bug(p_text);
        stop('BUG '+ p_text+ '. HALT');
        Halt(1);
      end; // display_bug_halt

    // -- free

    Destructor c_display.Destroy;
      begin
        Inherited;
      end; // Destroy

    // -- the global procedures

    procedure initialize_display(p_c_strings: tStrings);
      begin
        if Assigned(g_c_display)
          then g_c_display.Free;

        g_c_display:= c_display.create_display('dispay', p_c_strings);
      end; // initialize_display



    procedure clear_display;
      begin
        if Assigned(g_c_display)
          then g_c_display.clear_display;
      end; // clear_display

    procedure display_string(p_text: String);
      begin
        if Assigned(g_c_display)
          then g_c_display.display_string(p_text);
      end; // display_string

    procedure display(p_text: String);
      begin
        if Assigned(g_c_display)
          then g_c_display.display(p_text);
      end; // display

    procedure display_line;
      begin
        if Assigned(g_c_display)
          then g_c_display.display_line;
      end; // display_line

    procedure display_strings(p_c_strings: tStrings);
      begin
        if Assigned(g_c_display)
          then g_c_display.display_strings(p_c_strings);
      end; // display_strings

    function f_save_display: Boolean;
      begin
        if Assigned(g_c_display)
          then Result:= g_c_display.f_save_display
          else Result:= False;
      end; // f_save_display

    procedure stop_display;
      begin
        if Assigned(g_c_display)
          then g_c_display.m_do_display:= False;
      end; // stop_display

    procedure start_display;
      begin
        if Assigned(g_c_display)
          then g_c_display.m_do_display:= True;
      end; // start_display

    procedure force_display(p_text: String);
      begin
        if Assigned(g_c_display)
          then g_c_display.force_display(p_text);
      end; // force_display

    procedure restore_display(p_display: Boolean);
      begin
        if Assigned(g_c_display)
          then g_c_display.restore_display(p_display);
      end; // restore_display

    procedure stop(p_text: String);
      begin
        if Assigned(g_c_display)
          then g_c_display.stop(p_text);
      end; // stop

    procedure display_bug(p_text: String);
      begin
        if Assigned(g_c_display)
          then g_c_display.display_bug(p_text);
      end; // display_bug

    procedure display_bug_stop(p_text: String);
      begin
        if Assigned(g_c_display)
          then g_c_display.display_bug_stop(p_text);
      end; // display_bug_stop

    procedure display_bug_halt(p_text: String);
      begin
        if Assigned(g_c_display)
          then g_c_display.display_bug_halt(p_text);
      end; // display_bug_halt

    procedure change_indentation(p_delta: Integer);
      begin
        if Assigned(g_c_display)
          then Inc(g_c_display.m_indentation, p_delta);
      end; // change_indentation

    procedure set_indentation(p_indentation: Integer);
      begin
        if Assigned(g_c_display)
          then g_c_display.m_indentation:= p_indentation;
      end; // set_indentation

    function f_indentation: Integer;
      begin
        if Assigned(g_c_display)
          then Result:= g_c_display.m_indentation
          else Result:= 0;
      end; // f_indentation

   end.
