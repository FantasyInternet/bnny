(module
  (memory $-memory 2)
  (; some data) (and stuff ;)
  (data (i32.const 65536 ) "The book is called \"The Great Gatsby\" and is by F. Scott Fitzgerald" )
  ;; add two numbers together and return the sum
  (func $add (param $lhs i32) (param $rhs i32) (result i32)
    get_local $lhs
    get_local $rhs
    i32.add)
  (export "add" (func $add))
)