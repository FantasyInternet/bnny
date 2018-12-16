(module
  (func $numbers
    (i32.const 0x3f5)
    (i64.const 65536)
    (f32.const 3.5e10)
    (f32.const 3.5e-10)
    (f64.const 3.50)
    (f64.const 0.1)
    (block
      (f64.const 0x20.1 )
      (f64.const 0x1.008p+5 )
      (f64.const 32.0625 )
    )
    (block
      (f64.const 0x1.8P2 )
      (f64.const 0x1.8p+2 )
      (f64.const 6 )
    )
    (block
      (f64.const 0xdeadP-1 )
      (f64.const 0x1.bd5ap+14 )
      (f64.const 28502.5 )
    )
    (block
      (f64.const 0xdead.00 )
      (f64.const 0x1.bd5ap+15 )
      (f64.const 57005 )
    )
  )
)