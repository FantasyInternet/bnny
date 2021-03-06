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
  (import "env" "logNumber" (func $--ns0\lognumber
      (param f64 )
      (result f64 ) ) )
  (import "env" "getInput" (func $--ns0\_get_input (result f64 ) ) )
  (import "env" "sendOutput" (func $--ns0\_send_output (result f64 ) ) )
  (import "env" "sendError" (func $--ns0\_send_error (result f64 ) ) )

  ;; memory

  (memory $-memory 2 )
  (data (i32.const 65536 ) "(" )
  (data (i32.const 65552 ) "'('" )
  (data (i32.const 65568 ) "module" )
  (data (i32.const 65584 ) "'module'" )
  (data (i32.const 65608 ) "type" )
  (data (i32.const 65624 ) "import" )
  (data (i32.const 65640 ) "function" )
  (data (i32.const 65664 ) "table" )
  (data (i32.const 65680 ) "memory" )
  (data (i32.const 65696 ) "global" )
  (data (i32.const 65712 ) "export" )
  (data (i32.const 65728 ) "start" )
  (data (i32.const 65744 ) "element" )
  (data (i32.const 65760 ) "code" )
  (data (i32.const 65776 ) "data" )
  (data (i32.const 65792 ) "name" )
  (data (i32.const 65808 ) "locals" )
  (data (i32.const 65824 ) "pos" )
  (data (i32.const 65840 ) "line" )
  (data (i32.const 65856 ) "column" )
  (data (i32.const 65872 ) "! (<input>:" )
  (data (i32.const 65896 ) ":" )
  (data (i32.const 65912 ) ")" )
  (data (i32.const 65928 ) "unexpected token '" )
  (data (i32.const 65960 ) "'" )
  (data (i32.const 65976 ) ", where " )
  (data (i32.const 66000 ) " should be" )
  (data (i32.const 66024 ) "\0a" )
  (data (i32.const 66040 ) "0123456789ABCDEFabcdef" )
  (data (i32.const 66072 ) ";" )
  (data (i32.const 66088 ) ";)" )
  (data (i32.const 66104 ) "\22" )
  (data (i32.const 66120 ) "\5c" )
  (data (i32.const 66136 ) "n" )
  (data (i32.const 66152 ) "t" )
  (data (i32.const 66168 ) "\09" )
  (data (i32.const 66184 ) "();\22" )
  (data (i32.const 66200 ) ";;" )
  (data (i32.const 66216 ) "$" )
  (data (i32.const 66232 ) "-0123456789" )
  (data (i32.const 66256 ) "block" )
  (data (i32.const 66272 ) "loop" )
  (data (i32.const 66288 ) "if" )
  (data (i32.const 66304 ) "result" )
  (data (i32.const 66320 ) "i32" )
  (data (i32.const 66336 ) "i64" )
  (data (i32.const 66352 ) "f32" )
  (data (i32.const 66368 ) "f64" )
  (data (i32.const 66384 ) "else" )
  (data (i32.const 66400 ) "end" )
  (data (i32.const 66416 ) "br" )
  (data (i32.const 66432 ) "br_if" )
  (data (i32.const 66448 ) "a relative depth" )
  (data (i32.const 66480 ) "br_table" )
  (data (i32.const 66504 ) "call" )
  (data (i32.const 66520 ) "a function reference" )
  (data (i32.const 66552 ) "call_indirect" )
  (data (i32.const 66576 ) "_local" )
  (data (i32.const 66592 ) "a local reference" )
  (data (i32.const 66624 ) "_global" )
  (data (i32.const 66640 ) "a global reference" )
  (data (i32.const 66672 ) ".load" )
  (data (i32.const 66688 ) ".store" )
  (data (i32.const 66704 ) "64" )
  (data (i32.const 66720 ) "32" )
  (data (i32.const 66736 ) "16" )
  (data (i32.const 66752 ) "8" )
  (data (i32.const 66768 ) "current_memory" )
  (data (i32.const 66792 ) "grow_memory" )
  (data (i32.const 66816 ) "i32.const" )
  (data (i32.const 66840 ) "i64.const" )
  (data (i32.const 66864 ) "a number" )
  (data (i32.const 66888 ) "f32.const" )
  (data (i32.const 66912 ) "f64.const" )
  (data (i32.const 66936 ) "func" )
  (data (i32.const 66952 ) "param" )
  (data (i32.const 66968 ) "local" )
  (data (i32.const 66984 ) "elem" )
  (data (i32.const 67000 ) "module-level token" )
  (data (i32.const 67032 ) "'func'" )
  (data (i32.const 67048 ) "field" )
  (data (i32.const 67064 ) "a string" )
  (data (i32.const 67088 ) "kind" )
  (data (i32.const 67104 ) "a valid import" )
  (data (i32.const 67128 ) "initial" )
  (data (i32.const 67144 ) "maximum" )
  (data (i32.const 67160 ) "element_type" )
  (data (i32.const 67184 ) "anyfunc" )
  (data (i32.const 67200 ) "content_type" )
  (data (i32.const 67224 ) "init_expr" )
  (data (i32.const 67248 ) "mut" )
  (data (i32.const 67264 ) "mutability" )
  (data (i32.const 67288 ) "form" )
  (data (i32.const 67304 ) "params" )
  (data (i32.const 67320 ) "returns" )
  (data (i32.const 67336 ) "names" )
  (data (i32.const 67352 ) "type reference" )
  (data (i32.const 67376 ) "index" )
  (data (i32.const 67392 ) "a name" )
  (data (i32.const 67408 ) "function reference" )
  (data (i32.const 67440 ) "elems" )
  (data (i32.const 67456 ) "offset" )
  (data (i32.const 67472 ) "string" )
  (data (i32.const 67488 ) "asm" )
  (data (i32.const 67504 ) "count" )
  (data (i32.const 67520 ) "unreachable" )
  (data (i32.const 67544 ) "nop" )
  (data (i32.const 67560 ) "return" )
  (data (i32.const 67576 ) "drop" )
  (data (i32.const 67592 ) "select" )
  (data (i32.const 67608 ) "get_local" )
  (data (i32.const 67632 ) "set_local" )
  (data (i32.const 67656 ) "tee_local" )
  (data (i32.const 67680 ) "get_global" )
  (data (i32.const 67704 ) "set_global" )
  (data (i32.const 67728 ) "i32.load" )
  (data (i32.const 67752 ) "i64.load" )
  (data (i32.const 67776 ) "f32.load" )
  (data (i32.const 67800 ) "f64.load" )
  (data (i32.const 67824 ) "i32.load8_s" )
  (data (i32.const 67848 ) "i32.load8_u" )
  (data (i32.const 67872 ) "i32.load16_s" )
  (data (i32.const 67896 ) "i32.load16_u" )
  (data (i32.const 67920 ) "i64.load8_s" )
  (data (i32.const 67944 ) "i64.load8_u" )
  (data (i32.const 67968 ) "i64.load16_s" )
  (data (i32.const 67992 ) "i64.load16_u" )
  (data (i32.const 68016 ) "i64.load32_s" )
  (data (i32.const 68040 ) "i64.load32_u" )
  (data (i32.const 68064 ) "i32.store" )
  (data (i32.const 68088 ) "i64.store" )
  (data (i32.const 68112 ) "f32.store" )
  (data (i32.const 68136 ) "f64.store" )
  (data (i32.const 68160 ) "i32.store8" )
  (data (i32.const 68184 ) "i32.store16" )
  (data (i32.const 68208 ) "i64.store8" )
  (data (i32.const 68232 ) "i64.store16" )
  (data (i32.const 68256 ) "i64.store32" )
  (data (i32.const 68280 ) "i32.eqz" )
  (data (i32.const 68296 ) "i32.eq" )
  (data (i32.const 68312 ) "i32.ne" )
  (data (i32.const 68328 ) "i32.lt_s" )
  (data (i32.const 68352 ) "i32.lt_u" )
  (data (i32.const 68376 ) "i32.gt_s" )
  (data (i32.const 68400 ) "i32.gt_u" )
  (data (i32.const 68424 ) "i32.le_s" )
  (data (i32.const 68448 ) "i32.le_u" )
  (data (i32.const 68472 ) "i32.ge_s" )
  (data (i32.const 68496 ) "i32.ge_u" )
  (data (i32.const 68520 ) "i64.eqz" )
  (data (i32.const 68536 ) "i64.eq" )
  (data (i32.const 68552 ) "i64.ne" )
  (data (i32.const 68568 ) "i64.lt_s" )
  (data (i32.const 68592 ) "i64.lt_u" )
  (data (i32.const 68616 ) "i64.gt_s" )
  (data (i32.const 68640 ) "i64.gt_u" )
  (data (i32.const 68664 ) "i64.le_s" )
  (data (i32.const 68688 ) "i64.le_u" )
  (data (i32.const 68712 ) "i64.ge_s" )
  (data (i32.const 68736 ) "i64.ge_u" )
  (data (i32.const 68760 ) "f32.eq" )
  (data (i32.const 68776 ) "f32.ne" )
  (data (i32.const 68792 ) "f32.lt" )
  (data (i32.const 68808 ) "f32.gt" )
  (data (i32.const 68824 ) "f32.le" )
  (data (i32.const 68840 ) "f32.ge" )
  (data (i32.const 68856 ) "f64.eq" )
  (data (i32.const 68872 ) "f64.ne" )
  (data (i32.const 68888 ) "f64.lt" )
  (data (i32.const 68904 ) "f64.gt" )
  (data (i32.const 68920 ) "f64.le" )
  (data (i32.const 68936 ) "f64.ge" )
  (data (i32.const 68952 ) "i32.clz" )
  (data (i32.const 68968 ) "i32.ctz" )
  (data (i32.const 68984 ) "i32.popcnt" )
  (data (i32.const 69008 ) "i32.add" )
  (data (i32.const 69024 ) "i32.sub" )
  (data (i32.const 69040 ) "i32.mul" )
  (data (i32.const 69056 ) "i32.div_s" )
  (data (i32.const 69080 ) "i32.div_u" )
  (data (i32.const 69104 ) "i32.rem_s" )
  (data (i32.const 69128 ) "i32.rem_u" )
  (data (i32.const 69152 ) "i32.and" )
  (data (i32.const 69168 ) "i32.or" )
  (data (i32.const 69184 ) "i32.xor" )
  (data (i32.const 69200 ) "i32.shl" )
  (data (i32.const 69216 ) "i32.shr_s" )
  (data (i32.const 69240 ) "i32.shr_u" )
  (data (i32.const 69264 ) "i32.rotl" )
  (data (i32.const 69288 ) "i32.rotr" )
  (data (i32.const 69312 ) "i64.clz" )
  (data (i32.const 69328 ) "i64.ctz" )
  (data (i32.const 69344 ) "i64.popcnt" )
  (data (i32.const 69368 ) "i64.add" )
  (data (i32.const 69384 ) "i64.sub" )
  (data (i32.const 69400 ) "i64.mul" )
  (data (i32.const 69416 ) "i64.div_s" )
  (data (i32.const 69440 ) "i64.div_u" )
  (data (i32.const 69464 ) "i64.rem_s" )
  (data (i32.const 69488 ) "i64.rem_u" )
  (data (i32.const 69512 ) "i64.and" )
  (data (i32.const 69528 ) "i64.or" )
  (data (i32.const 69544 ) "i64.xor" )
  (data (i32.const 69560 ) "i64.shl" )
  (data (i32.const 69576 ) "i64.shr_s" )
  (data (i32.const 69600 ) "i64.shr_u" )
  (data (i32.const 69624 ) "i64.rotl" )
  (data (i32.const 69648 ) "i64.rotr" )
  (data (i32.const 69672 ) "f32.abs" )
  (data (i32.const 69688 ) "f32.neg" )
  (data (i32.const 69704 ) "f32.ceil" )
  (data (i32.const 69728 ) "f32.floor" )
  (data (i32.const 69752 ) "f32.trunc" )
  (data (i32.const 69776 ) "f32.nearest" )
  (data (i32.const 69800 ) "f32.sqrt" )
  (data (i32.const 69824 ) "f32.add" )
  (data (i32.const 69840 ) "f32.sub" )
  (data (i32.const 69856 ) "f32.mul" )
  (data (i32.const 69872 ) "f32.div" )
  (data (i32.const 69888 ) "f32.min" )
  (data (i32.const 69904 ) "f32.max" )
  (data (i32.const 69920 ) "f32.copysign" )
  (data (i32.const 69944 ) "f64.abs" )
  (data (i32.const 69960 ) "f64.neg" )
  (data (i32.const 69976 ) "f64.ceil" )
  (data (i32.const 70000 ) "f64.floor" )
  (data (i32.const 70024 ) "f64.trunc" )
  (data (i32.const 70048 ) "f64.nearest" )
  (data (i32.const 70072 ) "f64.sqrt" )
  (data (i32.const 70096 ) "f64.add" )
  (data (i32.const 70112 ) "f64.sub" )
  (data (i32.const 70128 ) "f64.mul" )
  (data (i32.const 70144 ) "f64.div" )
  (data (i32.const 70160 ) "f64.min" )
  (data (i32.const 70176 ) "f64.max" )
  (data (i32.const 70192 ) "f64.copysign" )
  (data (i32.const 70216 ) "i32.wrap/i64" )
  (data (i32.const 70240 ) "i32.trunc_s/f32" )
  (data (i32.const 70264 ) "i32.trunc_u/f32" )
  (data (i32.const 70288 ) "i32.trunc_s/f64" )
  (data (i32.const 70312 ) "i32.trunc_u/f64" )
  (data (i32.const 70336 ) "i64.extend_s/i32" )
  (data (i32.const 70368 ) "i64.extend_u/i32" )
  (data (i32.const 70400 ) "i64.trunc_s/f32" )
  (data (i32.const 70424 ) "i64.trunc_u/f32" )
  (data (i32.const 70448 ) "i64.trunc_s/f64" )
  (data (i32.const 70472 ) "i64.trunc_u/f64" )
  (data (i32.const 70496 ) "f32.convert_s/i32" )
  (data (i32.const 70528 ) "f32.convert_u/i32" )
  (data (i32.const 70560 ) "f32.convert_s/i64" )
  (data (i32.const 70592 ) "f32.convert_u/i64" )
  (data (i32.const 70624 ) "f32.demote/f64" )
  (data (i32.const 70648 ) "f64.convert_s/i32" )
  (data (i32.const 70680 ) "f64.convert_u/i32" )
  (data (i32.const 70712 ) "f64.convert_s/i64" )
  (data (i32.const 70744 ) "f64.convert_u/i64" )
  (data (i32.const 70776 ) "f64.promote/f32" )
  (data (i32.const 70800 ) "i32.reinterpret/f32" )
  (data (i32.const 70832 ) "i64.reinterpret/f64" )
  (data (i32.const 70864 ) "f32.reinterpret/i32" )
  (data (i32.const 70896 ) "f64.reinterpret/i64" )

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
  (global $ns2\pos_stack
    (mut i32 )
    (i32.const 0 ) )
  (global $ns2\sections
    (mut i32 )
    (i32.const 0 ) )
  (global $ns2\wasm
    (mut i32 )
    (i32.const 0 ) )
  (global $ns2\local_names
    (mut i32 )
    (i32.const 0 ) )
  (global $ns2\blocks
    (mut i32 )
    (i32.const 0 ) )
  (global $ns4\opcodes
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
  (func $ns0\lognumber
    (param $p0 i32 )
    (result i32 )
    (call $--ns0\lognumber (call $-f64 (call $-to_number (get_local $p0 ) ) ) )
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
    (call $-funcstart )
    (block
      (drop (call $ns0\_push_from_memory
          (call $ns1\address_of (get_local $ns0\msg ) )
          (call $ns1\size_of (get_local $ns0\msg ) ) ) )
      (drop (call $ns0\_log ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns0\get_input

  (func $ns0\get_input
    (result i32 )
    (local $ns0\input i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
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
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns0\send_output

  (func $ns0\send_output
    (param $ns0\data i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop (call $ns0\_push_from_memory
          (call $ns1\address_of (get_local $ns0\data ) )
          (call $ns1\size_of (get_local $ns0\data ) ) ) )
      (drop (call $ns0\_send_output ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns0\send_error

  (func $ns0\send_error
    (param $ns0\data i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop (call $ns0\_push_from_memory
          (call $ns1\address_of (get_local $ns0\data ) )
          (call $ns1\size_of (get_local $ns0\data ) ) ) )
      (drop (call $ns0\_send_error ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns0\init

  (func $ns0\init
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop (call $ns0\send_output (call $ns2\assemble (call $ns0\get_input ) ) ) )
      (if
        (call $-truthy (get_global $ns2\error ) )
        (then
          (drop (call $ns0\send_error (get_global $ns2\error ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )
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
      (i32.gt_u
        (get_local $ns1\datatype )
        (i32.const 5 ) )
      (then
        (set_local $ns1\value (call $-to_string (get_local $ns1\value ) ) )
        (set_local $ns1\datatype (i32.const 3 ) ) ) )
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
        (set_global $ns1\~pos (i32.sub
            (get_global $ns1\~pos )
            (i32.const 1 ) ) )
        (set_local $ns1\value (call $-number (call $-parse_float
              (get_global $ns1\~pos )
              (i32.const 10 ) ) ) )
        (set_global $ns1\~pos (get_global $-parsing_offset ) ) ) )
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

  ;; function $ns2\assemble

  (func $ns2\assemble
    (param $ns2\wast i32 )
    (result i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop (call $ns2\reset ) )
      (drop
        (set_global $ns2\src (get_local $ns2\wast ) )
        (get_global $ns2\src ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (if
        (call $-truthy (call $-unequal
            (get_local $ns2\token )
            (i32.const 8 ) ) )
        (then
          (set_local $-ret (call $ns2\unexpected
              (get_local $ns2\token )
              (i32.const 9 ) ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (if
        (call $-truthy (call $-unequal
            (get_local $ns2\token )
            (i32.const 10 ) ) )
        (then
          (set_local $-ret (call $ns2\unexpected
              (get_local $ns2\token )
              (i32.const 11 ) ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop (call $ns2\read_names ) )
      (if
        (call $-truthy (get_global $ns2\error ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop (call $ns2\rewind ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (if
        (call $-truthy (call $-unequal
            (get_local $ns2\token )
            (i32.const 8 ) ) )
        (then
          (set_local $-ret (call $ns2\unexpected
              (get_local $ns2\token )
              (i32.const 9 ) ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (if
        (call $-truthy (call $-unequal
            (get_local $ns2\token )
            (i32.const 10 ) ) )
        (then
          (set_local $-ret (call $ns2\unexpected
              (get_local $ns2\token )
              (i32.const 11 ) ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop (call $ns2\read_module ) )
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
          (drop (call $ns2\write_module ) )
          (drop (call $ns2\reset ) )
          (drop
            (set_global $ns2\src (i32.const 0 ) )
            (get_global $ns2\src ) )
          (drop
            (set_global $ns2\sections (i32.const 0 ) )
            (get_global $ns2\sections ) )
          (set_local $-ret (get_global $ns2\wasm ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\reset

  (func $ns2\reset
    (result i32 )
    (local $-obj0 i32 )
    (local $-obj1 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
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
              (i32.const 12 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 12 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 13 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 13 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 14 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 14 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 15 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 15 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 16 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 16 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 17 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 17 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 18 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 18 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 19 )
              (i32.const 0 ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 19 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 20 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 20 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 21 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 21 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 22 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 22 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 23 )
              (tee_local $-obj1 (call $-new_value
                  (i32.const 5 )
                  (i32.const 0 ) ) )
              (drop
                (call $-set_to_obj
                  (get_local $-obj1 )
                  (i32.const 12 )
                  (call $-new_value
                    (i32.const 4 )
                    (i32.const 0 ) ) )
                (call $-get_from_obj
                  (get_local $-obj1 )
                  (i32.const 12 ) ) )
              (drop
                (call $-set_to_obj
                  (get_local $-obj1 )
                  (i32.const 14 )
                  (call $-new_value
                    (i32.const 4 )
                    (i32.const 0 ) ) )
                (call $-get_from_obj
                  (get_local $-obj1 )
                  (i32.const 14 ) ) )
              (drop
                (call $-set_to_obj
                  (get_local $-obj1 )
                  (i32.const 24 )
                  (call $-new_value
                    (i32.const 4 )
                    (i32.const 0 ) ) )
                (call $-get_from_obj
                  (get_local $-obj1 )
                  (i32.const 24 ) ) )
              (drop
                (call $-set_to_obj
                  (get_local $-obj1 )
                  (i32.const 17 )
                  (call $-new_value
                    (i32.const 4 )
                    (i32.const 0 ) ) )
                (call $-get_from_obj
                  (get_local $-obj1 )
                  (i32.const 17 ) ) )
              (drop
                (call $-set_to_obj
                  (get_local $-obj1 )
                  (i32.const 16 )
                  (call $-new_value
                    (i32.const 4 )
                    (i32.const 0 ) ) )
                (call $-get_from_obj
                  (get_local $-obj1 )
                  (i32.const 16 ) ) )
              (drop
                (call $-set_to_obj
                  (get_local $-obj1 )
                  (i32.const 15 )
                  (call $-new_value
                    (i32.const 4 )
                    (i32.const 0 ) ) )
                (call $-get_from_obj
                  (get_local $-obj1 )
                  (i32.const 15 ) ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 23 ) ) ) )
        (get_global $ns2\sections ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\rewind

  (func $ns2\rewind
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_global $ns2\pos (call $-number (f64.const 0 ) ) )
        (get_global $ns2\pos ) )
      (drop
        (set_global $ns2\line (call $-number (f64.const 1 ) ) )
        (get_global $ns2\line ) )
      (drop
        (set_global $ns2\column (call $-number (f64.const 0 ) ) )
        (get_global $ns2\column ) )
      (drop
        (set_global $ns2\pos_stack (call $-new_value
            (i32.const 4 )
            (i32.const 0 ) ) )
        (get_global $ns2\pos_stack ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\save_pos

  (func $ns2\save_pos
    (result i32 )
    (local $ns2\p i32 )
    (local $-obj0 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\p
          (tee_local $-obj0 (call $-new_value
              (i32.const 5 )
              (i32.const 0 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 25 )
              (call $-add
                (call $-number (f64.const 0 ) )
                (get_global $ns2\pos ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 25 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 26 )
              (call $-add
                (call $-number (f64.const 0 ) )
                (get_global $ns2\line ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 26 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 27 )
              (call $-add
                (call $-number (f64.const 0 ) )
                (get_global $ns2\column ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 27 ) ) ) )
        (get_local $ns2\p ) )
      (drop (call $ns1\array_push
          (get_global $ns2\pos_stack )
          (get_local $ns2\p ) ) )
      (set_local $-ret (get_local $ns2\p ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\restore_pos

  (func $ns2\restore_pos
    (result i32 )
    (local $ns2\p i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\p (call $ns1\array_pop (get_global $ns2\pos_stack ) ) )
        (get_local $ns2\p ) )
      (drop
        (set_global $ns2\pos (call $-get_from_obj
            (get_local $ns2\p )
            (i32.const 25 ) ) )
        (get_global $ns2\pos ) )
      (drop
        (set_global $ns2\line (call $-get_from_obj
            (get_local $ns2\p )
            (i32.const 26 ) ) )
        (get_global $ns2\line ) )
      (drop
        (set_global $ns2\column (call $-get_from_obj
            (get_local $ns2\p )
            (i32.const 27 ) ) )
        (get_global $ns2\column ) )
      (set_local $-ret (get_local $ns2\p ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\pop_pos

  (func $ns2\pop_pos
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (set_local $-ret (call $ns1\array_pop (get_global $ns2\pos_stack ) ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\croak

  (func $ns2\croak
    (param $ns2\message i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_global $ns2\error (call $-or
            (get_global $ns2\error )
            (call $-add
              (call $-add
                (call $-add
                  (call $-add
                    (call $-add
                      (get_local $ns2\message )
                      (i32.const 28 ) )
                    (get_global $ns2\line ) )
                  (i32.const 29 ) )
                (get_global $ns2\column ) )
              (i32.const 30 ) ) ) )
        (get_global $ns2\error ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\unexpected

  (func $ns2\unexpected
    (param $ns2\actual i32 )
    (param $ns2\expected i32 )
    (result i32 )
    (local $ns2\message i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\message (call $-add
            (call $-add
              (i32.const 31 )
              (get_local $ns2\actual ) )
            (i32.const 32 ) ) )
        (get_local $ns2\message ) )
      (if
        (call $-truthy (get_local $ns2\expected ) )
        (then
          (drop
            (set_local $ns2\message (call $-add
                (get_local $ns2\message )
                (call $-add
                  (call $-add
                    (i32.const 33 )
                    (get_local $ns2\expected ) )
                  (i32.const 34 ) ) ) )
            (get_local $ns2\message ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop (call $ns2\croak (get_local $ns2\message ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\is_eof

  (func $ns2\is_eof
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (set_local $-ret (call $-ge
          (get_global $ns2\pos )
          (call $ns1\size_of (get_global $ns2\src ) ) ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\peek_char

  (func $ns2\peek_char
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (set_local $-ret (call $-add
          (i32.const 3 )
          (call $ns1\binary_slice
            (get_global $ns2\src )
            (get_global $ns2\pos )
            (call $-number (f64.const 1 ) ) ) ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_char

  (func $ns2\read_char
    (result i32 )
    (local $ns2\char i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\char (call $ns2\peek_char ) )
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
            (i32.const 35 ) ) )
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
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\backstep

  (func $ns2\backstep
    (result i32 )
    (local $ns2\char i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_global $ns2\pos (call $-inc
            (get_global $ns2\pos )
            (f64.const -1 ) ) )
        (get_global $ns2\pos ) )
      (drop
        (set_global $ns2\column (call $-inc
            (get_global $ns2\column )
            (f64.const -1 ) ) )
        (get_global $ns2\column ) )
      (drop
        (set_local $ns2\char (call $ns2\peek_char ) )
        (get_local $ns2\char ) )
      (if
        (call $-truthy (call $-equal
            (get_local $ns2\char )
            (i32.const 35 ) ) )
        (then
          (drop
            (set_global $ns2\line (call $-inc
                (get_global $ns2\line )
                (f64.const -1 ) ) )
            (get_global $ns2\line ) )
          (drop
            (set_global $ns2\column (call $-number (f64.const 0xfffffff ) ) )
            (get_global $ns2\column ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (set_local $-ret (get_local $ns2\char ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_raw_token

  (func $ns2\read_raw_token
    (result i32 )
    (local $ns2\hexdigits i32 )
    (local $ns2\token i32 )
    (local $ns2\char i32 )
    (local $ns2\illegals i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\hexdigits (i32.const 36 ) )
        (get_local $ns2\hexdigits ) )
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
            (i32.const 8 ) ) )
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
                (i32.const 37 ) ) )
            (then
              (drop
                (set_local $ns2\token (get_local $ns2\char ) )
                (get_local $ns2\token ) )
              (block (loop
                  (br_if 1 (call $-falsy (call $-and
                        (call $-equal
                          (call $ns1\binary_search
                            (get_local $ns2\token )
                            (i32.const 38 )
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
              (i32.const 30 ) ) ) )
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
              (i32.const 39 ) ) ) )
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
                      (i32.const 39 ) )
                    (call $-equal
                      (i32.const 1 )
                      (call $ns2\is_eof ) ) ) ) )
              (block
                (if
                  (call $-truthy (call $-equal
                      (get_local $ns2\char )
                      (i32.const 40 ) ) )
                  (then
                    (drop
                      (set_local $ns2\char (call $ns2\read_char ) )
                      (get_local $ns2\char ) )
                    (if
                      (call $-truthy (call $-equal
                          (get_local $ns2\char )
                          (i32.const 41 ) ) )
                      (then
                        (drop (call $ns1\binary_write
                            (get_local $ns2\token )
                            (call $ns1\size_of (get_local $ns2\token ) )
                            (i32.const 35 ) ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.and
                        (i32.eqz (get_local $-success ) )
                        (call $-truthy (call $-equal
                            (get_local $ns2\char )
                            (i32.const 42 ) ) ) )
                      (then
                        (drop (call $ns1\binary_write
                            (get_local $ns2\token )
                            (call $ns1\size_of (get_local $ns2\token ) )
                            (i32.const 43 ) ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (if
                      (i32.and
                        (i32.eqz (get_local $-success ) )
                        (call $-truthy (call $-unequal
                            (call $ns1\binary_search
                              (get_local $ns2\hexdigits )
                              (get_local $ns2\char )
                              (i32.const 0 ) )
                            (i32.const 0 ) ) ) )
                      (then
                        (drop
                          (set_local $ns2\char (call $-add
                              (get_local $ns2\char )
                              (call $ns2\read_char ) ) )
                          (get_local $ns2\char ) )
                        (drop (call $ns1\binary_write
                            (get_local $ns2\token )
                            (call $ns1\size_of (get_local $ns2\token ) )
                            (call $ns3\from_hex (get_local $ns2\char ) ) ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (drop (call $ns1\binary_write
                            (get_local $ns2\token )
                            (call $ns1\size_of (get_local $ns2\token ) )
                            (get_local $ns2\char ) ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (drop (call $ns1\binary_write
                        (get_local $ns2\token )
                        (call $ns1\size_of (get_local $ns2\token ) )
                        (get_local $ns2\char ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (drop
                  (set_local $ns2\char (call $ns2\read_char ) )
                  (get_local $ns2\char ) )
                (set_local $-success (i32.const 1 ) ) )
              (br 0 ) ) )
          (set_local $-success (i32.const 1 ) ) ) )
      (if
        (i32.and
          (i32.eqz (get_local $-success ) )
          (call $-truthy (call $-equal
              (get_local $ns2\char )
              (i32.const 37 ) ) ) )
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
                (i32.const 37 ) ) )
            (then
              (block (loop
                  (br_if 1 (call $-falsy (call $-and
                        (call $-unequal
                          (get_local $ns2\char )
                          (i32.const 35 ) )
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
            (set_local $ns2\illegals (i32.const 44 ) )
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
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_token

  (func $ns2\read_token
    (result i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\token (i32.const 45 ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (call $-equal
                (call $ns1\binary_search
                  (get_local $ns2\token )
                  (i32.const 45 )
                  (i32.const 0 ) )
                (call $-number (f64.const 0 ) ) ) ) )
          (block
            (drop
              (set_local $ns2\token (call $ns2\read_raw_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (if
        (call $-truthy (call $-equal
            (get_local $ns2\token )
            (i32.const 30 ) ) )
        (then
          (drop (call $ns2\backstep ) )
          (drop
            (set_local $ns2\token (i32.const 0 ) )
            (get_local $ns2\token ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (set_local $-ret (get_local $ns2\token ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\exit_parens

  (func $ns2\exit_parens
    (result i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\token (i32.const 45 ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (call $-and
                (get_local $ns2\token )
                (call $-unequal
                  (get_local $ns2\token )
                  (i32.const 30 ) ) ) ) )
          (block
            (drop
              (set_local $ns2\token (call $ns2\read_raw_token ) )
              (get_local $ns2\token ) )
            (if
              (call $-truthy (call $-equal
                  (get_local $ns2\token )
                  (i32.const 8 ) ) )
              (then
                (drop (call $ns2\exit_parens ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (set_local $-ret (get_local $ns2\token ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\is_name

  (func $ns2\is_name
    (param $ns2\token i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (set_local $-ret (call $-equal
          (call $ns1\binary_search
            (get_local $ns2\token )
            (i32.const 46 )
            (i32.const 0 ) )
          (call $-number (f64.const 0 ) ) ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\is_string

  (func $ns2\is_string
    (param $ns2\token i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (set_local $-ret (call $-equal
          (call $ns1\binary_search
            (get_local $ns2\token )
            (i32.const 39 )
            (i32.const 0 ) )
          (call $-number (f64.const 0 ) ) ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\is_number

  (func $ns2\is_number
    (param $ns2\token i32 )
    (result i32 )
    (local $ns2\digits i32 )
    (local $ns2\char i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\digits (i32.const 47 ) )
        (get_local $ns2\digits ) )
      (drop
        (set_local $ns2\char (call $ns1\binary_slice
            (get_local $ns2\token )
            (call $-number (f64.const 0 ) )
            (call $-number (f64.const 1 ) ) ) )
        (get_local $ns2\char ) )
      (set_local $-ret (call $-unequal
          (call $ns1\binary_search
            (get_local $ns2\digits )
            (get_local $ns2\char )
            (i32.const 0 ) )
          (i32.const 0 ) ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\token_to_number

  (func $ns2\token_to_number
    (param $ns2\token i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (set_local $-ret (call $ns1\json_decode (get_local $ns2\token ) ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\translate_code

  (func $ns2\translate_code
    (param $ns2\bin i32 )
    (param $ns2\token i32 )
    (result i32 )
    (local $ns2\code i32 )
    (local $ns2\to_code i32 )
    (local $ns2\autoend i32 )
    (local $ns2\opcode i32 )
    (local $ns2\num i32 )
    (local $ns2\targets i32 )
    (local $ns2\target i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\code (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\code ) )
      (drop
        (set_local $ns2\to_code (i32.const 1 ) )
        (get_local $ns2\to_code ) )
      (drop
        (set_local $ns2\autoend (i32.const 1 ) )
        (get_local $ns2\autoend ) )
      (if
        (call $-truthy (call $-equal
            (get_local $ns2\token )
            (i32.const 0 ) ) )
        (then
          (drop
            (set_local $ns2\token (call $ns2\read_token ) )
            (get_local $ns2\token ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (block (loop
          (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
          (block
            (if
              (call $-truthy (call $-equal
                  (get_local $ns2\token )
                  (i32.const 8 ) ) )
              (then
                (if
                  (call $-truthy (get_local $ns2\to_code ) )
                  (then
                    (drop (call $ns2\translate_code
                        (get_local $ns2\code )
                        (i32.const 0 ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (drop (call $ns2\translate_code
                        (get_local $ns2\bin )
                        (i32.const 0 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (call $-truthy (call $-equal
                      (get_local $ns2\to_code )
                      (i32.const 0 ) ) )
                  (then
                    (drop
                      (set_local $ns2\to_code (i32.const 5 ) )
                      (get_local $ns2\to_code ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (i32.eqz (get_local $-success ) )
              (then
                (drop
                  (set_local $ns2\opcode (call $-get_from_obj
                      (get_global $ns4\opcodes )
                      (get_local $ns2\token ) ) )
                  (get_local $ns2\opcode ) )
                (if
                  (call $-truthy (call $-unequal
                      (get_local $ns2\opcode )
                      (i32.const 0 ) ) )
                  (then
                    (drop (call $ns1\binary_write
                        (get_local $ns2\code )
                        (call $ns1\size_of (get_local $ns2\code ) )
                        (get_local $ns2\opcode ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (call $-truthy (call $-or
                      (call $-or
                        (call $-equal
                          (get_local $ns2\token )
                          (i32.const 48 ) )
                        (call $-equal
                          (get_local $ns2\token )
                          (i32.const 49 ) ) )
                      (call $-equal
                        (get_local $ns2\token )
                        (i32.const 50 ) ) ) )
                  (then
                    (if
                      (call $-truthy (call $-equal
                          (get_local $ns2\token )
                          (i32.const 50 ) ) )
                      (then
                        (drop
                          (set_local $ns2\to_code (i32.const 0 ) )
                          (get_local $ns2\to_code ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (drop
                          (set_local $ns2\to_code (i32.const 5 ) )
                          (get_local $ns2\to_code ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (drop
                      (set_local $ns2\autoend (i32.const 5 ) )
                      (get_local $ns2\autoend ) )
                    (drop (call $ns2\save_pos ) )
                    (drop
                      (set_local $ns2\num (call $ns2\read_token ) )
                      (get_local $ns2\num ) )
                    (if
                      (call $-truthy (call $ns2\is_name (get_local $ns2\num ) ) )
                      (then
                        (drop (call $ns1\array_unshift
                            (get_global $ns2\blocks )
                            (get_local $ns2\num ) ) )
                        (drop (call $ns2\pop_pos ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (drop (call $ns1\array_unshift
                            (get_global $ns2\blocks )
                            (i32.const 46 ) ) )
                        (drop (call $ns2\restore_pos ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (drop (call $ns2\save_pos ) )
                    (drop
                      (set_local $ns2\num (call $ns2\read_token ) )
                      (get_local $ns2\num ) )
                    (if
                      (call $-truthy (call $-equal
                          (get_local $ns2\num )
                          (i32.const 8 ) ) )
                      (then
                        (drop
                          (set_local $ns2\num (call $ns2\read_token ) )
                          (get_local $ns2\num ) )
                        (if
                          (call $-truthy (call $-equal
                              (get_local $ns2\num )
                              (i32.const 51 ) ) )
                          (then
                            (drop
                              (set_local $ns2\num (call $ns2\read_token ) )
                              (get_local $ns2\num ) )
                            (if
                              (call $-truthy (call $-equal
                                  (get_local $ns2\num )
                                  (i32.const 52 ) ) )
                              (then
                                (drop
                                  (set_local $ns2\num (call $-number (f64.const 0x7f ) ) )
                                  (get_local $ns2\num ) )
                                (set_local $-success (i32.const 1 ) ) )
                              (else (set_local $-success (i32.const 0 ) ) ) )
                            (if
                              (i32.and
                                (i32.eqz (get_local $-success ) )
                                (call $-truthy (call $-equal
                                    (get_local $ns2\num )
                                    (i32.const 53 ) ) ) )
                              (then
                                (drop
                                  (set_local $ns2\num (call $-number (f64.const 0x7e ) ) )
                                  (get_local $ns2\num ) )
                                (set_local $-success (i32.const 1 ) ) ) )
                            (if
                              (i32.and
                                (i32.eqz (get_local $-success ) )
                                (call $-truthy (call $-equal
                                    (get_local $ns2\num )
                                    (i32.const 54 ) ) ) )
                              (then
                                (drop
                                  (set_local $ns2\num (call $-number (f64.const 0x7d ) ) )
                                  (get_local $ns2\num ) )
                                (set_local $-success (i32.const 1 ) ) ) )
                            (if
                              (i32.and
                                (i32.eqz (get_local $-success ) )
                                (call $-truthy (call $-equal
                                    (get_local $ns2\num )
                                    (i32.const 55 ) ) ) )
                              (then
                                (drop
                                  (set_local $ns2\num (call $-number (f64.const 0x7c ) ) )
                                  (get_local $ns2\num ) )
                                (set_local $-success (i32.const 1 ) ) ) )
                            (drop (call $ns2\pop_pos ) )
                            (set_local $-success (i32.const 1 ) ) )
                          (else (set_local $-success (i32.const 0 ) ) ) )
                        (if
                          (i32.eqz (get_local $-success ) )
                          (then
                            (drop
                              (set_local $ns2\num (call $-number (f64.const 0x40 ) ) )
                              (get_local $ns2\num ) )
                            (drop (call $ns2\restore_pos ) )
                            (set_local $-success (i32.const 1 ) ) ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (drop
                          (set_local $ns2\num (call $-number (f64.const 0x40 ) ) )
                          (get_local $ns2\num ) )
                        (drop (call $ns2\restore_pos ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (drop (call $ns3\write_varuint
                        (get_local $ns2\code )
                        (get_local $ns2\num ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 56 ) ) ) )
                  (then
                    (drop
                      (set_local $ns2\to_code (i32.const 5 ) )
                      (get_local $ns2\to_code ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 57 ) ) ) )
                  (then
                    (drop
                      (set_local $ns2\to_code (i32.const 1 ) )
                      (get_local $ns2\to_code ) )
                    (drop
                      (set_local $ns2\autoend (i32.const 1 ) )
                      (get_local $ns2\autoend ) )
                    (drop (call $ns1\array_shift (get_global $ns2\blocks ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-or
                        (call $-equal
                          (get_local $ns2\token )
                          (i32.const 58 ) )
                        (call $-equal
                          (get_local $ns2\token )
                          (i32.const 59 ) ) ) ) )
                  (then
                    (drop
                      (set_local $ns2\num (call $ns2\read_token ) )
                      (get_local $ns2\num ) )
                    (if
                      (call $-truthy (call $ns2\is_number (get_local $ns2\num ) ) )
                      (then
                        (drop (call $ns3\write_varuint
                            (get_local $ns2\code )
                            (call $ns2\token_to_number (get_local $ns2\num ) ) ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.and
                        (i32.eqz (get_local $-success ) )
                        (call $-truthy (call $ns2\is_name (get_local $ns2\num ) ) ) )
                      (then
                        (drop (call $ns3\write_varuint
                            (get_local $ns2\code )
                            (call $ns1\array_search
                              (get_global $ns2\blocks )
                              (get_local $ns2\num )
                              (i32.const 0 ) ) ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (set_local $-ret (call $ns2\unexpected
                            (get_local $ns2\num )
                            (i32.const 60 ) ) )
                        (br 6 )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 61 ) ) ) )
                  (then
                    (drop
                      (set_local $ns2\targets (call $-new_value
                          (i32.const 4 )
                          (i32.const 0 ) ) )
                      (get_local $ns2\targets ) )
                    (drop (call $ns2\save_pos ) )
                    (drop
                      (set_local $ns2\num (call $ns2\read_token ) )
                      (get_local $ns2\num ) )
                    (block (loop
                        (br_if 1 (call $-falsy (call $-and
                              (get_local $ns2\num )
                              (call $-or
                                (call $ns2\is_name (get_local $ns2\num ) )
                                (call $ns2\is_number (get_local $ns2\num ) ) ) ) ) )
                        (block
                          (drop (call $ns2\pop_pos ) )
                          (drop (call $ns2\save_pos ) )
                          (if
                            (call $-truthy (call $ns2\is_name (get_local $ns2\num ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (get_local $ns2\targets )
                                  (call $ns1\array_search
                                    (get_global $ns2\blocks )
                                    (get_local $ns2\num )
                                    (i32.const 0 ) ) ) )
                              (set_local $-success (i32.const 1 ) ) )
                            (else (set_local $-success (i32.const 0 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $ns2\is_number (get_local $ns2\num ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (get_local $ns2\targets )
                                  (call $ns2\token_to_number (get_local $ns2\num ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (drop
                            (set_local $ns2\num (call $ns2\read_token ) )
                            (get_local $ns2\num ) )
                          (set_local $-success (i32.const 1 ) ) )
                        (br 0 ) ) )
                    (drop (call $ns2\restore_pos ) )
                    (drop (call $ns3\write_varuint
                        (get_local $ns2\code )
                        (call $-sub
                          (call $ns1\array_length (get_local $ns2\targets ) )
                          (call $-number (f64.const 1 ) ) ) ) )
                    (set_local $-fori0 (i32.const 0 ) )
                    (set_local $-fora0 (get_local $ns2\targets ) )
                    (set_local $-forl0 (i32.div_u
                        (call $-len (get_local $-fora0 ) )
                        (i32.const 4 ) ) )
                    (block (loop
                        (br_if 1 (i32.ge_u
                            (get_local $-fori0 )
                            (get_local $-forl0 ) ) )
                        (set_local $ns2\target (call $-get_from_obj
                            (get_local $-fora0 )
                            (call $-integer_u (get_local $-fori0 ) ) ) )
                        (block
                          (drop (call $ns3\write_varuint
                              (get_local $ns2\code )
                              (get_local $ns2\target ) ) )
                          (set_local $-success (i32.const 1 ) ) )
                        (set_local $-fori0 (i32.add
                            (get_local $-fori0 )
                            (i32.const 1 ) ) )
                        (br 0 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 62 ) ) ) )
                  (then
                    (drop
                      (set_local $ns2\num (call $ns2\read_token ) )
                      (get_local $ns2\num ) )
                    (if
                      (call $-truthy (call $ns2\is_number (get_local $ns2\num ) ) )
                      (then
                        (drop (call $ns3\write_varuint
                            (get_local $ns2\code )
                            (call $ns2\token_to_number (get_local $ns2\num ) ) ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.and
                        (i32.eqz (get_local $-success ) )
                        (call $-truthy (call $ns2\is_name (get_local $ns2\num ) ) ) )
                      (then
                        (drop (call $ns3\write_varuint
                            (get_local $ns2\code )
                            (call $ns1\array_search
                              (call $-get_from_obj
                                (call $-get_from_obj
                                  (get_global $ns2\sections )
                                  (i32.const 23 ) )
                                (i32.const 14 ) )
                              (get_local $ns2\num )
                              (i32.const 0 ) ) ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (set_local $-ret (call $ns2\unexpected
                            (get_local $ns2\num )
                            (i32.const 63 ) ) )
                        (br 6 )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 64 ) ) ) )
                  (then
                    (drop (call $ns2\save_pos ) )
                    (drop (call $ns3\write_varuint
                        (get_local $ns2\code )
                        (call $ns2\read_func_type (i32.const 0 ) ) ) )
                    (drop (call $ns3\write_varuint
                        (get_local $ns2\code )
                        (call $-number (f64.const 0 ) ) ) )
                    (drop (call $ns2\restore_pos ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (call $ns1\binary_search
                          (get_local $ns2\token )
                          (i32.const 65 )
                          (i32.const 0 ) )
                        (call $-number (f64.const 3 ) ) ) ) )
                  (then
                    (drop
                      (set_local $ns2\num (call $ns2\read_token ) )
                      (get_local $ns2\num ) )
                    (if
                      (call $-truthy (call $ns2\is_number (get_local $ns2\num ) ) )
                      (then
                        (drop (call $ns3\write_varuint
                            (get_local $ns2\code )
                            (call $ns2\token_to_number (get_local $ns2\num ) ) ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.and
                        (i32.eqz (get_local $-success ) )
                        (call $-truthy (call $ns2\is_name (get_local $ns2\num ) ) ) )
                      (then
                        (drop (call $ns3\write_varuint
                            (get_local $ns2\code )
                            (call $ns1\array_search
                              (get_global $ns2\local_names )
                              (get_local $ns2\num )
                              (i32.const 0 ) ) ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (set_local $-ret (call $ns2\unexpected
                            (get_local $ns2\num )
                            (i32.const 66 ) ) )
                        (br 6 )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (call $ns1\binary_search
                          (get_local $ns2\token )
                          (i32.const 67 )
                          (i32.const 0 ) )
                        (call $-number (f64.const 3 ) ) ) ) )
                  (then
                    (drop
                      (set_local $ns2\num (call $ns2\read_token ) )
                      (get_local $ns2\num ) )
                    (if
                      (call $-truthy (call $ns2\is_number (get_local $ns2\num ) ) )
                      (then
                        (drop (call $ns3\write_varuint
                            (get_local $ns2\code )
                            (call $ns2\token_to_number (get_local $ns2\num ) ) ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.and
                        (i32.eqz (get_local $-success ) )
                        (call $-truthy (call $ns2\is_name (get_local $ns2\num ) ) ) )
                      (then
                        (drop (call $ns3\write_varuint
                            (get_local $ns2\code )
                            (call $ns1\array_search
                              (call $-get_from_obj
                                (call $-get_from_obj
                                  (get_global $ns2\sections )
                                  (i32.const 23 ) )
                                (i32.const 17 ) )
                              (get_local $ns2\num )
                              (i32.const 0 ) ) ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (set_local $-ret (call $ns2\unexpected
                            (get_local $ns2\num )
                            (i32.const 68 ) ) )
                        (br 6 )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-or
                        (call $-equal
                          (call $ns1\binary_search
                            (get_local $ns2\token )
                            (i32.const 69 )
                            (i32.const 0 ) )
                          (call $-number (f64.const 3 ) ) )
                        (call $-equal
                          (call $ns1\binary_search
                            (get_local $ns2\token )
                            (i32.const 70 )
                            (i32.const 0 ) )
                          (call $-number (f64.const 3 ) ) ) ) ) )
                  (then
                    (drop (get_local $ns2\num ) )
                    (if
                      (call $-truthy (call $ns1\binary_search
                          (get_local $ns2\token )
                          (i32.const 71 )
                          (i32.const 0 ) ) )
                      (then
                        (drop
                          (set_local $ns2\num (call $-number (f64.const 3 ) ) )
                          (get_local $ns2\num ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (call $-truthy (call $ns1\binary_search
                          (get_local $ns2\token )
                          (i32.const 72 )
                          (i32.const 0 ) ) )
                      (then
                        (drop
                          (set_local $ns2\num (call $-number (f64.const 2 ) ) )
                          (get_local $ns2\num ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (call $-truthy (call $ns1\binary_search
                          (get_local $ns2\token )
                          (i32.const 73 )
                          (i32.const 0 ) ) )
                      (then
                        (drop
                          (set_local $ns2\num (call $-number (f64.const 1 ) ) )
                          (get_local $ns2\num ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (call $-truthy (call $ns1\binary_search
                          (get_local $ns2\token )
                          (i32.const 74 )
                          (i32.const 0 ) ) )
                      (then
                        (drop
                          (set_local $ns2\num (call $-number (f64.const 0 ) ) )
                          (get_local $ns2\num ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (drop (call $ns3\write_varuint
                        (get_local $ns2\code )
                        (get_local $ns2\num ) ) )
                    (drop (call $ns3\write_varuint
                        (get_local $ns2\code )
                        (call $-number (f64.const 0 ) ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-or
                        (call $-equal
                          (get_local $ns2\token )
                          (i32.const 75 ) )
                        (call $-equal
                          (get_local $ns2\token )
                          (i32.const 76 ) ) ) ) )
                  (then
                    (drop (call $ns3\write_varuint
                        (get_local $ns2\code )
                        (call $-number (f64.const 0 ) ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-or
                        (call $-equal
                          (get_local $ns2\token )
                          (i32.const 77 ) )
                        (call $-equal
                          (get_local $ns2\token )
                          (i32.const 78 ) ) ) ) )
                  (then
                    (drop
                      (set_local $ns2\num (call $ns2\read_token ) )
                      (get_local $ns2\num ) )
                    (if
                      (call $-truthy (call $ns2\is_number (get_local $ns2\num ) ) )
                      (then
                        (drop (call $ns1\binary_write
                            (get_local $ns2\code )
                            (call $ns1\size_of (get_local $ns2\code ) )
                            (call $ns3\token_to_varint (get_local $ns2\num ) ) ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (set_local $-ret (call $ns2\unexpected
                            (get_local $ns2\num )
                            (i32.const 79 ) ) )
                        (br 6 )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 80 ) ) ) )
                  (then
                    (drop
                      (set_local $ns2\num (call $ns2\read_token ) )
                      (get_local $ns2\num ) )
                    (if
                      (call $-truthy (call $ns2\is_number (get_local $ns2\num ) ) )
                      (then
                        (drop (call $ns1\binary_write
                            (get_local $ns2\code )
                            (call $ns1\size_of (get_local $ns2\code ) )
                            (call $ns3\number_to_f32bin (call $ns2\token_to_number (get_local $ns2\num ) ) ) ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (set_local $-ret (call $ns2\unexpected
                            (get_local $ns2\num )
                            (i32.const 79 ) ) )
                        (br 6 )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 81 ) ) ) )
                  (then
                    (drop
                      (set_local $ns2\num (call $ns2\read_token ) )
                      (get_local $ns2\num ) )
                    (if
                      (call $-truthy (call $ns2\is_number (get_local $ns2\num ) ) )
                      (then
                        (drop (call $ns1\binary_write
                            (get_local $ns2\code )
                            (call $ns1\size_of (get_local $ns2\code ) )
                            (call $ns3\number_to_f64bin (call $ns2\token_to_number (get_local $ns2\num ) ) ) ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (set_local $-ret (call $ns2\unexpected
                            (get_local $ns2\num )
                            (i32.const 79 ) ) )
                        (br 6 )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (if
        (call $-truthy (get_local $ns2\autoend ) )
        (then
          (drop (call $ns1\binary_write
              (get_local $ns2\code )
              (call $ns1\size_of (get_local $ns2\code ) )
              (call $-number (f64.const 0x0b ) ) ) )
          (drop (call $ns1\array_shift (get_global $ns2\blocks ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop (call $ns2\exit_parens ) )
      (drop (call $ns1\binary_write
          (get_local $ns2\bin )
          (call $ns1\size_of (get_local $ns2\bin ) )
          (get_local $ns2\code ) ) )
      (set_local $-ret (get_local $ns2\bin ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_names

  (func $ns2\read_names
    (result i32 )
    (local $ns2\token i32 )
    (local $ns2\name i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
          (block
            (if
              (call $-truthy (call $-equal
                  (get_local $ns2\token )
                  (i32.const 8 ) ) )
              (then
                (drop
                  (set_local $ns2\token (call $ns2\read_token ) )
                  (get_local $ns2\token ) )
                (if
                  (call $-truthy (call $-equal
                      (get_local $ns2\token )
                      (i32.const 12 ) ) )
                  (then
                    (drop (call $ns1\array_push
                        (call $-get_from_obj
                          (call $-get_from_obj
                            (get_global $ns2\sections )
                            (i32.const 23 ) )
                          (i32.const 12 ) )
                        (call $ns2\read_name ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 13 ) ) ) )
                  (then
                    (drop (call $ns2\read_token ) )
                    (drop (call $ns2\read_token ) )
                    (drop (call $ns2\read_names ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 15 ) ) ) )
                  (then
                    (drop (call $ns1\array_push
                        (call $-get_from_obj
                          (call $-get_from_obj
                            (get_global $ns2\sections )
                            (i32.const 23 ) )
                          (i32.const 15 ) )
                        (call $ns2\read_name ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 16 ) ) ) )
                  (then
                    (drop (call $ns1\array_push
                        (call $-get_from_obj
                          (call $-get_from_obj
                            (get_global $ns2\sections )
                            (i32.const 23 ) )
                          (i32.const 16 ) )
                        (call $ns2\read_name ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 82 ) ) ) )
                  (then
                    (drop
                      (set_global $ns2\local_names (call $-new_value
                          (i32.const 4 )
                          (i32.const 0 ) ) )
                      (get_global $ns2\local_names ) )
                    (drop (call $ns1\array_push
                        (call $-get_from_obj
                          (call $-get_from_obj
                            (get_global $ns2\sections )
                            (i32.const 23 ) )
                          (i32.const 24 ) )
                        (get_global $ns2\local_names ) ) )
                    (drop
                      (set_local $ns2\name (call $ns2\read_token ) )
                      (get_local $ns2\name ) )
                    (if
                      (call $-truthy (call $ns2\is_name (get_local $ns2\name ) ) )
                      (then
                        (drop (call $ns1\array_push
                            (call $-get_from_obj
                              (call $-get_from_obj
                                (get_global $ns2\sections )
                                (i32.const 23 ) )
                              (i32.const 14 ) )
                            (get_local $ns2\name ) ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (drop (call $ns1\array_push
                            (call $-get_from_obj
                              (call $-get_from_obj
                                (get_global $ns2\sections )
                                (i32.const 23 ) )
                              (i32.const 14 ) )
                            (i32.const 0 ) ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (if
                      (call $-truthy (call $-equal
                          (get_local $ns2\name )
                          (i32.const 8 ) ) )
                      (then
                        (drop (call $ns2\backstep ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (drop (call $ns2\read_names ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 17 ) ) ) )
                  (then
                    (drop (call $ns1\array_push
                        (call $-get_from_obj
                          (call $-get_from_obj
                            (get_global $ns2\sections )
                            (i32.const 23 ) )
                          (i32.const 17 ) )
                        (call $ns2\read_name ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 83 ) ) ) )
                  (then
                    (drop (call $ns1\array_push
                        (get_global $ns2\local_names )
                        (call $ns2\read_name ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 84 ) ) ) )
                  (then
                    (drop (call $ns1\array_push
                        (get_global $ns2\local_names )
                        (call $ns2\read_name ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (drop (call $ns2\exit_parens ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns2\exit_parens ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_name

  (func $ns2\read_name
    (result i32 )
    (local $ns2\token i32 )
    (local $ns2\name i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (if
        (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) )
        (then
          (drop
            (set_local $ns2\name (get_local $ns2\token ) )
            (get_local $ns2\name ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (if
        (call $-truthy (call $-equal
            (get_local $ns2\token )
            (i32.const 8 ) ) )
        (then
          (drop (call $ns2\exit_parens ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop (call $ns2\exit_parens ) )
      (set_local $-ret (get_local $ns2\name ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_module

  (func $ns2\read_module
    (result i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
          (block
            (if
              (call $-truthy (call $-equal
                  (get_local $ns2\token )
                  (i32.const 8 ) ) )
              (then
                (drop
                  (set_local $ns2\token (call $ns2\read_token ) )
                  (get_local $ns2\token ) )
                (if
                  (call $-truthy (call $-equal
                      (get_local $ns2\token )
                      (i32.const 12 ) ) )
                  (then
                    (drop (call $ns2\read_type ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 13 ) ) ) )
                  (then
                    (drop (call $ns2\read_import ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 15 ) ) ) )
                  (then
                    (drop (call $ns2\read_table_type (i32.const 5 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 16 ) ) ) )
                  (then
                    (drop (call $ns2\read_memory_type (i32.const 5 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 82 ) ) ) )
                  (then
                    (drop (call $ns2\read_func_type (i32.const 5 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 17 ) ) ) )
                  (then
                    (drop (call $ns2\read_global_type (i32.const 5 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 18 ) ) ) )
                  (then
                    (drop (call $ns2\read_export (i32.const 5 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 19 ) ) ) )
                  (then
                    (drop (call $ns2\read_start (i32.const 5 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 85 ) ) ) )
                  (then
                    (drop (call $ns2\read_element (i32.const 5 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 22 ) ) ) )
                  (then
                    (drop (call $ns2\read_data (i32.const 5 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (set_local $-ret (call $ns2\unexpected
                        (get_local $ns2\token )
                        (i32.const 86 ) ) )
                    (br 5 )
                    (drop (call $ns2\exit_parens ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (i32.eqz (get_local $-success ) )
              (then
                (set_local $-ret (call $ns2\unexpected
                    (get_local $ns2\token )
                    (i32.const 9 ) ) )
                (br 4 )
                (set_local $-success (i32.const 1 ) ) ) )
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns2\exit_parens ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_type

  (func $ns2\read_type
    (result i32 )
    (local $ns2\type i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop (get_local $ns2\type ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (if
        (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) )
        (then
          (drop
            (set_local $ns2\token (call $ns2\read_token ) )
            (get_local $ns2\token ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (if
        (call $-truthy (call $-equal
            (get_local $ns2\token )
            (i32.const 8 ) ) )
        (then
          (drop
            (set_local $ns2\token (call $ns2\read_token ) )
            (get_local $ns2\token ) )
          (if
            (call $-truthy (call $-equal
                (get_local $ns2\token )
                (i32.const 82 ) ) )
            (then
              (drop
                (set_local $ns2\type (call $ns2\read_func_type (i32.const 0 ) ) )
                (get_local $ns2\type ) )
              (set_local $-success (i32.const 1 ) ) )
            (else (set_local $-success (i32.const 0 ) ) ) )
          (if
            (i32.eqz (get_local $-success ) )
            (then
              (set_local $-ret (call $ns2\unexpected
                  (get_local $ns2\token )
                  (i32.const 87 ) ) )
              (br 2 )
              (set_local $-success (i32.const 1 ) ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (if
        (i32.eqz (get_local $-success ) )
        (then
          (set_local $-ret (call $ns2\unexpected
              (get_local $ns2\token )
              (i32.const 9 ) ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) ) )
      (drop (call $ns2\exit_parens ) )
      (set_local $-ret (get_local $ns2\type ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_import

  (func $ns2\read_import
    (result i32 )
    (local $ns2\_import i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\_import (call $-new_value
            (i32.const 5 )
            (i32.const 0 ) ) )
        (get_local $ns2\_import ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
          (block
            (if
              (call $-truthy (call $ns2\is_string (get_local $ns2\token ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\_import )
                    (i32.const 10 )
                    (call $-add
                      (i32.const 3 )
                      (call $ns1\binary_slice
                        (get_local $ns2\token )
                        (call $-number (f64.const 1 ) )
                        (call $ns1\size_of (get_local $ns2\token ) ) ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\_import )
                    (i32.const 10 ) ) )
                (drop
                  (set_local $ns2\token (call $ns2\read_token ) )
                  (get_local $ns2\token ) )
                (if
                  (call $-truthy (call $ns2\is_string (get_local $ns2\token ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\_import )
                        (i32.const 88 )
                        (call $-add
                          (i32.const 3 )
                          (call $ns1\binary_slice
                            (get_local $ns2\token )
                            (call $-number (f64.const 1 ) )
                            (call $ns1\size_of (get_local $ns2\token ) ) ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 88 ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (set_local $-ret (call $ns2\unexpected
                        (get_local $ns2\token )
                        (i32.const 89 ) ) )
                    (br 5 )
                    (set_local $-success (i32.const 1 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 8 ) ) ) )
              (then
                (drop
                  (set_local $ns2\token (call $ns2\read_token ) )
                  (get_local $ns2\token ) )
                (if
                  (call $-truthy (call $-equal
                      (get_local $ns2\token )
                      (i32.const 82 ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\_import )
                        (i32.const 90 )
                        (call $-number (f64.const 0 ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 90 ) ) )
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\_import )
                        (i32.const 12 )
                        (call $ns2\read_func_type (i32.const 0 ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 12 ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 15 ) ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\_import )
                        (i32.const 90 )
                        (call $-number (f64.const 1 ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 90 ) ) )
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\_import )
                        (i32.const 12 )
                        (call $ns2\read_table_type (i32.const 0 ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 12 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 16 ) ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\_import )
                        (i32.const 90 )
                        (call $-number (f64.const 2 ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 90 ) ) )
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\_import )
                        (i32.const 12 )
                        (call $ns2\read_memory_type (i32.const 0 ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 12 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 17 ) ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\_import )
                        (i32.const 90 )
                        (call $-number (f64.const 3 ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 90 ) ) )
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\_import )
                        (i32.const 12 )
                        (call $ns2\read_global_type (i32.const 0 ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 12 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (set_local $-ret (call $ns2\unexpected
                        (get_local $ns2\token )
                        (i32.const 91 ) ) )
                    (br 5 )
                    (set_local $-success (i32.const 1 ) ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.eqz (get_local $-success ) )
              (then
                (set_local $-ret (call $ns2\unexpected
                    (get_local $ns2\token )
                    (i32.const 0 ) ) )
                (br 4 )
                (set_local $-success (i32.const 1 ) ) ) )
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns2\exit_parens ) )
      (drop (call $ns1\array_push
          (call $-get_from_obj
            (get_global $ns2\sections )
            (i32.const 13 ) )
          (get_local $ns2\_import ) ) )
      (set_local $-ret (get_local $ns2\_import ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_table_type

  (func $ns2\read_table_type
    (param $ns2\save i32 )
    (result i32 )
    (local $ns2\type i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\type (call $-new_value
            (i32.const 5 )
            (i32.const 0 ) ) )
        (get_local $ns2\type ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
          (block
            (if
              (call $-truthy (call $ns2\is_number (get_local $ns2\token ) ) )
              (then
                (if
                  (call $-truthy (call $-equal
                      (call $-get_from_obj
                        (get_local $ns2\type )
                        (i32.const 92 ) )
                      (i32.const 0 ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\type )
                        (i32.const 92 )
                        (call $ns2\token_to_number (get_local $ns2\token ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\type )
                        (i32.const 92 ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\type )
                        (i32.const 93 )
                        (call $ns2\token_to_number (get_local $ns2\token ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\type )
                        (i32.const 93 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) ) )
              (then (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 52 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\type )
                    (i32.const 94 )
                    (call $-number (f64.const 0x7f ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 94 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 53 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\type )
                    (i32.const 94 )
                    (call $-number (f64.const 0x7e ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 94 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 54 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\type )
                    (i32.const 94 )
                    (call $-number (f64.const 0x7d ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 94 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 55 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\type )
                    (i32.const 94 )
                    (call $-number (f64.const 0x7c ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 94 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 95 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\type )
                    (i32.const 94 )
                    (call $-number (f64.const 0x70 ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 94 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 82 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\type )
                    (i32.const 94 )
                    (call $-number (f64.const 0x60 ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 94 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.eqz (get_local $-success ) )
              (then
                (set_local $-ret (call $ns2\unexpected
                    (get_local $ns2\token )
                    (i32.const 0 ) ) )
                (br 4 )
                (set_local $-success (i32.const 1 ) ) ) )
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns2\exit_parens ) )
      (if
        (call $-truthy (get_local $ns2\save ) )
        (then
          (drop (call $ns1\array_push
              (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 15 ) )
              (get_local $ns2\type ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (set_local $-ret (get_local $ns2\type ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_memory_type

  (func $ns2\read_memory_type
    (param $ns2\save i32 )
    (result i32 )
    (local $ns2\type i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\type (call $-new_value
            (i32.const 5 )
            (i32.const 0 ) ) )
        (get_local $ns2\type ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
          (block
            (if
              (call $-truthy (call $ns2\is_number (get_local $ns2\token ) ) )
              (then
                (if
                  (call $-truthy (call $-equal
                      (call $-get_from_obj
                        (get_local $ns2\type )
                        (i32.const 92 ) )
                      (i32.const 0 ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\type )
                        (i32.const 92 )
                        (call $ns2\token_to_number (get_local $ns2\token ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\type )
                        (i32.const 92 ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (call $-get_from_obj
                          (get_local $ns2\type )
                          (i32.const 93 ) )
                        (i32.const 0 ) ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\type )
                        (i32.const 93 )
                        (call $ns2\token_to_number (get_local $ns2\token ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\type )
                        (i32.const 93 ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (set_local $-ret (call $ns2\unexpected
                        (get_local $ns2\token )
                        (i32.const 0 ) ) )
                    (br 5 )
                    (set_local $-success (i32.const 1 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) ) )
              (then (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.eqz (get_local $-success ) )
              (then
                (set_local $-ret (call $ns2\unexpected
                    (get_local $ns2\token )
                    (i32.const 0 ) ) )
                (br 4 )
                (set_local $-success (i32.const 1 ) ) ) )
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns2\exit_parens ) )
      (if
        (call $-truthy (get_local $ns2\save ) )
        (then
          (drop (call $ns1\array_push
              (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 16 ) )
              (get_local $ns2\type ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (set_local $-ret (get_local $ns2\type ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_global_type

  (func $ns2\read_global_type
    (param $ns2\save i32 )
    (result i32 )
    (local $ns2\type i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\type (call $-new_value
            (i32.const 5 )
            (i32.const 0 ) ) )
        (get_local $ns2\type ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
          (block
            (if
              (call $-truthy (call $-equal
                  (get_local $ns2\token )
                  (i32.const 8 ) ) )
              (then
                (if
                  (call $-truthy (call $-get_from_obj
                      (get_local $ns2\type )
                      (i32.const 96 ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\type )
                        (i32.const 97 )
                        (call $ns2\translate_code
                          (call $-new_value
                            (i32.const 6 )
                            (i32.const 0 ) )
                          (i32.const 0 ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\type )
                        (i32.const 97 ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (drop
                      (set_local $ns2\type (call $-add
                          (get_local $ns2\type )
                          (call $ns2\read_global_type (i32.const 0 ) ) ) )
                      (get_local $ns2\type ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) ) )
              (then (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 98 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\type )
                    (i32.const 99 )
                    (call $-number (f64.const 1 ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 99 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 52 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\type )
                    (i32.const 96 )
                    (call $-number (f64.const 0x7f ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 96 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 53 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\type )
                    (i32.const 96 )
                    (call $-number (f64.const 0x7e ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 96 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 54 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\type )
                    (i32.const 96 )
                    (call $-number (f64.const 0x7d ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 96 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 55 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\type )
                    (i32.const 96 )
                    (call $-number (f64.const 0x7c ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 96 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.eqz (get_local $-success ) )
              (then
                (set_local $-ret (call $ns2\unexpected
                    (get_local $ns2\token )
                    (i32.const 0 ) ) )
                (br 4 )
                (set_local $-success (i32.const 1 ) ) ) )
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns2\exit_parens ) )
      (if
        (call $-truthy (get_local $ns2\save ) )
        (then
          (drop (call $ns1\array_push
              (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 17 ) )
              (get_local $ns2\type ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (set_local $-ret (get_local $ns2\type ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_func_type

  (func $ns2\read_func_type
    (param $ns2\save i32 )
    (result i32 )
    (local $ns2\type i32 )
    (local $-obj0 i32 )
    (local $ns2\function i32 )
    (local $-obj1 i32 )
    (local $ns2\token i32 )
    (local $ns2\type_index i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\type
          (tee_local $-obj0 (call $-new_value
              (i32.const 5 )
              (i32.const 0 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 100 )
              (call $-number (f64.const 0x60 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 100 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 101 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 101 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 102 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 102 ) ) ) )
        (get_local $ns2\type ) )
      (drop
        (set_global $ns2\local_names (call $-new_value
            (i32.const 4 )
            (i32.const 0 ) ) )
        (get_global $ns2\local_names ) )
      (drop
        (set_global $ns2\blocks (call $-new_value
            (i32.const 4 )
            (i32.const 0 ) ) )
        (get_global $ns2\blocks ) )
      (drop
        (set_local $ns2\function
          (tee_local $-obj1 (call $-new_value
              (i32.const 5 )
              (i32.const 0 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj1 )
              (i32.const 24 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj1 )
              (i32.const 24 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj1 )
              (i32.const 103 )
              (get_global $ns2\local_names ) )
            (call $-get_from_obj
              (get_local $-obj1 )
              (i32.const 103 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj1 )
              (i32.const 21 )
              (call $-new_value
                (i32.const 6 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj1 )
              (i32.const 21 ) ) ) )
        (get_local $ns2\function ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
          (block
            (if
              (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) )
              (then (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 8 ) ) ) )
              (then
                (drop
                  (set_local $ns2\token (call $ns2\read_token ) )
                  (get_local $ns2\token ) )
                (if
                  (call $-truthy (call $-equal
                      (get_local $ns2\token )
                      (i32.const 12 ) ) )
                  (then
                    (drop
                      (set_local $ns2\token (call $ns2\read_token ) )
                      (get_local $ns2\token ) )
                    (if
                      (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) )
                      (then
                        (drop
                          (set_local $ns2\type_index (call $ns1\array_search
                              (call $-get_from_obj
                                (call $-get_from_obj
                                  (get_global $ns2\sections )
                                  (i32.const 23 ) )
                                (i32.const 12 ) )
                              (get_local $ns2\token )
                              (i32.const 0 ) ) )
                          (get_local $ns2\type_index ) )
                        (set_local $-success (i32.const 1 ) ) )
                      (else (set_local $-success (i32.const 0 ) ) ) )
                    (if
                      (i32.and
                        (i32.eqz (get_local $-success ) )
                        (call $-truthy (call $ns2\is_number (get_local $ns2\token ) ) ) )
                      (then
                        (drop
                          (set_local $ns2\type_index (call $ns2\token_to_number (i32.const 0 ) ) )
                          (get_local $ns2\type_index ) )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (if
                      (i32.eqz (get_local $-success ) )
                      (then
                        (set_local $-ret (call $ns2\unexpected
                            (get_local $ns2\token )
                            (i32.const 104 ) ) )
                        (br 6 )
                        (set_local $-success (i32.const 1 ) ) ) )
                    (drop (call $ns2\exit_parens ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 83 ) ) ) )
                  (then
                    (block (loop
                        (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
                        (block
                          (if
                            (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\function )
                                    (i32.const 103 ) )
                                  (get_local $ns2\token ) ) )
                              (set_local $-success (i32.const 1 ) ) )
                            (else (set_local $-success (i32.const 0 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $-equal
                                  (get_local $ns2\token )
                                  (i32.const 52 ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\type )
                                    (i32.const 101 ) )
                                  (call $-number (f64.const 0x7f ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $-equal
                                  (get_local $ns2\token )
                                  (i32.const 53 ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\type )
                                    (i32.const 101 ) )
                                  (call $-number (f64.const 0x7e ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $-equal
                                  (get_local $ns2\token )
                                  (i32.const 54 ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\type )
                                    (i32.const 101 ) )
                                  (call $-number (f64.const 0x7d ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $-equal
                                  (get_local $ns2\token )
                                  (i32.const 55 ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\type )
                                    (i32.const 101 ) )
                                  (call $-number (f64.const 0x7c ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (drop
                            (set_local $ns2\token (call $ns2\read_token ) )
                            (get_local $ns2\token ) )
                          (set_local $-success (i32.const 1 ) ) )
                        (br 0 ) ) )
                    (drop (call $ns2\exit_parens ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 84 ) ) ) )
                  (then
                    (block (loop
                        (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
                        (block
                          (if
                            (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\function )
                                    (i32.const 103 ) )
                                  (get_local $ns2\token ) ) )
                              (set_local $-success (i32.const 1 ) ) )
                            (else (set_local $-success (i32.const 0 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $-equal
                                  (get_local $ns2\token )
                                  (i32.const 52 ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\function )
                                    (i32.const 24 ) )
                                  (call $-number (f64.const 0x7f ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $-equal
                                  (get_local $ns2\token )
                                  (i32.const 53 ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\function )
                                    (i32.const 24 ) )
                                  (call $-number (f64.const 0x7e ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $-equal
                                  (get_local $ns2\token )
                                  (i32.const 54 ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\function )
                                    (i32.const 24 ) )
                                  (call $-number (f64.const 0x7d ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $-equal
                                  (get_local $ns2\token )
                                  (i32.const 55 ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\function )
                                    (i32.const 24 ) )
                                  (call $-number (f64.const 0x7c ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (drop
                            (set_local $ns2\token (call $ns2\read_token ) )
                            (get_local $ns2\token ) )
                          (set_local $-success (i32.const 1 ) ) )
                        (br 0 ) ) )
                    (drop (call $ns2\exit_parens ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.and
                    (i32.eqz (get_local $-success ) )
                    (call $-truthy (call $-equal
                        (get_local $ns2\token )
                        (i32.const 51 ) ) ) )
                  (then
                    (block (loop
                        (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
                        (block
                          (if
                            (call $-truthy (call $-equal
                                (get_local $ns2\token )
                                (i32.const 52 ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\type )
                                    (i32.const 102 ) )
                                  (call $-number (f64.const 0x7f ) ) ) )
                              (set_local $-success (i32.const 1 ) ) )
                            (else (set_local $-success (i32.const 0 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $-equal
                                  (get_local $ns2\token )
                                  (i32.const 53 ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\type )
                                    (i32.const 102 ) )
                                  (call $-number (f64.const 0x7e ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $-equal
                                  (get_local $ns2\token )
                                  (i32.const 54 ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\type )
                                    (i32.const 102 ) )
                                  (call $-number (f64.const 0x7d ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (if
                            (i32.and
                              (i32.eqz (get_local $-success ) )
                              (call $-truthy (call $-equal
                                  (get_local $ns2\token )
                                  (i32.const 55 ) ) ) )
                            (then
                              (drop (call $ns1\array_push
                                  (call $-get_from_obj
                                    (get_local $ns2\type )
                                    (i32.const 102 ) )
                                  (call $-number (f64.const 0x7c ) ) ) )
                              (set_local $-success (i32.const 1 ) ) ) )
                          (drop
                            (set_local $ns2\token (call $ns2\read_token ) )
                            (get_local $ns2\token ) )
                          (set_local $-success (i32.const 1 ) ) )
                        (br 0 ) ) )
                    (drop (call $ns2\exit_parens ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (drop (call $ns2\translate_code
                        (call $-get_from_obj
                          (get_local $ns2\function )
                          (i32.const 21 ) )
                        (get_local $ns2\token ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.eqz (get_local $-success ) )
              (then
                (drop (call $ns2\translate_code
                    (call $-get_from_obj
                      (get_local $ns2\function )
                      (i32.const 21 ) )
                    (get_local $ns2\token ) ) )
                (drop (call $ns2\backstep ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns2\exit_parens ) )
      (if
        (call $-truthy (call $-equal
            (get_local $ns2\type_index )
            (i32.const 0 ) ) )
        (then
          (drop
            (set_local $ns2\type (call $ns1\json_encode (get_local $ns2\type ) ) )
            (get_local $ns2\type ) )
          (drop
            (set_local $ns2\type_index (call $ns1\array_search
                (call $-get_from_obj
                  (get_global $ns2\sections )
                  (i32.const 12 ) )
                (get_local $ns2\type )
                (i32.const 0 ) ) )
            (get_local $ns2\type_index ) )
          (if
            (call $-truthy (call $-equal
                (get_local $ns2\type_index )
                (i32.const 0 ) ) )
            (then
              (drop
                (set_local $ns2\type_index (call $ns1\array_length (call $-get_from_obj
                      (get_global $ns2\sections )
                      (i32.const 12 ) ) ) )
                (get_local $ns2\type_index ) )
              (drop (call $ns1\array_push
                  (call $-get_from_obj
                    (get_global $ns2\sections )
                    (i32.const 12 ) )
                  (get_local $ns2\type ) ) )
              (set_local $-success (i32.const 1 ) ) )
            (else (set_local $-success (i32.const 0 ) ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (if
        (call $-truthy (get_local $ns2\save ) )
        (then
          (drop (call $ns1\array_push
              (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 14 ) )
              (get_local $ns2\type_index ) ) )
          (drop (call $ns1\array_push
              (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 21 ) )
              (get_local $ns2\function ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (set_local $-ret (get_local $ns2\type_index ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_export

  (func $ns2\read_export
    (param $ns2\save i32 )
    (result i32 )
    (local $ns2\xport i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\xport (call $-new_value
            (i32.const 5 )
            (i32.const 0 ) ) )
        (get_local $ns2\xport ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (if
        (call $-truthy (call $ns2\is_string (get_local $ns2\token ) ) )
        (then
          (drop
            (call $-set_to_obj
              (get_local $ns2\xport )
              (i32.const 88 )
              (call $ns1\binary_slice
                (get_local $ns2\token )
                (call $-number (f64.const 1 ) )
                (call $ns1\size_of (get_local $ns2\token ) ) ) )
            (call $-get_from_obj
              (get_local $ns2\xport )
              (i32.const 88 ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (if
        (i32.eqz (get_local $-success ) )
        (then
          (set_local $-ret (call $ns2\unexpected
              (get_local $ns2\token )
              (i32.const 89 ) ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (if
        (call $-truthy (call $-equal
            (get_local $ns2\token )
            (i32.const 8 ) ) )
        (then
          (drop
            (set_local $ns2\token (call $ns2\read_token ) )
            (get_local $ns2\token ) )
          (if
            (call $-truthy (call $-equal
                (get_local $ns2\token )
                (i32.const 82 ) ) )
            (then
              (drop
                (call $-set_to_obj
                  (get_local $ns2\xport )
                  (i32.const 90 )
                  (call $-number (f64.const 0 ) ) )
                (call $-get_from_obj
                  (get_local $ns2\xport )
                  (i32.const 90 ) ) )
              (drop
                (set_local $ns2\token (call $ns2\read_token ) )
                (get_local $ns2\token ) )
              (if
                (call $-truthy (call $ns2\is_number (get_local $ns2\token ) ) )
                (then
                  (drop
                    (call $-set_to_obj
                      (get_local $ns2\xport )
                      (i32.const 105 )
                      (call $ns2\token_to_number (get_local $ns2\token ) ) )
                    (call $-get_from_obj
                      (get_local $ns2\xport )
                      (i32.const 105 ) ) )
                  (set_local $-success (i32.const 1 ) ) )
                (else (set_local $-success (i32.const 0 ) ) ) )
              (if
                (i32.and
                  (i32.eqz (get_local $-success ) )
                  (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) ) )
                (then
                  (drop
                    (call $-set_to_obj
                      (get_local $ns2\xport )
                      (i32.const 105 )
                      (call $ns1\array_search
                        (call $-get_from_obj
                          (call $-get_from_obj
                            (get_global $ns2\sections )
                            (i32.const 23 ) )
                          (i32.const 14 ) )
                        (get_local $ns2\token )
                        (i32.const 0 ) ) )
                    (call $-get_from_obj
                      (get_local $ns2\xport )
                      (i32.const 105 ) ) )
                  (set_local $-success (i32.const 1 ) ) ) )
              (if
                (i32.eqz (get_local $-success ) )
                (then
                  (set_local $-ret (call $ns2\unexpected
                      (get_local $ns2\token )
                      (i32.const 106 ) ) )
                  (br 3 )
                  (set_local $-success (i32.const 1 ) ) ) )
              (drop (call $ns2\exit_parens ) )
              (set_local $-success (i32.const 1 ) ) )
            (else (set_local $-success (i32.const 0 ) ) ) )
          (if
            (i32.and
              (i32.eqz (get_local $-success ) )
              (call $-truthy (call $-equal
                  (get_local $ns2\token )
                  (i32.const 15 ) ) ) )
            (then
              (drop
                (call $-set_to_obj
                  (get_local $ns2\xport )
                  (i32.const 90 )
                  (call $-number (f64.const 1 ) ) )
                (call $-get_from_obj
                  (get_local $ns2\xport )
                  (i32.const 90 ) ) )
              (drop
                (set_local $ns2\token (call $ns2\read_token ) )
                (get_local $ns2\token ) )
              (if
                (call $-truthy (call $ns2\is_number (get_local $ns2\token ) ) )
                (then
                  (drop
                    (call $-set_to_obj
                      (get_local $ns2\xport )
                      (i32.const 105 )
                      (call $ns2\token_to_number (get_local $ns2\token ) ) )
                    (call $-get_from_obj
                      (get_local $ns2\xport )
                      (i32.const 105 ) ) )
                  (set_local $-success (i32.const 1 ) ) )
                (else (set_local $-success (i32.const 0 ) ) ) )
              (if
                (i32.and
                  (i32.eqz (get_local $-success ) )
                  (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) ) )
                (then
                  (drop
                    (call $-set_to_obj
                      (get_local $ns2\xport )
                      (i32.const 105 )
                      (call $ns1\array_search
                        (call $-get_from_obj
                          (call $-get_from_obj
                            (get_global $ns2\sections )
                            (i32.const 23 ) )
                          (i32.const 15 ) )
                        (get_local $ns2\token )
                        (i32.const 0 ) ) )
                    (call $-get_from_obj
                      (get_local $ns2\xport )
                      (i32.const 105 ) ) )
                  (set_local $-success (i32.const 1 ) ) ) )
              (if
                (i32.eqz (get_local $-success ) )
                (then
                  (set_local $-ret (call $ns2\unexpected
                      (get_local $ns2\token )
                      (i32.const 106 ) ) )
                  (br 3 )
                  (set_local $-success (i32.const 1 ) ) ) )
              (drop (call $ns2\exit_parens ) )
              (set_local $-success (i32.const 1 ) ) ) )
          (if
            (i32.and
              (i32.eqz (get_local $-success ) )
              (call $-truthy (call $-equal
                  (get_local $ns2\token )
                  (i32.const 16 ) ) ) )
            (then
              (drop
                (call $-set_to_obj
                  (get_local $ns2\xport )
                  (i32.const 90 )
                  (call $-number (f64.const 2 ) ) )
                (call $-get_from_obj
                  (get_local $ns2\xport )
                  (i32.const 90 ) ) )
              (drop
                (set_local $ns2\token (call $ns2\read_token ) )
                (get_local $ns2\token ) )
              (if
                (call $-truthy (call $ns2\is_number (get_local $ns2\token ) ) )
                (then
                  (drop
                    (call $-set_to_obj
                      (get_local $ns2\xport )
                      (i32.const 105 )
                      (call $ns2\token_to_number (get_local $ns2\token ) ) )
                    (call $-get_from_obj
                      (get_local $ns2\xport )
                      (i32.const 105 ) ) )
                  (set_local $-success (i32.const 1 ) ) )
                (else (set_local $-success (i32.const 0 ) ) ) )
              (if
                (i32.and
                  (i32.eqz (get_local $-success ) )
                  (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) ) )
                (then
                  (drop
                    (call $-set_to_obj
                      (get_local $ns2\xport )
                      (i32.const 105 )
                      (call $ns1\array_search
                        (call $-get_from_obj
                          (call $-get_from_obj
                            (get_global $ns2\sections )
                            (i32.const 23 ) )
                          (i32.const 16 ) )
                        (get_local $ns2\token )
                        (i32.const 0 ) ) )
                    (call $-get_from_obj
                      (get_local $ns2\xport )
                      (i32.const 105 ) ) )
                  (set_local $-success (i32.const 1 ) ) ) )
              (if
                (i32.eqz (get_local $-success ) )
                (then
                  (set_local $-ret (call $ns2\unexpected
                      (get_local $ns2\token )
                      (i32.const 106 ) ) )
                  (br 3 )
                  (set_local $-success (i32.const 1 ) ) ) )
              (drop (call $ns2\exit_parens ) )
              (set_local $-success (i32.const 1 ) ) ) )
          (if
            (i32.and
              (i32.eqz (get_local $-success ) )
              (call $-truthy (call $-equal
                  (get_local $ns2\token )
                  (i32.const 17 ) ) ) )
            (then
              (drop
                (call $-set_to_obj
                  (get_local $ns2\xport )
                  (i32.const 90 )
                  (call $-number (f64.const 3 ) ) )
                (call $-get_from_obj
                  (get_local $ns2\xport )
                  (i32.const 90 ) ) )
              (drop
                (set_local $ns2\token (call $ns2\read_token ) )
                (get_local $ns2\token ) )
              (if
                (call $-truthy (call $ns2\is_number (get_local $ns2\token ) ) )
                (then
                  (drop
                    (call $-set_to_obj
                      (get_local $ns2\xport )
                      (i32.const 105 )
                      (call $ns2\token_to_number (get_local $ns2\token ) ) )
                    (call $-get_from_obj
                      (get_local $ns2\xport )
                      (i32.const 105 ) ) )
                  (set_local $-success (i32.const 1 ) ) )
                (else (set_local $-success (i32.const 0 ) ) ) )
              (if
                (i32.and
                  (i32.eqz (get_local $-success ) )
                  (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) ) )
                (then
                  (drop
                    (call $-set_to_obj
                      (get_local $ns2\xport )
                      (i32.const 105 )
                      (call $ns1\array_search
                        (call $-get_from_obj
                          (call $-get_from_obj
                            (get_global $ns2\sections )
                            (i32.const 23 ) )
                          (i32.const 17 ) )
                        (get_local $ns2\token )
                        (i32.const 0 ) ) )
                    (call $-get_from_obj
                      (get_local $ns2\xport )
                      (i32.const 105 ) ) )
                  (set_local $-success (i32.const 1 ) ) ) )
              (if
                (i32.eqz (get_local $-success ) )
                (then
                  (set_local $-ret (call $ns2\unexpected
                      (get_local $ns2\token )
                      (i32.const 106 ) ) )
                  (br 3 )
                  (set_local $-success (i32.const 1 ) ) ) )
              (drop (call $ns2\exit_parens ) )
              (set_local $-success (i32.const 1 ) ) ) )
          (if
            (i32.eqz (get_local $-success ) )
            (then
              (set_local $-ret (call $ns2\unexpected
                  (get_local $ns2\token )
                  (i32.const 90 ) ) )
              (br 2 )
              (set_local $-success (i32.const 1 ) ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (if
        (i32.eqz (get_local $-success ) )
        (then
          (set_local $-ret (call $ns2\unexpected
              (get_local $ns2\token )
              (i32.const 9 ) ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) ) )
      (if
        (call $-truthy (get_local $ns2\save ) )
        (then
          (drop (call $ns1\array_push
              (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 18 ) )
              (get_local $ns2\xport ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop (call $ns2\exit_parens ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_start

  (func $ns2\read_start
    (param $ns2\save i32 )
    (result i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (if
        (call $-truthy (call $ns2\is_number (get_local $ns2\token ) ) )
        (then
          (drop
            (call $-set_to_obj
              (get_global $ns2\sections )
              (i32.const 19 )
              (call $ns2\token_to_number (get_local $ns2\token ) ) )
            (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 19 ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (if
        (i32.and
          (i32.eqz (get_local $-success ) )
          (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) ) )
        (then
          (drop
            (call $-set_to_obj
              (get_global $ns2\sections )
              (i32.const 19 )
              (call $ns1\array_search
                (call $-get_from_obj
                  (call $-get_from_obj
                    (get_global $ns2\sections )
                    (i32.const 23 ) )
                  (i32.const 14 ) )
                (get_local $ns2\token )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 19 ) ) )
          (set_local $-success (i32.const 1 ) ) ) )
      (if
        (i32.eqz (get_local $-success ) )
        (then
          (set_local $-ret (call $ns2\unexpected
              (get_local $ns2\token )
              (i32.const 107 ) ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) ) )
      (drop (call $ns2\exit_parens ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_element

  (func $ns2\read_element
    (param $ns2\save i32 )
    (result i32 )
    (local $ns2\elem i32 )
    (local $-obj0 i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\elem
          (tee_local $-obj0 (call $-new_value
              (i32.const 5 )
              (i32.const 0 ) ) )
          (drop
            (call $-set_to_obj
              (get_local $-obj0 )
              (i32.const 108 )
              (call $-new_value
                (i32.const 4 )
                (i32.const 0 ) ) )
            (call $-get_from_obj
              (get_local $-obj0 )
              (i32.const 108 ) ) ) )
        (get_local $ns2\elem ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
          (block
            (if
              (call $-truthy (call $ns2\is_number (get_local $ns2\token ) ) )
              (then
                (if
                  (call $-truthy (call $-equal
                      (call $-get_from_obj
                        (get_local $ns2\elem )
                        (i32.const 105 ) )
                      (i32.const 0 ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\elem )
                        (i32.const 105 )
                        (call $ns2\token_to_number (get_local $ns2\token ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\elem )
                        (i32.const 105 ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (drop (call $ns1\array_push
                        (call $-get_from_obj
                          (get_local $ns2\elem )
                          (i32.const 108 ) )
                        (call $ns2\token_to_number (get_local $ns2\token ) ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) ) )
              (then
                (if
                  (call $-truthy (call $-equal
                      (call $-get_from_obj
                        (get_local $ns2\elem )
                        (i32.const 105 ) )
                      (i32.const 0 ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\elem )
                        (i32.const 105 )
                        (call $ns1\array_search
                          (call $-get_from_obj
                            (call $-get_from_obj
                              (get_global $ns2\sections )
                              (i32.const 23 ) )
                            (i32.const 15 ) )
                          (get_local $ns2\token )
                          (i32.const 0 ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\elem )
                        (i32.const 105 ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (if
                  (i32.eqz (get_local $-success ) )
                  (then
                    (drop (call $ns1\array_push
                        (call $-get_from_obj
                          (get_local $ns2\elem )
                          (i32.const 108 ) )
                        (call $ns1\array_search
                          (call $-get_from_obj
                            (call $-get_from_obj
                              (get_global $ns2\sections )
                              (i32.const 23 ) )
                            (i32.const 14 ) )
                          (get_local $ns2\token )
                          (i32.const 0 ) ) ) )
                    (set_local $-success (i32.const 1 ) ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 8 ) ) ) )
              (then
                (if
                  (call $-truthy (call $-equal
                      (call $-get_from_obj
                        (get_local $ns2\elem )
                        (i32.const 105 ) )
                      (i32.const 0 ) ) )
                  (then
                    (drop
                      (call $-set_to_obj
                        (get_local $ns2\elem )
                        (i32.const 105 )
                        (call $-number (f64.const 0 ) ) )
                      (call $-get_from_obj
                        (get_local $ns2\elem )
                        (i32.const 105 ) ) )
                    (set_local $-success (i32.const 1 ) ) )
                  (else (set_local $-success (i32.const 0 ) ) ) )
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\elem )
                    (i32.const 109 )
                    (call $ns2\translate_code
                      (call $-new_value
                        (i32.const 6 )
                        (i32.const 0 ) )
                      (i32.const 0 ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\elem )
                    (i32.const 109 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.eqz (get_local $-success ) )
              (then
                (set_local $-ret (call $ns2\unexpected
                    (get_local $ns2\token )
                    (i32.const 0 ) ) )
                (br 4 )
                (set_local $-success (i32.const 1 ) ) ) )
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns2\exit_parens ) )
      (if
        (call $-truthy (get_local $ns2\save ) )
        (then
          (drop (call $ns1\array_push
              (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 20 ) )
              (get_local $ns2\elem ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (set_local $-ret (get_local $ns2\elem ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\read_data

  (func $ns2\read_data
    (param $ns2\save i32 )
    (result i32 )
    (local $ns2\data i32 )
    (local $ns2\token i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_local $ns2\data (call $-new_value
            (i32.const 5 )
            (i32.const 0 ) ) )
        (get_local $ns2\data ) )
      (drop
        (set_local $ns2\token (call $ns2\read_token ) )
        (get_local $ns2\token ) )
      (block (loop
          (br_if 1 (call $-falsy (get_local $ns2\token ) ) )
          (block
            (if
              (call $-truthy (call $ns2\is_number (get_local $ns2\token ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\data )
                    (i32.const 105 )
                    (call $ns2\token_to_number (get_local $ns2\token ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\data )
                    (i32.const 105 ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $ns2\is_name (get_local $ns2\token ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\data )
                    (i32.const 105 )
                    (call $ns1\array_search
                      (call $-get_from_obj
                        (call $-get_from_obj
                          (get_global $ns2\sections )
                          (i32.const 23 ) )
                        (i32.const 16 ) )
                      (get_local $ns2\token )
                      (i32.const 0 ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\data )
                    (i32.const 105 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $-equal
                    (get_local $ns2\token )
                    (i32.const 8 ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\data )
                    (i32.const 109 )
                    (call $ns2\translate_code
                      (call $-new_value
                        (i32.const 6 )
                        (i32.const 0 ) )
                      (i32.const 0 ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\data )
                    (i32.const 109 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.and
                (i32.eqz (get_local $-success ) )
                (call $-truthy (call $ns2\is_string (get_local $ns2\token ) ) ) )
              (then
                (drop
                  (call $-set_to_obj
                    (get_local $ns2\data )
                    (i32.const 110 )
                    (call $ns1\binary_slice
                      (get_local $ns2\token )
                      (call $-number (f64.const 1 ) )
                      (call $ns1\size_of (get_local $ns2\token ) ) ) )
                  (call $-get_from_obj
                    (get_local $ns2\data )
                    (i32.const 110 ) ) )
                (set_local $-success (i32.const 1 ) ) ) )
            (if
              (i32.eqz (get_local $-success ) )
              (then
                (set_local $-ret (call $ns2\unexpected
                    (get_local $ns2\token )
                    (i32.const 0 ) ) )
                (br 4 )
                (set_local $-success (i32.const 1 ) ) ) )
            (drop
              (set_local $ns2\token (call $ns2\read_token ) )
              (get_local $ns2\token ) )
            (set_local $-success (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns2\exit_parens ) )
      (if
        (call $-truthy (get_local $ns2\save ) )
        (then
          (drop (call $ns1\array_push
              (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 22 ) )
              (get_local $ns2\data ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (set_local $-ret (get_local $ns2\data ) )
      (br 0 )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_module

  (func $ns2\write_module
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop
        (set_global $ns2\wasm (call $ns1\binary_string (call $-number (f64.const 8 ) ) ) )
        (get_global $ns2\wasm ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $-number (f64.const 1 ) )
          (i32.const 111 ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $-number (f64.const 4 ) )
          (call $-number (f64.const 1 ) ) ) )
      (drop (call $ns2\write_type_section ) )
      (drop (call $ns2\write_import_section ) )
      (drop (call $ns2\write_function_section ) )
      (drop (call $ns2\write_table_section ) )
      (drop (call $ns2\write_memory_section ) )
      (drop (call $ns2\write_global_section ) )
      (drop (call $ns2\write_export_section ) )
      (drop (call $ns2\write_start_section ) )
      (drop (call $ns2\write_element_section ) )
      (drop (call $ns2\write_code_section ) )
      (drop (call $ns2\write_data_section ) )
      (drop (call $ns2\write_name_section ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_string

  (func $ns2\write_string
    (param $ns2\bin i32 )
    (param $ns2\str i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $ns1\size_of (get_local $ns2\str ) ) ) )
      (drop (call $ns1\binary_write
          (get_local $ns2\bin )
          (call $ns1\size_of (get_local $ns2\bin ) )
          (get_local $ns2\str ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_resizable_limits

  (func $ns2\write_resizable_limits
    (param $ns2\bin i32 )
    (param $ns2\limits i32 )
    (result i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $-get_from_obj
              (get_local $ns2\limits )
              (i32.const 93 ) )
            (i32.const 0 ) ) )
        (then
          (drop (call $ns3\write_varuint
              (get_local $ns2\bin )
              (call $-number (f64.const 0 ) ) ) )
          (drop (call $ns3\write_varuint
              (get_local $ns2\bin )
              (call $-get_from_obj
                (get_local $ns2\limits )
                (i32.const 92 ) ) ) )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (if
        (i32.eqz (get_local $-success ) )
        (then
          (drop (call $ns3\write_varuint
              (get_local $ns2\bin )
              (call $-number (f64.const 1 ) ) ) )
          (drop (call $ns3\write_varuint
              (get_local $ns2\bin )
              (call $-get_from_obj
                (get_local $ns2\limits )
                (i32.const 92 ) ) ) )
          (drop (call $ns3\write_varuint
              (get_local $ns2\bin )
              (call $-get_from_obj
                (get_local $ns2\limits )
                (i32.const 93 ) ) ) )
          (set_local $-success (i32.const 1 ) ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_type_section

  (func $ns2\write_type_section
    (result i32 )
    (local $ns2\bin i32 )
    (local $ns2\type i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $ns2\param i32 )
    (local $-fori1 i32 )
    (local $-forl1 i32 )
    (local $-fora1 i32 )
    (local $ns2\_return i32 )
    (local $-fori2 i32 )
    (local $-forl2 i32 )
    (local $-fora2 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $ns1\array_length (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 12 ) ) )
            (call $-number (f64.const 0 ) ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $ns1\array_length (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 12 ) ) ) ) )
      (set_local $-fori0 (i32.const 0 ) )
      (set_local $-fora0 (call $-get_from_obj
          (get_global $ns2\sections )
          (i32.const 12 ) ) )
      (set_local $-forl0 (i32.div_u
          (call $-len (get_local $-fora0 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori0 )
              (get_local $-forl0 ) ) )
          (set_local $ns2\type (call $-get_from_obj
              (get_local $-fora0 )
              (call $-integer_u (get_local $-fori0 ) ) ) )
          (block
            (drop
              (set_local $ns2\type (call $ns1\json_decode (get_local $ns2\type ) ) )
              (get_local $ns2\type ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\type )
                  (i32.const 100 ) ) ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $ns1\array_length (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 101 ) ) ) ) )
            (set_local $-fori1 (i32.const 0 ) )
            (set_local $-fora1 (call $-get_from_obj
                (get_local $ns2\type )
                (i32.const 101 ) ) )
            (set_local $-forl1 (i32.div_u
                (call $-len (get_local $-fora1 ) )
                (i32.const 4 ) ) )
            (block (loop
                (br_if 1 (i32.ge_u
                    (get_local $-fori1 )
                    (get_local $-forl1 ) ) )
                (set_local $ns2\param (call $-get_from_obj
                    (get_local $-fora1 )
                    (call $-integer_u (get_local $-fori1 ) ) ) )
                (block
                  (drop (call $ns3\write_varuint
                      (get_local $ns2\bin )
                      (get_local $ns2\param ) ) )
                  (set_local $-success (i32.const 1 ) ) )
                (set_local $-fori1 (i32.add
                    (get_local $-fori1 )
                    (i32.const 1 ) ) )
                (br 0 ) ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $ns1\array_length (call $-get_from_obj
                    (get_local $ns2\type )
                    (i32.const 102 ) ) ) ) )
            (set_local $-fori2 (i32.const 0 ) )
            (set_local $-fora2 (call $-get_from_obj
                (get_local $ns2\type )
                (i32.const 102 ) ) )
            (set_local $-forl2 (i32.div_u
                (call $-len (get_local $-fora2 ) )
                (i32.const 4 ) ) )
            (block (loop
                (br_if 1 (i32.ge_u
                    (get_local $-fori2 )
                    (get_local $-forl2 ) ) )
                (set_local $ns2\_return (call $-get_from_obj
                    (get_local $-fora2 )
                    (call $-integer_u (get_local $-fori2 ) ) ) )
                (block
                  (drop (call $ns3\write_varuint
                      (get_local $ns2\bin )
                      (get_local $ns2\_return ) ) )
                  (set_local $-success (i32.const 1 ) ) )
                (set_local $-fori2 (i32.add
                    (get_local $-fori2 )
                    (i32.const 1 ) ) )
                (br 0 ) ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori0 (i32.add
              (get_local $-fori0 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 1 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_import_section

  (func $ns2\write_import_section
    (result i32 )
    (local $ns2\bin i32 )
    (local $ns2\_import i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $ns1\array_length (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 13 ) ) )
            (call $-number (f64.const 0 ) ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $ns1\array_length (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 13 ) ) ) ) )
      (set_local $-fori0 (i32.const 0 ) )
      (set_local $-fora0 (call $-get_from_obj
          (get_global $ns2\sections )
          (i32.const 13 ) ) )
      (set_local $-forl0 (i32.div_u
          (call $-len (get_local $-fora0 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori0 )
              (get_local $-forl0 ) ) )
          (set_local $ns2\_import (call $-get_from_obj
              (get_local $-fora0 )
              (call $-integer_u (get_local $-fori0 ) ) ) )
          (block
            (drop (call $ns2\write_string
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\_import )
                  (i32.const 10 ) ) ) )
            (drop (call $ns2\write_string
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\_import )
                  (i32.const 88 ) ) ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\_import )
                  (i32.const 90 ) ) ) )
            (if
              (call $-truthy (call $-equal
                  (call $-get_from_obj
                    (get_local $ns2\_import )
                    (i32.const 90 ) )
                  (call $-number (f64.const 0 ) ) ) )
              (then
                (drop (call $ns3\write_varuint
                    (get_local $ns2\bin )
                    (call $-get_from_obj
                      (get_local $ns2\_import )
                      (i32.const 12 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (call $-truthy (call $-equal
                  (call $-get_from_obj
                    (get_local $ns2\_import )
                    (i32.const 90 ) )
                  (call $-number (f64.const 1 ) ) ) )
              (then
                (drop (call $ns3\write_varuint
                    (get_local $ns2\bin )
                    (call $-get_from_obj
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 12 ) )
                      (i32.const 94 ) ) ) )
                (drop (call $ns2\write_resizable_limits
                    (get_local $ns2\bin )
                    (call $-get_from_obj
                      (get_local $ns2\_import )
                      (i32.const 12 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (call $-truthy (call $-equal
                  (call $-get_from_obj
                    (get_local $ns2\_import )
                    (i32.const 90 ) )
                  (call $-number (f64.const 2 ) ) ) )
              (then
                (drop (call $ns2\write_resizable_limits
                    (get_local $ns2\bin )
                    (call $-get_from_obj
                      (get_local $ns2\_import )
                      (i32.const 12 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (if
              (call $-truthy (call $-equal
                  (call $-get_from_obj
                    (get_local $ns2\_import )
                    (i32.const 90 ) )
                  (call $-number (f64.const 3 ) ) ) )
              (then
                (drop (call $ns3\write_varuint
                    (get_local $ns2\bin )
                    (call $-get_from_obj
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 12 ) )
                      (i32.const 96 ) ) ) )
                (drop (call $ns3\write_varuint
                    (get_local $ns2\bin )
                    (call $-get_from_obj
                      (call $-get_from_obj
                        (get_local $ns2\_import )
                        (i32.const 12 ) )
                      (i32.const 99 ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori0 (i32.add
              (get_local $-fori0 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 2 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_function_section

  (func $ns2\write_function_section
    (result i32 )
    (local $ns2\bin i32 )
    (local $ns2\function i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $ns1\array_length (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 14 ) ) )
            (call $-number (f64.const 0 ) ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $ns1\array_length (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 14 ) ) ) ) )
      (set_local $-fori0 (i32.const 0 ) )
      (set_local $-fora0 (call $-get_from_obj
          (get_global $ns2\sections )
          (i32.const 14 ) ) )
      (set_local $-forl0 (i32.div_u
          (call $-len (get_local $-fora0 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori0 )
              (get_local $-forl0 ) ) )
          (set_local $ns2\function (call $-get_from_obj
              (get_local $-fora0 )
              (call $-integer_u (get_local $-fori0 ) ) ) )
          (block
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (get_local $ns2\function ) ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori0 (i32.add
              (get_local $-fori0 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 3 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_table_section

  (func $ns2\write_table_section
    (result i32 )
    (local $ns2\bin i32 )
    (local $ns2\table i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $ns1\array_length (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 15 ) ) )
            (call $-number (f64.const 0 ) ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $ns1\array_length (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 15 ) ) ) ) )
      (set_local $-fori0 (i32.const 0 ) )
      (set_local $-fora0 (call $-get_from_obj
          (get_global $ns2\sections )
          (i32.const 15 ) ) )
      (set_local $-forl0 (i32.div_u
          (call $-len (get_local $-fora0 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori0 )
              (get_local $-forl0 ) ) )
          (set_local $ns2\table (call $-get_from_obj
              (get_local $-fora0 )
              (call $-integer_u (get_local $-fori0 ) ) ) )
          (block
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\table )
                  (i32.const 94 ) ) ) )
            (drop (call $ns2\write_resizable_limits
                (get_local $ns2\bin )
                (get_local $ns2\table ) ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori0 (i32.add
              (get_local $-fori0 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 4 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_memory_section

  (func $ns2\write_memory_section
    (result i32 )
    (local $ns2\bin i32 )
    (local $ns2\memory i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $ns1\array_length (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 16 ) ) )
            (call $-number (f64.const 0 ) ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $ns1\array_length (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 16 ) ) ) ) )
      (set_local $-fori0 (i32.const 0 ) )
      (set_local $-fora0 (call $-get_from_obj
          (get_global $ns2\sections )
          (i32.const 16 ) ) )
      (set_local $-forl0 (i32.div_u
          (call $-len (get_local $-fora0 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori0 )
              (get_local $-forl0 ) ) )
          (set_local $ns2\memory (call $-get_from_obj
              (get_local $-fora0 )
              (call $-integer_u (get_local $-fori0 ) ) ) )
          (block
            (drop (call $ns2\write_resizable_limits
                (get_local $ns2\bin )
                (get_local $ns2\memory ) ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori0 (i32.add
              (get_local $-fori0 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 5 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_global_section

  (func $ns2\write_global_section
    (result i32 )
    (local $ns2\bin i32 )
    (local $ns2\global i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $ns1\array_length (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 17 ) ) )
            (call $-number (f64.const 0 ) ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $ns1\array_length (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 17 ) ) ) ) )
      (set_local $-fori0 (i32.const 0 ) )
      (set_local $-fora0 (call $-get_from_obj
          (get_global $ns2\sections )
          (i32.const 17 ) ) )
      (set_local $-forl0 (i32.div_u
          (call $-len (get_local $-fora0 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori0 )
              (get_local $-forl0 ) ) )
          (set_local $ns2\global (call $-get_from_obj
              (get_local $-fora0 )
              (call $-integer_u (get_local $-fori0 ) ) ) )
          (block
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\global )
                  (i32.const 96 ) ) ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\global )
                  (i32.const 99 ) ) ) )
            (drop (call $ns1\binary_write
                (get_local $ns2\bin )
                (call $ns1\size_of (get_local $ns2\bin ) )
                (call $-get_from_obj
                  (get_local $ns2\global )
                  (i32.const 97 ) ) ) )
            (drop (call $ns1\binary_write
                (get_local $ns2\bin )
                (call $ns1\size_of (get_local $ns2\bin ) )
                (call $-number (f64.const 0x0b ) ) ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori0 (i32.add
              (get_local $-fori0 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 6 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_export_section

  (func $ns2\write_export_section
    (result i32 )
    (local $ns2\bin i32 )
    (local $ns2\xport i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $ns1\array_length (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 18 ) ) )
            (call $-number (f64.const 0 ) ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $ns1\array_length (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 18 ) ) ) ) )
      (set_local $-fori0 (i32.const 0 ) )
      (set_local $-fora0 (call $-get_from_obj
          (get_global $ns2\sections )
          (i32.const 18 ) ) )
      (set_local $-forl0 (i32.div_u
          (call $-len (get_local $-fora0 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori0 )
              (get_local $-forl0 ) ) )
          (set_local $ns2\xport (call $-get_from_obj
              (get_local $-fora0 )
              (call $-integer_u (get_local $-fori0 ) ) ) )
          (block
            (drop (call $ns2\write_string
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\xport )
                  (i32.const 88 ) ) ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\xport )
                  (i32.const 90 ) ) ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\xport )
                  (i32.const 105 ) ) ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori0 (i32.add
              (get_local $-fori0 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 7 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_start_section

  (func $ns2\write_start_section
    (result i32 )
    (local $ns2\bin i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 19 ) )
            (i32.const 0 ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $-get_from_obj
            (get_global $ns2\sections )
            (i32.const 19 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 8 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_element_section

  (func $ns2\write_element_section
    (result i32 )
    (local $ns2\bin i32 )
    (local $ns2\elem i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $ns2\_elem i32 )
    (local $-fori1 i32 )
    (local $-forl1 i32 )
    (local $-fora1 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $ns1\array_length (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 20 ) ) )
            (call $-number (f64.const 0 ) ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $ns1\array_length (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 20 ) ) ) ) )
      (set_local $-fori0 (i32.const 0 ) )
      (set_local $-fora0 (call $-get_from_obj
          (get_global $ns2\sections )
          (i32.const 20 ) ) )
      (set_local $-forl0 (i32.div_u
          (call $-len (get_local $-fora0 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori0 )
              (get_local $-forl0 ) ) )
          (set_local $ns2\elem (call $-get_from_obj
              (get_local $-fora0 )
              (call $-integer_u (get_local $-fori0 ) ) ) )
          (block
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\elem )
                  (i32.const 105 ) ) ) )
            (drop (call $ns1\binary_write
                (get_local $ns2\bin )
                (call $ns1\size_of (get_local $ns2\bin ) )
                (call $-get_from_obj
                  (get_local $ns2\elem )
                  (i32.const 109 ) ) ) )
            (drop (call $ns1\binary_write
                (get_local $ns2\bin )
                (call $ns1\size_of (get_local $ns2\bin ) )
                (call $-number (f64.const 0x0b ) ) ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $ns1\array_length (call $-get_from_obj
                    (get_local $ns2\elem )
                    (i32.const 108 ) ) ) ) )
            (set_local $-fori1 (i32.const 0 ) )
            (set_local $-fora1 (call $-get_from_obj
                (get_local $ns2\elem )
                (i32.const 108 ) ) )
            (set_local $-forl1 (i32.div_u
                (call $-len (get_local $-fora1 ) )
                (i32.const 4 ) ) )
            (block (loop
                (br_if 1 (i32.ge_u
                    (get_local $-fori1 )
                    (get_local $-forl1 ) ) )
                (set_local $ns2\_elem (call $-get_from_obj
                    (get_local $-fora1 )
                    (call $-integer_u (get_local $-fori1 ) ) ) )
                (block
                  (drop (call $ns3\write_varuint
                      (get_local $ns2\bin )
                      (get_local $ns2\_elem ) ) )
                  (set_local $-success (i32.const 1 ) ) )
                (set_local $-fori1 (i32.add
                    (get_local $-fori1 )
                    (i32.const 1 ) ) )
                (br 0 ) ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori0 (i32.add
              (get_local $-fori0 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 9 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_code_section

  (func $ns2\write_code_section
    (result i32 )
    (local $ns2\t i32 )
    (local $ns2\c i32 )
    (local $ns2\locals i32 )
    (local $ns2\bin i32 )
    (local $ns2\body i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $ns2\bodybin i32 )
    (local $ns2\local i32 )
    (local $-fori1 i32 )
    (local $-forl1 i32 )
    (local $-fora1 i32 )
    (local $-obj0 i32 )
    (local $-obj1 i32 )
    (local $-fori2 i32 )
    (local $-forl2 i32 )
    (local $-fora2 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $ns1\array_length (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 21 ) ) )
            (call $-number (f64.const 0 ) ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop (get_local $ns2\t ) )
      (drop (get_local $ns2\c ) )
      (drop (get_local $ns2\locals ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $ns1\array_length (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 21 ) ) ) ) )
      (set_local $-fori0 (i32.const 0 ) )
      (set_local $-fora0 (call $-get_from_obj
          (get_global $ns2\sections )
          (i32.const 21 ) ) )
      (set_local $-forl0 (i32.div_u
          (call $-len (get_local $-fora0 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori0 )
              (get_local $-forl0 ) ) )
          (set_local $ns2\body (call $-get_from_obj
              (get_local $-fora0 )
              (call $-integer_u (get_local $-fori0 ) ) ) )
          (block
            (drop
              (set_local $ns2\bodybin (call $-new_value
                  (i32.const 6 )
                  (i32.const 0 ) ) )
              (get_local $ns2\bodybin ) )
            (drop
              (set_local $ns2\locals (call $-new_value
                  (i32.const 4 )
                  (i32.const 0 ) ) )
              (get_local $ns2\locals ) )
            (drop
              (set_local $ns2\c (call $-number (f64.const 0 ) ) )
              (get_local $ns2\c ) )
            (drop
              (set_local $ns2\t (i32.const 0 ) )
              (get_local $ns2\t ) )
            (set_local $-fori1 (i32.const 0 ) )
            (set_local $-fora1 (call $-get_from_obj
                (get_local $ns2\body )
                (i32.const 24 ) ) )
            (set_local $-forl1 (i32.div_u
                (call $-len (get_local $-fora1 ) )
                (i32.const 4 ) ) )
            (block (loop
                (br_if 1 (i32.ge_u
                    (get_local $-fori1 )
                    (get_local $-forl1 ) ) )
                (set_local $ns2\local (call $-get_from_obj
                    (get_local $-fora1 )
                    (call $-integer_u (get_local $-fori1 ) ) ) )
                (block
                  (if
                    (call $-truthy (call $-unequal
                        (get_local $ns2\local )
                        (get_local $ns2\t ) ) )
                    (then
                      (if
                        (call $-truthy (get_local $ns2\c ) )
                        (then
                          (drop (call $ns1\array_push
                              (get_local $ns2\locals )
                              (tee_local $-obj0 (call $-new_value
                                  (i32.const 5 )
                                  (i32.const 0 ) ) )
                              (drop
                                (call $-set_to_obj
                                  (get_local $-obj0 )
                                  (i32.const 112 )
                                  (get_local $ns2\c ) )
                                (call $-get_from_obj
                                  (get_local $-obj0 )
                                  (i32.const 112 ) ) )
                              (drop
                                (call $-set_to_obj
                                  (get_local $-obj0 )
                                  (i32.const 12 )
                                  (get_local $ns2\t ) )
                                (call $-get_from_obj
                                  (get_local $-obj0 )
                                  (i32.const 12 ) ) ) ) )
                          (set_local $-success (i32.const 1 ) ) )
                        (else (set_local $-success (i32.const 0 ) ) ) )
                      (drop
                        (set_local $ns2\c (call $-number (f64.const 0 ) ) )
                        (get_local $ns2\c ) )
                      (drop
                        (set_local $ns2\t (get_local $ns2\local ) )
                        (get_local $ns2\t ) )
                      (set_local $-success (i32.const 1 ) ) )
                    (else (set_local $-success (i32.const 0 ) ) ) )
                  (drop
                    (set_local $ns2\c (call $-inc
                        (get_local $ns2\c )
                        (f64.const 1 ) ) )
                    (get_local $ns2\c ) )
                  (set_local $-success (i32.const 1 ) ) )
                (set_local $-fori1 (i32.add
                    (get_local $-fori1 )
                    (i32.const 1 ) ) )
                (br 0 ) ) )
            (if
              (call $-truthy (get_local $ns2\c ) )
              (then
                (drop (call $ns1\array_push
                    (get_local $ns2\locals )
                    (tee_local $-obj1 (call $-new_value
                        (i32.const 5 )
                        (i32.const 0 ) ) )
                    (drop
                      (call $-set_to_obj
                        (get_local $-obj1 )
                        (i32.const 112 )
                        (get_local $ns2\c ) )
                      (call $-get_from_obj
                        (get_local $-obj1 )
                        (i32.const 112 ) ) )
                    (drop
                      (call $-set_to_obj
                        (get_local $-obj1 )
                        (i32.const 12 )
                        (get_local $ns2\t ) )
                      (call $-get_from_obj
                        (get_local $-obj1 )
                        (i32.const 12 ) ) ) ) )
                (set_local $-success (i32.const 1 ) ) )
              (else (set_local $-success (i32.const 0 ) ) ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\bodybin )
                (call $ns1\array_length (get_local $ns2\locals ) ) ) )
            (set_local $-fori2 (i32.const 0 ) )
            (set_local $-fora2 (get_local $ns2\locals ) )
            (set_local $-forl2 (i32.div_u
                (call $-len (get_local $-fora2 ) )
                (i32.const 4 ) ) )
            (block (loop
                (br_if 1 (i32.ge_u
                    (get_local $-fori2 )
                    (get_local $-forl2 ) ) )
                (set_local $ns2\local (call $-get_from_obj
                    (get_local $-fora2 )
                    (call $-integer_u (get_local $-fori2 ) ) ) )
                (block
                  (drop (call $ns3\write_varuint
                      (get_local $ns2\bodybin )
                      (call $-get_from_obj
                        (get_local $ns2\local )
                        (i32.const 112 ) ) ) )
                  (drop (call $ns3\write_varuint
                      (get_local $ns2\bodybin )
                      (call $-get_from_obj
                        (get_local $ns2\local )
                        (i32.const 12 ) ) ) )
                  (set_local $-success (i32.const 1 ) ) )
                (set_local $-fori2 (i32.add
                    (get_local $-fori2 )
                    (i32.const 1 ) ) )
                (br 0 ) ) )
            (drop (call $ns1\binary_write
                (get_local $ns2\bodybin )
                (call $ns1\size_of (get_local $ns2\bodybin ) )
                (call $-get_from_obj
                  (get_local $ns2\body )
                  (i32.const 21 ) ) ) )
            (drop (call $ns1\binary_write
                (get_local $ns2\bodybin )
                (call $ns1\size_of (get_local $ns2\bodybin ) )
                (call $-number (f64.const 0x0b ) ) ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $ns1\size_of (get_local $ns2\bodybin ) ) ) )
            (drop (call $ns1\binary_write
                (get_local $ns2\bin )
                (call $ns1\size_of (get_local $ns2\bin ) )
                (get_local $ns2\bodybin ) ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori0 (i32.add
              (get_local $-fori0 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 10 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_data_section

  (func $ns2\write_data_section
    (result i32 )
    (local $ns2\bin i32 )
    (local $ns2\data i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $ns1\array_length (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 22 ) ) )
            (call $-number (f64.const 0 ) ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $ns1\array_length (call $-get_from_obj
              (get_global $ns2\sections )
              (i32.const 22 ) ) ) ) )
      (set_local $-fori0 (i32.const 0 ) )
      (set_local $-fora0 (call $-get_from_obj
          (get_global $ns2\sections )
          (i32.const 22 ) ) )
      (set_local $-forl0 (i32.div_u
          (call $-len (get_local $-fora0 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori0 )
              (get_local $-forl0 ) ) )
          (set_local $ns2\data (call $-get_from_obj
              (get_local $-fora0 )
              (call $-integer_u (get_local $-fori0 ) ) ) )
          (block
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $-get_from_obj
                  (get_local $ns2\data )
                  (i32.const 105 ) ) ) )
            (drop (call $ns1\binary_write
                (get_local $ns2\bin )
                (call $ns1\size_of (get_local $ns2\bin ) )
                (call $-get_from_obj
                  (get_local $ns2\data )
                  (i32.const 109 ) ) ) )
            (drop (call $ns1\binary_write
                (get_local $ns2\bin )
                (call $ns1\size_of (get_local $ns2\bin ) )
                (call $-number (f64.const 0x0b ) ) ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\bin )
                (call $ns1\size_of (call $-get_from_obj
                    (get_local $ns2\data )
                    (i32.const 110 ) ) ) ) )
            (drop (call $ns1\binary_write
                (get_local $ns2\bin )
                (call $ns1\size_of (get_local $ns2\bin ) )
                (call $-get_from_obj
                  (get_local $ns2\data )
                  (i32.const 110 ) ) ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori0 (i32.add
              (get_local $-fori0 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 11 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )

  ;; function $ns2\write_name_section

  (func $ns2\write_name_section
    (result i32 )
    (local $ns2\bin i32 )
    (local $ns2\total_locals i32 )
    (local $ns2\names i32 )
    (local $ns2\index i32 )
    (local $ns2\name i32 )
    (local $-fori0 i32 )
    (local $-forl0 i32 )
    (local $-fora0 i32 )
    (local $ns2\fun i32 )
    (local $ns2\locals i32 )
    (local $-fori1 i32 )
    (local $-forl1 i32 )
    (local $-fora1 i32 )
    (local $-fori2 i32 )
    (local $-forl2 i32 )
    (local $-fora2 i32 )
    (local $-ret i32 )
    (local $-success i32 )
    (call $-funcstart )
    (block
      (if
        (call $-truthy (call $-equal
            (call $ns1\array_length (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 23 ) ) )
            (call $-number (f64.const 0 ) ) ) )
        (then
          (set_local $-ret (i32.const 0 ) )
          (br 1 )
          (set_local $-success (i32.const 1 ) ) )
        (else (set_local $-success (i32.const 0 ) ) ) )
      (drop
        (set_local $ns2\bin (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\bin ) )
      (drop (call $ns2\write_string
          (get_local $ns2\bin )
          (i32.const 23 ) ) )
      (drop
        (set_local $ns2\total_locals (call $-number (f64.const 0 ) ) )
        (get_local $ns2\total_locals ) )
      (drop
        (set_local $ns2\names (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\names ) )
      (drop
        (set_local $ns2\index (call $-number (f64.const 0 ) ) )
        (get_local $ns2\index ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\names )
          (call $ns1\array_length (call $-get_from_obj
              (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 23 ) )
              (i32.const 14 ) ) ) ) )
      (set_local $-fori0 (i32.const 0 ) )
      (set_local $-fora0 (call $-get_from_obj
          (call $-get_from_obj
            (get_global $ns2\sections )
            (i32.const 23 ) )
          (i32.const 14 ) ) )
      (set_local $-forl0 (i32.div_u
          (call $-len (get_local $-fora0 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori0 )
              (get_local $-forl0 ) ) )
          (set_local $ns2\name (call $-get_from_obj
              (get_local $-fora0 )
              (call $-integer_u (get_local $-fori0 ) ) ) )
          (block
            (drop (call $ns3\write_varuint
                (get_local $ns2\names )
                (get_local $ns2\index ) ) )
            (drop (call $ns2\write_string
                (get_local $ns2\names )
                (call $ns1\binary_slice
                  (get_local $ns2\name )
                  (call $-number (f64.const 1 ) )
                  (call $ns1\size_of (get_local $ns2\name ) ) ) ) )
            (drop
              (set_local $ns2\total_locals (call $-add
                  (get_local $ns2\total_locals )
                  (call $ns1\array_length (call $-get_from_obj
                      (call $-get_from_obj
                        (call $-get_from_obj
                          (get_global $ns2\sections )
                          (i32.const 23 ) )
                        (i32.const 24 ) )
                      (get_local $ns2\index ) ) ) ) )
              (get_local $ns2\total_locals ) )
            (drop
              (set_local $ns2\index (call $-inc
                  (get_local $ns2\index )
                  (f64.const 1 ) ) )
              (get_local $ns2\index ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori0 (i32.add
              (get_local $-fori0 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $-number (f64.const 1 ) ) ) )
      (drop (call $ns2\write_string
          (get_local $ns2\bin )
          (get_local $ns2\names ) ) )
      (drop
        (set_local $ns2\names (call $-new_value
            (i32.const 6 )
            (i32.const 0 ) ) )
        (get_local $ns2\names ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\names )
          (call $ns1\array_length (call $-get_from_obj
              (call $-get_from_obj
                (get_global $ns2\sections )
                (i32.const 23 ) )
              (i32.const 24 ) ) ) ) )
      (drop
        (set_local $ns2\fun (call $-number (f64.const 0 ) ) )
        (get_local $ns2\fun ) )
      (set_local $-fori1 (i32.const 0 ) )
      (set_local $-fora1 (call $-get_from_obj
          (call $-get_from_obj
            (get_global $ns2\sections )
            (i32.const 23 ) )
          (i32.const 24 ) ) )
      (set_local $-forl1 (i32.div_u
          (call $-len (get_local $-fora1 ) )
          (i32.const 4 ) ) )
      (block (loop
          (br_if 1 (i32.ge_u
              (get_local $-fori1 )
              (get_local $-forl1 ) ) )
          (set_local $ns2\locals (call $-get_from_obj
              (get_local $-fora1 )
              (call $-integer_u (get_local $-fori1 ) ) ) )
          (block
            (drop (call $ns3\write_varuint
                (get_local $ns2\names )
                (get_local $ns2\fun ) ) )
            (drop
              (set_local $ns2\index (call $-number (f64.const 0 ) ) )
              (get_local $ns2\index ) )
            (drop (call $ns3\write_varuint
                (get_local $ns2\names )
                (call $ns1\array_length (get_local $ns2\locals ) ) ) )
            (set_local $-fori2 (i32.const 0 ) )
            (set_local $-fora2 (get_local $ns2\locals ) )
            (set_local $-forl2 (i32.div_u
                (call $-len (get_local $-fora2 ) )
                (i32.const 4 ) ) )
            (block (loop
                (br_if 1 (i32.ge_u
                    (get_local $-fori2 )
                    (get_local $-forl2 ) ) )
                (set_local $ns2\name (call $-get_from_obj
                    (get_local $-fora2 )
                    (call $-integer_u (get_local $-fori2 ) ) ) )
                (block
                  (drop (call $ns3\write_varuint
                      (get_local $ns2\names )
                      (get_local $ns2\index ) ) )
                  (drop (call $ns2\write_string
                      (get_local $ns2\names )
                      (call $ns1\binary_slice
                        (get_local $ns2\name )
                        (call $-number (f64.const 1 ) )
                        (call $ns1\size_of (get_local $ns2\name ) ) ) ) )
                  (drop
                    (set_local $ns2\index (call $-inc
                        (get_local $ns2\index )
                        (f64.const 1 ) ) )
                    (get_local $ns2\index ) )
                  (set_local $-success (i32.const 1 ) ) )
                (set_local $-fori2 (i32.add
                    (get_local $-fori2 )
                    (i32.const 1 ) ) )
                (br 0 ) ) )
            (drop
              (set_local $ns2\fun (call $-inc
                  (get_local $ns2\fun )
                  (f64.const 1 ) ) )
              (get_local $ns2\fun ) )
            (set_local $-success (i32.const 1 ) ) )
          (set_local $-fori1 (i32.add
              (get_local $-fori1 )
              (i32.const 1 ) ) )
          (br 0 ) ) )
      (drop (call $ns3\write_varuint
          (get_local $ns2\bin )
          (call $-number (f64.const 2 ) ) ) )
      (drop (call $ns2\write_string
          (get_local $ns2\bin )
          (get_local $ns2\names ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $-number (f64.const 0 ) ) ) )
      (drop (call $ns3\write_varuint
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_local $ns2\bin ) ) ) )
      (drop (call $ns1\binary_write
          (get_global $ns2\wasm )
          (call $ns1\size_of (get_global $ns2\wasm ) )
          (get_local $ns2\bin ) ) )
      (set_local $-success (i32.const 1 ) ) )
    (call $-funcend (get_local $-ret ) ) )
  (func $ns3\token_to_varint
    (param $ns3\token i32 )
    (result i32 )
    (local $ns3\pos i32 )
    (local $ns3\len i32 )
    (local $ns3\neg i32 )
    (local $ns3\dig i64 )
    (local $ns3\num i64 )
    (local $ns3\out i32 )
    (set_local $ns3\pos (call $-offset (get_local $ns3\token ) ) )
    (set_local $ns3\len (call $-len (get_local $ns3\token ) ) )
    (set_local $ns3\dig (i64.load8_u (get_local $ns3\pos ) ) )
    (if
      (i64.eq
        (get_local $ns3\dig )
        (i64.const 0x2d ) )
      (then
        (set_local $ns3\neg (i32.const 1 ) )
        (set_local $ns3\pos (i32.add
            (get_local $ns3\pos )
            (i32.const 1 ) ) )
        (set_local $ns3\len (i32.sub
            (get_local $ns3\len )
            (i32.const 1 ) ) ) ) )
    (if
      (i32.eq
        (i32.load16_u (get_local $ns3\pos ) )
        (i32.const 0x7830 ) )
      (then
        (set_local $ns3\pos (i32.add
            (get_local $ns3\pos )
            (i32.const 2 ) ) )
        (set_local $ns3\len (i32.sub
            (get_local $ns3\len )
            (i32.const 2 ) ) )
        (block (loop
            (br_if 1 (i32.eqz (get_local $ns3\len ) ) )
            (set_local $ns3\dig (i64.load8_u (get_local $ns3\pos ) ) )
            (set_local $ns3\num (i64.mul
                (get_local $ns3\num )
                (i64.const 0x10 ) ) )
            (if
              (i64.lt_u
                (get_local $ns3\dig )
                (i64.const 0x40 ) )
              (then (set_local $ns3\num (i64.add
                    (get_local $ns3\num )
                    (i64.sub
                      (get_local $ns3\dig )
                      (i64.const 0x30 ) ) ) ) )
              (else (if
                  (i64.lt_u
                    (get_local $ns3\dig )
                    (i64.const 0x60 ) )
                  (then (set_local $ns3\num (i64.add
                        (get_local $ns3\num )
                        (i64.sub
                          (get_local $ns3\dig )
                          (i64.const 0x37 ) ) ) ) )
                  (else (set_local $ns3\num (i64.add
                        (get_local $ns3\num )
                        (i64.sub
                          (get_local $ns3\dig )
                          (i64.const 0x57 ) ) ) ) ) ) ) )
            (set_local $ns3\pos (i32.add
                (get_local $ns3\pos )
                (i32.const 1 ) ) )
            (set_local $ns3\len (i32.sub
                (get_local $ns3\len )
                (i32.const 1 ) ) )
            (br 0 ) ) ) )
      (else (block (loop
            (br_if 1 (i32.eqz (get_local $ns3\len ) ) )
            (set_local $ns3\dig (i64.load8_u (get_local $ns3\pos ) ) )
            (set_local $ns3\num (i64.mul
                (get_local $ns3\num )
                (i64.const 10 ) ) )
            (set_local $ns3\num (i64.add
                (get_local $ns3\num )
                (i64.sub
                  (get_local $ns3\dig )
                  (i64.const 0x30 ) ) ) )
            (set_local $ns3\pos (i32.add
                (get_local $ns3\pos )
                (i32.const 1 ) ) )
            (set_local $ns3\len (i32.sub
                (get_local $ns3\len )
                (i32.const 1 ) ) )
            (br 0 ) ) ) ) )
    (if
      (get_local $ns3\neg )
      (then (set_local $ns3\num (i64.add
            (i64.xor
              (get_local $ns3\num )
              (i64.const -1 ) )
            (i64.const 1 ) ) ) ) )
    (set_local $ns3\out (call $-new_value
        (i32.const 6 )
        (i32.const 0 ) ) )
    (block (loop
        (call $-write8
          (get_local $ns3\out )
          (get_local $ns3\len )
          (i32.wrap/i64 (i64.or
              (i64.rem_u
                (get_local $ns3\num )
                (i64.const 128 ) )
              (i64.const 128 ) ) ) )
        (set_local $ns3\num (i64.shr_s
            (get_local $ns3\num )
            (i64.const 7 ) ) )
        (br_if 1 (i64.eqz (get_local $ns3\num ) ) )
        (br_if 1 (i64.eq
            (get_local $ns3\num )
            (i64.const -1 ) ) )
        (set_local $ns3\len (i32.add
            (get_local $ns3\len )
            (i32.const 1 ) ) )
        (br 0 ) ) )
    (set_local $ns3\pos (i32.and
        (call $-read8
          (get_local $ns3\out )
          (get_local $ns3\len ) )
        (i32.const 127 ) ) )
    (call $-write8
      (get_local $ns3\out )
      (get_local $ns3\len )
      (get_local $ns3\pos ) )
    (if
      (get_local $ns3\neg )
      (then (if
          (i32.eqz (i32.and
              (get_local $ns3\pos )
              (i32.const 64 ) ) )
          (then
            (call $-write8
              (get_local $ns3\out )
              (get_local $ns3\len )
              (i32.or
                (get_local $ns3\pos )
                (i32.const 128 ) ) )
            (call $-write8
              (get_local $ns3\out )
              (i32.add
                (get_local $ns3\len )
                (i32.const 1 ) )
              (i32.const 127 ) ) ) ) )
      (else (if
          (i32.and
            (get_local $ns3\pos )
            (i32.const 64 ) )
          (then
            (call $-write8
              (get_local $ns3\out )
              (get_local $ns3\len )
              (i32.or
                (get_local $ns3\pos )
                (i32.const 128 ) ) )
            (call $-write8
              (get_local $ns3\out )
              (i32.add
                (get_local $ns3\len )
                (i32.const 1 ) )
              (i32.const 0 ) ) ) ) ) )
    (get_local $ns3\out ) )
  (func $ns3\number_to_f64bin
    (param $ns3\num i32 )
    (result i32 )
    (local $ns3\out i32 )
    (set_local $ns3\out (call $-new_value
        (i32.const 6 )
        (i32.const 8 ) ) )
    (f64.store
      (call $-offset (get_local $ns3\out ) )
      (call $-f64 (get_local $ns3\num ) ) )
    (get_local $ns3\out ) )
  (func $ns3\number_to_f32bin
    (param $ns3\num i32 )
    (result i32 )
    (local $ns3\out i32 )
    (set_local $ns3\out (call $-new_value
        (i32.const 6 )
        (i32.const 4 ) ) )
    (f32.store
      (call $-offset (get_local $ns3\out ) )
      (f32.demote/f64 (call $-f64 (get_local $ns3\num ) ) ) )
    (get_local $ns3\out ) )
  (func $ns3\write_varuint
    (param $ns3\id i32 )
    (param $ns3\num i32 )
    (result i32 )
    (local $ns3\len i32 )
    (set_local $ns3\len (call $-len (get_local $ns3\id ) ) )
    (set_local $ns3\num (call $-i32_u (get_local $ns3\num ) ) )
    (block (loop
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
              (i32.or
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
        (br_if 1 (i32.eqz (get_local $ns3\num ) ) )
        (br 0 ) ) )
    (get_local $ns3\id ) )
  (func $ns3\from_hex
    (param $ns3\hex i32 )
    (result i32 )
    (call $-integer_u (call $-from_hex (get_local $ns3\hex ) ) ) )

  ;; start

  (func $-start
    (local $-success i32 )
    (local $-obj0 i32 )
    (local $-ret i32 )
    (call $-initruntime )
    (call $-resize
      (i32.const -1 )
      (i32.const 2152 ) )
    (drop (call $-string
        (i32.const 65536 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 65552 )
        (i32.const 3 ) ) )
    (drop (call $-string
        (i32.const 65568 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 65584 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 65608 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 65624 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 65640 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 65664 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 65680 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 65696 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 65712 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 65728 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 65744 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 65760 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 65776 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 65792 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 65808 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 65824 )
        (i32.const 3 ) ) )
    (drop (call $-string
        (i32.const 65840 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 65856 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 65872 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 65896 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 65912 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 65928 )
        (i32.const 18 ) ) )
    (drop (call $-string
        (i32.const 65960 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 65976 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 66000 )
        (i32.const 10 ) ) )
    (drop (call $-string
        (i32.const 66024 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 66040 )
        (i32.const 22 ) ) )
    (drop (call $-string
        (i32.const 66072 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 66088 )
        (i32.const 2 ) ) )
    (drop (call $-string
        (i32.const 66104 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 66120 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 66136 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 66152 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 66168 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 66184 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 66200 )
        (i32.const 2 ) ) )
    (drop (call $-string
        (i32.const 66216 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 66232 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 66256 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 66272 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 66288 )
        (i32.const 2 ) ) )
    (drop (call $-string
        (i32.const 66304 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 66320 )
        (i32.const 3 ) ) )
    (drop (call $-string
        (i32.const 66336 )
        (i32.const 3 ) ) )
    (drop (call $-string
        (i32.const 66352 )
        (i32.const 3 ) ) )
    (drop (call $-string
        (i32.const 66368 )
        (i32.const 3 ) ) )
    (drop (call $-string
        (i32.const 66384 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 66400 )
        (i32.const 3 ) ) )
    (drop (call $-string
        (i32.const 66416 )
        (i32.const 2 ) ) )
    (drop (call $-string
        (i32.const 66432 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 66448 )
        (i32.const 16 ) ) )
    (drop (call $-string
        (i32.const 66480 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 66504 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 66520 )
        (i32.const 20 ) ) )
    (drop (call $-string
        (i32.const 66552 )
        (i32.const 13 ) ) )
    (drop (call $-string
        (i32.const 66576 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 66592 )
        (i32.const 17 ) ) )
    (drop (call $-string
        (i32.const 66624 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 66640 )
        (i32.const 18 ) ) )
    (drop (call $-string
        (i32.const 66672 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 66688 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 66704 )
        (i32.const 2 ) ) )
    (drop (call $-string
        (i32.const 66720 )
        (i32.const 2 ) ) )
    (drop (call $-string
        (i32.const 66736 )
        (i32.const 2 ) ) )
    (drop (call $-string
        (i32.const 66752 )
        (i32.const 1 ) ) )
    (drop (call $-string
        (i32.const 66768 )
        (i32.const 14 ) ) )
    (drop (call $-string
        (i32.const 66792 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 66816 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 66840 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 66864 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 66888 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 66912 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 66936 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 66952 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 66968 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 66984 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 67000 )
        (i32.const 18 ) ) )
    (drop (call $-string
        (i32.const 67032 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 67048 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 67064 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 67088 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 67104 )
        (i32.const 14 ) ) )
    (drop (call $-string
        (i32.const 67128 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 67144 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 67160 )
        (i32.const 12 ) ) )
    (drop (call $-string
        (i32.const 67184 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 67200 )
        (i32.const 12 ) ) )
    (drop (call $-string
        (i32.const 67224 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 67248 )
        (i32.const 3 ) ) )
    (drop (call $-string
        (i32.const 67264 )
        (i32.const 10 ) ) )
    (drop (call $-string
        (i32.const 67288 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 67304 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 67320 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 67336 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 67352 )
        (i32.const 14 ) ) )
    (drop (call $-string
        (i32.const 67376 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 67392 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 67408 )
        (i32.const 18 ) ) )
    (drop (call $-string
        (i32.const 67440 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 67456 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 67472 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 67488 )
        (i32.const 3 ) ) )
    (drop (call $-string
        (i32.const 67504 )
        (i32.const 5 ) ) )
    (drop (call $-string
        (i32.const 67520 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 67544 )
        (i32.const 3 ) ) )
    (drop (call $-string
        (i32.const 67560 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 67576 )
        (i32.const 4 ) ) )
    (drop (call $-string
        (i32.const 67592 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 67608 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 67632 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 67656 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 67680 )
        (i32.const 10 ) ) )
    (drop (call $-string
        (i32.const 67704 )
        (i32.const 10 ) ) )
    (drop (call $-string
        (i32.const 67728 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 67752 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 67776 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 67800 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 67824 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 67848 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 67872 )
        (i32.const 12 ) ) )
    (drop (call $-string
        (i32.const 67896 )
        (i32.const 12 ) ) )
    (drop (call $-string
        (i32.const 67920 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 67944 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 67968 )
        (i32.const 12 ) ) )
    (drop (call $-string
        (i32.const 67992 )
        (i32.const 12 ) ) )
    (drop (call $-string
        (i32.const 68016 )
        (i32.const 12 ) ) )
    (drop (call $-string
        (i32.const 68040 )
        (i32.const 12 ) ) )
    (drop (call $-string
        (i32.const 68064 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 68088 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 68112 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 68136 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 68160 )
        (i32.const 10 ) ) )
    (drop (call $-string
        (i32.const 68184 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 68208 )
        (i32.const 10 ) ) )
    (drop (call $-string
        (i32.const 68232 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 68256 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 68280 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 68296 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68312 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68328 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68352 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68376 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68400 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68424 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68448 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68472 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68496 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68520 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 68536 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68552 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68568 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68592 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68616 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68640 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68664 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68688 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68712 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68736 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 68760 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68776 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68792 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68808 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68824 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68840 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68856 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68872 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68888 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68904 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68920 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68936 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 68952 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 68968 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 68984 )
        (i32.const 10 ) ) )
    (drop (call $-string
        (i32.const 69008 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69024 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69040 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69056 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69080 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69104 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69128 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69152 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69168 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 69184 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69200 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69216 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69240 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69264 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 69288 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 69312 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69328 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69344 )
        (i32.const 10 ) ) )
    (drop (call $-string
        (i32.const 69368 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69384 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69400 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69416 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69440 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69464 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69488 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69512 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69528 )
        (i32.const 6 ) ) )
    (drop (call $-string
        (i32.const 69544 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69560 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69576 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69600 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69624 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 69648 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 69672 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69688 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69704 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 69728 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69752 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 69776 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 69800 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 69824 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69840 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69856 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69872 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69888 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69904 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69920 )
        (i32.const 12 ) ) )
    (drop (call $-string
        (i32.const 69944 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69960 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 69976 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 70000 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 70024 )
        (i32.const 9 ) ) )
    (drop (call $-string
        (i32.const 70048 )
        (i32.const 11 ) ) )
    (drop (call $-string
        (i32.const 70072 )
        (i32.const 8 ) ) )
    (drop (call $-string
        (i32.const 70096 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 70112 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 70128 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 70144 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 70160 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 70176 )
        (i32.const 7 ) ) )
    (drop (call $-string
        (i32.const 70192 )
        (i32.const 12 ) ) )
    (drop (call $-string
        (i32.const 70216 )
        (i32.const 12 ) ) )
    (drop (call $-string
        (i32.const 70240 )
        (i32.const 15 ) ) )
    (drop (call $-string
        (i32.const 70264 )
        (i32.const 15 ) ) )
    (drop (call $-string
        (i32.const 70288 )
        (i32.const 15 ) ) )
    (drop (call $-string
        (i32.const 70312 )
        (i32.const 15 ) ) )
    (drop (call $-string
        (i32.const 70336 )
        (i32.const 16 ) ) )
    (drop (call $-string
        (i32.const 70368 )
        (i32.const 16 ) ) )
    (drop (call $-string
        (i32.const 70400 )
        (i32.const 15 ) ) )
    (drop (call $-string
        (i32.const 70424 )
        (i32.const 15 ) ) )
    (drop (call $-string
        (i32.const 70448 )
        (i32.const 15 ) ) )
    (drop (call $-string
        (i32.const 70472 )
        (i32.const 15 ) ) )
    (drop (call $-string
        (i32.const 70496 )
        (i32.const 17 ) ) )
    (drop (call $-string
        (i32.const 70528 )
        (i32.const 17 ) ) )
    (drop (call $-string
        (i32.const 70560 )
        (i32.const 17 ) ) )
    (drop (call $-string
        (i32.const 70592 )
        (i32.const 17 ) ) )
    (drop (call $-string
        (i32.const 70624 )
        (i32.const 14 ) ) )
    (drop (call $-string
        (i32.const 70648 )
        (i32.const 17 ) ) )
    (drop (call $-string
        (i32.const 70680 )
        (i32.const 17 ) ) )
    (drop (call $-string
        (i32.const 70712 )
        (i32.const 17 ) ) )
    (drop (call $-string
        (i32.const 70744 )
        (i32.const 17 ) ) )
    (drop (call $-string
        (i32.const 70776 )
        (i32.const 15 ) ) )
    (drop (call $-string
        (i32.const 70800 )
        (i32.const 19 ) ) )
    (drop (call $-string
        (i32.const 70832 )
        (i32.const 19 ) ) )
    (drop (call $-string
        (i32.const 70864 )
        (i32.const 19 ) ) )
    (drop (call $-string
        (i32.const 70896 )
        (i32.const 19 ) ) )
    (call $-funcstart )
    (drop (get_global $ns2\error ) )
    (drop (get_global $ns2\src ) )
    (drop (get_global $ns2\pos ) )
    (drop (get_global $ns2\line ) )
    (drop (get_global $ns2\column ) )
    (drop (get_global $ns2\pos_stack ) )
    (drop (get_global $ns2\sections ) )
    (drop (get_global $ns2\wasm ) )
    (drop (get_global $ns2\local_names ) )
    (drop (get_global $ns2\blocks ) )
    (drop
      (set_global $ns4\opcodes
        (tee_local $-obj0 (call $-new_value
            (i32.const 5 )
            (i32.const 0 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 113 )
            (call $-number (f64.const 0x00 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 113 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 114 )
            (call $-number (f64.const 0x01 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 114 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 48 )
            (call $-number (f64.const 0x02 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 48 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 49 )
            (call $-number (f64.const 0x03 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 49 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 50 )
            (call $-number (f64.const 0x04 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 50 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 56 )
            (call $-number (f64.const 0x05 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 56 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 57 )
            (call $-number (f64.const 0x0b ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 57 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 58 )
            (call $-number (f64.const 0x0c ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 58 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 59 )
            (call $-number (f64.const 0x0d ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 59 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 61 )
            (call $-number (f64.const 0x0e ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 61 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 115 )
            (call $-number (f64.const 0x0f ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 115 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 62 )
            (call $-number (f64.const 0x10 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 62 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 64 )
            (call $-number (f64.const 0x11 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 64 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 116 )
            (call $-number (f64.const 0x1a ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 116 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 117 )
            (call $-number (f64.const 0x1b ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 117 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 118 )
            (call $-number (f64.const 0x20 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 118 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 119 )
            (call $-number (f64.const 0x21 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 119 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 120 )
            (call $-number (f64.const 0x22 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 120 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 121 )
            (call $-number (f64.const 0x23 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 121 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 122 )
            (call $-number (f64.const 0x24 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 122 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 123 )
            (call $-number (f64.const 0x28 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 123 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 124 )
            (call $-number (f64.const 0x29 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 124 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 125 )
            (call $-number (f64.const 0x2a ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 125 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 126 )
            (call $-number (f64.const 0x2b ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 126 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 127 )
            (call $-number (f64.const 0x2c ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 127 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 128 )
            (call $-number (f64.const 0x2d ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 128 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 129 )
            (call $-number (f64.const 0x2e ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 129 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 130 )
            (call $-number (f64.const 0x2f ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 130 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 131 )
            (call $-number (f64.const 0x30 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 131 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 132 )
            (call $-number (f64.const 0x31 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 132 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 133 )
            (call $-number (f64.const 0x32 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 133 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 134 )
            (call $-number (f64.const 0x33 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 134 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 135 )
            (call $-number (f64.const 0x34 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 135 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 136 )
            (call $-number (f64.const 0x35 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 136 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 137 )
            (call $-number (f64.const 0x36 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 137 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 138 )
            (call $-number (f64.const 0x37 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 138 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 139 )
            (call $-number (f64.const 0x38 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 139 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 140 )
            (call $-number (f64.const 0x39 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 140 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 141 )
            (call $-number (f64.const 0x3a ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 141 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 142 )
            (call $-number (f64.const 0x3b ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 142 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 143 )
            (call $-number (f64.const 0x3c ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 143 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 144 )
            (call $-number (f64.const 0x3d ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 144 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 145 )
            (call $-number (f64.const 0x3e ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 145 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 75 )
            (call $-number (f64.const 0x3f ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 75 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 76 )
            (call $-number (f64.const 0x40 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 76 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 77 )
            (call $-number (f64.const 0x41 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 77 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 78 )
            (call $-number (f64.const 0x42 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 78 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 80 )
            (call $-number (f64.const 0x43 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 80 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 81 )
            (call $-number (f64.const 0x44 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 81 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 146 )
            (call $-number (f64.const 0x45 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 146 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 147 )
            (call $-number (f64.const 0x46 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 147 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 148 )
            (call $-number (f64.const 0x47 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 148 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 149 )
            (call $-number (f64.const 0x48 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 149 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 150 )
            (call $-number (f64.const 0x49 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 150 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 151 )
            (call $-number (f64.const 0x4a ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 151 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 152 )
            (call $-number (f64.const 0x4b ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 152 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 153 )
            (call $-number (f64.const 0x4c ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 153 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 154 )
            (call $-number (f64.const 0x4d ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 154 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 155 )
            (call $-number (f64.const 0x4e ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 155 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 156 )
            (call $-number (f64.const 0x4f ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 156 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 157 )
            (call $-number (f64.const 0x50 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 157 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 158 )
            (call $-number (f64.const 0x51 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 158 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 159 )
            (call $-number (f64.const 0x52 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 159 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 160 )
            (call $-number (f64.const 0x53 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 160 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 161 )
            (call $-number (f64.const 0x54 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 161 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 162 )
            (call $-number (f64.const 0x55 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 162 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 163 )
            (call $-number (f64.const 0x56 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 163 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 164 )
            (call $-number (f64.const 0x57 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 164 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 165 )
            (call $-number (f64.const 0x58 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 165 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 166 )
            (call $-number (f64.const 0x59 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 166 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 167 )
            (call $-number (f64.const 0x5a ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 167 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 168 )
            (call $-number (f64.const 0x5b ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 168 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 169 )
            (call $-number (f64.const 0x5c ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 169 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 170 )
            (call $-number (f64.const 0x5d ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 170 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 171 )
            (call $-number (f64.const 0x5e ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 171 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 172 )
            (call $-number (f64.const 0x5f ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 172 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 173 )
            (call $-number (f64.const 0x60 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 173 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 174 )
            (call $-number (f64.const 0x61 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 174 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 175 )
            (call $-number (f64.const 0x62 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 175 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 176 )
            (call $-number (f64.const 0x63 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 176 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 177 )
            (call $-number (f64.const 0x64 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 177 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 178 )
            (call $-number (f64.const 0x65 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 178 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 179 )
            (call $-number (f64.const 0x66 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 179 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 180 )
            (call $-number (f64.const 0x67 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 180 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 181 )
            (call $-number (f64.const 0x68 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 181 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 182 )
            (call $-number (f64.const 0x69 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 182 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 183 )
            (call $-number (f64.const 0x6a ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 183 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 184 )
            (call $-number (f64.const 0x6b ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 184 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 185 )
            (call $-number (f64.const 0x6c ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 185 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 186 )
            (call $-number (f64.const 0x6d ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 186 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 187 )
            (call $-number (f64.const 0x6e ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 187 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 188 )
            (call $-number (f64.const 0x6f ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 188 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 189 )
            (call $-number (f64.const 0x70 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 189 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 190 )
            (call $-number (f64.const 0x71 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 190 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 191 )
            (call $-number (f64.const 0x72 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 191 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 192 )
            (call $-number (f64.const 0x73 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 192 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 193 )
            (call $-number (f64.const 0x74 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 193 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 194 )
            (call $-number (f64.const 0x75 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 194 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 195 )
            (call $-number (f64.const 0x76 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 195 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 196 )
            (call $-number (f64.const 0x77 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 196 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 197 )
            (call $-number (f64.const 0x78 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 197 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 198 )
            (call $-number (f64.const 0x79 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 198 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 199 )
            (call $-number (f64.const 0x7a ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 199 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 200 )
            (call $-number (f64.const 0x7b ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 200 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 201 )
            (call $-number (f64.const 0x7c ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 201 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 202 )
            (call $-number (f64.const 0x7d ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 202 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 203 )
            (call $-number (f64.const 0x7e ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 203 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 204 )
            (call $-number (f64.const 0x7f ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 204 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 205 )
            (call $-number (f64.const 0x80 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 205 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 206 )
            (call $-number (f64.const 0x81 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 206 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 207 )
            (call $-number (f64.const 0x82 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 207 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 208 )
            (call $-number (f64.const 0x83 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 208 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 209 )
            (call $-number (f64.const 0x84 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 209 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 210 )
            (call $-number (f64.const 0x85 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 210 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 211 )
            (call $-number (f64.const 0x86 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 211 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 212 )
            (call $-number (f64.const 0x87 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 212 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 213 )
            (call $-number (f64.const 0x88 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 213 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 214 )
            (call $-number (f64.const 0x89 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 214 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 215 )
            (call $-number (f64.const 0x8a ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 215 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 216 )
            (call $-number (f64.const 0x8b ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 216 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 217 )
            (call $-number (f64.const 0x8c ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 217 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 218 )
            (call $-number (f64.const 0x8d ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 218 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 219 )
            (call $-number (f64.const 0x8e ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 219 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 220 )
            (call $-number (f64.const 0x8f ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 220 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 221 )
            (call $-number (f64.const 0x90 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 221 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 222 )
            (call $-number (f64.const 0x91 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 222 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 223 )
            (call $-number (f64.const 0x92 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 223 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 224 )
            (call $-number (f64.const 0x93 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 224 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 225 )
            (call $-number (f64.const 0x94 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 225 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 226 )
            (call $-number (f64.const 0x95 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 226 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 227 )
            (call $-number (f64.const 0x96 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 227 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 228 )
            (call $-number (f64.const 0x97 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 228 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 229 )
            (call $-number (f64.const 0x98 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 229 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 230 )
            (call $-number (f64.const 0x99 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 230 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 231 )
            (call $-number (f64.const 0x9a ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 231 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 232 )
            (call $-number (f64.const 0x9b ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 232 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 233 )
            (call $-number (f64.const 0x9c ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 233 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 234 )
            (call $-number (f64.const 0x9d ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 234 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 235 )
            (call $-number (f64.const 0x9e ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 235 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 236 )
            (call $-number (f64.const 0x9f ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 236 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 237 )
            (call $-number (f64.const 0xa0 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 237 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 238 )
            (call $-number (f64.const 0xa1 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 238 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 239 )
            (call $-number (f64.const 0xa2 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 239 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 240 )
            (call $-number (f64.const 0xa3 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 240 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 241 )
            (call $-number (f64.const 0xa4 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 241 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 242 )
            (call $-number (f64.const 0xa5 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 242 ) ) )
        (drop
          (call $-set_to_obj
            (get_local $-obj0 )
            (i32.const 243 )
            (call $-number (f64.const 0xa6 ) ) )
          (call $-get_from_obj
            (get_local $-obj0 )
            (i32.const 243 ) ) ) )
      (get_global $ns4\opcodes ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 244 )
        (call $-number (f64.const 0xa7 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 244 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 245 )
        (call $-number (f64.const 0xa8 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 245 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 246 )
        (call $-number (f64.const 0xa9 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 246 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 247 )
        (call $-number (f64.const 0xaa ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 247 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 248 )
        (call $-number (f64.const 0xab ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 248 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 249 )
        (call $-number (f64.const 0xac ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 249 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 250 )
        (call $-number (f64.const 0xad ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 250 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 251 )
        (call $-number (f64.const 0xae ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 251 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 252 )
        (call $-number (f64.const 0xaf ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 252 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 253 )
        (call $-number (f64.const 0xb0 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 253 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 254 )
        (call $-number (f64.const 0xb1 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 254 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 255 )
        (call $-number (f64.const 0xb2 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 255 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 256 )
        (call $-number (f64.const 0xb3 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 256 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 257 )
        (call $-number (f64.const 0xb4 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 257 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 258 )
        (call $-number (f64.const 0xb5 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 258 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 259 )
        (call $-number (f64.const 0xb6 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 259 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 260 )
        (call $-number (f64.const 0xb7 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 260 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 261 )
        (call $-number (f64.const 0xb8 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 261 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 262 )
        (call $-number (f64.const 0xb9 ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 262 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 263 )
        (call $-number (f64.const 0xba ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 263 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 264 )
        (call $-number (f64.const 0xbb ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 264 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 265 )
        (call $-number (f64.const 0xbc ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 265 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 266 )
        (call $-number (f64.const 0xbd ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 266 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 267 )
        (call $-number (f64.const 0xbe ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 267 ) ) )
    (drop
      (call $-set_to_obj
        (get_global $ns4\opcodes )
        (i32.const 268 )
        (call $-number (f64.const 0xbf ) ) )
      (call $-get_from_obj
        (get_global $ns4\opcodes )
        (i32.const 268 ) ) ) )
  (start $-start )

  ;; exports

  (export "memory" (memory $-memory ) )
  (func $--ns0\init
    (result f64 )
    (call $-funcstart )
    (call $-funcend (call $ns0\init ) )
    (call $-f64 ) )
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
      (i32.le_u
        (get_global $-calls )
        (i32.const 1 ) )
      (then

        ;; (set_global $-passdown_mark (i32.and (i32.add (get_global $-passdown_mark) (i32.const 1)) (i32.const 127)))

        (call $-zerorefs )
        (call $-garbagecollect ) ) )
    (set_global $-calls (i32.add
        (get_global $-calls )
        (i32.const 1 ) ) ) )
  (global $-gc_pending
    (mut i32 )
    (i32.const 1 ) )
  (func $-funcend
    (param $ret i32 )
    (result i32 )
    (if
      (get_global $-calls )
      (then
        (set_global $-calls (i32.sub
            (get_global $-calls )
            (i32.const 1 ) ) )
        (if
          (get_local $ret )
          (then
            (set_global $-passdown_mark (i32.and
                (i32.add
                  (get_global $-passdown_mark )
                  (i32.const 1 ) )
                (i32.const 127 ) ) )
            (call $-passdown (get_local $ret ) ) ) )
        (if
          (i32.gt_u
            (get_global $-gc_pending )
            (get_global $-calls ) )
          (then (call $-garbagecollect ) ) ) ) )
    (get_local $ret ) )

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

                (call $-garbagecollect )
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

  ;; callstack-depth of memory allocation

  (func $-callstack_depth
    (param $id i32 )
    (result i32 )
    (local $depth i32 )
    (if
      (i32.ge_u
        (get_local $id )
        (i32.const 8 ) )
      (then
        (set_local $depth (i32.sub
            (get_global $-mindex )
            (i32.const 64 ) ) )
        (set_local $depth (i32.add
            (get_local $depth )
            (i32.add
              (i32.mul
                (i32.const 8 )
                (get_local $id ) )
              (i32.const 4 ) ) ) )
        (set_local $depth (i32.load16_u (get_local $depth ) ) ) ) )
    (get_local $depth ) )

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
    (call $-write16
      (i32.const -1 )
      (i32.add
        (i32.mul
          (get_local $id )
          (i32.const 8 ) )
        (i32.const 4 ) )
      (get_global $-calls ) )
    (call $-write8
      (i32.const -1 )
      (i32.add
        (i32.mul
          (get_local $id )
          (i32.const 8 ) )
        (i32.const 6 ) )
      (get_local $datatype ) )
    (call $-write8
      (i32.const -1 )
      (i32.add
        (i32.mul
          (get_local $id )
          (i32.const 8 ) )
        (i32.const 7 ) )
      (i32.const 130 ) )
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
          (then (call $-write16
              (i32.const -1 )
              (i32.add
                (i32.mul
                  (get_local $id )
                  (i32.const 8 ) )
                (i32.const 4 ) )
              (i32.const 0 ) ) )
          (else (call $-write16
              (i32.const -1 )
              (i32.add
                (i32.mul
                  (get_local $id )
                  (i32.const 8 ) )
                (i32.const 4 ) )
              (i32.const 4 ) ) ) )
        (br 0 ) ) ) )
  (global $-passdown_mark
    (mut i32 )
    (i32.const 1 ) )

  ;; pass down reference recursively

  (func $-passdown
    (param $id i32 )
    (local $offset i32 )
    (local $datatype i32 )
    (local $csdepth i32 )
    (local $mark i32 )
    (set_local $offset (call $-offset (get_local $id ) ) )

    ;; is it even in memory?

    (if
      (get_local $offset )
      (then
        (set_local $id (i32.sub
            (get_local $id )
            (i32.const 8 ) ) )
        (set_local $mark (call $-read8
            (i32.const -1 )
            (i32.add
              (i32.mul
                (get_local $id )
                (i32.const 8 ) )
              (i32.const 7 ) ) ) )
        (set_local $csdepth (call $-read16
            (i32.const -1 )
            (i32.add
              (i32.mul
                (get_local $id )
                (i32.const 8 ) )
              (i32.const 4 ) ) ) )

        ;; is it unreferenced?

        (if
          (i32.or
            (i32.ne
              (get_local $mark )
              (get_global $-passdown_mark ) )
            (i32.gt_u
              (get_local $csdepth )
              (get_global $-calls ) ) )
          (then
            (call $-write8
              (i32.const -1 )
              (i32.add
                (i32.mul
                  (get_local $id )
                  (i32.const 8 ) )
                (i32.const 7 ) )
              (get_global $-passdown_mark ) )
            (if
              (i32.gt_u
                (get_local $csdepth )
                (get_global $-calls ) )
              (then (call $-write16
                  (i32.const -1 )
                  (i32.add
                    (i32.mul
                      (get_local $id )
                      (i32.const 8 ) )
                    (i32.const 4 ) )
                  (get_global $-calls ) ) ) )
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
                    (call $-passdown (call $-read32
                        (get_local $id )
                        (get_local $offset ) ) )
                    (br 0 ) ) ) ) ) ) ) ) ) )

  ;; garbage collector

  (func $-garbagecollect
    (local $id i32 )
    (local $csdepth i32 )
    (local $offset i32 )
    (local $last_id i32 )
    (set_global $-passdown_mark (i32.and
        (i32.add
          (get_global $-passdown_mark )
          (i32.const 1 ) )
        (i32.const 127 ) ) )
    (call $-passdown_globals )
    (set_local $id (i32.div_u
        (call $-len (i32.const -1 ) )
        (i32.const 8 ) ) )
    (block (loop
        (br_if 1 (i32.eqz (get_local $id ) ) )
        (set_local $id (i32.sub
            (get_local $id )
            (i32.const 1 ) ) )
        (set_local $offset (call $-read32
            (i32.const -1 )
            (i32.mul
              (get_local $id )
              (i32.const 8 ) ) ) )
        (set_local $csdepth (call $-read16
            (i32.const -1 )
            (i32.add
              (i32.mul
                (get_local $id )
                (i32.const 8 ) )
              (i32.const 4 ) ) ) )
        (if
          (get_local $offset )
          (then (if
              (i32.gt_u
                (get_local $csdepth )
                (get_global $-calls ) )
              (then
                (call $-dealloc (get_local $offset ) )
                (set_global $-next_id (get_local $id ) )
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
                  (i32.const 0 ) ) )
              (else (if
                  (i32.eqz (get_local $last_id ) )
                  (then (set_local $last_id (get_local $id ) ) ) ) ) ) ) )
        (br 0 ) ) )
    (set_global $-last_alloc (i32.const 0 ) )
    (set_global $-gc_pending (get_global $-calls ) )
    (call $-resize
      (i32.const -1 )
      (i32.mul
        (i32.add
          (get_local $last_id )
          (i32.const 1 ) )
        (i32.const 8 ) ) ) )
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

        ;; number

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
        (call $-write8
          (get_local $id3 )
          (get_local $pos )
          (i32.const 0x30 ) )

        ;; 0

        (block (loop
            (br_if 1 (f64.lt
                (get_local $digit )
                (f64.const 1 ) ) )
            (set_local $digit (f64.div
                (get_local $digit )
                (f64.const 10 ) ) )
            (call $-write8
              (get_local $id3 )
              (get_local $pos )
              (i32.const 0x30 ) )

            ;; 0

            (set_local $pos (i32.add
                (get_local $pos )
                (i32.const 1 ) ) )
            (br 0 ) ) )
        (set_local $decimals (i32.trunc_u/f64 (f64.trunc (f64.abs (call $-f64 (get_local $id ) ) ) ) ) )
        (block (loop
            (br_if 1 (i32.eqz (get_local $decimals ) ) )
            (set_local $pos (i32.sub
                (get_local $pos )
                (i32.const 1 ) ) )
            (call $-write8
              (get_local $id3 )
              (get_local $pos )
              (i32.add
                (i32.const 0x30 )
                (i32.rem_u
                  (get_local $decimals )
                  (i32.const 10 ) ) ) )
            (set_local $decimals (i32.div_u
                (get_local $decimals )
                (i32.const 10 ) ) )
            (br 0 ) ) )
        (set_local $pos (call $-len (get_local $id3 ) ) )
        (set_local $decimals (i32.const 0 ) )
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
                (i32.const 1 ) ) )
            (set_local $digit (f64.mul
                (get_local $digit )
                (f64.const 10 ) ) )
            (block (loop
                (br_if 1 (i32.ge_s
                    (get_local $decimals )
                    (i32.const 16 ) ) )
                (call $-write8
                  (get_local $id3 )
                  (get_local $pos )
                  (i32.add
                    (i32.const 0x30 )
                    (i32.trunc_s/f64 (f64.trunc (get_local $digit ) ) ) ) )
                (set_local $pos (i32.add
                    (get_local $pos )
                    (i32.const 1 ) ) )
                (set_local $digit (f64.sub
                    (get_local $digit )
                    (f64.trunc (get_local $digit ) ) ) )
                (set_local $digit (f64.mul
                    (get_local $digit )
                    (f64.const 10 ) ) )
                (if
                  (f64.le
                    (get_local $digit )
                    (f64.const 0.00001 ) )
                  (then (set_local $decimals (i32.const 1024 ) ) ) )
                (set_local $decimals (i32.add
                    (get_local $decimals )
                    (i32.const 1 ) ) )
                (br 0 ) ) ) ) ) ) )
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
  (global $-parsing_offset
    (mut i32 )
    (i32.const 0 ) )
  (func $-parse_integer
    (param $offset i32 )
    (param $base i32 )
    (result i64 )
    (local $result i64 )
    (local $neg i32 )
    (local $char i32 )
    (local $digit i32 )
    (if
      (i32.eqz (get_local $offset ) )
      (then (set_local $offset (get_global $-parsing_offset ) ) ) )
    (if
      (i32.eqz (get_local $base ) )
      (then (set_local $base (i32.const 10 ) ) ) )
    (set_local $neg (i32.const 1 ) )
    (set_local $char (i32.load8_u (get_local $offset ) ) )
    (if
      (i32.eq
        (get_local $char )
        (i32.const 0x2d ) )
      (then

        ;; -

        (set_local $neg (i32.const -1 ) )
        (set_local $char (i32.const 0x30 ) )
        (set_local $offset (i32.add
            (get_local $offset )
            (i32.const 1 ) ) ) ) )
    (if
      (i32.eq
        (get_local $char )
        (i32.const 0x2b ) )
      (then

        ;; +

        (set_local $neg (i32.const 1 ) )
        (set_local $char (i32.const 0x30 ) )
        (set_local $offset (i32.add
            (get_local $offset )
            (i32.const 1 ) ) ) ) )
    (block (loop
        (set_local $char (i32.load8_u (get_local $offset ) ) )
        (set_local $offset (i32.add
            (get_local $offset )
            (i32.const 1 ) ) )
        (br_if 1 (i32.lt_u
            (get_local $char )
            (i32.const 0x30 ) ) )
        (set_local $digit (i32.sub
            (get_local $char )
            (i32.const 0x30 ) ) )
        (if
          (i32.gt_u
            (get_local $digit )
            (i32.const 0x9 ) )
          (then (set_local $digit (i32.sub
                (get_local $digit )
                (i32.const 0x7 ) ) ) ) )
        (if
          (i32.gt_u
            (get_local $digit )
            (i32.const 0x29 ) )
          (then (set_local $digit (i32.sub
                (get_local $digit )
                (i32.const 0x20 ) ) ) ) )
        (if
          (i32.eq
            (get_local $digit )
            (i32.const 0x21 ) )
          (then

            ;; x

            (set_local $base (i32.const 0x10 ) )
            (set_local $digit (i32.const 0x0 ) ) ) )
        (br_if 1 (i32.ge_u
            (get_local $digit )
            (get_local $base ) ) )
        (set_local $result (i64.mul
            (get_local $result )
            (i64.extend_u/i32 (get_local $base ) ) ) )
        (set_local $result (i64.add
            (get_local $result )
            (i64.extend_u/i32 (get_local $digit ) ) ) )
        (br 0 ) ) )
    (set_local $offset (i32.sub
        (get_local $offset )
        (i32.const 1 ) ) )
    (set_global $-parsing_offset (get_local $offset ) )
    (tee_local $result (i64.mul
        (get_local $result )
        (i64.extend_s/i32 (get_local $neg ) ) ) )

    ;; (call $logNumber (f64.convert_s/i64 (get_local $result)))
 )
  (func $-parse_float
    (param $offset i32 )
    (param $base i32 )
    (result f64 )
    (local $iresult f64 )
    (local $dresult f64 )
    (local $int i64 )
    (local $dec i64 )
    (local $declen i64 )
    (local $exp i64 )
    (local $pow i64 )
    (local $neg f64 )
    (local $k f64 )
    (local $char i32 )

    ;; (call $logNumber (f64.const 0xcafebabe) )


    ;; default params

    (if
      (i32.eqz (get_local $offset ) )
      (then (set_local $offset (get_global $-parsing_offset ) ) ) )
    (if
      (i32.eqz (get_local $base ) )
      (then (set_local $base (i32.const 10 ) ) ) )

    ;; read sign

    (set_local $neg (f64.const 1 ) )
    (set_local $char (i32.load8_u (get_local $offset ) ) )
    (if
      (i32.eq
        (get_local $char )
        (i32.const 0x2d ) )
      (then

        ;; -

        (set_local $neg (f64.const -1 ) )
        (set_local $offset (i32.add
            (get_local $offset )
            (i32.const 1 ) ) ) ) )
    (if
      (i32.eq
        (get_local $char )
        (i32.const 0x2b ) )
      (then

        ;; +

        (set_local $neg (f64.const 1 ) )
        (set_local $offset (i32.add
            (get_local $offset )
            (i32.const 1 ) ) ) ) )

    ;; read base

    (set_local $char (i32.load16_u (get_local $offset ) ) )
    (if
      (i32.eq
        (get_local $char )
        (i32.const 0x5830 ) )
      (then

        ;; 0X

        (set_local $base (i32.const 0x10 ) )
        (set_local $offset (i32.add
            (get_local $offset )
            (i32.const 2 ) ) ) ) )
    (if
      (i32.eq
        (get_local $char )
        (i32.const 0x7830 ) )
      (then

        ;; 0x

        (set_local $base (i32.const 0x10 ) )
        (set_local $offset (i32.add
            (get_local $offset )
            (i32.const 2 ) ) ) ) )

    ;; read integer

    (set_local $int (call $-parse_integer
        (get_local $offset )
        (get_local $base ) ) )
    (set_local $offset (get_global $-parsing_offset ) )

    ;; read decimals

    (set_local $char (i32.load8_u (get_local $offset ) ) )
    (set_local $offset (i32.add
        (get_local $offset )
        (i32.const 1 ) ) )
    (if
      (i32.eq
        (get_local $char )
        (i32.const 0x2e ) )
      (then

        ;; .

        (set_local $dec (call $-parse_integer
            (get_local $offset )
            (get_local $base ) ) )
        (set_local $declen (i64.extend_u/i32 (i32.sub
              (get_global $-parsing_offset )
              (get_local $offset ) ) ) )
        (set_local $offset (get_global $-parsing_offset ) )
        (set_local $char (i32.load8_u (get_local $offset ) ) )
        (set_local $offset (i32.add
            (get_local $offset )
            (i32.const 1 ) ) ) ) )

    ;; read exponent

    (if
      (i32.ge_u
        (get_local $char )
        (i32.const 0x60 ) )
      (then (set_local $char (i32.sub
            (get_local $char )
            (i32.const 0x20 ) ) ) ) )
    (if
      (i32.eq
        (get_local $char )
        (i32.const 0x45 ) )
      (then ;; E
 (set_local $exp (call $-parse_integer
            (get_local $offset )
            (i32.const 0 ) ) ) ) )
    (if
      (i32.eq
        (get_local $char )
        (i32.const 0x50 ) )
      (then ;; P
 (set_local $pow (call $-parse_integer
            (get_local $offset )
            (i32.const 0 ) ) ) ) )

    ;; calc decimals

    (set_local $dresult (f64.convert_u/i64 (get_local $dec ) ) )
    (set_local $declen (i64.sub
        (get_local $exp )
        (get_local $declen ) ) )
    (if
      (i64.lt_s
        (get_local $declen )
        (i64.const 0 ) )
      (then (set_local $k (f64.const -1 ) ) )
      (else (set_local $k (f64.const 1 ) ) ) )
    (block (loop
        (br_if 1 (i64.ge_s
            (get_local $declen )
            (i64.const 0 ) ) )
        (set_local $k (f64.mul
            (get_local $k )
            (f64.convert_u/i32 (get_local $base ) ) ) )
        (set_local $declen (i64.add
            (get_local $declen )
            (i64.const 1 ) ) )
        (br 0 ) ) )
    (block (loop
        (br_if 1 (i64.le_s
            (get_local $declen )
            (i64.const 0 ) ) )
        (set_local $k (f64.mul
            (get_local $k )
            (f64.convert_u/i32 (get_local $base ) ) ) )
        (set_local $declen (i64.sub
            (get_local $declen )
            (i64.const 1 ) ) )
        (br 0 ) ) )
    (if
      (f64.lt
        (get_local $k )
        (f64.const 0 ) )
      (then
        (set_local $k (f64.mul
            (get_local $k )
            (f64.const -1 ) ) )
        (set_local $dresult (f64.div
            (get_local $dresult )
            (get_local $k ) ) ) )
      (else (set_local $dresult (f64.mul
            (get_local $dresult )
            (get_local $k ) ) ) ) )

    ;; calc integer

    (set_local $iresult (f64.convert_u/i64 (get_local $int ) ) )
    (if
      (i64.lt_s
        (get_local $exp )
        (i64.const 0 ) )
      (then (set_local $k (f64.const -1 ) ) )
      (else (set_local $k (f64.const 1 ) ) ) )
    (block (loop
        (br_if 1 (i64.ge_s
            (get_local $exp )
            (i64.const 0 ) ) )
        (set_local $k (f64.mul
            (get_local $k )
            (f64.convert_u/i32 (get_local $base ) ) ) )
        (set_local $exp (i64.add
            (get_local $exp )
            (i64.const 1 ) ) )
        (br 0 ) ) )
    (block (loop
        (br_if 1 (i64.le_s
            (get_local $exp )
            (i64.const 0 ) ) )
        (set_local $k (f64.mul
            (get_local $k )
            (f64.convert_u/i32 (get_local $base ) ) ) )
        (set_local $exp (i64.sub
            (get_local $exp )
            (i64.const 1 ) ) )
        (br 0 ) ) )
    (if
      (f64.lt
        (get_local $k )
        (f64.const 0 ) )
      (then
        (set_local $k (f64.mul
            (get_local $k )
            (f64.const -1 ) ) )
        (set_local $iresult (f64.div
            (get_local $iresult )
            (get_local $k ) ) ) )
      (else (set_local $iresult (f64.mul
            (get_local $iresult )
            (get_local $k ) ) ) ) )

    ;; apply power

    (block (loop
        (br_if 1 (i64.ge_s
            (get_local $pow )
            (i64.const 0 ) ) )
        (set_local $iresult (f64.div
            (get_local $iresult )
            (f64.const 2 ) ) )
        (set_local $dresult (f64.div
            (get_local $dresult )
            (f64.const 2 ) ) )
        (set_local $pow (i64.add
            (get_local $pow )
            (i64.const 1 ) ) )
        (br 0 ) ) )
    (block (loop
        (br_if 1 (i64.le_s
            (get_local $pow )
            (i64.const 0 ) ) )
        (set_local $iresult (f64.mul
            (get_local $iresult )
            (f64.const 2 ) ) )
        (set_local $dresult (f64.mul
            (get_local $dresult )
            (f64.const 2 ) ) )
        (set_local $pow (i64.sub
            (get_local $pow )
            (i64.const 1 ) ) )
        (br 0 ) ) )

    ;; put it all together

    (f64.mul
      (get_local $neg )
      (f64.add
        (get_local $iresult )
        (get_local $dresult ) ) ) )
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

  (func $-passdown_globals
    (call $-passdown (get_global $ns2\error ) )
    (call $-passdown (get_global $ns2\src ) )
    (call $-passdown (get_global $ns2\pos ) )
    (call $-passdown (get_global $ns2\line ) )
    (call $-passdown (get_global $ns2\column ) )
    (call $-passdown (get_global $ns2\pos_stack ) )
    (call $-passdown (get_global $ns2\sections ) )
    (call $-passdown (get_global $ns2\wasm ) )
    (call $-passdown (get_global $ns2\local_names ) )
    (call $-passdown (get_global $ns2\blocks ) )
    (call $-passdown (get_global $ns4\opcodes ) ) ) )
