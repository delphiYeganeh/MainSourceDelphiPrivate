// 020 u_display_hex_2
// 12 may 2005

// -- (C) Felix John COLIBRI 2007
// -- documentation: http://www.felix-colibri.com

(*$r+*)

unit u_display_hex_2;
  interface
    uses classes, u_c_display;

    const k_tabulation= chr(9);
          k_line_feed= char(10);
          k_return= chr(13);
          k_back_space= chr(8);
          k_escape= chr(27);

          k_return_line_feed= k_return+ k_line_feed;
          k_new_line= k_return_line_feed;
          k_digits= ['0'..'9'];
          k_blanks= [k_tabulation, ' '];
          k_letters= ['a'..'z', 'A'..'Z'];
          k_blanks_returns= k_blanks+ [k_return, k_line_feed];
          k_upper_hex_digits= k_digits+ ['A'..'F'];

          k_pascal_identifier_start= k_letters+ ['_'];
          k_pascal_identifier_middle= k_pascal_identifier_start+ k_digits;

          k_ord_return= 13;
          k_ord_linefeed= 10;
          k_ord_line_feed= 10;

     k_word_max= 65534;

    type t_pt_byte= ^Byte;
         t_pt_integer= ^Integer;

         t_bytes= array[0..0] of Byte;
         t_pt_bytes= ^t_bytes;
         t_pt_word= ^Word;

         t_oa_bytes= array of Byte;

         t_handle_procedure= procedure(p_pt: Pointer);
         t_set_or_char= Set Of Char;

         t_byte_date= packed record
                               m_day, m_month, m_year: byte;
                             end;
         t_date_4= packed record
                            m_day, m_month: byte;
                            m_year: Integer;
                          end;

    type t_characters= array[0..0] of Char;
         t_pt_characters= ^t_characters;

         t_pt_character= ^Char;
         t_oa_characters= array of Char;

         t_set_of_characters= Set of Char;
         t_set_of_char= Set of Char;


    type t_hex_type= (e_hex_address, e_hex_offset, e_hex_hex,
            e_hex_ascii,
            e_hex_pure_ascii, // 32..127
            e_no_8_separator // no space each modulo 8
            );
         t_set_of_hex_type= Set of t_hex_type;

    const // -- display_buffer_hex
          k_offset_hex_ascii= [e_hex_offset, e_hex_hex, e_hex_ascii];
          // -- sniffer: 32..127
          k_offset_hex_pure_ascii= [e_hex_offset, e_hex_hex, e_hex_pure_ascii];
          k_hex= [e_hex_hex];
          k_ascii= [e_hex_ascii];
          k_hex_ascii= [e_hex_hex, e_hex_ascii];
          k_hex_address= [e_hex_address, e_hex_hex, e_hex_ascii];
          k_hex_address_hex= [e_hex_address, e_hex_hex];

          k_hex_default= k_offset_hex_ascii;

    function f_display_hex_offset(p_pt: Pointer; p_offset, p_count, p_columns: Integer;
        p_set_of_hex_type: t_set_of_hex_type): String;
    function f_display_hex(p_pt: Pointer; p_count, p_columns: Integer;
        p_set_of_hex_type: t_set_of_hex_type): String;

    function f_cardinal_to_hex(p_cardinal: Cardinal): String;
    function f_integer_to_hex(p_integer: Integer): String;
    function f_small_integer_to_hex(p_small_int: SmallInt): String;
    function f_byte_to_hex(p_byte: Byte): String;

    function f_display_file_hex(p_columns: Integer;
        p_set_of_hex_type: t_set_of_hex_type; p_full_file_name: String): String;
    function f_lower_case(p_character: Char): Char;
    function f_set_of_characters_to_string(p_set_of_characters: t_set_of_characters): String;

  implementation
    uses SysUtils;


    function f_lower_case(p_character: Char): Char;
      begin
        if p_character in ['A'..'Z']
          then Result:= Chr(Ord(p_character)+ 32)
          else Result:= p_character;
      end; // f_lower_case

    function f_set_of_characters_to_string(p_set_of_characters: t_set_of_characters): String;
      var l_character: Char;
      begin
        Result:= '';
        for l_character:= chr(0) to chr(255) do
          if l_character in p_set_of_characters
            then Result:= Result+ l_character;
      end; // f_set_of_characters_to_string

    function f_display_hex_offset(p_pt: Pointer; p_offset, p_count, p_columns: Integer;
        p_set_of_hex_type: t_set_of_hex_type): String;
        // -- display starting at p_pt+ p_offset, p_count bytes
      var l_start_of_line_address: Integer;
          l_start_of_line_index: Integer;
          l_hexadecimal, l_ascii: String;

      procedure flush_line;
        begin
          if e_hex_address in p_set_of_hex_type
            then Result:= Result+ IntToHex(l_start_of_line_address, 4)+ ': ';
          if e_hex_offset in p_set_of_hex_type
            then Result:= Result+ IntToHex(p_offset+ l_start_of_line_index, 4)+ ': ';
          if e_hex_hex in p_set_of_hex_type
            then Result:= Result+ l_hexadecimal+ ' : ';
          if e_hex_ascii in p_set_of_hex_type
            then Result:= Result+ l_ascii;
          Result:= Result+ '<';
        end; // flush_line

      var l_index: Integer;
          l_column: Integer;
          l_byte: Byte;
          l_modulo, l_remainder: Integer;
          l_add_new_line: Boolean;

      begin // f_display_hex
        Result:= '';

        l_column:= 0;
        l_hexadecimal:= ''; l_ascii:= '';
        l_add_new_line:= False;

        l_start_of_line_address:= Integer(p_pt);
        l_start_of_line_index:= 0;

        // -- always start index at 0: no initial offset

        for l_index:= 0 to p_count- 1 do
        begin
          (*$r-*)
          l_byte:= t_pt_bytes(p_pt)^[p_offset+ l_index];
          (*$r+*)

          // -- the hex display
          l_hexadecimal:= l_hexadecimal+ IntToHex(l_byte, 2)+ ' ';

          // -- the ascii display
          case l_byte of
            0..31 : l_ascii:= l_ascii+ '.';
            else
              if e_hex_pure_ascii in p_set_of_hex_type
                then
                  if l_byte> 127
                    then l_ascii:= l_ascii+ '.'
                    else l_ascii:= l_ascii+ chr(l_byte)
                else l_ascii:= l_ascii+ chr(l_byte);
          end; // case

          Inc(l_column);

          // -- add a space each 8 coloumns
          if not (e_no_8_separator in p_set_of_hex_type)
            then
              if (l_column mod 8)= 0
                then begin
                    l_hexadecimal:= l_hexadecimal+ ' ';
                    l_ascii:= l_ascii+ ' ';
                  end;

          // -- flush result
          if p_columns= 0
            then display_bug_stop('p_columns 0');
            
          if ((l_index+ 1) mod p_columns)= 0
            then begin
                // -- add a new line after first line
                if l_add_new_line
                  then Result:= Result+ k_new_line
                  else l_add_new_line:= true;

                flush_line;

                l_hexadecimal:= ''; l_ascii:= ''; l_column:= 0;
                Inc(l_start_of_line_address, p_columns);
                Inc(l_start_of_line_index, p_columns);
              end;
        end; // for

        // -- if p_count mod p_columns= 0, everything has been flushed

        // -- finish the line up to the modulo p_colonnes
        l_modulo:= p_count mod p_columns;

        if l_modulo<> 0
          then begin
              l_remainder:= p_columns- l_modulo;
              for l_index:= 0 to l_remainder- 1 do
              begin
                l_ascii:= l_ascii+ '_';
                l_hexadecimal:= l_hexadecimal+ '___';

                Inc(l_column);
                if not (e_no_8_separator in p_set_of_hex_type)
                  then
                    if (l_column mod 8)= 0
                      then begin
                          l_hexadecimal:= l_hexadecimal+ ' ';
                          l_ascii:= l_ascii+ ' ';
                        end;
              end; // for

              if l_add_new_line
                then Result:= Result+ k_new_line;

              flush_line;
            end; // has broken lines
      end; // f_display_hex_offset

    function f_display_hex(p_pt: Pointer; p_count, p_columns: Integer;
        p_set_of_hex_type: t_set_of_hex_type): String;
      begin
        Result:= f_display_hex_offset(p_pt, 0, p_count, p_columns, p_set_of_hex_type);
      end; // f_display_hex

    // -- individual displays

    function f_cardinal_to_hex(p_cardinal: Cardinal): String;
      var l_index: Integer;
      begin
        Result:= IntToHex(p_cardinal, 4);
        for l_index:= Length(Result)+ 1 to 8 do
          Result:= '0'+ Result;
        Insert('.', Result, 5);
      end; // f_cardinal_to_hex

    function f_integer_to_hex(p_integer: Integer): String;
      var l_index: Integer;
      begin
        Result:= IntToHex(p_integer, 4);
        for l_index:= Length(Result)+ 1 to 8 do
          Result:= '0'+ Result;
        Insert('.', Result, 5);
      end; // f_integer_to_hex

    function f_small_integer_to_hex(p_small_int: SmallInt): String;
      var l_index: Integer;
      begin
        Result:= IntToHex(p_small_int, 2);
        for l_index:= Length(Result)+ 1 to 4 do
          Result:= '0'+ Result;
      end; // f_small_integer_to_hex

    function f_byte_to_hex(p_byte: Byte): String;
      begin
        Result:= IntToHex(p_byte, 1);
        if Length(Result)= 1
          then Result:= '0'+ Result;
      end; // f_byte_to_hex

    function f_display_file_hex(p_columns: Integer;
        p_set_of_hex_type: t_set_of_hex_type; p_full_file_name: String): String;
      var l_file: File;
          l_oa_bytes: Array of Byte;
          l_size: Integer;
      begin
        Result:= '';
        if not FileExists(p_full_file_name)
          then display_bug_halt('no '+ p_full_file_name);
        Assign(l_file, p_full_file_name);
        Reset(l_file, 1);
        l_size:= FileSize(l_file);
        display(IntToStr(l_size));
        SetLength(l_oa_bytes, l_size);
        BlockRead(l_file, l_oa_bytes[0], l_size);
        Close(l_file);
        Result:= f_display_hex(@ l_oa_bytes[0], l_size, p_columns, p_set_of_hex_type);
      end; // f_display_file_hex

    begin // u_display_hex_2
    end. // u_display_hex_2


















