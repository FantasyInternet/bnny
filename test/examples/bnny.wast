(module

  ;; imports

  (import "env" "pushFromMemory" (func $--ns0\_push_from_memory
      (param f64 )
      (param f64 )
      (result f64 ) ) )
  (import "env" "popToMemory" (func $--ns0\_pop_to_memory
      (param f64 )
      (result f64 ) ) )
  (import "env" "log" (func $--ns0\_log (result f64 ) ) )
  (import "env" "getInput" (func $--ns0\_get_input (result f64 ) ) )
  (import "env" "sendOutput" (func $--ns0\_send_output (result f64 ) ) )
  (import "env" "sendError" (func $--ns0\_send_error (result f64 ) ) )

  ;; memory

  (memory $-memory 2 )
  (data (i32.const 65536 ) "type" )
  (data (i32.const 65552 ) "count" )
  (data (i32.const 65568 ) "bin" )
  (data (i32.const 65584 ) "(" )
  (data (i32.const 65600 ) " at line " )
  (data (i32.const 65624 ) ", column " )
  (data (i32.const 65648 ) "!" )
  (data (i32.const 65664 ) "\0a" )
  (data (i32.const 65680 ) ";" )
  (data (i32.const 65696 ) ";)" )
  (data (i32.const 65712 ) ")" )
  (data (i32.const 65728 ) "\22" )
  (data (i32.const 65744 ) "\5c" )
  (data (i32.const 65760 ) "();\22" )

  ;; table

  (table $-table 0 anyfunc )

  ;; globals

  (global $ns1\~pos
    (mut i32 )
    (i32.const 0 ) )
  (global $ns2\error
    (mut i32 )
    (i32.const 0 ) )
  (global $ns2\src
    (mut i32 )
    (i32.const 0 ) )
  (global $ns2\pos
    (mut i32 )
    (i32.const 0 ) )
  (global $ns2\line
    (mut i32 )
    (i32.const 0 ) )
  (global $ns2\column
    (mut i32 )
    (i32.const 0 ) )
  (global $ns2\sections
    (mut i32 )
    (i32.const 0 ) )

  ;; functions

  (func $ns0\_push_from_memory
    (param $p0 i32 )
    (param $p1 i32 )
    (result i32 )
    (call $--ns0\_push_from_memory
      (call $-f64 (call $-to_number (get_local $p0 ) ) )
      (call $-f64 (call $-to_number (get_local $p1 ) ) ) )
    (call $-number ) )
  (func $ns0\_pop_to_memory
    (param $p0 i32 )
    (result i32 )
    (call $--ns0\_pop_to_memory (call $-f64 (call $-to_number (get_local $p0 ) ) ) )
    (call $-number ) )
  (func $ns0\_log
    (result i32 )
    (call $--ns0\_log )
    (call $-number ) )
  (func $ns0\_get_input
    (result i32 )
    (call $--ns0\_get_input )
    (call $-number ) )
  (func $ns0\_send_output
    (result i32 )
    (call $--ns0\_send_output )
    (call $-number ) )
  (func $ns0\_send_error
    (result i32 )
    (call $--ns0\_send_error )
    (call $-number ) )

  ;; function $ns0\log

  (func $ns0\log
    (param $ns0\msg i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop (call $ns0\_push_from_memory
          (call $ns1\address_of (get_local $ns0\msg ) )
          (call $ns1\size_of (get_local $ns0\msg ) ) ) )
      (drop (call $ns0\_log ) )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns0\get_input

  (func $ns0\get_input
    (result i32 )
    (local $ns0\input i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop
        (set_local $ns0\input (call $ns1\binary_string (call $ns0\_get_input ) ) )
        (get_local $ns0\input ) )
      (drop (call $ns0\_pop_to_memory (call $ns1\address_of (get_local $ns0\input ) ) ) )
      (set_local $-ret (call $-add
          (i32.const 3 )
          (get_local $ns0\input ) ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns0\send_output

  (func $ns0\send_output
    (param $ns0\data i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop (call $ns0\_push_from_memory
          (call $ns1\address_of (get_local $ns0\data ) )
          (call $ns1\size_of (get_local $ns0\data ) ) ) )
      (drop (call $ns0\_send_output ) )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns0\send_error

  (func $ns0\send_error
    (param $ns0\data i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop (call $ns0\_push_from_memory
          (call $ns1\address_of (get_local $ns0\data ) )
          (call $ns1\size_of (get_local $ns0\data ) ) ) )
      (drop (call $ns0\_send_error ) )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns0\init

  (func $ns0\init
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop (call $ns0\send_output (call $ns2\assemble (call $ns0\get_input ) ) ) )
      (if
        (call $-truthy (get_global $ns2\error ) )
        (then
          (drop (call $ns0\send_error (get_global $ns2\error ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )
  (func $ns1\address_of
    (param $ns1\value i32 )
    (result i32 )
    (call $-integer_u (call $-offset (get_local $ns1\value ) ) ) )
  (func $ns1\size_of
    (param $ns1\value i32 )
    (result i32 )
    (call $-integer_u (call $-len (get_local $ns1\value ) ) ) )
  (func $ns1\datatype_of
    (param $ns1\value i32 )
    (result i32 )
    (call $-integer_u (call $-datatype (get_local $ns1\value ) ) ) )
  (func $ns1\binary_string
    (param $ns1\len i32 )
    (result i32 )
    (call $-new_value
      (i32.const 6 )
      (call $-i32_u (get_local $ns1\len ) ) ) )
  (func $ns1\binary_slice
    (param $ns1\binary i32 )
    (param $ns1\start i32 )
    (param $ns1\len i32 )
    (result i32 )
    (local $ns1\out i32 )
    (set_local $ns1\start (call $-i32_u (get_local $ns1\start ) ) )
    (set_local $ns1\len (call $-i32_u (get_local $ns1\len ) ) )
    (if
      (i32.lt_u
        (call $-len (get_local $ns1\binary ) )
        (get_local $ns1\start ) )
      (then (set_local $ns1\start (call $-len (get_local $ns1\binary ) ) ) ) )
    (if
      (i32.lt_u
        (i32.sub
          (call $-len (get_local $ns1\binary ) )
          (get_local $ns1\start ) )
        (get_local $ns1\len ) )
      (then (set_local $ns1\len (i32.sub
            (call $-len (get_local $ns1\binary ) )
            (get_local $ns1\start ) ) ) ) )
    (set_local $ns1\out (call $-new_value
        (i32.const 6 )
        (get_local $ns1\len ) ) )
    (call $-memcopy
      (i32.add
        (call $-offset (get_local $ns1\binary ) )
        (get_local $ns1\start ) )
      (call $-offset (get_local $ns1\out ) )
      (get_local $ns1\len ) )
    (get_local $ns1\out ) )
  (func $ns1\binary_search
    (param $ns1\binary i32 )
    (param $ns1\subbin i32 )
    (param $ns1\start i32 )
    (result i32 )
    (local $ns1\sub i32 )
    (if
      (i32.lt_u
        (call $-len (get_local $ns1\binary ) )
        (call $-len (get_local $ns1\subbin ) ) )
      (then (return (i32.const 0 ) ) ) )
    (set_local $ns1\start (call $-i32_u (get_local $ns1\start ) ) )
    (set_local $ns1\sub (call $-new_value
        (call $-datatype (get_local $ns1\subbin ) )
        (call $-len (get_local $ns1\subbin ) ) ) )
    (block (loop
        (br_if 1 (i32.gt_u
            (get_local $ns1\start )
            (i32.sub
              (call $-len (get_local $ns1\binary ) )
              (call $-len (get_local $ns1\subbin ) ) ) ) )
        (call $-memcopy
          (i32.add
            (call $-offset (get_local $ns1\binary ) )
            (get_local $ns1\start ) )
          (call $-offset (get_local $ns1\sub ) )
          (call $-len (get_local $ns1\sub ) ) )
        (if
          (i32.eqz (call $-compare
              (get_local $ns1\sub )
              (get_local $ns1\subbin ) ) )
          (then (return (call $-integer_u (get_local $ns1\start ) ) ) ) )
        (set_local $ns1\start (i32.add
            (get_local $ns1\start )
            (i32.const 1 ) ) )
        (br 0 ) ) )
    (i32.const 0 ) )
  (func $ns1\binary_read
    (param $ns1\binary i32 )
    (param $ns1\pos i32 )
    (result i32 )
    (if
      (i32.ge_u
        (call $-i32_u (get_local $ns1\pos ) )
        (call $-len (get_local $ns1\binary ) ) )
      (then (return (i32.const 0 ) ) ) )
    (call $-integer_u (call $-read8
        (get_local $ns1\binary )
        (call $-i32_u (get_local $ns1\pos ) ) ) ) )
  (func $ns1\binary_write
    (param $ns1\binary i32 )
    (param $ns1\pos i32 )
    (param $ns1\data i32 )
    (result i32 )
    (local $ns1\subbin i32 )
    (local $ns1\len i32 )
    (set_local $ns1\pos (call $-i32_u (get_local $ns1\pos ) ) )
    (if
      (i32.lt_u
        (call $-datatype (get_local $ns1\data ) )
        (i32.const 3 ) )
      (then
        (set_local $ns1\subbin (call $-new_value
            (i32.const 6 )
            (i32.const 4 ) ) )
        (call $-write32
          (get_local $ns1\subbin )
          (i32.const 0 )
          (call $-i32_u (get_local $ns1\data ) ) )
        (if
          (i32.eqz (call $-read8
              (get_local $ns1\subbin )
              (i32.const 3 ) ) )
          (then (if
              (i32.eqz (call $-read8
                  (get_local $ns1\subbin )
                  (i32.const 2 ) ) )
              (then (if
                  (i32.eqz (call $-read8
                      (get_local $ns1\subbin )
                      (i32.const 1 ) ) )
                  (then (call $-resize
                      (get_local $ns1\subbin )
                      (i32.const 1 ) ) )
                  (else (call $-resize
                      (get_local $ns1\subbin )
                      (i32.const 2 ) ) ) ) )
              (else (call $-resize
                  (get_local $ns1\subbin )
                  (i32.const 3 ) ) ) ) ) )
        (set_local $ns1\data (get_local $ns1\subbin ) ) ) )
    (set_local $ns1\len (i32.add
        (get_local $ns1\pos )
        (call $-len (get_local $ns1\data ) ) ) )
    (if
      (i32.lt_u
        (call $-len (get_local $ns1\binary ) )
        (get_local $ns1\len ) )
      (then (call $-resize
          (get_local $ns1\binary )
          (get_local $ns1\len ) ) ) )
    (call $-memcopy
      (call $-offset (get_local $ns1\data ) )
      (i32.add
        (call $-offset (get_local $ns1\binary ) )
        (get_local $ns1\pos ) )
      (call $-len (get_local $ns1\data ) ) )
    (i32.const 0 ) )
  (func $ns1\string_length
    (param $ns1\str i32 )
    (result i32 )
    (call $-integer_u (call $-bytes_to_chars
        (call $-offset (get_local $ns1\str ) )
        (call $-len (get_local $ns1\str ) ) ) ) )
  (func $ns1\string_slice
    (param $ns1\string i32 )
    (param $ns1\start i32 )
    (param $ns1\len i32 )
    (result i32 )
    (set_local $ns1\start (call $-chars_to_bytes
        (call $-offset (get_local $ns1\string ) )
        (call $-i32_u (get_local $ns1\start ) ) ) )
    (set_local $ns1\len (call $-chars_to_bytes
        (i32.add
          (call $-offset (get_local $ns1\string ) )
          (get_local $ns1\start ) )
        (call $-i32_u (get_local $ns1\len ) ) ) )
    (call $-set_datatype
      (call $ns1\binary_slice
        (get_local $ns1\string )
        (call $-integer_u (get_local $ns1\start ) )
        (call $-integer_u (get_local $ns1\len ) ) )
      (i32.const 3 ) ) )
  (func $ns1\string_search
    (param $ns1\string i32 )
    (param $ns1\substr i32 )
    (param $ns1\start i32 )
    (result i32 )
    (local $ns1\res i32 )
    (set_local $ns1\start (call $-chars_to_bytes
        (call $-offset (get_local $ns1\string ) )
        (call $-i32_u (get_local $ns1\start ) ) ) )
    (set_local $ns1\res (call $ns1\binary_search
        (get_local $ns1\string )
        (get_local $ns1\substr )
        (call $-integer_u (get_local $ns1\start ) ) ) )
    (if
      (get_local $ns1\res )
      (then (set_local $ns1\res (call $-integer_u (call $-bytes_to_chars
              (call $-offset (get_local $ns1\string ) )
              (call $-i32_u (get_local $ns1\res ) ) ) ) ) ) )
    (get_local $ns1\res ) )
  (func $ns1\string_lower
    (param $ns1\string i32 )
    (result i32 )
    (local $ns1\out i32 )
    (local $ns1\len i32 )
    (local $ns1\byte i32 )
    (set_local $ns1\len (call $-len (get_local $ns1\string ) ) )
    (set_local $ns1\out (call $-new_value
        (i32.const 3 )
        (get_local $ns1\len ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $ns1\len ) ) )
        (set_local $ns1\len (i32.sub
            (get_local $ns1\len )
            (i32.const 1 ) ) )
        (set_local $ns1\byte (call $-read8
            (get_local $ns1\string )
            (get_local $ns1\len ) ) )
        (if
          (i32.and
            (i32.gt_u
              (get_local $ns1\byte )
              (i32.const 0x40 ) )
            (i32.lt_u
              (get_local $ns1\byte )
              (i32.const 0x5B ) ) )
          (then (call $-write8
              (get_local $ns1\out )
              (get_local $ns1\len )
              (i32.add
                (get_local $ns1\byte )
                (i32.const 0x20 ) ) ) )
          (else (call $-write8
              (get_local $ns1\out )
              (get_local $ns1\len )
              (get_local $ns1\byte ) ) ) )
        (br 0 ) ) )
    (get_local $ns1\out ) )
  (func $ns1\string_upper
    (param $ns1\string i32 )
    (result i32 )
    (local $ns1\out i32 )
    (local $ns1\len i32 )
    (local $ns1\byte i32 )
    (set_local $ns1\len (call $-len (get_local $ns1\string ) ) )
    (set_local $ns1\out (call $-new_value
        (i32.const 3 )
        (get_local $ns1\len ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $ns1\len ) ) )
        (set_local $ns1\len (i32.sub
            (get_local $ns1\len )
            (i32.const 1 ) ) )
        (set_local $ns1\byte (call $-read8
            (get_local $ns1\string )
            (get_local $ns1\len ) ) )
        (if
          (i32.and
            (i32.gt_u
              (get_local $ns1\byte )
              (i32.const 0x60 ) )
            (i32.lt_u
              (get_local $ns1\byte )
              (i32.const 0x7B ) ) )
          (then (call $-write8
              (get_local $ns1\out )
              (get_local $ns1\len )
              (i32.sub
                (get_local $ns1\byte )
                (i32.const 0x20 ) ) ) )
          (else (call $-write8
              (get_local $ns1\out )
              (get_local $ns1\len )
              (get_local $ns1\byte ) ) ) )
        (br 0 ) ) )
    (get_local $ns1\out ) )
  (func $ns1\string_split
    (param $ns1\string i32 )
    (param $ns1\seperator i32 )
    (result i32 )
    (local $ns1\parts i32 )
    (local $ns1\sub i32 )
    (local $ns1\start i32 )
    (local $ns1\pos i32 )
    (if
      (i32.lt_u
        (call $-len (get_local $ns1\string ) )
        (call $-len (get_local $ns1\seperator ) ) )
      (then (return (i32.const 0 ) ) ) )
    (set_local $ns1\parts (call $-new_value
        (i32.const 4 )
        (i32.const 0 ) ) )
    (set_local $ns1\sub (call $-new_value
        (call $-datatype (get_local $ns1\seperator ) )
        (call $-len (get_local $ns1\seperator ) ) ) )
    (block (loop
        (br_if 1 (i32.gt_u
            (get_local $ns1\pos )
            (i32.sub
              (call $-len (get_local $ns1\string ) )
              (call $-len (get_local $ns1\seperator ) ) ) ) )
        (call $-memcopy
          (i32.add
            (call $-offset (get_local $ns1\string ) )
            (get_local $ns1\pos ) )
          (call $-offset (get_local $ns1\sub ) )
          (call $-len (get_local $ns1\sub ) ) )
        (if
          (i32.eqz (call $-compare
              (get_local $ns1\sub )
              (get_local $ns1\seperator ) ) )
          (then
            (call $-write32
              (get_local $ns1\parts )
              (call $-len (get_local $ns1\parts ) )
              (call $-string
                (i32.add
                  (call $-offset (get_local $ns1\string ) )
                  (get_local $ns1\start ) )
                (i32.sub
                  (get_local $ns1\pos )
                  (get_local $ns1\start ) ) ) )
            (set_local $ns1\start (i32.add
                (get_local $ns1\pos )
                (call $-len (get_local $ns1\seperator ) ) ) )
            (set_local $ns1\pos (get_local $ns1\start ) ) )
          (else (set_local $ns1\pos (i32.add
                (get_local $ns1\pos )
                (i32.const 1 ) ) ) ) )
        (br 0 ) ) )
    (call $-write32
      (get_local $ns1\parts )
      (call $-len (get_local $ns1\parts ) )
      (call $-string
        (i32.add
          (call $-offset (get_local $ns1\string ) )
          (get_local $ns1\start ) )
        (i32.sub
          (call $-len (get_local $ns1\string ) )
          (get_local $ns1\start ) ) ) )
    (get_local $ns1\parts ) )
  (func $ns1\char
    (param $ns1\code i32 )
    (result i32 )
    (set_local $ns1\code (call $-i32_u (get_local $ns1\code ) ) )
    (call $-char (get_local $ns1\code ) ) )
  (func $ns1\char_code
    (param $ns1\string i32 )
    (param $ns1\pos i32 )
    (result i32 )
    (set_local $ns1\pos (i32.add
        (call $-offset (get_local $ns1\string ) )
        (call $-chars_to_bytes
          (call $-offset (get_local $ns1\string ) )
          (call $-i32_u (get_local $ns1\pos ) ) ) ) )
    (call $-integer_u (call $-char_code (get_local $ns1\pos ) ) ) )
  (func $ns1\array_length
    (param $ns1\array i32 )
    (result i32 )
    (call $-integer_u (i32.div_u
        (call $-len (get_local $ns1\array ) )
        (i32.const 4 ) ) ) )
  (func $ns1\array_insert
    (param $ns1\array i32 )
    (param $ns1\index i32 )
    (param $ns1\value i32 )
    (result i32 )
    (local $ns1\rest i32 )
    (set_local $ns1\index (i32.mul
        (call $-i32_u (get_local $ns1\index ) )
        (i32.const 4 ) ) )
    (if
      (i32.lt_u
        (call $-len (get_local $ns1\array ) )
        (get_local $ns1\index ) )
      (then (set_local $ns1\index (call $-len (get_local $ns1\array ) ) ) ) )
    (set_local $ns1\rest (i32.sub
        (call $-len (get_local $ns1\array ) )
        (get_local $ns1\index ) ) )
    (call $-resize
      (get_local $ns1\array )
      (i32.add
        (i32.add
          (get_local $ns1\index )
          (get_local $ns1\rest ) )
        (i32.const 4 ) ) )
    (call $-memcopy
      (i32.add
        (call $-offset (get_local $ns1\array ) )
        (get_local $ns1\index ) )
      (i32.add
        (i32.add
          (call $-offset (get_local $ns1\array ) )
          (get_local $ns1\index ) )
        (i32.const 4 ) )
      (get_local $ns1\rest ) )
    (call $-write32
      (get_local $ns1\array )
      (get_local $ns1\index )
      (get_local $ns1\value ) )
    (get_local $ns1\value ) )
  (func $ns1\array_remove
    (param $ns1\array i32 )
    (param $ns1\index i32 )
    (result i32 )
    (local $ns1\value i32 )
    (local $ns1\rest i32 )
    (set_local $ns1\index (i32.mul
        (call $-i32_u (get_local $ns1\index ) )
        (i32.const 4 ) ) )
    (if
      (i32.le_u
        (call $-len (get_local $ns1\array ) )
        (get_local $ns1\index ) )
      (then (return (i32.const 0 ) ) ) )
    (set_local $ns1\rest (i32.sub
        (i32.sub
          (call $-len (get_local $ns1\array ) )
          (get_local $ns1\index ) )
        (i32.const 4 ) ) )
    (set_local $ns1\value (call $-read32
        (get_local $ns1\array )
        (get_local $ns1\index ) ) )
    (call $-memcopy
      (i32.add
        (i32.add
          (call $-offset (get_local $ns1\array ) )
          (get_local $ns1\index ) )
        (i32.const 4 ) )
      (i32.add
        (call $-offset (get_local $ns1\array ) )
        (get_local $ns1\index ) )
      (get_local $ns1\rest ) )
    (call $-resize
      (get_local $ns1\array )
      (i32.add
        (get_local $ns1\index )
        (get_local $ns1\rest ) ) )
    (get_local $ns1\value ) )
  (func $ns1\array_push
    (param $ns1\array i32 )
    (param $ns1\value i32 )
    (result i32 )
    (call $ns1\array_insert
      (get_local $ns1\array )
      (call $ns1\array_length (get_local $ns1\array ) )
      (get_local $ns1\value ) ) )
  (func $ns1\array_pop
    (param $ns1\array i32 )
    (result i32 )
    (call $ns1\array_remove
      (get_local $ns1\array )
      (call $-sub
        (call $ns1\array_length (get_local $ns1\array ) )
        (call $-integer_u (i32.const 1 ) ) ) ) )
  (func $ns1\array_unshift
    (param $ns1\array i32 )
    (param $ns1\value i32 )
    (result i32 )
    (call $ns1\array_insert
      (get_local $ns1\array )
      (i32.const 2 )
      (get_local $ns1\value ) ) )
  (func $ns1\array_shift
    (param $ns1\array i32 )
    (result i32 )
    (call $ns1\array_remove
      (get_local $ns1\array )
      (i32.const 2 ) ) )
  (func $ns1\array_search
    (param $ns1\array i32 )
    (param $ns1\value i32 )
    (param $ns1\start i32 )
    (result i32 )
    (local $ns1\index i32 )
    (local $ns1\len i32 )
    (local $ns1\pos i32 )
    (set_local $ns1\start (i32.mul
        (call $-i32_u (get_local $ns1\start ) )
        (i32.const 4 ) ) )
    (if
      (i32.lt_u
        (call $-len (get_local $ns1\array ) )
        (get_local $ns1\start ) )
      (then (return (i32.const 0 ) ) ) )
    (set_local $ns1\len (i32.sub
        (call $-len (get_local $ns1\array ) )
        (get_local $ns1\start ) ) )
    (set_local $ns1\pos (i32.add
        (call $-offset (get_local $ns1\array ) )
        (get_local $ns1\start ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $ns1\len ) ) )
        (if
          (call $-truthy (call $-equal
              (get_local $ns1\value )
              (i32.load (get_local $ns1\pos ) ) ) )
          (then
            (set_local $ns1\index (call $-integer_u (i32.div_u
                  (i32.sub
                    (get_local $ns1\pos )
                    (call $-offset (get_local $ns1\array ) ) )
                  (i32.const 4 ) ) ) )
            (br 2 ) ) )
        (set_local $ns1\pos (i32.add
            (get_local $ns1\pos )
            (i32.const 4 ) ) )
        (set_local $ns1\len (i32.sub
            (get_local $ns1\len )
            (i32.const 4 ) ) )
        (br 0 ) ) )
    (get_local $ns1\index ) )
  (func $ns1\array_slice
    (param $ns1\array i32 )
    (param $ns1\start i32 )
    (param $ns1\len i32 )
    (result i32 )
    (local $ns1\out i32 )
    (set_local $ns1\start (i32.mul
        (call $-i32_u (get_local $ns1\start ) )
        (i32.const 4 ) ) )
    (set_local $ns1\len (i32.mul
        (call $-i32_u (get_local $ns1\len ) )
        (i32.const 4 ) ) )
    (if
      (i32.lt_u
        (call $-len (get_local $ns1\array ) )
        (get_local $ns1\start ) )
      (then (set_local $ns1\start (call $-len (get_local $ns1\array ) ) ) ) )
    (if
      (i32.lt_u
        (i32.sub
          (call $-len (get_local $ns1\array ) )
          (get_local $ns1\start ) )
        (get_local $ns1\len ) )
      (then (set_local $ns1\len (i32.sub
            (call $-len (get_local $ns1\array ) )
            (get_local $ns1\start ) ) ) ) )
    (set_local $ns1\out (call $-new_value
        (i32.const 4 )
        (call $-i32_u (get_local $ns1\len ) ) ) )
    (call $-memcopy
      (i32.add
        (call $-offset (get_local $ns1\array ) )
        (get_local $ns1\start ) )
      (call $-offset (get_local $ns1\out ) )
      (get_local $ns1\len ) )
    (get_local $ns1\out ) )
  (func $ns1\array_splice
    (param $ns1\array i32 )
    (param $ns1\start i32 )
    (param $ns1\delete i32 )
    (param $ns1\replace i32 )
    (result i32 )
    (local $ns1\rest i32 )
    (set_local $ns1\start (i32.mul
        (call $-i32_u (get_local $ns1\start ) )
        (i32.const 4 ) ) )
    (set_local $ns1\delete (i32.mul
        (call $-i32_u (get_local $ns1\delete ) )
        (i32.const 4 ) ) )
    (if
      (i32.lt_u
        (call $-len (get_local $ns1\array ) )
        (get_local $ns1\start ) )
      (then (set_local $ns1\start (call $-len (get_local $ns1\array ) ) ) ) )
    (if
      (i32.lt_u
        (i32.sub
          (call $-len (get_local $ns1\array ) )
          (get_local $ns1\start ) )
        (get_local $ns1\delete ) )
      (then (set_local $ns1\delete (i32.sub
            (call $-len (get_local $ns1\array ) )
            (get_local $ns1\start ) ) ) ) )
    (set_local $ns1\rest (i32.sub
        (i32.sub
          (call $-len (get_local $ns1\array ) )
          (get_local $ns1\start ) )
        (get_local $ns1\delete ) ) )
    (call $-memcopy
      (i32.add
        (i32.add
          (call $-offset (get_local $ns1\array ) )
          (get_local $ns1\start ) )
        (get_local $ns1\delete ) )
      (i32.add
        (call $-offset (get_local $ns1\array ) )
        (get_local $ns1\start ) )
      (get_local $ns1\rest ) )
    (call $-resize
      (get_local $ns1\array )
      (i32.add
        (i32.add
          (get_local $ns1\start )
          (get_local $ns1\rest ) )
        (call $-len (get_local $ns1\replace ) ) ) )
    (call $-memcopy
      (i32.add
        (call $-offset (get_local $ns1\array ) )
        (get_local $ns1\start ) )
      (i32.add
        (i32.add
          (call $-offset (get_local $ns1\array ) )
          (get_local $ns1\start ) )
        (call $-len (get_local $ns1\replace ) ) )
      (get_local $ns1\rest ) )
    (call $-memcopy
      (call $-offset (get_local $ns1\replace ) )
      (i32.add
        (call $-offset (get_local $ns1\array ) )
        (get_local $ns1\start ) )
      (call $-len (get_local $ns1\replace ) ) )
    (i32.const 0 ) )
  (func $ns1\array_sort
    (param $ns1\array i32 )
    (result i32 )
    (local $ns1\out i32 )
    (local $ns1\len i32 )
    (local $ns1\pos i32 )
    (local $ns1\ins i32 )
    (local $ns1\val i32 )
    (set_local $ns1\out (call $-new_value
        (i32.const 4 )
        (call $-len (get_local $ns1\array ) ) ) )
    (set_local $ns1\len (i32.div_u
        (call $-len (get_local $ns1\array ) )
        (i32.const 4 ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $ns1\len ) ) )
        (set_local $ns1\val (call $-read32
            (get_local $ns1\array )
            (i32.mul
              (get_local $ns1\pos )
              (i32.const 4 ) ) ) )
        (set_local $ns1\ins (get_local $ns1\pos ) )
        (block (loop
            (br_if 1 (i32.eqz (get_local $ns1\ins ) ) )
            (br_if 1 (call $-ge
                (get_local $ns1\val )
                (call $-read32
                  (get_local $ns1\out )
                  (i32.mul
                    (i32.sub
                      (get_local $ns1\ins )
                      (i32.const 1 ) )
                    (i32.const 4 ) ) ) ) )
            (call $-write32
              (get_local $ns1\out )
              (i32.mul
                (get_local $ns1\ins )
                (i32.const 4 ) )
              (call $-read32
                (get_local $ns1\out )
                (i32.mul
                  (i32.sub
                    (get_local $ns1\ins )
                    (i32.const 1 ) )
                  (i32.const 4 ) ) ) )
            (set_local $ns1\ins (i32.sub
                (get_local $ns1\ins )
                (i32.const 1 ) ) )
            (br 0 ) ) )
        (call $-write32
          (get_local $ns1\out )
          (i32.mul
            (get_local $ns1\ins )
            (i32.const 4 ) )
          (get_local $ns1\val ) )
        (set_local $ns1\pos (i32.add
            (get_local $ns1\pos )
            (i32.const 1 ) ) )
        (set_local $ns1\len (i32.sub
            (get_local $ns1\len )
            (i32.const 1 ) ) )
        (br 0 ) ) )
    (get_local $ns1\out ) )
  (func $ns1\array_join
    (param $ns1\array i32 )
    (param $ns1\glue i32 )
    (result i32 )
    (local $ns1\string i32 )
    (local $ns1\strlen i32 )
    (local $ns1\part i32 )
    (local $ns1\pos i32 )
    (local $ns1\len i32 )
    (set_local $ns1\string (call $-new_value
        (i32.const 3 )
        (get_local $ns1\strlen ) ) )
    (set_local $ns1\len (call $-len (get_local $ns1\array ) ) )
    (if
      (get_local $ns1\len )
      (then
        (set_local $ns1\part (call $-to_string (call $-read32
              (get_local $ns1\array )
              (get_local $ns1\pos ) ) ) )
        (call $-resize
          (get_local $ns1\string )
          (i32.add
            (get_local $ns1\strlen )
            (call $-len (get_local $ns1\part ) ) ) )
        (call $-memcopy
          (call $-offset (get_local $ns1\part ) )
          (i32.add
            (call $-offset (get_local $ns1\string ) )
            (get_local $ns1\strlen ) )
          (call $-len (get_local $ns1\part ) ) )
        (set_local $ns1\strlen (i32.add
            (get_local $ns1\strlen )
            (call $-len (get_local $ns1\part ) ) ) )
        (set_local $ns1\pos (i32.add
            (get_local $ns1\pos )
            (i32.const 4 ) ) )
        (set_local $ns1\len (i32.sub
            (get_local $ns1\len )
            (i32.const 4 ) ) ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $ns1\len ) ) )
        (set_local $ns1\part (call $-to_string (call $-read32
              (get_local $ns1\array )
              (get_local $ns1\pos ) ) ) )
        (call $-resize
          (get_local $ns1\string )
          (i32.add
            (get_local $ns1\strlen )
            (i32.add
              (call $-len (get_local $ns1\glue ) )
              (call $-len (get_local $ns1\part ) ) ) ) )
        (call $-memcopy
          (call $-offset (get_local $ns1\glue ) )
          (i32.add
            (call $-offset (get_local $ns1\string ) )
            (get_local $ns1\strlen ) )
          (call $-len (get_local $ns1\glue ) ) )
        (set_local $ns1\strlen (i32.add
            (get_local $ns1\strlen )
            (call $-len (get_local $ns1\glue ) ) ) )
        (call $-memcopy
          (call $-offset (get_local $ns1\part ) )
          (i32.add
            (call $-offset (get_local $ns1\string ) )
            (get_local $ns1\strlen ) )
          (call $-len (get_local $ns1\part ) ) )
        (set_local $ns1\strlen (i32.add
            (get_local $ns1\strlen )
            (call $-len (get_local $ns1\part ) ) ) )
        (set_local $ns1\pos (i32.add
            (get_local $ns1\pos )
            (i32.const 4 ) ) )
        (set_local $ns1\len (i32.sub
            (get_local $ns1\len )
            (i32.const 4 ) ) )
        (br 0 ) ) )
    (get_local $ns1\string ) )
  (func $ns1\range
    (param $ns1\start i32 )
    (param $ns1\end i32 )
    (param $ns1\step i32 )
    (result i32 )
    (local $ns1\_start f64 )
    (local $ns1\_end f64 )
    (local $ns1\_step f64 )
    (local $ns1\out i32 )
    (local $ns1\offset i32 )
    (local $ns1\len i32 )
    (set_local $ns1\_start (call $-f64 (get_local $ns1\start ) ) )
    (set_local $ns1\_end (call $-f64 (get_local $ns1\end ) ) )
    (set_local $ns1\_step (call $-f64 (get_local $ns1\step ) ) )
    (if
      (f64.eq
        (get_local $ns1\_step )
        (f64.const 0 ) )
      (then (if
          (f64.gt
            (get_local $ns1\_start )
            (get_local $ns1\_end ) )
          (then (set_local $ns1\_step (f64.const -1 ) ) )
          (else (set_local $ns1\_step (f64.const 1 ) ) ) ) ) )
    (set_local $ns1\out (call $-new_value
        (i32.const 4 )
        (i32.trunc_u/f64 (f64.mul
            (f64.floor (f64.div
                (f64.sub
                  (get_local $ns1\_end )
                  (get_local $ns1\_start ) )
                (get_local $ns1\_step ) ) )
            (f64.const 4 ) ) ) ) )
    (set_local $ns1\offset (call $-offset (get_local $ns1\out ) ) )
    (set_local $ns1\len (call $-len (get_local $ns1\out ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $ns1\len ) ) )
        (i32.store
          (get_local $ns1\offset )
          (call $-number (get_local $ns1\_start ) ) )
        (set_local $ns1\_start (f64.add
            (get_local $ns1\_start )
            (get_local $ns1\_step ) ) )
        (set_local $ns1\offset (i32.add
            (get_local $ns1\offset )
            (i32.const 4 ) ) )
        (set_local $ns1\len (i32.sub
            (get_local $ns1\len )
            (i32.const 4 ) ) )
        (br 0 ) ) )
    (get_local $ns1\out ) )
  (func $ns1\object_keys
    (param $ns1\object i32 )
    (result i32 )
    (local $ns1\out i32 )
    (local $ns1\len i32 )
    (set_local $ns1\out (call $-new_value
        (i32.const 4 )
        (i32.div_u
          (call $-len (get_local $ns1\object ) )
          (i32.const 2 ) ) ) )
    (set_local $ns1\len (i32.div_u
        (call $-len (get_local $ns1\out ) )
        (i32.const 4 ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $ns1\len ) ) )
        (set_local $ns1\len (i32.sub
            (get_local $ns1\len )
            (i32.const 1 ) ) )
        (call $-write32
          (get_local $ns1\out )
          (i32.mul
            (get_local $ns1\len )
            (i32.const 4 ) )
          (call $-read32
            (get_local $ns1\object )
            (i32.mul
              (get_local $ns1\len )
              (i32.const 8 ) ) ) )
        (br 0 ) ) )
    (get_local $ns1\out ) )
  (func $ns1\object_values
    (param $ns1\object i32 )
    (result i32 )
    (local $ns1\out i32 )
    (local $ns1\len i32 )
    (set_local $ns1\out (call $-new_value
        (i32.const 4 )
        (i32.div_u
          (call $-len (get_local $ns1\object ) )
          (i32.const 2 ) ) ) )
    (set_local $ns1\len (i32.div_u
        (call $-len (get_local $ns1\out ) )
        (i32.const 4 ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $ns1\len ) ) )
        (set_local $ns1\len (i32.sub
            (get_local $ns1\len )
            (i32.const 1 ) ) )
        (call $-write32
          (get_local $ns1\out )
          (i32.mul
            (get_local $ns1\len )
            (i32.const 4 ) )
          (call $-read32
            (get_local $ns1\object )
            (i32.add
              (i32.mul
                (get_local $ns1\len )
                (i32.const 8 ) )
              (i32.const 4 ) ) ) )
        (br 0 ) ) )
    (get_local $ns1\out ) )
  (func $ns1\abs
    (param $ns1\number i32 )
    (result i32 )
    (call $-number (f64.abs (call $-f64 (get_local $ns1\number ) ) ) ) )
  (func $ns1\ceil
    (param $ns1\number i32 )
    (result i32 )
    (call $-number (f64.ceil (call $-f64 (get_local $ns1\number ) ) ) ) )
  (func $ns1\floor
    (param $ns1\number i32 )
    (result i32 )
    (call $-number (f64.floor (call $-f64 (get_local $ns1\number ) ) ) ) )
  (func $ns1\nearest
    (param $ns1\number i32 )
    (result i32 )
    (call $-number (f64.nearest (call $-f64 (get_local $ns1\number ) ) ) ) )
  (func $ns1\sqrt
    (param $ns1\number i32 )
    (result i32 )
    (call $-number (f64.sqrt (call $-f64 (get_local $ns1\number ) ) ) ) )
  (func $ns1\min
    (param $ns1\number1 i32 )
    (param $ns1\number2 i32 )
    (result i32 )
    (call $-number (f64.min
        (call $-f64 (get_local $ns1\number1 ) )
        (call $-f64 (get_local $ns1\number2 ) ) ) ) )
  (func $ns1\max
    (param $ns1\number1 i32 )
    (param $ns1\number2 i32 )
    (result i32 )
    (call $-number (f64.max
        (call $-f64 (get_local $ns1\number1 ) )
        (call $-f64 (get_local $ns1\number2 ) ) ) ) )
  (func $ns1\json_encode
    (param $ns1\value i32 )
    (result i32 )
    (local $ns1\datatype i32 )
    (local $ns1\len i32 )
    (local $ns1\json_string i32 )
    (local $ns1\char i32 )
    (local $ns1\done i32 )
    (local $ns1\ipos i32 )
    (local $ns1\opos i32 )
    (set_local $ns1\datatype (call $-datatype (get_local $ns1\value ) ) )
    (set_local $ns1\len (call $-len (get_local $ns1\value ) ) )
    (if
      (i32.lt_u
        (get_local $ns1\datatype )
        (i32.const 3 ) )
      (then (set_local $ns1\json_string (call $-to_string (get_local $ns1\value ) ) ) ) )
    (if
      (i32.eq
        (get_local $ns1\datatype )
        (i32.const 3 ) )
      (then
        (set_local $ns1\json_string (call $-new_value
            (i32.const 3 )
            (call $-len (get_local $ns1\value ) ) ) )
        (call $-write8
          (get_local $ns1\json_string )
          (get_local $ns1\opos )
          (i32.const 0x22 ) )
        (set_local $ns1\opos (i32.add
            (get_local $ns1\opos )
            (i32.const 1 ) ) )
        (block (loop
            (br_if 1 (i32.ge_u
                (get_local $ns1\ipos )
                (get_local $ns1\len ) ) )
            (set_local $ns1\done (i32.const 0 ) )
            (set_local $ns1\char (call $-read8
                (get_local $ns1\value )
                (get_local $ns1\ipos ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x08 ) )
              (then
                (call $-write16
                  (get_local $ns1\json_string )
                  (get_local $ns1\opos )
                  (i32.const 0x625c ) )
                (set_local $ns1\opos (i32.add
                    (get_local $ns1\opos )
                    (i32.const 2 ) ) )
                (set_local $ns1\done (i32.const 1 ) ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x09 ) )
              (then
                (call $-write16
                  (get_local $ns1\json_string )
                  (get_local $ns1\opos )
                  (i32.const 0x745c ) )
                (set_local $ns1\opos (i32.add
                    (get_local $ns1\opos )
                    (i32.const 2 ) ) )
                (set_local $ns1\done (i32.const 1 ) ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x0a ) )
              (then
                (call $-write16
                  (get_local $ns1\json_string )
                  (get_local $ns1\opos )
                  (i32.const 0x6e5c ) )
                (set_local $ns1\opos (i32.add
                    (get_local $ns1\opos )
                    (i32.const 2 ) ) )
                (set_local $ns1\done (i32.const 1 ) ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x0c ) )
              (then
                (call $-write16
                  (get_local $ns1\json_string )
                  (get_local $ns1\opos )
                  (i32.const 0x665c ) )
                (set_local $ns1\opos (i32.add
                    (get_local $ns1\opos )
                    (i32.const 2 ) ) )
                (set_local $ns1\done (i32.const 1 ) ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x0d ) )
              (then
                (call $-write16
                  (get_local $ns1\json_string )
                  (get_local $ns1\opos )
                  (i32.const 0x725c ) )
                (set_local $ns1\opos (i32.add
                    (get_local $ns1\opos )
                    (i32.const 2 ) ) )
                (set_local $ns1\done (i32.const 1 ) ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x22 ) )
              (then
                (call $-write16
                  (get_local $ns1\json_string )
                  (get_local $ns1\opos )
                  (i32.const 0x225c ) )
                (set_local $ns1\opos (i32.add
                    (get_local $ns1\opos )
                    (i32.const 2 ) ) )
                (set_local $ns1\done (i32.const 1 ) ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x5c ) )
              (then
                (call $-write16
                  (get_local $ns1\json_string )
                  (get_local $ns1\opos )
                  (i32.const 0x5c5c ) )
                (set_local $ns1\opos (i32.add
                    (get_local $ns1\opos )
                    (i32.const 2 ) ) )
                (set_local $ns1\done (i32.const 1 ) ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x7f ) )
              (then
                (call $-write16
                  (get_local $ns1\json_string )
                  (get_local $ns1\opos )
                  (i32.const 0x755c ) )
                (set_local $ns1\opos (i32.add
                    (get_local $ns1\opos )
                    (i32.const 2 ) ) )
                (call $-write32
                  (get_local $ns1\json_string )
                  (get_local $ns1\opos )
                  (i32.const 0x66373030 ) )
                (set_local $ns1\opos (i32.add
                    (get_local $ns1\opos )
                    (i32.const 4 ) ) )
                (set_local $ns1\done (i32.const 1 ) ) ) )
            (if
              (i32.eqz (get_local $ns1\done ) )
              (then (if
                  (i32.lt_u
                    (get_local $ns1\char )
                    (i32.const 0x20 ) )
                  (then
                    (call $-write16
                      (get_local $ns1\json_string )
                      (get_local $ns1\opos )
                      (i32.const 0x755c ) )
                    (set_local $ns1\opos (i32.add
                        (get_local $ns1\opos )
                        (i32.const 2 ) ) )
                    (set_local $ns1\done (call $-to_hex
                        (get_local $ns1\char )
                        (i32.const 4 ) ) )
                    (call $-write32
                      (get_local $ns1\json_string )
                      (get_local $ns1\opos )
                      (call $-read32
                        (get_local $ns1\done )
                        (i32.const 0 ) ) )
                    (set_local $ns1\opos (i32.add
                        (get_local $ns1\opos )
                        (i32.const 4 ) ) ) )
                  (else
                    (call $-write8
                      (get_local $ns1\json_string )
                      (get_local $ns1\opos )
                      (get_local $ns1\char ) )
                    (set_local $ns1\opos (i32.add
                        (get_local $ns1\opos )
                        (i32.const 1 ) ) ) ) ) ) )
            (set_local $ns1\ipos (i32.add
                (get_local $ns1\ipos )
                (i32.const 1 ) ) )
            (br 0 ) ) )
        (call $-write8
          (get_local $ns1\json_string )
          (get_local $ns1\opos )
          (i32.const 0x22 ) ) ) )
    (if
      (i32.eq
        (get_local $ns1\datatype )
        (i32.const 4 ) )
      (then
        (set_local $ns1\json_string (call $-new_value
            (i32.const 3 )
            (i32.const 0 ) ) )
        (call $-write8
          (get_local $ns1\json_string )
          (get_local $ns1\opos )
          (i32.const 0x5b ) )
        (set_local $ns1\opos (i32.add
            (get_local $ns1\opos )
            (i32.const 1 ) ) )
        (block (loop
            (br_if 1 (i32.ge_u
                (get_local $ns1\ipos )
                (get_local $ns1\len ) ) )
            (set_local $ns1\char (call $-read32
                (get_local $ns1\value )
                (get_local $ns1\ipos ) ) )
            (set_local $ns1\ipos (i32.add
                (get_local $ns1\ipos )
                (i32.const 4 ) ) )
            (set_local $ns1\opos (call $-len (get_local $ns1\json_string ) ) )
            (call $-write_to
              (get_local $ns1\json_string )
              (get_local $ns1\opos )
              (call $ns1\json_encode (get_local $ns1\char ) ) )
            (set_local $ns1\opos (call $-len (get_local $ns1\json_string ) ) )
            (call $-write8
              (get_local $ns1\json_string )
              (get_local $ns1\opos )
              (i32.const 0x2c ) )
            (br 0 ) ) )
        (call $-write8
          (get_local $ns1\json_string )
          (get_local $ns1\opos )
          (i32.const 0x5d ) ) ) )
    (if
      (i32.eq
        (get_local $ns1\datatype )
        (i32.const 5 ) )
      (then
        (set_local $ns1\json_string (call $-new_value
            (i32.const 3 )
            (i32.const 0 ) ) )
        (call $-write8
          (get_local $ns1\json_string )
          (get_local $ns1\opos )
          (i32.const 0x7b ) )
        (set_local $ns1\opos (i32.add
            (get_local $ns1\opos )
            (i32.const 1 ) ) )
        (block (loop
            (br_if 1 (i32.ge_u
                (get_local $ns1\ipos )
                (get_local $ns1\len ) ) )
            (set_local $ns1\char (call $-read32
                (get_local $ns1\value )
                (get_local $ns1\ipos ) ) )
            (set_local $ns1\ipos (i32.add
                (get_local $ns1\ipos )
                (i32.const 4 ) ) )
            (set_local $ns1\opos (call $-len (get_local $ns1\json_string ) ) )
            (call $-write_to
              (get_local $ns1\json_string )
              (get_local $ns1\opos )
              (call $ns1\json_encode (call $-to_string (get_local $ns1\char ) ) ) )
            (set_local $ns1\opos (call $-len (get_local $ns1\json_string ) ) )
            (call $-write8
              (get_local $ns1\json_string )
              (get_local $ns1\opos )
              (i32.const 0x3a ) )
            (set_local $ns1\char (call $-read32
                (get_local $ns1\value )
                (get_local $ns1\ipos ) ) )
            (set_local $ns1\ipos (i32.add
                (get_local $ns1\ipos )
                (i32.const 4 ) ) )
            (set_local $ns1\opos (call $-len (get_local $ns1\json_string ) ) )
            (call $-write_to
              (get_local $ns1\json_string )
              (get_local $ns1\opos )
              (call $ns1\json_encode (get_local $ns1\char ) ) )
            (set_local $ns1\opos (call $-len (get_local $ns1\json_string ) ) )
            (call $-write8
              (get_local $ns1\json_string )
              (get_local $ns1\opos )
              (i32.const 0x2c ) )
            (br 0 ) ) )
        (call $-write8
          (get_local $ns1\json_string )
          (get_local $ns1\opos )
          (i32.const 0x7d ) ) ) )
    (get_local $ns1\json_string ) )
  (func $ns1\json_decode
    (param $ns1\json_string i32 )
    (result i32 )
    (local $ns1\datatype i32 )
    (local $ns1\value i32 )
    (set_local $ns1\datatype (call $-datatype (get_local $ns1\json_string ) ) )
    (set_local $ns1\value (get_local $ns1\json_string ) )
    (set_global $ns1\~pos (call $-offset (get_local $ns1\json_string ) ) )
    (if
      (i32.eq
        (get_local $ns1\datatype )
        (i32.const 3 ) )
      (then (set_local $ns1\value (call $ns1\~json_decode ) ) ) )
    (if
      (i32.eq
        (get_local $ns1\datatype )
        (i32.const 6 ) )
      (then (set_local $ns1\value (call $ns1\~json_decode ) ) ) )
    (get_local $ns1\value ) )
  (func $ns1\~json_decode
    (result i32 )
    (local $ns1\value i32 )
    (local $ns1\err i32 )
    (local $ns1\char i32 )
    (local $ns1\pos i32 )
    (local $ns1\hex i32 )
    (local $ns1\num f64 )
    (local $ns1\neg f64 )
    (local $ns1\exp f64 )
    (local $ns1\eneg f64 )
    (set_local $ns1\err (i32.eqz (call $ns1\~skip_whitespace ) ) )
    (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
    (set_global $ns1\~pos (i32.add
        (get_global $ns1\~pos )
        (i32.const 1 ) ) )
    (if
      (i32.eq
        (get_local $ns1\char )
        (i32.const 0x6e ) )
      (then
        (set_global $ns1\~pos (i32.sub
            (get_global $ns1\~pos )
            (i32.const 1 ) ) )
        (set_local $ns1\char (i32.load (get_global $ns1\~pos ) ) )
        (set_global $ns1\~pos (i32.add
            (get_global $ns1\~pos )
            (i32.const 4 ) ) )
        (if
          (i32.eq
            (get_local $ns1\char )
            (i32.const 0x6c6c756e ) )
          (then (set_local $ns1\value (i32.const 0 ) ) )
          (else
            (set_local $ns1\char (i32.const 0 ) )
            (set_local $ns1\err (i32.const 1 ) ) ) ) ) )
    (if
      (i32.eq
        (get_local $ns1\char )
        (i32.const 0x66 ) )
      (then
        (set_local $ns1\char (i32.load (get_global $ns1\~pos ) ) )
        (set_global $ns1\~pos (i32.add
            (get_global $ns1\~pos )
            (i32.const 4 ) ) )
        (if
          (i32.eq
            (get_local $ns1\char )
            (i32.const 0x65736c61 ) )
          (then (set_local $ns1\value (i32.const 1 ) ) )
          (else
            (set_local $ns1\char (i32.const 0 ) )
            (set_local $ns1\err (i32.const 1 ) ) ) ) ) )
    (if
      (i32.eq
        (get_local $ns1\char )
        (i32.const 0x74 ) )
      (then
        (set_global $ns1\~pos (i32.sub
            (get_global $ns1\~pos )
            (i32.const 1 ) ) )
        (set_local $ns1\char (i32.load (get_global $ns1\~pos ) ) )
        (set_global $ns1\~pos (i32.add
            (get_global $ns1\~pos )
            (i32.const 4 ) ) )
        (if
          (i32.eq
            (get_local $ns1\char )
            (i32.const 0x65757274 ) )
          (then (set_local $ns1\value (i32.const 5 ) ) )
          (else
            (set_local $ns1\char (i32.const 0 ) )
            (set_local $ns1\err (i32.const 1 ) ) ) ) ) )
    (if
      (i32.or
        (i32.eq
          (get_local $ns1\char )
          (i32.const 0x2d ) )
        (i32.and
          (i32.ge_u
            (get_local $ns1\char )
            (i32.const 0x30 ) )
          (i32.le_u
            (get_local $ns1\char )
            (i32.const 0x39 ) ) ) )
      (then
        (set_local $ns1\num (f64.const 0 ) )
        (set_local $ns1\exp (f64.const 0 ) )
        (if
          (i32.eq
            (get_local $ns1\char )
            (i32.const 0x2d ) )
          (then
            (set_local $ns1\neg (f64.const -1 ) )
            (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
            (set_global $ns1\~pos (i32.add
                (get_global $ns1\~pos )
                (i32.const 1 ) ) ) )
          (else (set_local $ns1\neg (f64.const 1 ) ) ) )
        (block (loop
            (br_if 1 (i32.or
                (i32.lt_u
                  (get_local $ns1\char )
                  (i32.const 0x30 ) )
                (i32.gt_u
                  (get_local $ns1\char )
                  (i32.const 0x39 ) ) ) )
            (set_local $ns1\num (f64.mul
                (get_local $ns1\num )
                (f64.const 10 ) ) )
            (set_local $ns1\num (f64.add
                (get_local $ns1\num )
                (f64.convert_u/i32 (i32.sub
                    (get_local $ns1\char )
                    (i32.const 0x30 ) ) ) ) )
            (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
            (set_global $ns1\~pos (i32.add
                (get_global $ns1\~pos )
                (i32.const 1 ) ) )
            (br 0 ) ) )
        (if
          (i32.eq
            (get_local $ns1\char )
            (i32.const 0x2e ) )
          (then
            (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
            (set_global $ns1\~pos (i32.add
                (get_global $ns1\~pos )
                (i32.const 1 ) ) )
            (block (loop
                (br_if 1 (i32.or
                    (i32.lt_u
                      (get_local $ns1\char )
                      (i32.const 0x30 ) )
                    (i32.gt_u
                      (get_local $ns1\char )
                      (i32.const 0x39 ) ) ) )
                (set_local $ns1\num (f64.mul
                    (get_local $ns1\num )
                    (f64.const 10 ) ) )
                (set_local $ns1\num (f64.add
                    (get_local $ns1\num )
                    (f64.convert_u/i32 (i32.sub
                        (get_local $ns1\char )
                        (i32.const 0x30 ) ) ) ) )
                (set_local $ns1\exp (f64.sub
                    (get_local $ns1\exp )
                    (f64.const 1 ) ) )
                (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
                (set_global $ns1\~pos (i32.add
                    (get_global $ns1\~pos )
                    (i32.const 1 ) ) )
                (br 0 ) ) )
            (block (loop
                (br_if 1 (f64.ge
                    (get_local $ns1\exp )
                    (f64.const 0 ) ) )
                (set_local $ns1\num (f64.div
                    (get_local $ns1\num )
                    (f64.const 10 ) ) )
                (set_local $ns1\exp (f64.add
                    (get_local $ns1\exp )
                    (f64.const 1 ) ) )
                (br 0 ) ) ) ) )
        (if
          (i32.eq
            (get_local $ns1\char )
            (i32.const 0x65 ) )
          (then (set_local $ns1\char (i32.sub
                (get_local $ns1\char )
                (i32.const 0x20 ) ) ) ) )
        (if
          (i32.eq
            (get_local $ns1\char )
            (i32.const 0x45 ) )
          (then
            (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
            (set_global $ns1\~pos (i32.add
                (get_global $ns1\~pos )
                (i32.const 1 ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x2d ) )
              (then
                (set_local $ns1\eneg (f64.const -1 ) )
                (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
                (set_global $ns1\~pos (i32.add
                    (get_global $ns1\~pos )
                    (i32.const 1 ) ) ) )
              (else (set_local $ns1\eneg (f64.const 1 ) ) ) )
            (block (loop
                (br_if 1 (i32.or
                    (i32.lt_u
                      (get_local $ns1\char )
                      (i32.const 0x30 ) )
                    (i32.gt_u
                      (get_local $ns1\char )
                      (i32.const 0x39 ) ) ) )
                (set_local $ns1\exp (f64.mul
                    (get_local $ns1\exp )
                    (f64.const 10 ) ) )
                (set_local $ns1\exp (f64.add
                    (get_local $ns1\exp )
                    (f64.convert_u/i32 (i32.sub
                        (get_local $ns1\char )
                        (i32.const 0x30 ) ) ) ) )
                (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
                (set_global $ns1\~pos (i32.add
                    (get_global $ns1\~pos )
                    (i32.const 1 ) ) )
                (br 0 ) ) )
            (set_local $ns1\exp (f64.mul
                (get_local $ns1\exp )
                (get_local $ns1\eneg ) ) )
            (block (loop
                (br_if 1 (f64.le
                    (get_local $ns1\exp )
                    (f64.const 0 ) ) )
                (set_local $ns1\num (f64.mul
                    (get_local $ns1\num )
                    (f64.const 10 ) ) )
                (set_local $ns1\exp (f64.sub
                    (get_local $ns1\exp )
                    (f64.const 1 ) ) )
                (br 0 ) ) )
            (block (loop
                (br_if 1 (f64.ge
                    (get_local $ns1\exp )
                    (f64.const 0 ) ) )
                (set_local $ns1\num (f64.div
                    (get_local $ns1\num )
                    (f64.const 10 ) ) )
                (set_local $ns1\exp (f64.add
                    (get_local $ns1\exp )
                    (f64.const 1 ) ) )
                (br 0 ) ) ) ) )
        (set_global $ns1\~pos (i32.sub
            (get_global $ns1\~pos )
            (i32.const 1 ) ) )
        (set_local $ns1\value (call $-number (f64.mul
              (get_local $ns1\num )
              (get_local $ns1\neg ) ) ) ) ) )
    (if
      (i32.eq
        (get_local $ns1\char )
        (i32.const 0x22 ) )
      (then
        (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
        (set_global $ns1\~pos (i32.add
            (get_global $ns1\~pos )
            (i32.const 1 ) ) )
        (set_local $ns1\value (call $-new_value
            (i32.const 3 )
            (i32.const 0 ) ) )
        (block (loop
            (br_if 1 (i32.eq
                (get_local $ns1\char )
                (i32.const 0x22 ) ) )
            (set_local $ns1\pos (call $-len (get_local $ns1\value ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x5c ) )
              (then
                (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
                (set_global $ns1\~pos (i32.add
                    (get_global $ns1\~pos )
                    (i32.const 1 ) ) )
                (call $-write8
                  (get_local $ns1\value )
                  (get_local $ns1\pos )
                  (get_local $ns1\char ) )
                (if
                  (i32.eq
                    (get_local $ns1\char )
                    (i32.const 0x62 ) )
                  (then (call $-write8
                      (get_local $ns1\value )
                      (get_local $ns1\pos )
                      (i32.const 0x08 ) ) ) )
                (if
                  (i32.eq
                    (get_local $ns1\char )
                    (i32.const 0x66 ) )
                  (then (call $-write8
                      (get_local $ns1\value )
                      (get_local $ns1\pos )
                      (i32.const 0x0c ) ) ) )
                (if
                  (i32.eq
                    (get_local $ns1\char )
                    (i32.const 0x6e ) )
                  (then (call $-write8
                      (get_local $ns1\value )
                      (get_local $ns1\pos )
                      (i32.const 0x0a ) ) ) )
                (if
                  (i32.eq
                    (get_local $ns1\char )
                    (i32.const 0x72 ) )
                  (then (call $-write8
                      (get_local $ns1\value )
                      (get_local $ns1\pos )
                      (i32.const 0x0d ) ) ) )
                (if
                  (i32.eq
                    (get_local $ns1\char )
                    (i32.const 0x74 ) )
                  (then (call $-write8
                      (get_local $ns1\value )
                      (get_local $ns1\pos )
                      (i32.const 0x09 ) ) ) )
                (if
                  (i32.eq
                    (get_local $ns1\char )
                    (i32.const 0x75 ) )
                  (then
                    (if
                      (i32.eqz (get_local $ns1\hex ) )
                      (then (set_local $ns1\hex (call $-new_value
                            (i32.const 3 )
                            (i32.const 4 ) ) ) ) )
                    (set_local $ns1\char (i32.load (get_global $ns1\~pos ) ) )
                    (set_global $ns1\~pos (i32.add
                        (get_global $ns1\~pos )
                        (i32.const 4 ) ) )
                    (call $-write32
                      (get_local $ns1\hex )
                      (i32.const 0 )
                      (get_local $ns1\char ) )
                    (set_local $ns1\char (call $-from_hex (get_local $ns1\hex ) ) )
                    (if
                      (i32.eq
                        (i32.and
                          (get_local $ns1\char )
                          (i32.const 0xfc00 ) )
                        (i32.const 0xd800 ) )
                      (then
                        (set_global $ns1\~pos (i32.add
                            (get_global $ns1\~pos )
                            (i32.const 2 ) ) )
                        (call $-write32
                          (get_local $ns1\hex )
                          (i32.const 0 )
                          (i32.load (get_global $ns1\~pos ) ) )
                        (set_global $ns1\~pos (i32.add
                            (get_global $ns1\~pos )
                            (i32.const 4 ) ) )
                        (set_local $ns1\hex (call $-from_hex (get_local $ns1\hex ) ) )
                        (set_local $ns1\char (i32.mul
                            (i32.sub
                              (get_local $ns1\char )
                              (i32.const 0xd800 ) )
                            (i32.const 0x400 ) ) )
                        (set_local $ns1\hex (i32.sub
                            (get_local $ns1\hex )
                            (i32.const 0xdc00 ) ) )
                        (set_local $ns1\char (i32.add
                            (i32.add
                              (get_local $ns1\char )
                              (get_local $ns1\hex ) )
                            (i32.const 0x10000 ) ) )
                        (set_local $ns1\char (call $-char (get_local $ns1\char ) ) )
                        (set_local $ns1\hex (i32.const 0 ) ) )
                      (else (set_local $ns1\char (call $-char (get_local $ns1\char ) ) ) ) )
                    (call $-write_to
                      (get_local $ns1\value )
                      (get_local $ns1\pos )
                      (get_local $ns1\char ) ) ) ) )
              (else (call $-write8
                  (get_local $ns1\value )
                  (get_local $ns1\pos )
                  (get_local $ns1\char ) ) ) )
            (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
            (set_global $ns1\~pos (i32.add
                (get_global $ns1\~pos )
                (i32.const 1 ) ) )
            (br 0 ) ) ) ) )
    (if
      (i32.eq
        (get_local $ns1\char )
        (i32.const 0x5b ) )
      (then
        (set_local $ns1\value (call $-new_value
            (i32.const 4 )
            (i32.const 0 ) ) )
        (set_local $ns1\char (call $ns1\~skip_whitespace ) )
        (set_local $ns1\err (i32.eqz (call $ns1\~skip_whitespace ) ) )
        (block (loop
            (br_if 1 (i32.or
                (get_local $ns1\err )
                (i32.eq
                  (get_local $ns1\char )
                  (i32.const 0x5d ) ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x2c ) )
              (then (set_global $ns1\~pos (i32.add
                    (get_global $ns1\~pos )
                    (i32.const 1 ) ) ) ) )
            (call $-write32
              (get_local $ns1\value )
              (call $-len (get_local $ns1\value ) )
              (call $ns1\~json_decode ) )
            (set_local $ns1\char (call $ns1\~skip_whitespace ) )
            (set_local $ns1\err (i32.eqz (call $ns1\~skip_whitespace ) ) )
            (br 0 ) ) )
        (if
          (i32.eq
            (get_local $ns1\char )
            (i32.const 0x5d ) )
          (then (set_global $ns1\~pos (i32.add
                (get_global $ns1\~pos )
                (i32.const 1 ) ) ) ) ) ) )
    (if
      (i32.eq
        (get_local $ns1\char )
        (i32.const 0x7b ) )
      (then
        (set_local $ns1\value (call $-new_value
            (i32.const 5 )
            (i32.const 0 ) ) )
        (set_local $ns1\char (call $ns1\~skip_whitespace ) )
        (set_local $ns1\err (i32.eqz (call $ns1\~skip_whitespace ) ) )
        (block (loop
            (br_if 1 (i32.or
                (get_local $ns1\err )
                (i32.eq
                  (get_local $ns1\char )
                  (i32.const 0x7d ) ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x2c ) )
              (then (set_global $ns1\~pos (i32.add
                    (get_global $ns1\~pos )
                    (i32.const 1 ) ) ) ) )
            (call $-write32
              (get_local $ns1\value )
              (call $-len (get_local $ns1\value ) )
              (call $ns1\~json_decode ) )
            (set_local $ns1\char (call $ns1\~skip_whitespace ) )
            (set_local $ns1\err (i32.eqz (call $ns1\~skip_whitespace ) ) )
            (if
              (i32.eq
                (get_local $ns1\char )
                (i32.const 0x3a ) )
              (then (set_global $ns1\~pos (i32.add
                    (get_global $ns1\~pos )
                    (i32.const 1 ) ) ) ) )
            (call $-write32
              (get_local $ns1\value )
              (call $-len (get_local $ns1\value ) )
              (call $ns1\~json_decode ) )
            (set_local $ns1\char (call $ns1\~skip_whitespace ) )
            (set_local $ns1\err (i32.eqz (call $ns1\~skip_whitespace ) ) )
            (br 0 ) ) )
        (if
          (i32.eq
            (get_local $ns1\char )
            (i32.const 0x7d ) )
          (then (set_global $ns1\~pos (i32.add
                (get_global $ns1\~pos )
                (i32.const 1 ) ) ) ) ) ) )
    (get_local $ns1\value ) )
  (func $ns1\~skip_whitespace
    (result i32 )
    (local $ns1\char i32 )
    (local $ns1\err i32 )
    (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
    (set_global $ns1\~pos (i32.add
        (get_global $ns1\~pos )
        (i32.const 1 ) ) )
    (block (loop
        (br_if 1 (i32.or
            (get_local $ns1\err )
            (i32.gt_u
              (get_local $ns1\char )
              (i32.const 0x20 ) ) ) )
        (if
          (i32.eqz (get_local $ns1\char ) )
          (then (set_local $ns1\err (i32.const 1 ) ) )
          (else
            (set_local $ns1\char (i32.load8_u (get_global $ns1\~pos ) ) )
            (set_global $ns1\~pos (i32.add
                (get_global $ns1\~pos )
                (i32.const 1 ) ) ) ) )
        (br 0 ) ) )
    (set_global $ns1\~pos (i32.sub
        (get_global $ns1\~pos )
        (i32.const 1 ) ) )
    (get_local $ns1\char ) )

  ;; function $ns2\reset

  (func $ns2\reset
    (result i32 )
    (local $-obj0 i32 )
    (local $-obj1 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop (call $ns2\rewind ) )
      (drop
        (set_global $ns2\error (i32.const 0 ) )
        (get_global $ns2\error ) )
      (drop
        (set_global $ns2\sections
          (tee_local $-obj0 (call $-new_value
              (i32.const 5 )
              (i32.const 0 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 8 )
              (tee_local $-obj1 (call $-new_value
                  (i32.const 5 )
                  (i32.const 0 ) ) )
              (drop
                (call $-set_to_obj
                  (get_local $-obj1 )
                  (i32.const 9 )
                  (call $-number (f64.const 0 ) ) )
                (call $-get_from_obj
                  (get_local $-obj1 )
                  (i32.const 9 ) ) )
              (drop
                (call $-set_to_obj
                  (get_local $-obj1 )
                  (i32.const 10 )
                  (call $-new_value
                    (i32.const 6 )
                    (i32.const 0 ) ) )
                (call $-get_from_obj
                  (get_local $-obj1 )
                  (i32.const 10 ) ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 8 ) ) ) )
        (get_global $ns2\sections ) )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns2\rewind

  (func $ns2\rewind
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop
        (set_global $ns2\pos (call $-number (f64.const 0 ) ) )
        (get_global $ns2\pos ) )
      (drop
        (set_global $ns2\line (call $-number (f64.const 0 ) ) )
        (get_global $ns2\line ) )
      (drop
        (set_global $ns2\column (call $-number (f64.const 0 ) ) )
        (get_global $ns2\column ) )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns2\assemble

  (func $ns2\assemble
    (param $ns2\wast i32 )
    (result i32 )
    (local $ns2\tokens i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop (call $ns2\reset ) )
      (drop
        (set_global $ns2\src (get_local $ns2\wast ) )
        (get_global $ns2\src ) )
      (drop
        (set_local $ns2\tokens (call $-new_value
            (i32.const 4 )
            (i32.const 0 ) ) )
        (get_local $ns2\tokens ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (call $-unequal
                (get_local $ns2\token )
                (i32.const 11 ) ) ) )
          (block
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop
        (set_local $ns2\tokens (call $ns2\read_parens ) )
        (get_local $ns2\tokens ) )
      (if
        (call $-truthy (get_global $ns2\error ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (if
        (i32.eqz (get_local $-success ) )
        (then
          (set_local $-ret (call $ns1\json_encode (get_local $ns2\tokens ) ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns2\croak

  (func $ns2\croak
    (param $ns2\message i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop
        (set_global $ns2\error (call $-add
            (call $-add
              (call $-add
                (call $-add
                  (call $-add
                    (get_local $ns2\message )
                    (i32.const 12 ) )
                  (get_global $ns2\line ) )
                (i32.const 13 ) )
              (get_global $ns2\column ) )
            (i32.const 14 ) ) )
        (get_global $ns2\error ) )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns2\is_eof

  (func $ns2\is_eof
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (set_local $-ret (call $-ge
          (get_global $ns2\pos )
          (call $ns1\size_of (get_global $ns2\src ) ) ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns2\read_char

  (func $ns2\read_char
    (result i32 )
    (local $ns2\char i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop
        (set_local $ns2\char (call $-add
            (i32.const 3 )
            (call $ns1\binary_slice
              (get_global $ns2\src )
              (get_global $ns2\pos )
              (call $-number (f64.const 1 ) ) ) ) )
        (get_local $ns2\char ) )
      (drop
        (set_global $ns2\pos (call $-inc
            (get_global $ns2\pos )
            (f64.const 1 ) ) )
        (get_global $ns2\pos ) )
      (drop
        (set_global $ns2\column (call $-inc
            (get_global $ns2\column )
            (f64.const 1 ) ) )
        (get_global $ns2\column ) )
      (if
        (call $-truthy (call $-equal
            (get_local $ns2\char )
            (i32.const 15 ) ) )
        (then
          (drop
            (set_global $ns2\line (call $-inc
                (get_global $ns2\line )
                (f64.const 1 ) ) )
            (get_global $ns2\line ) )
          (drop
            (set_global $ns2\column (call $-number (f64.const 0 ) ) )
            (get_global $ns2\column ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (set_local $-ret (get_local $ns2\char ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns2\peek_char

  (func $ns2\peek_char
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (set_local $-ret (call $-add
          (i32.const 3 )
          (call $ns1\binary_slice
            (get_global $ns2\src )
            (get_global $ns2\pos )
            (call $-number (f64.const 1 ) ) ) ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns2\read_token

  (func $ns2\read_token
    (result i32 )
    (local $ns2\token i32 )
    (local $ns2\char i32 )
    (local $ns2\illegals i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop (get_local $ns2\token ) )
      (drop
        (set_local $ns2\char (call $ns2\peek_char ) )
        (get_local $ns2\char ) )
      (block (loop
          (br_if 1 (call $-falsy (call $-and
                (call $-le
                  (call $ns1\char_code
                    (get_local $ns2\char )
                    (i32.const 0 ) )
                  (call $-number (f64.const 0x20 ) ) )
                (call $-equal
                  (i32.const 1 )
                  (call $ns2\is_eof ) ) ) ) )
          (block
            (drop (call $ns2\read_char ) )
            (drop
              (set_local $ns2\char (call $ns2\peek_char ) )
              (get_local $ns2\char ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (if
        (call $-truthy (call $-equal
            (get_local $ns2\char )
            (i32.const 11 ) ) )
        (then
          (drop
            (set_local $ns2\token (call $ns2\read_char ) )
            (get_local $ns2\token ) )
          (drop
            (set_local $ns2\char (call $ns2\peek_char ) )
            (get_local $ns2\char ) )
          (if
            (call $-truthy (call $-equal
                (get_local $ns2\char )
                (i32.const 16 ) ) )
            (then
              (drop
                (set_local $ns2\token (get_local $ns2\char ) )
                (get_local $ns2\token ) )
              (block (loop
                  (br_if 1 (call $-falsy (call $-and
                        (call $-equal
                          (call $ns1\binary_search
                            (get_local $ns2\token )
                            (i32.const 17 )
                            (i32.const 0 ) )
                          (i32.const 0 ) )
                        (call $-equal
                          (i32.const 1 )
                          (call $ns2\is_eof ) ) ) ) )
                  (block
                    (drop
                      (set_local $ns2\char (call $ns2\read_char ) )
                      (get_local $ns2\char ) )
                    (drop (call $ns1\binary_write
                        (get_local $ns2\token )
                        (call $ns1\size_of (get_local $ns2\token ) )
                        (get_local $ns2\char ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (br 0 ) ) )
              (set_local $-success (i32.const 1 ) ) )
            (else (set_local $-success (i32.const 0 ) ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (if
        (i32.and
          (i32.eqz (get_local $-success ) )
          (call $-truthy (call $-equal
              (get_local $ns2\char )
              (i32.const 18 ) ) ) )
        (then
          (drop
            (set_local $ns2\token (call $ns2\read_char ) )
            (get_local $ns2\token ) )
          (set_local $-success (i32.const 1 ) ) ) )
      (if
        (i32.and
          (i32.eqz (get_local $-success ) )
          (call $-truthy (call $-equal
              (get_local $ns2\char )
              (i32.const 19 ) ) ) )
        (then
          (drop
            (set_local $ns2\token (call $ns2\read_char ) )
            (get_local $ns2\token ) )
          (drop
            (set_local $ns2\char (call $ns2\read_char ) )
            (get_local $ns2\char ) )
          (block (loop
              (br_if 1 (call $-falsy (call $-and
                    (call $-unequal
                      (get_local $ns2\char )
                      (i32.const 19 ) )
                    (call $-equal
                      (i32.const 1 )
                      (call $ns2\is_eof ) ) ) ) )
              (block
                (drop (call $ns1\binary_write
                    (get_local $ns2\token )
                    (call $ns1\size_of (get_local $ns2\token ) )
                    (get_local $ns2\char ) ) )
                (if
                  (call $-truthy (call $-equal
                      (get_local $ns2\char )
                      (i32.const 20 ) ) )
                  (then
                    (drop
                      (set_local $ns2\char (call $ns2\read_char ) )
                      (get_local $ns2\char ) )
                    (drop (call $ns1\binary_write
                        (get_local $ns2\token )
                        (call $ns1\size_of (get_local $ns2\token ) )
                        (get_local $ns2\char ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (drop
                  (set_local $ns2\char (call $ns2\read_char ) )
                  (get_local $ns2\char ) )
                (set_local $-success (i32.const 1 ) ) )
              (br 0 ) ) )
          (drop (call $ns1\binary_write
              (get_local $ns2\token )
              (call $ns1\size_of (get_local $ns2\token ) )
              (get_local $ns2\char ) ) )
          (set_local $-success (i32.const 1 ) ) ) )
      (if
        (i32.and
          (i32.eqz (get_local $-success ) )
          (call $-truthy (call $-equal
              (get_local $ns2\char )
              (i32.const 16 ) ) ) )
        (then
          (drop
            (set_local $ns2\token (call $ns2\read_char ) )
            (get_local $ns2\token ) )
          (drop
            (set_local $ns2\char (call $ns2\peek_char ) )
            (get_local $ns2\char ) )
          (if
            (call $-truthy (call $-equal
                (get_local $ns2\char )
                (i32.const 16 ) ) )
            (then
              (block (loop
                  (br_if 1 (call $-falsy (call $-and
                        (call $-unequal
                          (get_local $ns2\char )
                          (i32.const 15 ) )
                        (call $-equal
                          (i32.const 1 )
                          (call $ns2\is_eof ) ) ) ) )
                  (block
                    (drop
                      (set_local $ns2\char (call $ns2\read_char ) )
                      (get_local $ns2\char ) )
                    (drop (call $ns1\binary_write
                        (get_local $ns2\token )
                        (call $ns1\size_of (get_local $ns2\token ) )
                        (get_local $ns2\char ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (br 0 ) ) )
              (set_local $-success (i32.const 1 ) ) )
            (else (set_local $-success (i32.const 0 ) ) ) )
          (set_local $-success (i32.const 1 ) ) ) )
      (if
        (i32.eqz (get_local $-success ) )
        (then
          (drop
            (set_local $ns2\token (call $-add
                (i32.const 3 )
                (call $-new_value
                  (i32.const 6 )
                  (i32.const 0 ) ) ) )
            (get_local $ns2\token ) )
          (drop
            (set_local $ns2\illegals (i32.const 21 ) )
            (get_local $ns2\illegals ) )
          (block (loop
              (br_if 1 (call $-falsy (call $-and
                    (call $-and
                      (call $-gt
                        (call $ns1\char_code
                          (get_local $ns2\char )
                          (i32.const 0 ) )
                        (call $-number (f64.const 0x20 ) ) )
                      (call $-equal
                        (i32.const 1 )
                        (call $ns2\is_eof ) ) )
                    (call $-equal
                      (call $ns1\binary_search
                        (get_local $ns2\illegals )
                        (get_local $ns2\char )
                        (i32.const 0 ) )
                      (i32.const 0 ) ) ) ) )
              (block
                (drop (call $ns1\binary_write
                    (get_local $ns2\token )
                    (call $ns1\size_of (get_local $ns2\token ) )
                    (get_local $ns2\char ) ) )
                (drop
                  (set_global $ns2\pos (call $-inc
                      (get_global $ns2\pos )
                      (f64.const 1 ) ) )
                  (get_global $ns2\pos ) )
                (drop
                  (set_local $ns2\char (call $ns2\peek_char ) )
                  (get_local $ns2\char ) )
                (set_local $-success (i32.const 1 ) ) )
              (br 0 ) ) )
          (set_local $-success (i32.const 1 ) ) ) )
      (set_local $-ret (get_local $ns2\token ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )

  ;; function $ns2\read_parens

  (func $ns2\read_parens
    (result i32 )
    (local $ns2\out i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (block
      (drop
        (set_local $ns2\out (call $-new_value
            (i32.const 4 )
            (i32.const 0 ) ) )
        (get_local $ns2\out ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (call $-and
                (get_local $ns2\token )
                (call $-unequal
                  (get_local $ns2\token )
                  (i32.const 18 ) ) ) ) )
          (block
            (if
              (call $-truthy (call $-equal
                  (get_local $ns2\token )
                  (i32.const 11 ) ) )
              (then
                (drop (call $ns1\array_push
                    (get_local $ns2\out )
                    (call $ns2\read_parens ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (i32.eqz (get_local $-success ) )
              (then
                (drop (call $ns1\array_push
                    (get_local $ns2\out )
                    (get_local $ns2\token ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (set_local $-ret (get_local $ns2\out ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (get_local $-ret ) )
  (func $ns3\write_varuint
    (param $ns3\id i32 )
    (param $ns3\num i32 )
    (result i32 )
    (local $ns3\len i32 )
    (set_local $ns3\len (call $-len (get_local $ns3\id ) ) )
    (set_local $ns3\num (call $-i32_u (get_local $ns3\num ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $ns3\num ) ) )
        (if
          (i32.lt_u
            (get_local $ns3\num )
            (i32.const 128 ) )
          (then (call $-write8
              (get_local $ns3\id )
              (get_local $ns3\len )
              (i32.rem_u
                (get_local $ns3\num )
                (i32.const 128 ) ) ) )
          (else (call $-write8
              (get_local $ns3\id )
              (get_local $ns3\len )
              (i32.and
                (i32.rem_u
                  (get_local $ns3\num )
                  (i32.const 128 ) )
                (i32.const 128 ) ) ) ) )
        (set_local $ns3\len (i32.add
            (get_local $ns3\len )
            (i32.const 1 ) ) )
        (set_local $ns3\num (i32.shr_u
            (get_local $ns3\num )
            (i32.const 7 ) ) )
        (br 0 ) ) )
    (get_local $ns3\id ) )

  ;; start

  (func $-start
    (local $-success i32 )
    (local $-ret i32 )
    (call $-initruntime )
    (call $-resize
      (i32.const -1 )
      (i32.const 176 ) )
    (drop (call $-string
        (i32.const 65536 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 65552 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 65568 )
        (i32.const 3 ) ) )
    (drop (call $-string
        (i32.const 65584 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 65600 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 65624 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 65648 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 65664 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 65680 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 65696 )
        (i32.const 2 ) ) )
    (drop (call $-string
        (i32.const 65712 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 65728 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 65744 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 65760 )
        (i32.const 4 ) ) )
    (call $-zerorefs )
    (drop (get_global $ns2\error ) )
    (drop (get_global $ns2\src ) )
    (drop (get_global $ns2\pos ) )
    (drop (get_global $ns2\line ) )
    (drop (get_global $ns2\column ) )
    (drop (get_global $ns2\sections ) ) )
  (start $-start )

  ;; exports

  (export "memory" (memory $-memory ) )
  (func $--ns0\init
    (result f64 )
    (call $-funcstart )
    (call $-f64 (call $ns0\init ) )
    (call $-funcend ) )
  (export "init" (func $--ns0\init ) )

  ;; runtime


  ;; memory management

  (global $-totmem
    (mut i32 )
    (i32.const 0 ) )
  (func $-initruntime
    (set_global $-totmem (i32.mul
        (i32.const 65536 )
        (current_memory ) ) )
    (i32.store
      (i32.const 0 )
      (i32.sub
        (i32.mul
          (i32.const 65536 )
          (current_memory ) )
        (i32.const 8 ) ) )
    (set_global $-mindex (call $-alloc (i32.const 8 ) ) ) )

  ;; function wrapper

  (global $-calls
    (mut i32 )
    (i32.const 0 ) )
  (func $-funcstart
    (if
      (i32.eqz (get_global $-calls ) )
      (then (call $-traceGC ) ) )
    (set_global $-calls (i32.add
        (get_global $-calls )
        (i32.const 1 ) ) ) )
  (func $-funcend (if
      (get_global $-calls )
      (then (set_global $-calls (i32.sub
            (get_global $-calls )
            (i32.const 1 ) ) ) ) ) )

  ;; allocate memory

  (global $-last_alloc
    (mut i32 )
    (i32.const 0 ) )
  (func $-alloc
    (param $len i32 )
    (result i32 )
    (local $offset i32 )
    (local $offset2 i32 )
    (local $space i32 )
    (local $space2 i32 )
    (local $totmem i32 )
    (local $allowgrow i32 )
    (if
      (get_global $-last_alloc )
      (then
        (set_local $offset (i32.sub
            (get_global $-last_alloc )
            (i32.const 8 ) ) )
        (set_local $offset (i32.sub
            (get_local $offset )
            (i32.load (get_local $offset ) ) ) ) )
      (else (set_local $allowgrow (i32.const 1 ) ) ) )

    ;; how much space is here at the beginning?

    (set_local $space (i32.load (get_local $offset ) ) )

    ;; round down to nearest multiple of 8

    (set_local $space (i32.and
        (get_local $space )
        (i32.const -8 ) ) )
    (block (loop

        ;; is there enough space here?

        (br_if 1 (i32.gt_u
            (get_local $space )
            (i32.add
              (get_local $len )
              (i32.const 32 ) ) ) )

        ;; skip the space

        (set_local $offset (i32.add
            (i32.add
              (get_local $offset )
              (get_local $space ) )
            (i32.const 4 ) ) )

        ;; how much data is here?

        (set_local $space (i32.load (get_local $offset ) ) )

        ;; is this the end of memory?

        (if
          (i32.le_u
            (i32.sub
              (get_global $-totmem )
              (get_local $offset ) )
            (i32.const 8 ) )
          (then ;; are we allowed to grow memory?
 (if
              (get_local $allowgrow )
              (then
                (set_local $offset2 (i32.add
                    (get_global $-totmem )
                    (i32.const 8 ) ) )
                (drop (grow_memory (current_memory ) ) )
                (set_global $-totmem (i32.mul
                    (i32.const 65536 )
                    (current_memory ) ) )
                (i32.store
                  (get_local $offset2 )
                  (i32.sub
                    (get_global $-totmem )
                    (i32.add
                      (i32.const 8 )
                      (get_local $offset2 ) ) ) )
                (call $-dealloc (i32.sub
                    (get_local $offset2 )
                    (i32.const 8 ) ) )
                (set_local $space (i32.load (i32.const 0 ) ) )
                (set_local $offset (i32.add
                    (get_local $space )
                    (i32.const 4 ) ) )
                (set_local $space (i32.load (get_local $offset ) ) ) )
              (else

                ;; first time? start from beginning

                (set_local $allowgrow (i32.const 1 ) )
                (set_local $offset (i32.const 0 ) )
                (set_local $space (i32.load (get_local $offset ) ) )
                (set_local $space (i32.and
                    (get_local $space )
                    (i32.const -8 ) ) )
                (set_local $offset (i32.add
                    (i32.add
                      (get_local $offset )
                      (get_local $space ) )
                    (i32.const 4 ) ) )
                (set_local $space (i32.load (get_local $offset ) ) ) ) ) ) )

        ;; skip the data

        (set_local $offset (i32.add
            (i32.add
              (get_local $offset )
              (get_local $space ) )
            (i32.const 4 ) ) )

        ;; align to next multiple of 8

        (set_local $offset (i32.add
            (i32.and
              (get_local $offset )
              (i32.const -8 ) )
            (i32.const 8 ) ) )

        ;; how much space is here?

        (set_local $space (i32.load (get_local $offset ) ) )

        ;; round down to nearest multiple of 8

        (set_local $space (i32.and
            (get_local $space )
            (i32.const -8 ) ) )
        (br 0 ) ) )

    ;; claim the space

    (i32.store
      (get_local $offset )
      (i32.const 0 ) )
    (set_local $offset2 (i32.add
        (get_local $offset )
        (i32.const 4 ) ) )
    (i32.store
      (get_local $offset2 )
      (get_local $len ) )

    ;; skip allocation

    (set_local $offset2 (i32.add
        (i32.add
          (get_local $offset2 )
          (get_local $len ) )
        (i32.const 4 ) ) )

    ;; round down to nearest multiple of 8

    (set_local $offset2 (i32.and
        (get_local $offset2 )
        (i32.const -8 ) ) )

    ;; set terminator

    (i64.store
      (get_local $offset2 )
      (i64.const 0 ) )
    (set_local $offset2 (i32.add
        (get_local $offset2 )
        (i32.const 8 ) ) )

    ;; how much less space is there now?

    (set_local $space2 (i32.sub
        (get_local $space )
        (i32.sub
          (get_local $offset2 )
          (get_local $offset ) ) ) )

    ;; mark the space at both ends

    (i32.store
      (get_local $offset2 )
      (get_local $space2 ) )
    (set_local $offset2 (i32.add
        (get_local $offset2 )
        (get_local $space2 ) ) )
    (i32.store
      (get_local $offset2 )
      (get_local $space2 ) )

    ;; zerofill allocation

    (set_local $offset (i32.add
        (i32.const 8 )
        (get_local $offset ) ) )
    (call $-memzero
      (get_local $offset )
      (get_local $len ) )

    ;; return offset where the data is supposed to begin

    (set_global $-last_alloc (get_local $offset ) )
    (return (get_local $offset ) ) )

  ;; deallocate memory

  (func $-dealloc
    (param $offset i32 )
    (local $offset i32 )
    (local $offset2 i32 )
    (local $space i32 )
    (local $space2 i32 )
    (if
      (i32.eq
        (get_local $offset )
        (get_global $-last_alloc ) )
      (then (set_global $-last_alloc (i32.const 0 ) ) ) )
    (set_local $offset (i32.sub
        (i32.and
          (get_local $offset )
          (i32.const -8 ) )
        (i32.const 8 ) ) )
    (set_local $space (i32.load (get_local $offset ) ) )
    (set_local $space (i32.and
        (get_local $space )
        (i32.const -8 ) ) )
    (set_local $offset (i32.sub
        (get_local $offset )
        (get_local $space ) ) )
    (set_local $offset2 (i32.add
        (i32.add
          (get_local $offset )
          (get_local $space ) )
        (i32.const 4 ) ) )
    (set_local $space2 (i32.load (get_local $offset2 ) ) )
    (set_local $offset2 (i32.add
        (i32.add
          (get_local $offset2 )
          (get_local $space2 ) )
        (i32.const 4 ) ) )
    (set_local $offset2 (i32.add
        (i32.and
          (get_local $offset2 )
          (i32.const -8 ) )
        (i32.const 8 ) ) )
    (set_local $space2 (i32.load (get_local $offset2 ) ) )
    (set_local $space2 (i32.and
        (get_local $space2 )
        (i32.const -8 ) ) )
    (set_local $offset2 (i32.add
        (get_local $offset2 )
        (get_local $space2 ) ) )
    (set_local $space (i32.sub
        (get_local $offset2 )
        (get_local $offset ) ) )
    (i32.store
      (get_local $offset )
      (get_local $space ) )
    (i32.store
      (get_local $offset2 )
      (get_local $space ) ) )

  ;; zerofill memory

  (func $-memzero
    (param $offset i32 )
    (param $len i32 )
    (block (loop
        (br_if 1 (i32.lt_u
            (get_local $len )
            (i32.const 8 ) ) )
        (i64.store
          (get_local $offset )
          (i64.const 0 ) )
        (set_local $offset (i32.add
            (get_local $offset )
            (i32.const 8 ) ) )
        (set_local $len (i32.sub
            (get_local $len )
            (i32.const 8 ) ) )
        (br 0 ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $len ) ) )
        (i32.store8
          (get_local $offset )
          (i32.const 0 ) )
        (set_local $offset (i32.add
            (get_local $offset )
            (i32.const 1 ) ) )
        (set_local $len (i32.sub
            (get_local $len )
            (i32.const 1 ) ) )
        (br 0 ) ) ) )

  ;; copy memory

  (func $-memcopy
    (param $from i32 )
    (param $to i32 )
    (param $len i32 )
    (local $delta i32 )
    (if
      (i32.lt_u
        (get_local $from )
        (get_local $to ) )
      (then
        (set_local $delta (i32.const -8 ) )
        (set_local $from (i32.add
            (get_local $from )
            (get_local $len ) ) )
        (set_local $to (i32.add
            (get_local $to )
            (get_local $len ) ) )
        (block (loop
            (br_if 1 (i32.lt_s
                (get_local $len )
                (i32.const 8 ) ) )
            (set_local $from (i32.add
                (get_local $from )
                (get_local $delta ) ) )
            (set_local $to (i32.add
                (get_local $to )
                (get_local $delta ) ) )
            (i64.store
              (get_local $to )
              (i64.load (get_local $from ) ) )
            (set_local $len (i32.sub
                (get_local $len )
                (i32.const 8 ) ) )
            (br 0 ) ) )
        (set_local $delta (i32.const -1 ) )
        (block (loop
            (br_if 1 (i32.lt_s
                (get_local $len )
                (i32.const 1 ) ) )
            (set_local $from (i32.add
                (get_local $from )
                (get_local $delta ) ) )
            (set_local $to (i32.add
                (get_local $to )
                (get_local $delta ) ) )
            (i32.store8
              (get_local $to )
              (i32.load8_u (get_local $from ) ) )
            (set_local $len (i32.sub
                (get_local $len )
                (i32.const 1 ) ) )
            (br 0 ) ) ) )
      (else
        (set_local $delta (i32.const 8 ) )
        (block (loop
            (br_if 1 (i32.lt_s
                (get_local $len )
                (i32.const 8 ) ) )
            (i64.store
              (get_local $to )
              (i64.load (get_local $from ) ) )
            (set_local $from (i32.add
                (get_local $from )
                (get_local $delta ) ) )
            (set_local $to (i32.add
                (get_local $to )
                (get_local $delta ) ) )
            (set_local $len (i32.sub
                (get_local $len )
                (i32.const 8 ) ) )
            (br 0 ) ) )
        (set_local $delta (i32.const 1 ) )
        (block (loop
            (br_if 1 (i32.lt_s
                (get_local $len )
                (i32.const 1 ) ) )
            (i32.store8
              (get_local $to )
              (i32.load8_u (get_local $from ) ) )
            (set_local $from (i32.add
                (get_local $from )
                (get_local $delta ) ) )
            (set_local $to (i32.add
                (get_local $to )
                (get_local $delta ) ) )
            (set_local $len (i32.sub
                (get_local $len )
                (i32.const 1 ) ) )
            (br 0 ) ) ) ) ) )

  ;; memory index

  (global $-mindex
    (mut i32 )
    (i32.const 0 ) )

  ;; offset of memory allocation

  (func $-offset
    (param $id i32 )
    (result i32 )
    (local $offset i32 )
    (if
      (i32.eq
        (get_local $id )
        (i32.const -1 ) )
      (then (set_local $offset (get_global $-mindex ) ) )
      (else (if
          (i32.lt_u
            (get_local $id )
            (i32.const 8 ) )
          (then (set_local $offset (i32.const 0 ) ) )
          (else
            (set_local $id (i32.sub
                (get_local $id )
                (i32.const 8 ) ) )
            (if
              (i32.gt_u
                (call $-len (i32.const -1 ) )
                (i32.mul
                  (i32.const 8 )
                  (get_local $id ) ) )
              (then
                (set_local $offset (i32.add
                    (get_global $-mindex )
                    (i32.mul
                      (i32.const 8 )
                      (get_local $id ) ) ) )
                (set_local $offset (i32.load (get_local $offset ) ) ) ) ) ) ) ) )
    (set_local $offset (i32.and
        (get_local $offset )
        (i32.const -8 ) ) )
    (get_local $offset ) )

  ;; datatype of memory allocation

  (func $-datatype
    (param $id i32 )
    (result i32 )
    (local $datatype i32 )
    (if
      (i32.eq
        (get_local $id )
        (i32.const -1 ) )
      (then (set_local $datatype (i32.const 7 ) ) )
      (else (if
          (i32.lt_u
            (get_local $id )
            (i32.const 8 ) )
          (then (set_local $datatype (i32.and
                (get_local $id )
                (i32.const 3 ) ) ) )
          (else
            (set_local $datatype (i32.sub
                (get_global $-mindex )
                (i32.const 64 ) ) )
            (set_local $datatype (i32.add
                (get_local $datatype )
                (i32.add
                  (i32.mul
                    (i32.const 8 )
                    (get_local $id ) )
                  (i32.const 6 ) ) ) )
            (set_local $datatype (i32.load8_u (get_local $datatype ) ) ) ) ) ) )
    (get_local $datatype ) )

  ;; length of memory allocation

  (func $-len
    (param $id i32 )
    (result i32 )
    (local $offset i32 )
    (local $len i32 )
    (set_local $offset (call $-offset (get_local $id ) ) )
    (if
      (get_local $offset )
      (then (set_local $len (i32.load (i32.sub
              (get_local $offset )
              (i32.const 4 ) ) ) ) ) )
    (get_local $len ) )

  ;; resize memory allocation

  (func $-resize
    (param $id i32 )
    (param $newlen i32 )
    (local $offset i32 )
    (local $len i32 )
    (local $spaceafter i32 )
    (local $newoffset i32 )
    (if
      (i32.eq
        (get_local $id )
        (i32.const -1 ) )
      (then
        (set_local $len (i32.const 1 ) )
        (block (loop
            (br_if 1 (i32.ge_u
                (get_local $len )
                (get_local $newlen ) ) )
            (set_local $len (i32.mul
                (get_local $len )
                (i32.const 2 ) ) )
            (br 0 ) ) )
        (set_local $newlen (get_local $len ) ) ) )
    (set_local $offset (call $-offset (get_local $id ) ) )
    (if
      (get_local $offset )
      (then

        ;; the value is in memory

        (set_local $len (i32.load (i32.sub
              (get_local $offset )
              (i32.const 4 ) ) ) )
        (if
          (i32.eq
            (i32.and
              (get_local $len )
              (i32.const -8 ) )
            (i32.and
              (get_local $newlen )
              (i32.const -8 ) ) )
          (then

            ;; the old and new lengths are (almost) the same

            (i32.store
              (i32.sub
                (get_local $offset )
                (i32.const 4 ) )
              (get_local $newlen ) )
            (if
              (i32.gt_u
                (get_local $len )
                (get_local $newlen ) )
              (then ;; shrink
 (call $-memzero
                  (i32.add
                    (get_local $offset )
                    (get_local $newlen ) )
                  (i32.sub
                    (get_local $len )
                    (get_local $newlen ) ) ) )
              (else ;; grow
 (call $-memzero
                  (i32.add
                    (get_local $offset )
                    (get_local $len ) )
                  (i32.sub
                    (get_local $newlen )
                    (get_local $len ) ) ) ) ) )
          (else
            (set_local $spaceafter (i32.load (i32.add
                  (get_local $offset )
                  (i32.add
                    (i32.and
                      (get_local $len )
                      (i32.const -8 ) )
                    (i32.const 8 ) ) ) ) )
            (if
              (i32.or
                (i32.gt_u
                  (get_local $len )
                  (get_local $newlen ) )
                (i32.gt_u
                  (get_local $spaceafter )
                  (i32.sub
                    (get_local $newlen )
                    (get_local $len ) ) ) )
              (then

                ;; we can resize in-place

                (set_local $spaceafter (i32.add
                    (get_local $spaceafter )
                    (i32.sub
                      (i32.and
                        (get_local $len )
                        (i32.const -8 ) )
                      (i32.and
                        (get_local $newlen )
                        (i32.const -8 ) ) ) ) )
                (i32.store
                  (i32.sub
                    (get_local $offset )
                    (i32.const 4 ) )
                  (get_local $newlen ) )
                (if
                  (i32.gt_u
                    (get_local $len )
                    (get_local $newlen ) )
                  (then ;; shrink
 (call $-memzero
                      (i32.add
                        (get_local $offset )
                        (get_local $newlen ) )
                      (i32.sub
                        (get_local $len )
                        (get_local $newlen ) ) ) )
                  (else ;; grow
 (call $-memzero
                      (i32.add
                        (get_local $offset )
                        (get_local $len ) )
                      (i32.sub
                        (get_local $newlen )
                        (get_local $len ) ) ) ) )
                (i32.store
                  (i32.add
                    (get_local $offset )
                    (i32.add
                      (i32.and
                        (get_local $newlen )
                        (i32.const -8 ) )
                      (i32.const 8 ) ) )
                  (get_local $spaceafter ) )
                (i32.store
                  (i32.add
                    (i32.add
                      (get_local $offset )
                      (i32.add
                        (i32.and
                          (get_local $newlen )
                          (i32.const -8 ) )
                        (i32.const 8 ) ) )
                    (get_local $spaceafter ) )
                  (get_local $spaceafter ) ) )
              (else

                ;; we need to re-allocate

                (set_local $newoffset (call $-alloc (i32.mul
                      (get_local $newlen )
                      (i32.const 2 ) ) ) )
                (call $-memcopy
                  (get_local $offset )
                  (get_local $newoffset )
                  (get_local $len ) )
                (call $-dealloc (get_local $offset ) )
                (if
                  (i32.eq
                    (get_local $id )
                    (i32.const -1 ) )
                  (then (set_global $-mindex (get_local $newoffset ) ) )
                  (else (call $-write32
                      (i32.const -1 )
                      (i32.mul
                        (i32.sub
                          (get_local $id )
                          (i32.const 8 ) )
                        (i32.const 8 ) )
                      (get_local $newoffset ) ) ) )
                (drop (call $-new_value
                    (i32.const 6 )
                    (i32.const 1 ) ) )
                (drop (call $-new_value
                    (i32.const 6 )
                    (i32.const 1 ) ) )
                (call $-resize
                  (get_local $id )
                  (get_local $newlen ) ) ) ) ) ) ) ) )

  ;; set datatype of memory allocation

  (func $-set_datatype
    (param $id i32 )
    (param $datatype i32 )
    (result i32 )
    (local $offset i32 )
    (if
      (i32.eq
        (get_local $id )
        (i32.const -1 ) )
      (then (set_local $datatype (i32.const 7 ) ) )
      (else (if
          (i32.lt_u
            (get_local $id )
            (i32.const 8 ) )
          (then (set_local $datatype (i32.and
                (get_local $id )
                (i32.const 3 ) ) ) )
          (else
            (set_local $offset (i32.sub
                (get_global $-mindex )
                (i32.const 64 ) ) )
            (set_local $offset (i32.add
                (get_local $offset )
                (i32.add
                  (i32.mul
                    (i32.const 8 )
                    (get_local $id ) )
                  (i32.const 6 ) ) ) )
            (i32.store8
              (get_local $offset )
              (get_local $datatype ) ) ) ) ) )
    (get_local $id ) )

  ;; read from memory allocation

  (func $-read8
    (param $id i32 )
    (param $pos i32 )
    (result i32 )
    (local $offset i32 )
    (local $data i32 )
    (set_local $offset (call $-offset (get_local $id ) ) )
    (if
      (i32.lt_u
        (get_local $pos )
        (call $-len (get_local $id ) ) )
      (then (set_local $data (i32.load8_u (i32.add
              (get_local $offset )
              (get_local $pos ) ) ) ) ) )
    (get_local $data ) )
  (func $-read16
    (param $id i32 )
    (param $pos i32 )
    (result i32 )
    (local $offset i32 )
    (local $data i32 )
    (set_local $offset (call $-offset (get_local $id ) ) )
    (if
      (i32.lt_u
        (i32.add
          (get_local $pos )
          (i32.const 1 ) )
        (call $-len (get_local $id ) ) )
      (then (set_local $data (i32.load16_u (i32.add
              (get_local $offset )
              (get_local $pos ) ) ) ) ) )
    (get_local $data ) )
  (func $-read32
    (param $id i32 )
    (param $pos i32 )
    (result i32 )
    (local $offset i32 )
    (local $data i32 )
    (set_local $offset (call $-offset (get_local $id ) ) )
    (if
      (i32.lt_u
        (i32.add
          (get_local $pos )
          (i32.const 3 ) )
        (call $-len (get_local $id ) ) )
      (then (set_local $data (i32.load (i32.add
              (get_local $offset )
              (get_local $pos ) ) ) ) ) )
    (get_local $data ) )

  ;; write to memory allocation

  (func $-write8
    (param $id i32 )
    (param $pos i32 )
    (param $data i32 )
    (local $offset i32 )
    (set_local $offset (call $-offset (get_local $id ) ) )
    (if
      (get_local $offset )
      (then
        (if
          (i32.ge_u
            (get_local $pos )
            (call $-len (get_local $id ) ) )
          (then
            (call $-resize
              (get_local $id )
              (i32.add
                (get_local $pos )
                (i32.const 1 ) ) )
            (set_local $offset (call $-offset (get_local $id ) ) ) ) )
        (i32.store8
          (i32.add
            (get_local $offset )
            (get_local $pos ) )
          (get_local $data ) ) ) ) )
  (func $-write16
    (param $id i32 )
    (param $pos i32 )
    (param $data i32 )
    (local $offset i32 )
    (set_local $offset (call $-offset (get_local $id ) ) )
    (if
      (get_local $offset )
      (then
        (if
          (i32.ge_u
            (i32.add
              (get_local $pos )
              (i32.const 1 ) )
            (call $-len (get_local $id ) ) )
          (then
            (call $-resize
              (get_local $id )
              (i32.add
                (get_local $pos )
                (i32.const 2 ) ) )
            (set_local $offset (call $-offset (get_local $id ) ) ) ) )
        (i32.store16
          (i32.add
            (get_local $offset )
            (get_local $pos ) )
          (get_local $data ) ) ) ) )
  (func $-write32
    (param $id i32 )
    (param $pos i32 )
    (param $data i32 )
    (local $offset i32 )
    (set_local $offset (call $-offset (get_local $id ) ) )
    (if
      (get_local $offset )
      (then
        (if
          (i32.ge_u
            (i32.add
              (get_local $pos )
              (i32.const 3 ) )
            (call $-len (get_local $id ) ) )
          (then
            (call $-resize
              (get_local $id )
              (i32.add
                (get_local $pos )
                (i32.const 4 ) ) )
            (set_local $offset (call $-offset (get_local $id ) ) ) ) )
        (i32.store
          (i32.add
            (get_local $offset )
            (get_local $pos ) )
          (get_local $data ) ) ) ) )
  (func $-write_to
    (param $id i32 )
    (param $pos i32 )
    (param $data_id i32 )
    (local $offset i32 )
    (local $len i32 )
    (set_local $offset (call $-offset (get_local $id ) ) )
    (set_local $len (call $-len (get_local $data_id ) ) )
    (if
      (get_local $offset )
      (then
        (if
          (i32.gt_u
            (i32.add
              (get_local $pos )
              (get_local $len ) )
            (call $-len (get_local $id ) ) )
          (then
            (call $-resize
              (get_local $id )
              (i32.add
                (get_local $pos )
                (get_local $len ) ) )
            (set_local $offset (call $-offset (get_local $id ) ) ) ) )
        (call $-memcopy
          (call $-offset (get_local $data_id ) )
          (i32.add
            (get_local $offset )
            (get_local $pos ) )
          (get_local $len ) ) ) ) )

  ;; make room for a new value

  (global $-next_id
    (mut i32 )
    (i32.const 0 ) )
  (func $-new_value
    (param $datatype i32 )
    (param $len i32 )
    (result i32 )
    (local $offset i32 )
    (local $id i32 )
    (set_local $id (get_global $-next_id ) )
    (set_local $offset (call $-alloc (get_local $len ) ) )
    (block (loop
        (br_if 1 (i32.eqz (call $-read32
              (i32.const -1 )
              (i32.mul
                (get_local $id )
                (i32.const 8 ) ) ) ) )
        (set_local $id (i32.add
            (get_local $id )
            (i32.const 1 ) ) )
        (br 0 ) ) )
    (call $-write32
      (i32.const -1 )
      (i32.mul
        (get_local $id )
        (i32.const 8 ) )
      (get_local $offset ) )
    (call $-write32
      (i32.const -1 )
      (i32.add
        (i32.mul
          (get_local $id )
          (i32.const 8 ) )
        (i32.const 4 ) )
      (i32.const 0 ) )
    (call $-write8
      (i32.const -1 )
      (i32.add
        (i32.mul
          (get_local $id )
          (i32.const 8 ) )
        (i32.const 6 ) )
      (get_local $datatype ) )
    (set_global $-next_id (i32.add
        (get_local $id )
        (i32.const 1 ) ) )
    (i32.add
      (get_local $id )
      (i32.const 8 ) ) )

  ;; mark id as referenced

  (func $-ref
    (param $id i32 )
    (local $refs i32 )
    (if
      (call $-offset (get_local $id ) )
      (then
        (set_local $id (i32.sub
            (get_local $id )
            (i32.const 8 ) ) )
        (call $-write8
          (i32.const -1 )
          (i32.add
            (i32.mul
              (get_local $id )
              (i32.const 8 ) )
            (i32.const 7 ) )
          (i32.const 1 ) ) ) ) )
  (global $-hard_value
    (mut i32 )
    (i32.const 0 ) )

  ;; (global $-high_id (mut i32) (i32.const 0))


  ;; clear all references in index

  (func $-zerorefs
    (local $id i32 )
    (if
      (i32.eqz (get_global $-hard_value ) )
      (then (set_global $-hard_value (get_global $-next_id ) ) ) )
    (set_local $id (i32.div_u
        (call $-len (i32.const -1 ) )
        (i32.const 8 ) ) )

    ;; (set_global $-high_id (get_global $-hard_value))

    (block (loop
        (br_if 1 (i32.eqz (get_local $id ) ) )
        (set_local $id (i32.sub
            (get_local $id )
            (i32.const 1 ) ) )
        (if
          (i32.lt_u
            (get_local $id )
            (get_global $-hard_value ) )
          (then (call $-write8
              (i32.const -1 )
              (i32.add
                (i32.mul
                  (get_local $id )
                  (i32.const 8 ) )
                (i32.const 7 ) )
              (i32.const 1 ) ) )
          (else (call $-write8
              (i32.const -1 )
              (i32.add
                (i32.mul
                  (get_local $id )
                  (i32.const 8 ) )
                (i32.const 7 ) )
              (i32.const 0 ) ) ) )
        (br 0 ) ) ) )

  ;; register reference recursively (if unregistered)

  (func $-reftree
    (param $id i32 )
    (local $offset i32 )
    (local $datatype i32 )
    (local $refs i32 )
    (set_local $offset (call $-offset (get_local $id ) ) )

    ;; is it even in memory?

    (if
      (get_local $offset )
      (then
        (set_local $id (i32.sub
            (get_local $id )
            (i32.const 8 ) ) )
        (set_local $refs (call $-read8
            (i32.const -1 )
            (i32.add
              (i32.mul
                (get_local $id )
                (i32.const 8 ) )
              (i32.const 7 ) ) ) )

        ;; is it unreferenced?

        (if
          (i32.eqz (get_local $refs ) )
          (then
            (call $-write8
              (i32.const -1 )
              (i32.add
                (i32.mul
                  (get_local $id )
                  (i32.const 8 ) )
                (i32.const 7 ) )
              (i32.const 1 ) )
            (set_local $datatype (call $-read8
                (i32.const -1 )
                (i32.add
                  (i32.mul
                    (get_local $id )
                    (i32.const 8 ) )
                  (i32.const 6 ) ) ) )
            (set_local $id (i32.add
                (get_local $id )
                (i32.const 8 ) ) )

            ;; (if (i32.gt_u (get_local $id) (get_global $-high_id))(then


            ;;   (set_global $-high_id (get_local $id))


            ;; ))


            ;; is it array/object?

            (if
              (i32.eq
                (i32.and
                  (get_local $datatype )
                  (i32.const 6 ) )
                (i32.const 4 ) )
              (then
                (set_local $offset (call $-len (get_local $id ) ) )
                (block (loop
                    (br_if 1 (i32.eqz (get_local $offset ) ) )
                    (set_local $offset (i32.sub
                        (get_local $offset )
                        (i32.const 4 ) ) )
                    (call $-reftree (call $-read32
                        (get_local $id )
                        (get_local $offset ) ) )
                    (br 0 ) ) ) ) ) ) ) ) ) )

  ;; garbage collector

  (func $-garbagecollect
    (local $id i32 )
    (local $refs i32 )
    (local $offset i32 )
    (set_local $id (i32.div_u
        (call $-len (i32.const -1 ) )
        (i32.const 8 ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $id ) ) )
        (set_local $id (i32.sub
            (get_local $id )
            (i32.const 1 ) ) )
        (set_local $refs (call $-read8
            (i32.const -1 )
            (i32.add
              (i32.mul
                (get_local $id )
                (i32.const 8 ) )
              (i32.const 7 ) ) ) )
        (if
          (i32.eqz (get_local $refs ) )
          (then
            (set_local $offset (call $-read32
                (i32.const -1 )
                (i32.mul
                  (get_local $id )
                  (i32.const 8 ) ) ) )
            (if
              (get_local $offset )
              (then
                (call $-dealloc (get_local $offset ) )
                (call $-write32
                  (i32.const -1 )
                  (i32.mul
                    (get_local $id )
                    (i32.const 8 ) )
                  (i32.const 0 ) )
                (call $-write32
                  (i32.const -1 )
                  (i32.add
                    (i32.mul
                      (get_local $id )
                      (i32.const 8 ) )
                    (i32.const 4 ) )
                  (i32.const 0 ) ) ) ) ) )
        (br 0 ) ) )
    (set_global $-last_alloc (i32.const 0 ) )
    (set_global $-next_id (i32.const 0 ) )

    ;; (call $-resize (i32.const -1) (i32.mul (i32.add (get_global $-high_id) (i32.const 1)) (i32.const 8)))
 )
  (func $-truthy
    (param $id i32 )
    (result i32 )
    (local $datatype i32 )
    (local $truthy i32 )
    (if
      (i32.gt_u
        (get_local $id )
        (i32.const 4 ) )
      (then
        (set_local $truthy (i32.const 1 ) )
        (set_local $datatype (call $-datatype (get_local $id ) ) )
        (if
          (i32.and
            (i32.eq
              (get_local $datatype )
              (i32.const 2 ) )
            (f64.eq
              (call $-f64 (get_local $id ) )
              (f64.const 0 ) ) )
          (then (set_local $truthy (i32.const 0 ) ) ) )
        (if
          (i32.and
            (i32.eq
              (get_local $datatype )
              (i32.const 3 ) )
            (i32.eq
              (call $-len (get_local $id ) )
              (i32.const 0 ) ) )
          (then (set_local $truthy (i32.const 0 ) ) ) ) ) )
    (get_local $truthy ) )
  (func $-falsy
    (param $id i32 )
    (result i32 )
    (i32.eqz (call $-truthy (get_local $id ) ) ) )
  (func $-compare
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (local $res f64 )
    (local $len i32 )
    (local $pos i32 )

    ;; equal reference

    (if
      (i32.eq
        (get_local $id1 )
        (get_local $id2 ) )
      (then (return (i32.const 0 ) ) ) )

    ;; equal datatype

    (if
      (i32.eq
        (call $-datatype (get_local $id1 ) )
        (call $-datatype (get_local $id2 ) ) )
      (then

        ;; array/object

        (if
          (i32.eq
            (i32.and
              (call $-datatype (get_local $id1 ) )
              (i32.const 6 ) )
            (i32.const 4 ) )
          (then (return (i32.sub
                (get_local $id1 )
                (get_local $id2 ) ) ) ) )

        ;; numerical values

        (if
          (i32.lt_u
            (call $-datatype (get_local $id1 ) )
            (i32.const 3 ) )
          (then
            (set_local $res (f64.sub
                (call $-f64 (call $-to_number (get_local $id1 ) ) )
                (call $-f64 (call $-to_number (get_local $id2 ) ) ) ) )
            (if
              (f64.eq
                (get_local $res )
                (f64.const 0 ) )
              (then (return (i32.const 0 ) ) ) )
            (if
              (f64.gt
                (get_local $res )
                (f64.const 0 ) )
              (then (return (i32.const 1 ) ) ) )
            (if
              (f64.lt
                (get_local $res )
                (f64.const 0 ) )
              (then (return (i32.const -1 ) ) ) ) )
          (else

            ;; strings/binaries

            (set_local $pos (i32.const 0 ) )
            (if
              (i32.lt_u
                (call $-len (get_local $id1 ) )
                (call $-len (get_local $id2 ) ) )
              (then (set_local $len (call $-len (get_local $id1 ) ) ) )
              (else (set_local $len (call $-len (get_local $id2 ) ) ) ) )
            (block (loop
                (br_if 1 (i32.eqz (get_local $len ) ) )
                (if
                  (i32.ne
                    (call $-read8
                      (get_local $id1 )
                      (get_local $pos ) )
                    (call $-read8
                      (get_local $id2 )
                      (get_local $pos ) ) )
                  (then (return (i32.sub
                        (call $-read8
                          (get_local $id1 )
                          (get_local $pos ) )
                        (call $-read8
                          (get_local $id2 )
                          (get_local $pos ) ) ) ) ) )
                (set_local $pos (i32.add
                    (get_local $pos )
                    (i32.const 1 ) ) )
                (set_local $len (i32.sub
                    (get_local $len )
                    (i32.const 1 ) ) )
                (br 0 ) ) )
            (return (i32.sub
                (call $-len (get_local $id1 ) )
                (call $-len (get_local $id2 ) ) ) ) ) ) )
      (else ;; unequal datatypes
 (return (i32.sub
            (call $-datatype (get_local $id1 ) )
            (call $-datatype (get_local $id2 ) ) ) ) ) )
    (return (i32.const 0 ) ) )
  (func $-equal
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (if
      (call $-compare
        (get_local $id1 )
        (get_local $id2 ) )
      (then (return (i32.const 1 ) ) ) )
    (i32.const 5 ) )
  (func $-unequal
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (i32.sub
      (i32.const 6 )
      (call $-equal
        (get_local $id1 )
        (get_local $id2 ) ) ) )
  (func $-lt
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (if
      (i32.lt_s
        (call $-compare
          (get_local $id1 )
          (get_local $id2 ) )
        (i32.const 0 ) )
      (then (return (i32.const 5 ) ) ) )
    (i32.const 1 ) )
  (func $-le
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (if
      (i32.le_s
        (call $-compare
          (get_local $id1 )
          (get_local $id2 ) )
        (i32.const 0 ) )
      (then (return (i32.const 5 ) ) ) )
    (i32.const 1 ) )
  (func $-gt
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (if
      (i32.gt_s
        (call $-compare
          (get_local $id1 )
          (get_local $id2 ) )
        (i32.const 0 ) )
      (then (return (i32.const 5 ) ) ) )
    (i32.const 1 ) )
  (func $-ge
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (if
      (i32.ge_s
        (call $-compare
          (get_local $id1 )
          (get_local $id2 ) )
        (i32.const 0 ) )
      (then (return (i32.const 5 ) ) ) )
    (i32.const 1 ) )
  (func $-and
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (local $success i32 )
    (set_local $success (i32.const 1 ) )
    (if
      (call $-truthy (get_local $id1 ) )
      (then (set_local $success (get_local $id2 ) ) )
      (else (set_local $success (get_local $id1 ) ) ) )
    (get_local $success ) )
  (func $-or
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (local $success i32 )
    (set_local $success (i32.const 1 ) )
    (if
      (call $-truthy (get_local $id1 ) )
      (then (set_local $success (get_local $id1 ) ) )
      (else (set_local $success (get_local $id2 ) ) ) )
    (get_local $success ) )
  (func $-concat
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (local $len1 i32 )
    (local $len2 i32 )
    (local $datatype i32 )
    (local $id3 i32 )
    (local $offset i32 )
    (set_local $len1 (call $-len (get_local $id1 ) ) )
    (set_local $len2 (call $-len (get_local $id2 ) ) )
    (set_local $datatype (call $-datatype (get_local $id1 ) ) )
    (set_local $id3 (call $-new_value
        (get_local $datatype )
        (i32.add
          (get_local $len1 )
          (get_local $len2 ) ) ) )
    (call $-memcopy
      (call $-offset (get_local $id1 ) )
      (call $-offset (get_local $id3 ) )
      (get_local $len1 ) )
    (call $-memcopy
      (call $-offset (get_local $id2 ) )
      (i32.add
        (call $-offset (get_local $id3 ) )
        (get_local $len1 ) )
      (get_local $len2 ) )

    ;; (call $-resize (get_local $id3) (i32.add (get_local $len1) (get_local $len2)))

    (get_local $id3 ) )
  (func $-to_number
    (param $id i32 )
    (result i32 )
    (local $datatype i32 )
    (local $id3 i32 )
    (set_local $datatype (call $-datatype (get_local $id ) ) )
    (set_local $id3 (i32.const 2 ) )
    (if
      (i32.lt_u
        (get_local $id )
        (i32.const 2 ) )
      (then (set_local $id3 (i32.const 2 ) ) ) )
    (if
      (i32.eq
        (get_local $id )
        (i32.const 5 ) )
      (then (set_local $id3 (call $-integer_u (i32.const 1 ) ) ) ) )
    (if
      (i32.eq
        (get_local $datatype )
        (i32.const 2 ) )
      (then (set_local $id3 (get_local $id ) ) ) )
    (get_local $id3 ) )
  (func $-to_string
    (param $id i32 )
    (result i32 )
    (local $datatype i32 )
    (local $id3 i32 )
    (local $digit f64 )
    (local $decimals i32 )
    (local $pos i32 )
    (set_local $datatype (call $-datatype (get_local $id ) ) )
    (set_local $id3 (get_local $id ) )
    (if
      (i32.eq
        (get_local $id )
        (i32.const 0 ) )
      (then
        (set_local $id3 (call $-new_value
            (i32.const 3 )
            (i32.const 4 ) ) )
        (call $-write32
          (get_local $id3 )
          (i32.const 0 )
          (i32.const 0x6c6c756e ) )

        ;;null
 ) )
    (if
      (i32.eq
        (get_local $id )
        (i32.const 1 ) )
      (then
        (set_local $id3 (call $-new_value
            (i32.const 3 )
            (i32.const 5 ) ) )
        (call $-write32
          (get_local $id3 )
          (i32.const 0 )
          (i32.const 0x736c6166 ) )

        ;;fals

        (call $-write8
          (get_local $id3 )
          (i32.const 4 )
          (i32.const 0x65 ) )

        ;;e
 ) )
    (if
      (i32.eq
        (get_local $id )
        (i32.const 5 ) )
      (then
        (set_local $id3 (call $-new_value
            (i32.const 3 )
            (i32.const 4 ) ) )
        (call $-write32
          (get_local $id3 )
          (i32.const 0 )
          (i32.const 0x65757274 ) )

        ;;true
 ) )
    (if
      (i32.eq
        (get_local $datatype )
        (i32.const 2 ) )
      (then
        (set_local $id3 (call $-new_value
            (i32.const 3 )
            (i32.const 0 ) ) )
        (set_local $digit (call $-f64 (get_local $id ) ) )
        (if
          (f64.lt
            (get_local $digit )
            (f64.const 0 ) )
          (then
            (call $-write8
              (get_local $id3 )
              (get_local $pos )
              (i32.const 0x2d ) )

            ;; -

            (set_local $pos (i32.add
                (get_local $pos )
                (i32.const 1 ) ) )
            (set_local $digit (f64.mul
                (get_local $digit )
                (f64.const -1 ) ) ) ) )
        (block (loop
            (br_if 1 (f64.lt
                (get_local $digit )
                (f64.const 10 ) ) )
            (set_local $digit (f64.div
                (get_local $digit )
                (f64.const 10 ) ) )
            (set_local $decimals (i32.sub
                (get_local $decimals )
                (i32.const 1 ) ) )
            (br 0 ) ) )
        (block (loop
            (br_if 1 (i32.ge_s
                (get_local $decimals )
                (i32.const 10 ) ) )
            (call $-write8
              (get_local $id3 )
              (get_local $pos )
              (i32.add
                (i32.const 0x30 )
                (i32.trunc_s/f64 (f64.trunc (get_local $digit ) ) ) ) )
            (set_local $pos (i32.add
                (get_local $pos )
                (i32.const 1 ) ) )
            (if
              (i32.eq
                (get_local $decimals )
                (i32.const 0 ) )
              (then
                (set_local $digit (f64.abs (call $-f64 (get_local $id ) ) ) )
                (set_local $digit (f64.sub
                    (get_local $digit )
                    (f64.trunc (get_local $digit ) ) ) )
                (if
                  (f64.gt
                    (get_local $digit )
                    (f64.const 0.00001 ) )
                  (then
                    (call $-write8
                      (get_local $id3 )
                      (get_local $pos )
                      (i32.const 0x2e ) )

                    ;; .

                    (set_local $pos (i32.add
                        (get_local $pos )
                        (i32.const 1 ) ) ) )
                  (else (set_local $decimals (i32.const 1024 ) ) ) ) ) )
            (set_local $digit (f64.sub
                (get_local $digit )
                (f64.trunc (get_local $digit ) ) ) )
            (set_local $digit (f64.mul
                (get_local $digit )
                (f64.const 10 ) ) )
            (if
              (i32.gt_s
                (get_local $decimals )
                (i32.const 0 ) )
              (then (if
                  (f64.le
                    (get_local $digit )
                    (f64.const 0.00001 ) )
                  (then (set_local $decimals (i32.const 1024 ) ) ) ) ) )
            (set_local $decimals (i32.add
                (get_local $decimals )
                (i32.const 1 ) ) )
            (br 0 ) ) ) ) )
    (if
      (i32.eq
        (get_local $datatype )
        (i32.const 4 ) )
      (then
        (set_local $id3 (call $-new_value
            (i32.const 3 )
            (i32.const 5 ) ) )
        (call $-write32
          (get_local $id3 )
          (i32.const 0 )
          (i32.const 0x61727261 ) )

        ;;arra

        (call $-write8
          (get_local $id3 )
          (i32.const 4 )
          (i32.const 0x79 ) )

        ;;y
 ) )
    (if
      (i32.eq
        (get_local $datatype )
        (i32.const 5 ) )
      (then
        (set_local $id3 (call $-new_value
            (i32.const 3 )
            (i32.const 6 ) ) )
        (call $-write32
          (get_local $id3 )
          (i32.const 0 )
          (i32.const 0x656a626f ) )

        ;;obje

        (call $-write16
          (get_local $id3 )
          (i32.const 4 )
          (i32.const 0x7463 ) )

        ;;ct
 ) )
    (if
      (i32.eq
        (get_local $datatype )
        (i32.const 6 ) )
      (then (set_local $id3 (call $-concat
            (i32.const 3 )
            (get_local $id ) ) ) ) )
    (get_local $id3 ) )
  (func $-to_hex
    (param $int i32 )
    (param $digits i32 )
    (result i32 )
    (local $str i32 )
    (local $dig i32 )
    (set_local $str (call $-new_value
        (i32.const 3 )
        (get_local $digits ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $digits ) ) )
        (set_local $digits (i32.sub
            (get_local $digits )
            (i32.const 1 ) ) )
        (set_local $dig (i32.and
            (get_local $int )
            (i32.const 0xf ) ) )
        (set_local $int (i32.div_u
            (get_local $int )
            (i32.const 0x10 ) ) )
        (if
          (i32.lt_u
            (get_local $dig )
            (i32.const 0xa ) )
          (then (call $-write8
              (get_local $str )
              (get_local $digits )
              (i32.add
                (i32.const 0x30 )
                (get_local $dig ) ) ) )
          (else (call $-write8
              (get_local $str )
              (get_local $digits )
              (i32.add
                (i32.const 0x57 )
                (get_local $dig ) ) ) ) )
        (br 0 ) ) )
    (get_local $str ) )
  (func $-from_hex
    (param $str i32 )
    (result i32 )
    (local $int i32 )
    (local $dig i32 )
    (local $pos i32 )
    (local $len i32 )
    (set_local $len (call $-len (get_local $str ) ) )
    (block (loop
        (br_if 1 (i32.ge_u
            (get_local $pos )
            (get_local $len ) ) )
        (set_local $int (i32.mul
            (get_local $int )
            (i32.const 0x10 ) ) )
        (set_local $dig (call $-read8
            (get_local $str )
            (get_local $pos ) ) )
        (if
          (i32.gt_u
            (get_local $dig )
            (i32.const 0x5f ) )
          (then (set_local $dig (i32.sub
                (get_local $dig )
                (i32.const 0x20 ) ) ) ) )
        (if
          (i32.lt_u
            (get_local $dig )
            (i32.const 0x40 ) )
          (then (set_local $int (i32.add
                (get_local $int )
                (i32.sub
                  (get_local $dig )
                  (i32.const 0x30 ) ) ) ) )
          (else (set_local $int (i32.add
                (get_local $int )
                (i32.sub
                  (get_local $dig )
                  (i32.const 0x37 ) ) ) ) ) )
        (set_local $pos (i32.add
            (get_local $pos )
            (i32.const 1 ) ) )
        (br 0 ) ) )
    (get_local $int ) )
  (func $-inc
    (param $num i32 )
    (param $delta f64 )
    (result i32 )
    (local $offset i32 )
    (local $float f64 )
    (set_local $offset (call $-offset (get_local $num ) ) )
    (if
      (get_local $offset )
      (then
        (set_local $float (f64.load (get_local $offset ) ) )
        (f64.store
          (get_local $offset )
          (f64.add
            (get_local $float )
            (get_local $delta ) ) ) )
      (else (set_local $num (call $-number (get_local $delta ) ) ) ) )
    (get_local $num ) )
  (func $-add
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (local $datatype1 i32 )
    (local $datatype2 i32 )
    (local $id3 i32 )
    (set_local $datatype1 (call $-datatype (get_local $id1 ) ) )
    (set_local $datatype2 (call $-datatype (get_local $id2 ) ) )

    ;; numerical values

    (if
      (i32.and
        (i32.lt_u
          (get_local $datatype1 )
          (i32.const 3 ) )
        (i32.lt_u
          (get_local $datatype2 )
          (i32.const 3 ) ) )
      (then (set_local $id3 (call $-number (f64.add
              (call $-f64 (call $-to_number (get_local $id1 ) ) )
              (call $-f64 (call $-to_number (get_local $id2 ) ) ) ) ) ) )
      (else ;; is one of them a string?
 (if
          (i32.or
            (i32.eq
              (get_local $datatype1 )
              (i32.const 3 ) )
            (i32.eq
              (get_local $datatype2 )
              (i32.const 3 ) ) )
          (then (set_local $id3 (call $-concat
                (call $-to_string (get_local $id1 ) )
                (call $-to_string (get_local $id2 ) ) ) ) )
          (else ;; both the same datatype?
 (if
              (i32.eq
                (get_local $datatype1 )
                (get_local $datatype2 ) )
              (then (set_local $id3 (call $-concat
                    (get_local $id1 )
                    (get_local $id2 ) ) ) ) ) ) ) ) )
    (get_local $id3 ) )
  (func $-sub
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (local $datatype1 i32 )
    (local $datatype2 i32 )
    (local $id3 i32 )
    (set_local $datatype1 (call $-datatype (get_local $id1 ) ) )
    (set_local $datatype2 (call $-datatype (get_local $id2 ) ) )

    ;; numerical values

    (if
      (i32.and
        (i32.lt_u
          (get_local $datatype1 )
          (i32.const 3 ) )
        (i32.lt_u
          (get_local $datatype2 )
          (i32.const 3 ) ) )
      (then (set_local $id3 (call $-number (f64.sub
              (call $-f64 (call $-to_number (get_local $id1 ) ) )
              (call $-f64 (call $-to_number (get_local $id2 ) ) ) ) ) ) ) )
    (get_local $id3 ) )
  (func $-mul
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (local $datatype1 i32 )
    (local $datatype2 i32 )
    (local $id3 i32 )
    (set_local $datatype1 (call $-datatype (get_local $id1 ) ) )
    (set_local $datatype2 (call $-datatype (get_local $id2 ) ) )

    ;; numerical values

    (if
      (i32.and
        (i32.lt_u
          (get_local $datatype1 )
          (i32.const 3 ) )
        (i32.lt_u
          (get_local $datatype2 )
          (i32.const 3 ) ) )
      (then (set_local $id3 (call $-number (f64.mul
              (call $-f64 (call $-to_number (get_local $id1 ) ) )
              (call $-f64 (call $-to_number (get_local $id2 ) ) ) ) ) ) ) )
    (get_local $id3 ) )
  (func $-div
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (local $datatype1 i32 )
    (local $datatype2 i32 )
    (local $id3 i32 )
    (set_local $datatype1 (call $-datatype (get_local $id1 ) ) )
    (set_local $datatype2 (call $-datatype (get_local $id2 ) ) )

    ;; numerical values

    (if
      (i32.and
        (i32.lt_u
          (get_local $datatype1 )
          (i32.const 3 ) )
        (i32.lt_u
          (get_local $datatype2 )
          (i32.const 3 ) ) )
      (then (set_local $id3 (call $-number (f64.div
              (call $-f64 (call $-to_number (get_local $id1 ) ) )
              (call $-f64 (call $-to_number (get_local $id2 ) ) ) ) ) ) ) )
    (get_local $id3 ) )
  (func $-mod
    (param $id1 i32 )
    (param $id2 i32 )
    (result i32 )
    (local $datatype1 i32 )
    (local $datatype2 i32 )
    (local $f1 f64 )
    (local $f2 f64 )
    (local $f3 f64 )
    (local $id3 i32 )
    (set_local $datatype1 (call $-datatype (get_local $id1 ) ) )
    (set_local $datatype2 (call $-datatype (get_local $id2 ) ) )

    ;; numerical values

    (if
      (i32.and
        (i32.lt_u
          (get_local $datatype1 )
          (i32.const 3 ) )
        (i32.lt_u
          (get_local $datatype2 )
          (i32.const 3 ) ) )
      (then
        (set_local $f1 (call $-f64 (call $-to_number (get_local $id1 ) ) ) )
        (set_local $f2 (f64.abs (call $-f64 (call $-to_number (get_local $id2 ) ) ) ) )
        (set_local $f3 (f64.trunc (f64.div
              (get_local $f1 )
              (get_local $f2 ) ) ) )
        (set_local $f1 (f64.sub
            (get_local $f1 )
            (f64.mul
              (get_local $f2 )
              (get_local $f3 ) ) ) )
        (set_local $id3 (call $-number (get_local $f1 ) ) ) ) )
    (get_local $id3 ) )
  (func $-f64
    (param $id i32 )
    (result f64 )
    (local $val f64 )
    (if
      (i32.gt_u
        (get_local $id )
        (i32.const 4 ) )
      (then (set_local $val (f64.load (call $-offset (get_local $id ) ) ) ) ) )
    (get_local $val ) )
  (func $-i32_s
    (param $id i32 )
    (result i32 )
    (i32.trunc_s/f64 (call $-f64 (get_local $id ) ) ) )
  (func $-i32_u
    (param $id i32 )
    (result i32 )
    (i32.trunc_u/f64 (call $-f64 (get_local $id ) ) ) )
  (func $-number
    (param $val f64 )
    (result i32 )
    (local $id i32 )
    (set_local $id (i32.const 2 ) )
    (if
      (f64.ne
        (get_local $val )
        (f64.const 0 ) )
      (then
        (set_local $id (call $-new_value
            (i32.const 2 )
            (i32.const 0 ) ) )
        (f64.store
          (call $-offset (get_local $id ) )
          (get_local $val ) ) ) )
    (get_local $id ) )
  (func $-integer_s
    (param $val i32 )
    (result i32 )
    (call $-number (f64.convert_s/i32 (get_local $val ) ) ) )
  (func $-integer_u
    (param $val i32 )
    (result i32 )
    (call $-number (f64.convert_u/i32 (get_local $val ) ) ) )
  (func $-string
    (param $offset i32 )
    (param $len i32 )
    (result i32 )
    (local $id i32 )
    (set_local $id (call $-new_value
        (i32.const 3 )
        (get_local $len ) ) )
    (call $-memcopy
      (get_local $offset )
      (call $-offset (get_local $id ) )
      (get_local $len ) )
    (call $-ref (get_local $id ) )
    (get_local $id ) )
  (func $-char_size
    (param $byte i32 )
    (result i32 )
    (local $size i32 )
    (if
      (i32.ge_u
        (get_local $byte )
        (i32.const 0x01 ) )
      (then (set_local $size (i32.add
            (get_local $size )
            (i32.const 1 ) ) ) ) )
    (if
      (i32.ge_u
        (get_local $byte )
        (i32.const 0xc0 ) )
      (then (set_local $size (i32.add
            (get_local $size )
            (i32.const 1 ) ) ) ) )
    (if
      (i32.ge_u
        (get_local $byte )
        (i32.const 0xe0 ) )
      (then (set_local $size (i32.add
            (get_local $size )
            (i32.const 1 ) ) ) ) )
    (if
      (i32.ge_u
        (get_local $byte )
        (i32.const 0xf0 ) )
      (then (set_local $size (i32.add
            (get_local $size )
            (i32.const 1 ) ) ) ) )
    (if
      (i32.ge_u
        (get_local $byte )
        (i32.const 0xf8 ) )
      (then (set_local $size (i32.add
            (get_local $size )
            (i32.const 1 ) ) ) ) )
    (if
      (i32.ge_u
        (get_local $byte )
        (i32.const 0xfc ) )
      (then (set_local $size (i32.add
            (get_local $size )
            (i32.const 1 ) ) ) ) )
    (if
      (i32.ge_u
        (get_local $byte )
        (i32.const 0xfe ) )
      (then (set_local $size (i32.add
            (get_local $size )
            (i32.const 1 ) ) ) ) )
    (if
      (i32.ge_u
        (get_local $byte )
        (i32.const 0xff ) )
      (then (set_local $size (i32.add
            (get_local $size )
            (i32.const 1 ) ) ) ) )
    (get_local $size ) )
  (func $-bytes_to_chars
    (param $start i32 )
    (param $bytes i32 )
    (result i32 )
    (local $pos i32 )
    (local $len i32 )
    (local $charlen i32 )
    (local $chars i32 )
    (set_local $pos (get_local $start ) )
    (set_local $len (get_local $bytes ) )
    (block (loop
        (br_if 1 (i32.le_s
            (get_local $len )
            (i32.const 0 ) ) )
        (set_local $charlen (call $-char_size (i32.load8_u (get_local $pos ) ) ) )
        (if
          (get_local $charlen )
          (then
            (set_local $len (i32.sub
                (get_local $len )
                (get_local $charlen ) ) )
            (set_local $pos (i32.add
                (get_local $pos )
                (get_local $charlen ) ) )
            (set_local $chars (i32.add
                (get_local $chars )
                (i32.const 1 ) ) ) )
          (else (set_local $len (i32.const 0 ) ) ) )
        (br 0 ) ) )
    (get_local $chars ) )
  (func $-chars_to_bytes
    (param $start i32 )
    (param $chars i32 )
    (result i32 )
    (local $pos i32 )
    (local $byte i32 )
    (set_local $pos (get_local $start ) )
    (block (loop
        (br_if 1 (i32.le_s
            (get_local $chars )
            (i32.const 0 ) ) )
        (set_local $byte (i32.load8_u (get_local $pos ) ) )
        (set_local $pos (i32.add
            (get_local $pos )
            (call $-char_size (get_local $byte ) ) ) )
        (set_local $chars (i32.sub
            (get_local $chars )
            (i32.const 1 ) ) )
        (br 0 ) ) )
    (i32.sub
      (get_local $pos )
      (get_local $start ) ) )
  (func $-char
    (param $code i32 )
    (result i32 )
    (local $str i32 )
    (local $pos i32 )
    (local $max i32 )
    (local $charlen i32 )
    (if
      (i32.lt_u
        (get_local $code )
        (i32.const 0x80 ) )
      (then
        (set_local $str (call $-new_value
            (i32.const 3 )
            (i32.const 1 ) ) )
        (call $-write8
          (get_local $str )
          (get_local $pos )
          (get_local $code ) ) )
      (else
        (set_local $max (i32.const 1 ) )
        (block (loop
            (br_if 1 (i32.gt_u
                (get_local $max )
                (get_local $code ) ) )
            (set_local $charlen (i32.add
                (get_local $charlen )
                (i32.const 1 ) ) )
            (set_local $max (i32.shl
                (get_local $max )
                (i32.const 5 ) ) )
            (br 0 ) ) )
        (set_local $str (call $-new_value
            (i32.const 3 )
            (get_local $charlen ) ) )
        (block (loop
            (br_if 1 (i32.eqz (get_local $charlen ) ) )
            (set_local $charlen (i32.sub
                (get_local $charlen )
                (i32.const 1 ) ) )
            (call $-write8
              (get_local $str )
              (get_local $charlen )
              (i32.or
                (i32.const 128 )
                (i32.and
                  (get_local $code )
                  (i32.const 0x3f ) ) ) )
            (set_local $code (i32.shr_u
                (get_local $code )
                (i32.const 6 ) ) )
            (br 0 ) ) )
        (set_local $max (i32.const 0xffff00 ) )
        (set_local $max (i32.shr_u
            (get_local $max )
            (call $-len (get_local $str ) ) ) )
        (call $-write8
          (get_local $str )
          (get_local $charlen )
          (i32.or
            (get_local $max )
            (call $-read8
              (get_local $str )
              (get_local $charlen ) ) ) ) ) )
    (get_local $str ) )
  (func $-char_code
    (param $offset i32 )
    (result i32 )
    (local $code i32 )
    (local $charlen i32 )
    (local $mask i32 )
    (set_local $charlen (call $-char_size (i32.load8_u (get_local $offset ) ) ) )
    (set_local $mask (i32.const 0xff ) )
    (set_local $mask (i32.shr_u
        (get_local $mask )
        (get_local $charlen ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $charlen ) ) )
        (set_local $code (i32.shl
            (get_local $code )
            (i32.const 6 ) ) )
        (set_local $code (i32.add
            (get_local $code )
            (i32.and
              (i32.load8_u (get_local $offset ) )
              (get_local $mask ) ) ) )
        (set_local $mask (i32.const 0x3f ) )
        (set_local $offset (i32.add
            (get_local $offset )
            (i32.const 1 ) ) )
        (set_local $charlen (i32.sub
            (get_local $charlen )
            (i32.const 1 ) ) )
        (br 0 ) ) )
    (get_local $code ) )
  (func $-get_from_obj
    (param $objId i32 )
    (param $indexId i32 )
    (result i32 )
    (local $elem i32 )
    (local $index i32 )
    (if
      (i32.eq
        (call $-datatype (get_local $indexId ) )
        (i32.const 2 ) )
      (then
        (set_local $index (call $-i32_u (get_local $indexId ) ) )
        (set_local $elem (call $-read32
            (get_local $objId )
            (i32.mul
              (get_local $index )
              (i32.const 4 ) ) ) ) )
      (else
        (set_local $elem (call $-read32
            (get_local $objId )
            (i32.mul
              (get_local $index )
              (i32.const 4 ) ) ) )
        (block (loop
            (if
              (i32.eqz (get_local $elem ) )
              (then (set_local $elem (get_local $indexId ) ) ) )
            (br_if 1 (call $-truthy (call $-equal
                  (get_local $elem )
                  (get_local $indexId ) ) ) )
            (set_local $index (i32.add
                (get_local $index )
                (i32.const 2 ) ) )
            (set_local $elem (call $-read32
                (get_local $objId )
                (i32.mul
                  (get_local $index )
                  (i32.const 4 ) ) ) )
            (br 0 ) ) )
        (set_local $index (i32.add
            (get_local $index )
            (i32.const 1 ) ) )
        (set_local $elem (call $-read32
            (get_local $objId )
            (i32.mul
              (get_local $index )
              (i32.const 4 ) ) ) ) ) )
    (get_local $elem ) )
  (func $-set_to_obj
    (param $objId i32 )
    (param $indexId i32 )
    (param $valId i32 )
    (local $elem i32 )
    (local $index i32 )
    (local $len i32 )
    (if
      (i32.eq
        (call $-datatype (get_local $indexId ) )
        (i32.const 2 ) )
      (then
        (set_local $index (call $-i32_u (get_local $indexId ) ) )
        (call $-write32
          (get_local $objId )
          (i32.mul
            (get_local $index )
            (i32.const 4 ) )
          (get_local $valId ) ) )
      (else
        (set_local $elem (call $-read32
            (get_local $objId )
            (i32.mul
              (get_local $index )
              (i32.const 4 ) ) ) )
        (block (loop
            (if
              (i32.eqz (get_local $elem ) )
              (then
                (call $-write32
                  (get_local $objId )
                  (i32.mul
                    (get_local $index )
                    (i32.const 4 ) )
                  (get_local $indexId ) )
                (set_local $elem (get_local $indexId ) ) ) )
            (br_if 1 (call $-truthy (call $-equal
                  (get_local $elem )
                  (get_local $indexId ) ) ) )
            (set_local $index (i32.add
                (get_local $index )
                (i32.const 2 ) ) )
            (set_local $elem (call $-read32
                (get_local $objId )
                (i32.mul
                  (get_local $index )
                  (i32.const 4 ) ) ) )
            (br 0 ) ) )
        (set_local $index (i32.add
            (get_local $index )
            (i32.const 1 ) ) )
        (call $-write32
          (get_local $objId )
          (i32.mul
            (get_local $index )
            (i32.const 4 ) )
          (get_local $valId ) )
        (if
          (i32.eqz (get_local $valId ) )
          (then
            (set_local $len (call $-len (get_local $objId ) ) )
            (set_local $len (i32.sub
                (get_local $len )
                (i32.mul
                  (get_local $index )
                  (i32.const 4 ) ) ) )
            (call $-memcopy
              (i32.add
                (call $-offset (get_local $objId ) )
                (i32.mul
                  (i32.add
                    (get_local $index )
                    (i32.const 1 ) )
                  (i32.const 4 ) ) )
              (i32.add
                (call $-offset (get_local $objId ) )
                (i32.mul
                  (i32.sub
                    (get_local $index )
                    (i32.const 1 ) )
                  (i32.const 4 ) ) )
              (get_local $len ) )
            (call $-resize
              (get_local $objId )
              (i32.sub
                (call $-len (get_local $objId ) )
                (i32.const 8 ) ) ) ) ) ) ) )

  ;; gc

  (func $-traceGC
    (call $-zerorefs )
    (call $-reftree (get_global $ns2\error ) )
    (call $-reftree (get_global $ns2\src ) )
    (call $-reftree (get_global $ns2\pos ) )
    (call $-reftree (get_global $ns2\line ) )
    (call $-reftree (get_global $ns2\column ) )
    (call $-reftree (get_global $ns2\sections ) )
    (call $-garbagecollect ) ) )
