(*$r+*)

unit u_c_process_list;
  interface
    uses Classes, Windows;

type
 c_basic_object= class
                           m_name: String;

                           destructor Destroy; Override;

                           constructor create_basic_object(p_name: String); Virtual;
                           constructor construct_empty;
                           procedure display_abstract(p_texte: string);
                         end; // c_basic_object



         c_process= // one "process"
                    Class(c_basic_object)
                      m_main_module_name: String;

                      m_process_id: Integer;
                      m_module_count: Integer;


                      m_c_module_list: tStringList;
                      m_module_handle_array: array of Integer;

                      m_c_memory_mapped_file_list: tStringList;

                      Constructor create_process(p_name: String);

                      function f_display_process: String;

                      function f_module_count: Integer;
                      function f_c_self: c_process;
                      function f_index_of(p_module_name: String): Integer;


                      Destructor Destroy; Override;
                    end; // c_process

         c_process_list= // "process" list
                         Class(c_basic_object)
                           m_c_process_list: tStringList;

                           Constructor create_process_list(p_name: String);

                           function f_process_count: Integer;
                           function f_c_process(p_process_index: Integer): c_process;
                           function f_index_of(p_process_index: String): Integer;
                           procedure display_process_list;
                           function f_c_add_process(p_process_index: String): c_process;

                           procedure get_nt_process_list;

                           Destructor Destroy; Override;
                         end; // c_process_list

  implementation
    uses SysUtils, psApi, u_c_display,u_display_hex_2;


    Constructor c_process.create_process(p_name: String);
      begin
        Inherited create_basic_object(p_name);

        m_c_module_list:= tStringList.Create;
        m_c_memory_mapped_file_list:= tStringList.Create;
      end; // create_process

    function c_process.f_display_process: String;
      begin
        Result:= Format('%-10s ', [m_name]);
      end; // f_display_process
    function c_process_list.f_c_add_process(p_process_index: String): c_process;
      begin
        Result:= f_c_process(m_c_process_list.AddObject(p_process_index, c_process.create_process(p_process_index)));
      end; // f_c_add_process}

    function c_process.f_c_self: c_process;
      begin
        Result:= Self;
      end; // f_c_self

    function c_process.f_module_count: Integer;
      begin
        Result:= m_c_module_list.Count;
      end; // f_module_count


    function c_process.f_index_of(p_module_name: String): Integer;
      begin
        Result:= m_c_module_list.IndexOf(p_module_name);
      end; // f_index_of

    Destructor c_process.Destroy;
      var l_module_index: Integer;
          l_memory_mapped_file_index: Integer;
      begin
        m_c_module_list.Free;

        m_c_memory_mapped_file_list.Free;

        InHerited;
      end; // Destroy

    // -- c_process_list

    Constructor c_process_list.create_process_list(p_name: String);
      begin
        Inherited create_basic_object(p_name);

        m_c_process_list:= tStringList.Create;
      end; // create_process_line

    function c_process_list.f_process_count: Integer;
      begin
        Result:= m_c_process_list.Count;
      end; // f_process_count

    function c_process_list.f_c_process(p_process_index: Integer): c_process;
      begin
        Result:= c_process(m_c_process_list.Objects[p_process_index]);
      end; //  f_c_process

    function c_process_list.f_index_of(p_process_index: String): Integer;
      begin
        Result:= m_c_process_list.IndexOf(p_process_index);
      end; // f_index_of


    procedure c_process_list.display_process_list;
      var l_process_index: Integer;
      begin
        display(m_name+ ' '+ IntToStr(f_process_count));

        for l_process_index:= 0 to f_process_count- 1 do
          display(f_c_process(l_process_index).f_display_process);
      end; // display_process_list

    procedure c_process_list.get_nt_process_list;

      procedure build_process_list;


        procedure build_module_list(p_process_handle: tHandle; p_c_process: c_process);
          var l_module_count_x_4: DWORD;
              l_module_name: array[0..MAX_PATH- 1] of char;

              l_module_index: Integer;
              l_module_info: TModuleInfo;
          begin
            with p_c_process do
            begin
              SetLength(m_module_handle_array, m_module_count);
              EnumProcessModules(p_process_handle, @m_module_handle_array[0], 4* m_module_count, l_module_count_x_4);

              for l_module_index:= 0 to m_module_count- 1 do
              begin
                GetModuleFileNameExA(p_process_handle, m_module_handle_array[l_module_index], l_module_name, SizeOf(l_module_name));


              end; // for l_module_index
            end; //  with p_c_process
          end; // build_module_list

        const k_process_id_array_max= 1000;
        var l_process_index: Integer;
            // -- 4x process count
            l_process_id_array_size: DWORD;
            l_process_id_array: array[0..1000] of Integer;
            l_process_name: array[0..MAX_PATH- 1] of char;
            l_process_handle: THandle;

            l_module_handle: HMODULE;
            l_module_count_x_4: DWORD;
            l_module_name: array[0..MAX_PATH- 1] of char;

            l_c_process: c_process;
            l_priority: String;

        begin // build_process_list
          if not EnumProcesses(@l_process_id_array, k_process_id_array_max* 4, l_process_id_array_size)
            then raise Exception.Create('PSAPI.DLL_not_found');

          display('process_count_x_4 '+ f_integer_to_hex(l_process_id_array_size));

          for l_process_index:= 0 to (l_process_id_array_size div SizeOf(Integer)- 1) do
          begin
            l_process_handle:= OpenProcess(PROCESS_QUERY_INFORMATION or PROCESS_VM_READ, FALSE,
                l_process_id_array[l_process_index]);

            if l_process_handle<> 0
              then begin
                  if GetModuleFileNameExA(l_process_handle, 0, l_process_name, SizeOf(l_process_name))> 0
                    then begin
                        l_c_process:= f_c_add_process(ExtractFileName(l_process_name));

                        // -- get the first module, (2nd parameter: only 1 handle), which is the process itself
                        // --   as well as the module count
                        if EnumProcessModules(l_process_handle, @l_module_handle, SizeOf(l_module_handle), l_module_count_x_4)
                          then begin
                              display(Format('process %4d, modules %4d ', [l_process_index, l_module_count_x_4 div 4]));

                              with l_c_process do
                              begin
                                GetModuleFileNameExA(l_process_handle, l_module_handle, l_module_name, SizeOf(l_module_name));

                                m_main_module_name:= ExtractFileName(l_process_name);
                                m_process_id:= l_process_id_array[l_process_index];



                                m_module_count:= l_module_count_x_4 div 4;

                                if m_module_count> 0
                                  then build_module_list(l_process_handle, l_c_process);

                              end; // with l_c_process
                            end; // could enumerate the first module
                      end; // has found the process

                  CloseHandle(l_process_handle);
                end; // process_handle> 0
          end; // for l_process_index
        end; // build_process_list

      begin // get_nt_process_list
        build_process_list;
      end; // get_nt_process_list

    Destructor c_process_list.Destroy;
      var l_process_index: Integer;
      begin
        for l_process_index:= 0 to f_process_count- 1 do
          f_c_process(l_process_index).Free;
        m_c_process_list.Free;

        Inherited;
      end; // Destroy
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

    begin // u_c_process_list
    end. // u_c_process_list

