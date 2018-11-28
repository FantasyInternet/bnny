(module
  (type $t0 (func (param i32 i32) (result i32)))
  (type $t1 (func (param i32 i32)))
  (type $t2 (func (result i32)))
  (import "env" "pushFromMemory" (func $pushFromMemory (type $t1)))
  (import "env" "table" (table $env.table 12 24 anyfunc))
  (import "env" "memory" (memory $env.memory 2 8))
  (import "env" "holyNumber" (global $env.holyNumber (mut i64)))
  (func $add (type $t0) (param $lhs i32) (param $rhs i32) (result i32)
    get_local $lhs
    get_local $rhs
    i32.add)
  (func $test (type $t2) (result i32)
    i32.const 1013
    i64.const 65536
    block $B0
      loop $L1
        get_global $env.holyNumber
        i32.eqz
        br_if $B0
        get_global $env.holyNumber
        i32.load
        get_global $env.holyNumber
        i32.load16_u
        get_global $env.holyNumber
        i64.load
        get_global $env.holyNumber
        i64.load32_u
        get_global $env.holyNumber
        i64.store8
        get_global $env.holyNumber
        i64.const 1
        i32.sub
        set_global $env.holyNumber
        br $L1
      end
    end)
  (export "add" (func $add))
  (data (i32.const 65536) "The book is called \22The Great Gatsby\22 and is by F. Scott Fitzgerald"))
