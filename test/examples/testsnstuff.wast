(module
  (type $myType (func (param i32 i32) (result i32)))
  (import "env" "pushFromMemory" (func $pushFromMemory (param $offset i32) (param $length i32)))
  (import "env" "table" (table $-table 12 24 anyfunc))
  (import "env" "memory" (memory $-memory 2 8))
  (import "env" "holyNumber" (global $holy (mut i64  ) ) )
  ;; (memory $-memory 2)
  (; some data) (and stuff ;)
  (data (i32.const 65536 ) "The book is called \"The Great Gatsby\" and is by F. Scott Fitzgerald" )
  (elem $-table (i32.const 1) $add )

  ;; add two numbers together and return the sum
  (func $add (param $lhs i32) (param $rhs i32) (result i32)
    get_local $lhs
    get_local $rhs
    i32.add)
  (export "add" (func $add))

  (func $test_const (result i32)
    (i32.const 0x3f5)
    (i64.const 65536)
    (f32.const 3.5)
    (f64.const 3.5)
    ;; (call_indirect (i32.const 1) (param f32) (param f32) (param f32) (result i64))
  )

  (func $test_mem (result i32)
    (block(loop (br_if 1 (i32.eqz (get_global $holy)))
      (i32.load (get_global $holy))
      (i32.load16_u (get_global $holy))
      (i64.load (get_global $holy))
      (i64.load32_u (get_global $holy))
      (i64.store8 (get_global $holy))
      (set_global $holy (i32.sub (get_global $holy) (i64.const 1)))
    (br 0)))
    (block (block (block (block (block (block
      (br_table  1 2 3 4 5)
    ) ) ) ) ) )
  )
)