(module
  (type $t0 (func (param i32 i32)))
  (type $t1 (func))
  (type $t2 (func (param i32) (result i32)))
  (type $t3 (func (param i32)))
  (import "env" "pushFromMemory" (func $pushFromMemory (type $t0)))
  (import "env" "break" (func $break (type $t1)))
  (import "env" "read" (func $read (type $t2)))
  (import "env" "print" (func $print (type $t1)))
  (import "env" "getArg" (func $getArg (type $t2)))
  (import "env" "getString" (func $getString (type $t0)))
  (import "env" "getStringLength" (func $getStringLength (type $t2)))
  (func $init (type $t1)
    (local $strId i32) (local $strLen i32)
    i32.const 1
    call $getArg
    set_local $strId
    get_local $strId
    call $getStringLength
    set_local $strLen
    get_local $strLen
    i32.const 2
    i32.add
    set_local $strLen
    get_local $strId
    i32.const 2
    call $getString
    i32.const 0
    get_local $strLen
    call $pushFromMemory
    i32.const 1
    call $read
    drop)
  (func $readCB (type $t3) (param $success i32)
    get_local $success
    if $I0
      call $print
    else
      unreachable
    end
    call $break)
  (table $table 8 anyfunc)
  (memory $memory 1)
  (export "table" (table 0))
  (export "memory" (memory 0))
  (export "init" (func $init))
  (elem (i32.const 1) $readCB)
  (data (i32.const 0) "./"))
