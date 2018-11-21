(module
  (type $myType (func (param i32 i32) (result i32)))
  (import "env" "pushFromMemory" (func $pushFromMemory (param $offset i32) (param $length i32)))
  (import "env" "table" (table $-table 12 24 anyfunc))
  (import "env" "memory" (memory $-memory 2 8))
  (import "env" "holyNumber" (global $holy (mut i64  ) ) )
  ;; (memory $-memory 2)
  (; some data) (and stuff ;)
  (data (i32.const 65536 ) "The book is called \"The Great Gatsby\" and is by F. Scott Fitzgerald" )
  ;; add two numbers together and return the sum
  (func $add (param $lhs i32) (param $rhs i32) (result i32)
    get_local $lhs
    get_local $rhs
    i32.add)
  (export "add" (func $add))
)