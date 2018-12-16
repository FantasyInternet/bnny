(module
  (type $t0 (func (param f64 f64) (result f64)))
  (type $t1 (func (param f64) (result f64)))
  (type $t2 (func (result f64)))
  (type $t3 (func (param i32 i32) (result i32)))
  (type $t4 (func (param i32) (result i32)))
  (type $t5 (func (result i32)))
  (type $t6 (func (param i32 i32 i32) (result i32)))
  (type $t7 (func (param i32 i32 i32 i32) (result i32)))
  (type $t8 (func))
  (type $t9 (func (param i32)))
  (type $t10 (func (param i32 i32)))
  (type $t11 (func (param i32 i32 i32)))
  (type $t12 (func (param i32 i32) (result i64)))
  (type $t13 (func (param i32 i32) (result f64)))
  (type $t14 (func (param i32 f64) (result i32)))
  (type $t15 (func (param i32) (result f64)))
  (type $t16 (func (param f64) (result i32)))
  (import "env" "pushFromMemory" (func $--ns0\_push_from_memory (type $t0)))
  (import "env" "popToMemory" (func $--ns0\_pop_to_memory (type $t1)))
  (import "env" "log" (func $--ns0\_log (type $t2)))
  (import "env" "logNumber" (func $--ns0\lognumber (type $t1)))
  (import "env" "getInput" (func $--ns0\_get_input (type $t2)))
  (import "env" "sendOutput" (func $--ns0\_send_output (type $t2)))
  (import "env" "sendError" (func $--ns0\_send_error (type $t2)))
  (func $ns0\_push_from_memory (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    get_local $p0
    call $-to_number
    call $-f64
    get_local $p1
    call $-to_number
    call $-f64
    call $--ns0\_push_from_memory
    call $-number)
  (func $ns0\_pop_to_memory (type $t4) (param $p0 i32) (result i32)
    get_local $p0
    call $-to_number
    call $-f64
    call $--ns0\_pop_to_memory
    call $-number)
  (func $ns0\_log (type $t5) (result i32)
    call $--ns0\_log
    call $-number)
  (func $ns0\lognumber (type $t4) (param $p0 i32) (result i32)
    get_local $p0
    call $-to_number
    call $-f64
    call $--ns0\lognumber
    call $-number)
  (func $ns0\_get_input (type $t5) (result i32)
    call $--ns0\_get_input
    call $-number)
  (func $ns0\_send_output (type $t5) (result i32)
    call $--ns0\_send_output
    call $-number)
  (func $ns0\_send_error (type $t5) (result i32)
    call $--ns0\_send_error
    call $-number)
  (func $ns0\log (type $t4) (param $ns0\msg i32) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_local $ns0\msg
      call $ns1\address_of
      get_local $ns0\msg
      call $ns1\size_of
      call $ns0\_push_from_memory
      drop
      call $ns0\_log
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns0\get_input (type $t5) (result i32)
    (local $ns0\input i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      call $ns0\_get_input
      call $ns1\binary_string
      set_local $ns0\input
      get_local $ns0\input
      drop
      get_local $ns0\input
      call $ns1\address_of
      call $ns0\_pop_to_memory
      drop
      i32.const 3
      get_local $ns0\input
      call $-add
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns0\send_output (type $t4) (param $ns0\data i32) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_local $ns0\data
      call $ns1\address_of
      get_local $ns0\data
      call $ns1\size_of
      call $ns0\_push_from_memory
      drop
      call $ns0\_send_output
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns0\send_error (type $t4) (param $ns0\data i32) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_local $ns0\data
      call $ns1\address_of
      get_local $ns0\data
      call $ns1\size_of
      call $ns0\_push_from_memory
      drop
      call $ns0\_send_error
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns0\init (type $t5) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      call $ns0\get_input
      call $ns2\assemble
      call $ns0\send_output
      drop
      get_global $g1
      call $-truthy
      if $I1
        get_global $g1
        call $ns0\send_error
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns1\address_of (type $t4) (param $ns1\value i32) (result i32)
    get_local $ns1\value
    call $-offset
    call $-integer_u)
  (func $ns1\size_of (type $t4) (param $ns1\value i32) (result i32)
    get_local $ns1\value
    call $-len
    call $-integer_u)
  (func $ns1\datatype_of (type $t4) (param $ns1\value i32) (result i32)
    get_local $ns1\value
    call $-datatype
    call $-integer_u)
  (func $ns1\binary_string (type $t4) (param $ns1\len i32) (result i32)
    i32.const 6
    get_local $ns1\len
    call $-i32_u
    call $-new_value)
  (func $ns1\binary_slice (type $t6) (param $ns1\binary i32) (param $ns1\start i32) (param $ns1\len i32) (result i32)
    (local $ns1\out i32)
    get_local $ns1\start
    call $-i32_u
    set_local $ns1\start
    get_local $ns1\len
    call $-i32_u
    set_local $ns1\len
    get_local $ns1\binary
    call $-len
    get_local $ns1\start
    i32.lt_u
    if $I0
      get_local $ns1\binary
      call $-len
      set_local $ns1\start
    end
    get_local $ns1\binary
    call $-len
    get_local $ns1\start
    i32.sub
    get_local $ns1\len
    i32.lt_u
    if $I1
      get_local $ns1\binary
      call $-len
      get_local $ns1\start
      i32.sub
      set_local $ns1\len
    end
    i32.const 6
    get_local $ns1\len
    call $-new_value
    set_local $ns1\out
    get_local $ns1\binary
    call $-offset
    get_local $ns1\start
    i32.add
    get_local $ns1\out
    call $-offset
    get_local $ns1\len
    call $-memcopy
    get_local $ns1\out)
  (func $ns1\binary_search (type $t6) (param $ns1\binary i32) (param $ns1\subbin i32) (param $ns1\start i32) (result i32)
    (local $ns1\sub i32)
    get_local $ns1\binary
    call $-len
    get_local $ns1\subbin
    call $-len
    i32.lt_u
    if $I0
      i32.const 0
      return
    end
    get_local $ns1\start
    call $-i32_u
    set_local $ns1\start
    get_local $ns1\subbin
    call $-datatype
    get_local $ns1\subbin
    call $-len
    call $-new_value
    set_local $ns1\sub
    block $B1
      loop $L2
        get_local $ns1\start
        get_local $ns1\binary
        call $-len
        get_local $ns1\subbin
        call $-len
        i32.sub
        i32.gt_u
        br_if $B1
        get_local $ns1\binary
        call $-offset
        get_local $ns1\start
        i32.add
        get_local $ns1\sub
        call $-offset
        get_local $ns1\sub
        call $-len
        call $-memcopy
        get_local $ns1\sub
        get_local $ns1\subbin
        call $-compare
        i32.eqz
        if $I3
          get_local $ns1\start
          call $-integer_u
          return
        end
        get_local $ns1\start
        i32.const 1
        i32.add
        set_local $ns1\start
        br $L2
      end
    end
    i32.const 0)
  (func $ns1\binary_read (type $t3) (param $ns1\binary i32) (param $ns1\pos i32) (result i32)
    get_local $ns1\pos
    call $-i32_u
    get_local $ns1\binary
    call $-len
    i32.ge_u
    if $I0
      i32.const 0
      return
    end
    get_local $ns1\binary
    get_local $ns1\pos
    call $-i32_u
    call $-read8
    call $-integer_u)
  (func $ns1\binary_write (type $t6) (param $ns1\binary i32) (param $ns1\pos i32) (param $ns1\data i32) (result i32)
    (local $ns1\subbin i32) (local $ns1\len i32)
    get_local $ns1\pos
    call $-i32_u
    set_local $ns1\pos
    get_local $ns1\data
    call $-datatype
    i32.const 3
    i32.lt_u
    if $I0
      i32.const 6
      i32.const 4
      call $-new_value
      set_local $ns1\subbin
      get_local $ns1\subbin
      i32.const 0
      get_local $ns1\data
      call $-i32_u
      call $-write32
      get_local $ns1\subbin
      i32.const 3
      call $-read8
      i32.eqz
      if $I1
        get_local $ns1\subbin
        i32.const 2
        call $-read8
        i32.eqz
        if $I2
          get_local $ns1\subbin
          i32.const 1
          call $-read8
          i32.eqz
          if $I3
            get_local $ns1\subbin
            i32.const 1
            call $-resize
          else
            get_local $ns1\subbin
            i32.const 2
            call $-resize
          end
        else
          get_local $ns1\subbin
          i32.const 3
          call $-resize
        end
      end
      get_local $ns1\subbin
      set_local $ns1\data
    end
    get_local $ns1\pos
    get_local $ns1\data
    call $-len
    i32.add
    set_local $ns1\len
    get_local $ns1\binary
    call $-len
    get_local $ns1\len
    i32.lt_u
    if $I4
      get_local $ns1\binary
      get_local $ns1\len
      call $-resize
    end
    get_local $ns1\data
    call $-offset
    get_local $ns1\binary
    call $-offset
    get_local $ns1\pos
    i32.add
    get_local $ns1\data
    call $-len
    call $-memcopy
    i32.const 0)
  (func $ns1\string_length (type $t4) (param $ns1\str i32) (result i32)
    get_local $ns1\str
    call $-offset
    get_local $ns1\str
    call $-len
    call $-bytes_to_chars
    call $-integer_u)
  (func $ns1\string_slice (type $t6) (param $ns1\string i32) (param $ns1\start i32) (param $ns1\len i32) (result i32)
    get_local $ns1\string
    call $-offset
    get_local $ns1\start
    call $-i32_u
    call $-chars_to_bytes
    set_local $ns1\start
    get_local $ns1\string
    call $-offset
    get_local $ns1\start
    i32.add
    get_local $ns1\len
    call $-i32_u
    call $-chars_to_bytes
    set_local $ns1\len
    get_local $ns1\string
    get_local $ns1\start
    call $-integer_u
    get_local $ns1\len
    call $-integer_u
    call $ns1\binary_slice
    i32.const 3
    call $-set_datatype)
  (func $ns1\string_search (type $t6) (param $ns1\string i32) (param $ns1\substr i32) (param $ns1\start i32) (result i32)
    (local $ns1\res i32)
    get_local $ns1\string
    call $-offset
    get_local $ns1\start
    call $-i32_u
    call $-chars_to_bytes
    set_local $ns1\start
    get_local $ns1\string
    get_local $ns1\substr
    get_local $ns1\start
    call $-integer_u
    call $ns1\binary_search
    set_local $ns1\res
    get_local $ns1\res
    if $I0
      get_local $ns1\string
      call $-offset
      get_local $ns1\res
      call $-i32_u
      call $-bytes_to_chars
      call $-integer_u
      set_local $ns1\res
    end
    get_local $ns1\res)
  (func $ns1\string_lower (type $t4) (param $ns1\string i32) (result i32)
    (local $ns1\out i32) (local $ns1\len i32) (local $ns1\byte i32)
    get_local $ns1\string
    call $-len
    set_local $ns1\len
    i32.const 3
    get_local $ns1\len
    call $-new_value
    set_local $ns1\out
    block $B0
      loop $L1
        get_local $ns1\len
        i32.eqz
        br_if $B0
        get_local $ns1\len
        i32.const 1
        i32.sub
        set_local $ns1\len
        get_local $ns1\string
        get_local $ns1\len
        call $-read8
        set_local $ns1\byte
        get_local $ns1\byte
        i32.const 64
        i32.gt_u
        get_local $ns1\byte
        i32.const 91
        i32.lt_u
        i32.and
        if $I2
          get_local $ns1\out
          get_local $ns1\len
          get_local $ns1\byte
          i32.const 32
          i32.add
          call $-write8
        else
          get_local $ns1\out
          get_local $ns1\len
          get_local $ns1\byte
          call $-write8
        end
        br $L1
      end
    end
    get_local $ns1\out)
  (func $ns1\string_upper (type $t4) (param $ns1\string i32) (result i32)
    (local $ns1\out i32) (local $ns1\len i32) (local $ns1\byte i32)
    get_local $ns1\string
    call $-len
    set_local $ns1\len
    i32.const 3
    get_local $ns1\len
    call $-new_value
    set_local $ns1\out
    block $B0
      loop $L1
        get_local $ns1\len
        i32.eqz
        br_if $B0
        get_local $ns1\len
        i32.const 1
        i32.sub
        set_local $ns1\len
        get_local $ns1\string
        get_local $ns1\len
        call $-read8
        set_local $ns1\byte
        get_local $ns1\byte
        i32.const 96
        i32.gt_u
        get_local $ns1\byte
        i32.const 123
        i32.lt_u
        i32.and
        if $I2
          get_local $ns1\out
          get_local $ns1\len
          get_local $ns1\byte
          i32.const 32
          i32.sub
          call $-write8
        else
          get_local $ns1\out
          get_local $ns1\len
          get_local $ns1\byte
          call $-write8
        end
        br $L1
      end
    end
    get_local $ns1\out)
  (func $ns1\string_split (type $t3) (param $ns1\string i32) (param $ns1\seperator i32) (result i32)
    (local $ns1\parts i32) (local $ns1\sub i32) (local $ns1\start i32) (local $ns1\pos i32)
    get_local $ns1\string
    call $-len
    get_local $ns1\seperator
    call $-len
    i32.lt_u
    if $I0
      i32.const 0
      return
    end
    i32.const 4
    i32.const 0
    call $-new_value
    set_local $ns1\parts
    get_local $ns1\seperator
    call $-datatype
    get_local $ns1\seperator
    call $-len
    call $-new_value
    set_local $ns1\sub
    block $B1
      loop $L2
        get_local $ns1\pos
        get_local $ns1\string
        call $-len
        get_local $ns1\seperator
        call $-len
        i32.sub
        i32.gt_u
        br_if $B1
        get_local $ns1\string
        call $-offset
        get_local $ns1\pos
        i32.add
        get_local $ns1\sub
        call $-offset
        get_local $ns1\sub
        call $-len
        call $-memcopy
        get_local $ns1\sub
        get_local $ns1\seperator
        call $-compare
        i32.eqz
        if $I3
          get_local $ns1\parts
          get_local $ns1\parts
          call $-len
          get_local $ns1\string
          call $-offset
          get_local $ns1\start
          i32.add
          get_local $ns1\pos
          get_local $ns1\start
          i32.sub
          call $-string
          call $-write32
          get_local $ns1\pos
          get_local $ns1\seperator
          call $-len
          i32.add
          set_local $ns1\start
          get_local $ns1\start
          set_local $ns1\pos
        else
          get_local $ns1\pos
          i32.const 1
          i32.add
          set_local $ns1\pos
        end
        br $L2
      end
    end
    get_local $ns1\parts
    get_local $ns1\parts
    call $-len
    get_local $ns1\string
    call $-offset
    get_local $ns1\start
    i32.add
    get_local $ns1\string
    call $-len
    get_local $ns1\start
    i32.sub
    call $-string
    call $-write32
    get_local $ns1\parts)
  (func $ns1\char (type $t4) (param $ns1\code i32) (result i32)
    get_local $ns1\code
    call $-i32_u
    set_local $ns1\code
    get_local $ns1\code
    call $-char)
  (func $ns1\char_code (type $t3) (param $ns1\string i32) (param $ns1\pos i32) (result i32)
    get_local $ns1\string
    call $-offset
    get_local $ns1\string
    call $-offset
    get_local $ns1\pos
    call $-i32_u
    call $-chars_to_bytes
    i32.add
    set_local $ns1\pos
    get_local $ns1\pos
    call $-char_code
    call $-integer_u)
  (func $ns1\array_length (type $t4) (param $ns1\array i32) (result i32)
    get_local $ns1\array
    call $-len
    i32.const 4
    i32.div_u
    call $-integer_u)
  (func $ns1\array_insert (type $t6) (param $ns1\array i32) (param $ns1\index i32) (param $ns1\value i32) (result i32)
    (local $ns1\rest i32)
    get_local $ns1\index
    call $-i32_u
    i32.const 4
    i32.mul
    set_local $ns1\index
    get_local $ns1\array
    call $-len
    get_local $ns1\index
    i32.lt_u
    if $I0
      get_local $ns1\array
      call $-len
      set_local $ns1\index
    end
    get_local $ns1\array
    call $-len
    get_local $ns1\index
    i32.sub
    set_local $ns1\rest
    get_local $ns1\array
    get_local $ns1\index
    get_local $ns1\rest
    i32.add
    i32.const 4
    i32.add
    call $-resize
    get_local $ns1\array
    call $-offset
    get_local $ns1\index
    i32.add
    get_local $ns1\array
    call $-offset
    get_local $ns1\index
    i32.add
    i32.const 4
    i32.add
    get_local $ns1\rest
    call $-memcopy
    get_local $ns1\array
    get_local $ns1\index
    get_local $ns1\value
    call $-write32
    get_local $ns1\value)
  (func $ns1\array_remove (type $t3) (param $ns1\array i32) (param $ns1\index i32) (result i32)
    (local $ns1\value i32) (local $ns1\rest i32)
    get_local $ns1\index
    call $-i32_u
    i32.const 4
    i32.mul
    set_local $ns1\index
    get_local $ns1\array
    call $-len
    get_local $ns1\index
    i32.le_u
    if $I0
      i32.const 0
      return
    end
    get_local $ns1\array
    call $-len
    get_local $ns1\index
    i32.sub
    i32.const 4
    i32.sub
    set_local $ns1\rest
    get_local $ns1\array
    get_local $ns1\index
    call $-read32
    set_local $ns1\value
    get_local $ns1\array
    call $-offset
    get_local $ns1\index
    i32.add
    i32.const 4
    i32.add
    get_local $ns1\array
    call $-offset
    get_local $ns1\index
    i32.add
    get_local $ns1\rest
    call $-memcopy
    get_local $ns1\array
    get_local $ns1\index
    get_local $ns1\rest
    i32.add
    call $-resize
    get_local $ns1\value)
  (func $ns1\array_push (type $t3) (param $ns1\array i32) (param $ns1\value i32) (result i32)
    get_local $ns1\array
    get_local $ns1\array
    call $ns1\array_length
    get_local $ns1\value
    call $ns1\array_insert)
  (func $ns1\array_pop (type $t4) (param $ns1\array i32) (result i32)
    get_local $ns1\array
    get_local $ns1\array
    call $ns1\array_length
    i32.const 1
    call $-integer_u
    call $-sub
    call $ns1\array_remove)
  (func $ns1\array_unshift (type $t3) (param $ns1\array i32) (param $ns1\value i32) (result i32)
    get_local $ns1\array
    i32.const 2
    get_local $ns1\value
    call $ns1\array_insert)
  (func $ns1\array_shift (type $t4) (param $ns1\array i32) (result i32)
    get_local $ns1\array
    i32.const 2
    call $ns1\array_remove)
  (func $ns1\array_search (type $t6) (param $ns1\array i32) (param $ns1\value i32) (param $ns1\start i32) (result i32)
    (local $ns1\index i32) (local $ns1\len i32) (local $ns1\pos i32)
    get_local $ns1\start
    call $-i32_u
    i32.const 4
    i32.mul
    set_local $ns1\start
    get_local $ns1\array
    call $-len
    get_local $ns1\start
    i32.lt_u
    if $I0
      i32.const 0
      return
    end
    get_local $ns1\array
    call $-len
    get_local $ns1\start
    i32.sub
    set_local $ns1\len
    get_local $ns1\array
    call $-offset
    get_local $ns1\start
    i32.add
    set_local $ns1\pos
    block $B1
      loop $L2
        get_local $ns1\len
        i32.eqz
        br_if $B1
        get_local $ns1\value
        get_local $ns1\pos
        i32.load
        call $-equal
        call $-truthy
        if $I3
          get_local $ns1\pos
          get_local $ns1\array
          call $-offset
          i32.sub
          i32.const 4
          i32.div_u
          call $-integer_u
          set_local $ns1\index
          br $B1
        end
        get_local $ns1\pos
        i32.const 4
        i32.add
        set_local $ns1\pos
        get_local $ns1\len
        i32.const 4
        i32.sub
        set_local $ns1\len
        br $L2
      end
    end
    get_local $ns1\index)
  (func $ns1\array_slice (type $t6) (param $ns1\array i32) (param $ns1\start i32) (param $ns1\len i32) (result i32)
    (local $ns1\out i32)
    get_local $ns1\start
    call $-i32_u
    i32.const 4
    i32.mul
    set_local $ns1\start
    get_local $ns1\len
    call $-i32_u
    i32.const 4
    i32.mul
    set_local $ns1\len
    get_local $ns1\array
    call $-len
    get_local $ns1\start
    i32.lt_u
    if $I0
      get_local $ns1\array
      call $-len
      set_local $ns1\start
    end
    get_local $ns1\array
    call $-len
    get_local $ns1\start
    i32.sub
    get_local $ns1\len
    i32.lt_u
    if $I1
      get_local $ns1\array
      call $-len
      get_local $ns1\start
      i32.sub
      set_local $ns1\len
    end
    i32.const 4
    get_local $ns1\len
    call $-i32_u
    call $-new_value
    set_local $ns1\out
    get_local $ns1\array
    call $-offset
    get_local $ns1\start
    i32.add
    get_local $ns1\out
    call $-offset
    get_local $ns1\len
    call $-memcopy
    get_local $ns1\out)
  (func $ns1\array_splice (type $t7) (param $ns1\array i32) (param $ns1\start i32) (param $ns1\delete i32) (param $ns1\replace i32) (result i32)
    (local $ns1\rest i32)
    get_local $ns1\start
    call $-i32_u
    i32.const 4
    i32.mul
    set_local $ns1\start
    get_local $ns1\delete
    call $-i32_u
    i32.const 4
    i32.mul
    set_local $ns1\delete
    get_local $ns1\array
    call $-len
    get_local $ns1\start
    i32.lt_u
    if $I0
      get_local $ns1\array
      call $-len
      set_local $ns1\start
    end
    get_local $ns1\array
    call $-len
    get_local $ns1\start
    i32.sub
    get_local $ns1\delete
    i32.lt_u
    if $I1
      get_local $ns1\array
      call $-len
      get_local $ns1\start
      i32.sub
      set_local $ns1\delete
    end
    get_local $ns1\array
    call $-len
    get_local $ns1\start
    i32.sub
    get_local $ns1\delete
    i32.sub
    set_local $ns1\rest
    get_local $ns1\array
    call $-offset
    get_local $ns1\start
    i32.add
    get_local $ns1\delete
    i32.add
    get_local $ns1\array
    call $-offset
    get_local $ns1\start
    i32.add
    get_local $ns1\rest
    call $-memcopy
    get_local $ns1\array
    get_local $ns1\start
    get_local $ns1\rest
    i32.add
    get_local $ns1\replace
    call $-len
    i32.add
    call $-resize
    get_local $ns1\array
    call $-offset
    get_local $ns1\start
    i32.add
    get_local $ns1\array
    call $-offset
    get_local $ns1\start
    i32.add
    get_local $ns1\replace
    call $-len
    i32.add
    get_local $ns1\rest
    call $-memcopy
    get_local $ns1\replace
    call $-offset
    get_local $ns1\array
    call $-offset
    get_local $ns1\start
    i32.add
    get_local $ns1\replace
    call $-len
    call $-memcopy
    i32.const 0)
  (func $ns1\array_sort (type $t4) (param $ns1\array i32) (result i32)
    (local $ns1\out i32) (local $ns1\len i32) (local $ns1\pos i32) (local $ns1\ins i32) (local $ns1\val i32)
    i32.const 4
    get_local $ns1\array
    call $-len
    call $-new_value
    set_local $ns1\out
    get_local $ns1\array
    call $-len
    i32.const 4
    i32.div_u
    set_local $ns1\len
    block $B0
      loop $L1
        get_local $ns1\len
        i32.eqz
        br_if $B0
        get_local $ns1\array
        get_local $ns1\pos
        i32.const 4
        i32.mul
        call $-read32
        set_local $ns1\val
        get_local $ns1\pos
        set_local $ns1\ins
        block $B2
          loop $L3
            get_local $ns1\ins
            i32.eqz
            br_if $B2
            get_local $ns1\val
            get_local $ns1\out
            get_local $ns1\ins
            i32.const 1
            i32.sub
            i32.const 4
            i32.mul
            call $-read32
            call $-ge
            br_if $B2
            get_local $ns1\out
            get_local $ns1\ins
            i32.const 4
            i32.mul
            get_local $ns1\out
            get_local $ns1\ins
            i32.const 1
            i32.sub
            i32.const 4
            i32.mul
            call $-read32
            call $-write32
            get_local $ns1\ins
            i32.const 1
            i32.sub
            set_local $ns1\ins
            br $L3
          end
        end
        get_local $ns1\out
        get_local $ns1\ins
        i32.const 4
        i32.mul
        get_local $ns1\val
        call $-write32
        get_local $ns1\pos
        i32.const 1
        i32.add
        set_local $ns1\pos
        get_local $ns1\len
        i32.const 1
        i32.sub
        set_local $ns1\len
        br $L1
      end
    end
    get_local $ns1\out)
  (func $ns1\array_join (type $t3) (param $ns1\array i32) (param $ns1\glue i32) (result i32)
    (local $ns1\string i32) (local $ns1\strlen i32) (local $ns1\part i32) (local $ns1\pos i32) (local $ns1\len i32)
    i32.const 3
    get_local $ns1\strlen
    call $-new_value
    set_local $ns1\string
    get_local $ns1\array
    call $-len
    set_local $ns1\len
    get_local $ns1\len
    if $I0
      get_local $ns1\array
      get_local $ns1\pos
      call $-read32
      call $-to_string
      set_local $ns1\part
      get_local $ns1\string
      get_local $ns1\strlen
      get_local $ns1\part
      call $-len
      i32.add
      call $-resize
      get_local $ns1\part
      call $-offset
      get_local $ns1\string
      call $-offset
      get_local $ns1\strlen
      i32.add
      get_local $ns1\part
      call $-len
      call $-memcopy
      get_local $ns1\strlen
      get_local $ns1\part
      call $-len
      i32.add
      set_local $ns1\strlen
      get_local $ns1\pos
      i32.const 4
      i32.add
      set_local $ns1\pos
      get_local $ns1\len
      i32.const 4
      i32.sub
      set_local $ns1\len
    end
    block $B1
      loop $L2
        get_local $ns1\len
        i32.eqz
        br_if $B1
        get_local $ns1\array
        get_local $ns1\pos
        call $-read32
        call $-to_string
        set_local $ns1\part
        get_local $ns1\string
        get_local $ns1\strlen
        get_local $ns1\glue
        call $-len
        get_local $ns1\part
        call $-len
        i32.add
        i32.add
        call $-resize
        get_local $ns1\glue
        call $-offset
        get_local $ns1\string
        call $-offset
        get_local $ns1\strlen
        i32.add
        get_local $ns1\glue
        call $-len
        call $-memcopy
        get_local $ns1\strlen
        get_local $ns1\glue
        call $-len
        i32.add
        set_local $ns1\strlen
        get_local $ns1\part
        call $-offset
        get_local $ns1\string
        call $-offset
        get_local $ns1\strlen
        i32.add
        get_local $ns1\part
        call $-len
        call $-memcopy
        get_local $ns1\strlen
        get_local $ns1\part
        call $-len
        i32.add
        set_local $ns1\strlen
        get_local $ns1\pos
        i32.const 4
        i32.add
        set_local $ns1\pos
        get_local $ns1\len
        i32.const 4
        i32.sub
        set_local $ns1\len
        br $L2
      end
    end
    get_local $ns1\string)
  (func $ns1\range (type $t6) (param $ns1\start i32) (param $ns1\end i32) (param $ns1\step i32) (result i32)
    (local $ns1\_start f64) (local $ns1\_end f64) (local $ns1\_step f64) (local $ns1\out i32) (local $ns1\offset i32) (local $ns1\len i32)
    get_local $ns1\start
    call $-f64
    set_local $ns1\_start
    get_local $ns1\end
    call $-f64
    set_local $ns1\_end
    get_local $ns1\step
    call $-f64
    set_local $ns1\_step
    get_local $ns1\_step
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if $I0
      get_local $ns1\_start
      get_local $ns1\_end
      f64.gt
      if $I1
        f64.const -0x1p+0 (;=-1;)
        set_local $ns1\_step
      else
        f64.const 0x1p+0 (;=1;)
        set_local $ns1\_step
      end
    end
    i32.const 4
    get_local $ns1\_end
    get_local $ns1\_start
    f64.sub
    get_local $ns1\_step
    f64.div
    f64.floor
    f64.const 0x1p+2 (;=4;)
    f64.mul
    i32.trunc_u/f64
    call $-new_value
    set_local $ns1\out
    get_local $ns1\out
    call $-offset
    set_local $ns1\offset
    get_local $ns1\out
    call $-len
    set_local $ns1\len
    block $B2
      loop $L3
        get_local $ns1\len
        i32.eqz
        br_if $B2
        get_local $ns1\offset
        get_local $ns1\_start
        call $-number
        i32.store
        get_local $ns1\_start
        get_local $ns1\_step
        f64.add
        set_local $ns1\_start
        get_local $ns1\offset
        i32.const 4
        i32.add
        set_local $ns1\offset
        get_local $ns1\len
        i32.const 4
        i32.sub
        set_local $ns1\len
        br $L3
      end
    end
    get_local $ns1\out)
  (func $ns1\object_keys (type $t4) (param $ns1\object i32) (result i32)
    (local $ns1\out i32) (local $ns1\len i32)
    i32.const 4
    get_local $ns1\object
    call $-len
    i32.const 2
    i32.div_u
    call $-new_value
    set_local $ns1\out
    get_local $ns1\out
    call $-len
    i32.const 4
    i32.div_u
    set_local $ns1\len
    block $B0
      loop $L1
        get_local $ns1\len
        i32.eqz
        br_if $B0
        get_local $ns1\len
        i32.const 1
        i32.sub
        set_local $ns1\len
        get_local $ns1\out
        get_local $ns1\len
        i32.const 4
        i32.mul
        get_local $ns1\object
        get_local $ns1\len
        i32.const 8
        i32.mul
        call $-read32
        call $-write32
        br $L1
      end
    end
    get_local $ns1\out)
  (func $ns1\object_values (type $t4) (param $ns1\object i32) (result i32)
    (local $ns1\out i32) (local $ns1\len i32)
    i32.const 4
    get_local $ns1\object
    call $-len
    i32.const 2
    i32.div_u
    call $-new_value
    set_local $ns1\out
    get_local $ns1\out
    call $-len
    i32.const 4
    i32.div_u
    set_local $ns1\len
    block $B0
      loop $L1
        get_local $ns1\len
        i32.eqz
        br_if $B0
        get_local $ns1\len
        i32.const 1
        i32.sub
        set_local $ns1\len
        get_local $ns1\out
        get_local $ns1\len
        i32.const 4
        i32.mul
        get_local $ns1\object
        get_local $ns1\len
        i32.const 8
        i32.mul
        i32.const 4
        i32.add
        call $-read32
        call $-write32
        br $L1
      end
    end
    get_local $ns1\out)
  (func $ns1\abs (type $t4) (param $ns1\number i32) (result i32)
    get_local $ns1\number
    call $-f64
    f64.abs
    call $-number)
  (func $ns1\ceil (type $t4) (param $ns1\number i32) (result i32)
    get_local $ns1\number
    call $-f64
    f64.ceil
    call $-number)
  (func $ns1\floor (type $t4) (param $ns1\number i32) (result i32)
    get_local $ns1\number
    call $-f64
    f64.floor
    call $-number)
  (func $ns1\nearest (type $t4) (param $ns1\number i32) (result i32)
    get_local $ns1\number
    call $-f64
    f64.nearest
    call $-number)
  (func $ns1\sqrt (type $t4) (param $ns1\number i32) (result i32)
    get_local $ns1\number
    call $-f64
    f64.sqrt
    call $-number)
  (func $ns1\min (type $t3) (param $ns1\number1 i32) (param $ns1\number2 i32) (result i32)
    get_local $ns1\number1
    call $-f64
    get_local $ns1\number2
    call $-f64
    f64.min
    call $-number)
  (func $ns1\max (type $t3) (param $ns1\number1 i32) (param $ns1\number2 i32) (result i32)
    get_local $ns1\number1
    call $-f64
    get_local $ns1\number2
    call $-f64
    f64.max
    call $-number)
  (func $ns1\json_encode (type $t4) (param $ns1\value i32) (result i32)
    (local $ns1\datatype i32) (local $ns1\len i32) (local $ns1\json_string i32) (local $ns1\char i32) (local $ns1\done i32) (local $ns1\ipos i32) (local $ns1\opos i32)
    get_local $ns1\value
    call $-datatype
    set_local $ns1\datatype
    get_local $ns1\value
    call $-len
    set_local $ns1\len
    get_local $ns1\datatype
    i32.const 3
    i32.lt_u
    if $I0
      get_local $ns1\value
      call $-to_string
      set_local $ns1\json_string
    end
    get_local $ns1\datatype
    i32.const 5
    i32.gt_u
    if $I1
      get_local $ns1\value
      call $-to_string
      set_local $ns1\value
      i32.const 3
      set_local $ns1\datatype
    end
    get_local $ns1\datatype
    i32.const 3
    i32.eq
    if $I2
      i32.const 3
      get_local $ns1\value
      call $-len
      call $-new_value
      set_local $ns1\json_string
      get_local $ns1\json_string
      get_local $ns1\opos
      i32.const 34
      call $-write8
      get_local $ns1\opos
      i32.const 1
      i32.add
      set_local $ns1\opos
      block $B3
        loop $L4
          get_local $ns1\ipos
          get_local $ns1\len
          i32.ge_u
          br_if $B3
          i32.const 0
          set_local $ns1\done
          get_local $ns1\value
          get_local $ns1\ipos
          call $-read8
          set_local $ns1\char
          get_local $ns1\char
          i32.const 8
          i32.eq
          if $I5
            get_local $ns1\json_string
            get_local $ns1\opos
            i32.const 25180
            call $-write16
            get_local $ns1\opos
            i32.const 2
            i32.add
            set_local $ns1\opos
            i32.const 1
            set_local $ns1\done
          end
          get_local $ns1\char
          i32.const 9
          i32.eq
          if $I6
            get_local $ns1\json_string
            get_local $ns1\opos
            i32.const 29788
            call $-write16
            get_local $ns1\opos
            i32.const 2
            i32.add
            set_local $ns1\opos
            i32.const 1
            set_local $ns1\done
          end
          get_local $ns1\char
          i32.const 10
          i32.eq
          if $I7
            get_local $ns1\json_string
            get_local $ns1\opos
            i32.const 28252
            call $-write16
            get_local $ns1\opos
            i32.const 2
            i32.add
            set_local $ns1\opos
            i32.const 1
            set_local $ns1\done
          end
          get_local $ns1\char
          i32.const 12
          i32.eq
          if $I8
            get_local $ns1\json_string
            get_local $ns1\opos
            i32.const 26204
            call $-write16
            get_local $ns1\opos
            i32.const 2
            i32.add
            set_local $ns1\opos
            i32.const 1
            set_local $ns1\done
          end
          get_local $ns1\char
          i32.const 13
          i32.eq
          if $I9
            get_local $ns1\json_string
            get_local $ns1\opos
            i32.const 29276
            call $-write16
            get_local $ns1\opos
            i32.const 2
            i32.add
            set_local $ns1\opos
            i32.const 1
            set_local $ns1\done
          end
          get_local $ns1\char
          i32.const 34
          i32.eq
          if $I10
            get_local $ns1\json_string
            get_local $ns1\opos
            i32.const 8796
            call $-write16
            get_local $ns1\opos
            i32.const 2
            i32.add
            set_local $ns1\opos
            i32.const 1
            set_local $ns1\done
          end
          get_local $ns1\char
          i32.const 92
          i32.eq
          if $I11
            get_local $ns1\json_string
            get_local $ns1\opos
            i32.const 23644
            call $-write16
            get_local $ns1\opos
            i32.const 2
            i32.add
            set_local $ns1\opos
            i32.const 1
            set_local $ns1\done
          end
          get_local $ns1\char
          i32.const 127
          i32.eq
          if $I12
            get_local $ns1\json_string
            get_local $ns1\opos
            i32.const 30044
            call $-write16
            get_local $ns1\opos
            i32.const 2
            i32.add
            set_local $ns1\opos
            get_local $ns1\json_string
            get_local $ns1\opos
            i32.const 1714892848
            call $-write32
            get_local $ns1\opos
            i32.const 4
            i32.add
            set_local $ns1\opos
            i32.const 1
            set_local $ns1\done
          end
          get_local $ns1\done
          i32.eqz
          if $I13
            get_local $ns1\char
            i32.const 32
            i32.lt_u
            if $I14
              get_local $ns1\json_string
              get_local $ns1\opos
              i32.const 30044
              call $-write16
              get_local $ns1\opos
              i32.const 2
              i32.add
              set_local $ns1\opos
              get_local $ns1\char
              i32.const 4
              call $-to_hex
              set_local $ns1\done
              get_local $ns1\json_string
              get_local $ns1\opos
              get_local $ns1\done
              i32.const 0
              call $-read32
              call $-write32
              get_local $ns1\opos
              i32.const 4
              i32.add
              set_local $ns1\opos
            else
              get_local $ns1\json_string
              get_local $ns1\opos
              get_local $ns1\char
              call $-write8
              get_local $ns1\opos
              i32.const 1
              i32.add
              set_local $ns1\opos
            end
          end
          get_local $ns1\ipos
          i32.const 1
          i32.add
          set_local $ns1\ipos
          br $L4
        end
      end
      get_local $ns1\json_string
      get_local $ns1\opos
      i32.const 34
      call $-write8
    end
    get_local $ns1\datatype
    i32.const 4
    i32.eq
    if $I15
      i32.const 3
      i32.const 0
      call $-new_value
      set_local $ns1\json_string
      get_local $ns1\json_string
      get_local $ns1\opos
      i32.const 91
      call $-write8
      get_local $ns1\opos
      i32.const 1
      i32.add
      set_local $ns1\opos
      block $B16
        loop $L17
          get_local $ns1\ipos
          get_local $ns1\len
          i32.ge_u
          br_if $B16
          get_local $ns1\value
          get_local $ns1\ipos
          call $-read32
          set_local $ns1\char
          get_local $ns1\ipos
          i32.const 4
          i32.add
          set_local $ns1\ipos
          get_local $ns1\json_string
          call $-len
          set_local $ns1\opos
          get_local $ns1\json_string
          get_local $ns1\opos
          get_local $ns1\char
          call $ns1\json_encode
          call $-write_to
          get_local $ns1\json_string
          call $-len
          set_local $ns1\opos
          get_local $ns1\json_string
          get_local $ns1\opos
          i32.const 44
          call $-write8
          br $L17
        end
      end
      get_local $ns1\json_string
      get_local $ns1\opos
      i32.const 93
      call $-write8
    end
    get_local $ns1\datatype
    i32.const 5
    i32.eq
    if $I18
      i32.const 3
      i32.const 0
      call $-new_value
      set_local $ns1\json_string
      get_local $ns1\json_string
      get_local $ns1\opos
      i32.const 123
      call $-write8
      get_local $ns1\opos
      i32.const 1
      i32.add
      set_local $ns1\opos
      block $B19
        loop $L20
          get_local $ns1\ipos
          get_local $ns1\len
          i32.ge_u
          br_if $B19
          get_local $ns1\value
          get_local $ns1\ipos
          call $-read32
          set_local $ns1\char
          get_local $ns1\ipos
          i32.const 4
          i32.add
          set_local $ns1\ipos
          get_local $ns1\json_string
          call $-len
          set_local $ns1\opos
          get_local $ns1\json_string
          get_local $ns1\opos
          get_local $ns1\char
          call $-to_string
          call $ns1\json_encode
          call $-write_to
          get_local $ns1\json_string
          call $-len
          set_local $ns1\opos
          get_local $ns1\json_string
          get_local $ns1\opos
          i32.const 58
          call $-write8
          get_local $ns1\value
          get_local $ns1\ipos
          call $-read32
          set_local $ns1\char
          get_local $ns1\ipos
          i32.const 4
          i32.add
          set_local $ns1\ipos
          get_local $ns1\json_string
          call $-len
          set_local $ns1\opos
          get_local $ns1\json_string
          get_local $ns1\opos
          get_local $ns1\char
          call $ns1\json_encode
          call $-write_to
          get_local $ns1\json_string
          call $-len
          set_local $ns1\opos
          get_local $ns1\json_string
          get_local $ns1\opos
          i32.const 44
          call $-write8
          br $L20
        end
      end
      get_local $ns1\json_string
      get_local $ns1\opos
      i32.const 125
      call $-write8
    end
    get_local $ns1\json_string)
  (func $ns1\json_decode (type $t4) (param $ns1\json_string i32) (result i32)
    (local $ns1\datatype i32) (local $ns1\value i32)
    get_local $ns1\json_string
    call $-datatype
    set_local $ns1\datatype
    get_local $ns1\json_string
    set_local $ns1\value
    get_local $ns1\json_string
    call $-offset
    set_global $g0
    get_local $ns1\datatype
    i32.const 3
    i32.eq
    if $I0
      call $ns1\~json_decode
      set_local $ns1\value
    end
    get_local $ns1\datatype
    i32.const 6
    i32.eq
    if $I1
      call $ns1\~json_decode
      set_local $ns1\value
    end
    get_local $ns1\value)
  (func $ns1\~json_decode (type $t5) (result i32)
    (local $ns1\value i32) (local $ns1\err i32) (local $ns1\char i32) (local $ns1\pos i32) (local $ns1\hex i32) (local $ns1\num f64) (local $ns1\neg f64) (local $ns1\exp f64) (local $ns1\eneg f64)
    call $ns1\~skip_whitespace
    i32.eqz
    set_local $ns1\err
    get_global $g0
    i32.load8_u
    set_local $ns1\char
    get_global $g0
    i32.const 1
    i32.add
    set_global $g0
    get_local $ns1\char
    i32.const 110
    i32.eq
    if $I0
      get_global $g0
      i32.const 1
      i32.sub
      set_global $g0
      get_global $g0
      i32.load
      set_local $ns1\char
      get_global $g0
      i32.const 4
      i32.add
      set_global $g0
      get_local $ns1\char
      i32.const 1819047278
      i32.eq
      if $I1
        i32.const 0
        set_local $ns1\value
      else
        i32.const 0
        set_local $ns1\char
        i32.const 1
        set_local $ns1\err
      end
    end
    get_local $ns1\char
    i32.const 102
    i32.eq
    if $I2
      get_global $g0
      i32.load
      set_local $ns1\char
      get_global $g0
      i32.const 4
      i32.add
      set_global $g0
      get_local $ns1\char
      i32.const 1702063201
      i32.eq
      if $I3
        i32.const 1
        set_local $ns1\value
      else
        i32.const 0
        set_local $ns1\char
        i32.const 1
        set_local $ns1\err
      end
    end
    get_local $ns1\char
    i32.const 116
    i32.eq
    if $I4
      get_global $g0
      i32.const 1
      i32.sub
      set_global $g0
      get_global $g0
      i32.load
      set_local $ns1\char
      get_global $g0
      i32.const 4
      i32.add
      set_global $g0
      get_local $ns1\char
      i32.const 1702195828
      i32.eq
      if $I5
        i32.const 5
        set_local $ns1\value
      else
        i32.const 0
        set_local $ns1\char
        i32.const 1
        set_local $ns1\err
      end
    end
    get_local $ns1\char
    i32.const 45
    i32.eq
    get_local $ns1\char
    i32.const 48
    i32.ge_u
    get_local $ns1\char
    i32.const 57
    i32.le_u
    i32.and
    i32.or
    if $I6
      get_global $g0
      i32.const 1
      i32.sub
      set_global $g0
      get_global $g0
      i32.const 10
      call $-parse_float
      call $-number
      set_local $ns1\value
      get_global $g20
      set_global $g0
    end
    get_local $ns1\char
    i32.const 34
    i32.eq
    if $I7
      get_global $g0
      i32.load8_u
      set_local $ns1\char
      get_global $g0
      i32.const 1
      i32.add
      set_global $g0
      i32.const 3
      i32.const 0
      call $-new_value
      set_local $ns1\value
      block $B8
        loop $L9
          get_local $ns1\char
          i32.const 34
          i32.eq
          br_if $B8
          get_local $ns1\value
          call $-len
          set_local $ns1\pos
          get_local $ns1\char
          i32.const 92
          i32.eq
          if $I10
            get_global $g0
            i32.load8_u
            set_local $ns1\char
            get_global $g0
            i32.const 1
            i32.add
            set_global $g0
            get_local $ns1\value
            get_local $ns1\pos
            get_local $ns1\char
            call $-write8
            get_local $ns1\char
            i32.const 98
            i32.eq
            if $I11
              get_local $ns1\value
              get_local $ns1\pos
              i32.const 8
              call $-write8
            end
            get_local $ns1\char
            i32.const 102
            i32.eq
            if $I12
              get_local $ns1\value
              get_local $ns1\pos
              i32.const 12
              call $-write8
            end
            get_local $ns1\char
            i32.const 110
            i32.eq
            if $I13
              get_local $ns1\value
              get_local $ns1\pos
              i32.const 10
              call $-write8
            end
            get_local $ns1\char
            i32.const 114
            i32.eq
            if $I14
              get_local $ns1\value
              get_local $ns1\pos
              i32.const 13
              call $-write8
            end
            get_local $ns1\char
            i32.const 116
            i32.eq
            if $I15
              get_local $ns1\value
              get_local $ns1\pos
              i32.const 9
              call $-write8
            end
            get_local $ns1\char
            i32.const 117
            i32.eq
            if $I16
              get_local $ns1\hex
              i32.eqz
              if $I17
                i32.const 3
                i32.const 4
                call $-new_value
                set_local $ns1\hex
              end
              get_global $g0
              i32.load
              set_local $ns1\char
              get_global $g0
              i32.const 4
              i32.add
              set_global $g0
              get_local $ns1\hex
              i32.const 0
              get_local $ns1\char
              call $-write32
              get_local $ns1\hex
              call $-from_hex
              set_local $ns1\char
              get_local $ns1\char
              i32.const 64512
              i32.and
              i32.const 55296
              i32.eq
              if $I18
                get_global $g0
                i32.const 2
                i32.add
                set_global $g0
                get_local $ns1\hex
                i32.const 0
                get_global $g0
                i32.load
                call $-write32
                get_global $g0
                i32.const 4
                i32.add
                set_global $g0
                get_local $ns1\hex
                call $-from_hex
                set_local $ns1\hex
                get_local $ns1\char
                i32.const 55296
                i32.sub
                i32.const 1024
                i32.mul
                set_local $ns1\char
                get_local $ns1\hex
                i32.const 56320
                i32.sub
                set_local $ns1\hex
                get_local $ns1\char
                get_local $ns1\hex
                i32.add
                i32.const 65536
                i32.add
                set_local $ns1\char
                get_local $ns1\char
                call $-char
                set_local $ns1\char
                i32.const 0
                set_local $ns1\hex
              else
                get_local $ns1\char
                call $-char
                set_local $ns1\char
              end
              get_local $ns1\value
              get_local $ns1\pos
              get_local $ns1\char
              call $-write_to
            end
          else
            get_local $ns1\value
            get_local $ns1\pos
            get_local $ns1\char
            call $-write8
          end
          get_global $g0
          i32.load8_u
          set_local $ns1\char
          get_global $g0
          i32.const 1
          i32.add
          set_global $g0
          br $L9
        end
      end
    end
    get_local $ns1\char
    i32.const 91
    i32.eq
    if $I19
      i32.const 4
      i32.const 0
      call $-new_value
      set_local $ns1\value
      call $ns1\~skip_whitespace
      set_local $ns1\char
      call $ns1\~skip_whitespace
      i32.eqz
      set_local $ns1\err
      block $B20
        loop $L21
          get_local $ns1\err
          get_local $ns1\char
          i32.const 93
          i32.eq
          i32.or
          br_if $B20
          get_local $ns1\char
          i32.const 44
          i32.eq
          if $I22
            get_global $g0
            i32.const 1
            i32.add
            set_global $g0
          end
          get_local $ns1\value
          get_local $ns1\value
          call $-len
          call $ns1\~json_decode
          call $-write32
          call $ns1\~skip_whitespace
          set_local $ns1\char
          call $ns1\~skip_whitespace
          i32.eqz
          set_local $ns1\err
          br $L21
        end
      end
      get_local $ns1\char
      i32.const 93
      i32.eq
      if $I23
        get_global $g0
        i32.const 1
        i32.add
        set_global $g0
      end
    end
    get_local $ns1\char
    i32.const 123
    i32.eq
    if $I24
      i32.const 5
      i32.const 0
      call $-new_value
      set_local $ns1\value
      call $ns1\~skip_whitespace
      set_local $ns1\char
      call $ns1\~skip_whitespace
      i32.eqz
      set_local $ns1\err
      block $B25
        loop $L26
          get_local $ns1\err
          get_local $ns1\char
          i32.const 125
          i32.eq
          i32.or
          br_if $B25
          get_local $ns1\char
          i32.const 44
          i32.eq
          if $I27
            get_global $g0
            i32.const 1
            i32.add
            set_global $g0
          end
          get_local $ns1\value
          get_local $ns1\value
          call $-len
          call $ns1\~json_decode
          call $-write32
          call $ns1\~skip_whitespace
          set_local $ns1\char
          call $ns1\~skip_whitespace
          i32.eqz
          set_local $ns1\err
          get_local $ns1\char
          i32.const 58
          i32.eq
          if $I28
            get_global $g0
            i32.const 1
            i32.add
            set_global $g0
          end
          get_local $ns1\value
          get_local $ns1\value
          call $-len
          call $ns1\~json_decode
          call $-write32
          call $ns1\~skip_whitespace
          set_local $ns1\char
          call $ns1\~skip_whitespace
          i32.eqz
          set_local $ns1\err
          br $L26
        end
      end
      get_local $ns1\char
      i32.const 125
      i32.eq
      if $I29
        get_global $g0
        i32.const 1
        i32.add
        set_global $g0
      end
    end
    get_local $ns1\value)
  (func $ns1\~skip_whitespace (type $t5) (result i32)
    (local $ns1\char i32) (local $ns1\err i32)
    get_global $g0
    i32.load8_u
    set_local $ns1\char
    get_global $g0
    i32.const 1
    i32.add
    set_global $g0
    block $B0
      loop $L1
        get_local $ns1\err
        get_local $ns1\char
        i32.const 32
        i32.gt_u
        i32.or
        br_if $B0
        get_local $ns1\char
        i32.eqz
        if $I2
          i32.const 1
          set_local $ns1\err
        else
          get_global $g0
          i32.load8_u
          set_local $ns1\char
          get_global $g0
          i32.const 1
          i32.add
          set_global $g0
        end
        br $L1
      end
    end
    get_global $g0
    i32.const 1
    i32.sub
    set_global $g0
    get_local $ns1\char)
  (func $ns2\assemble (type $t4) (param $ns2\wast i32) (result i32)
    (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      call $ns2\reset
      drop
      get_local $ns2\wast
      set_global $g2
      get_global $g2
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      get_local $ns2\token
      i32.const 8
      call $-unequal
      call $-truthy
      if $I1
        get_local $ns2\token
        i32.const 9
        call $ns2\unexpected
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      get_local $ns2\token
      i32.const 10
      call $-unequal
      call $-truthy
      if $I2
        get_local $ns2\token
        i32.const 11
        call $ns2\unexpected
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      call $ns2\read_names
      drop
      get_global $g1
      call $-truthy
      if $I3
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      call $ns2\rewind
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      get_local $ns2\token
      i32.const 8
      call $-unequal
      call $-truthy
      if $I4
        get_local $ns2\token
        i32.const 9
        call $ns2\unexpected
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      get_local $ns2\token
      i32.const 10
      call $-unequal
      call $-truthy
      if $I5
        get_local $ns2\token
        i32.const 11
        call $ns2\unexpected
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      call $ns2\read_module
      drop
      get_global $g1
      call $-truthy
      if $I6
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $-success
      i32.eqz
      if $I7
        call $ns2\write_module
        drop
        call $ns2\reset
        drop
        i32.const 0
        set_global $g2
        get_global $g2
        drop
        i32.const 0
        set_global $g7
        get_global $g7
        drop
        get_global $g8
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      end
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\reset (type $t5) (result i32)
    (local $-obj0 i32) (local $-obj1 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      call $ns2\rewind
      drop
      i32.const 0
      set_global $g1
      get_global $g1
      drop
      i32.const 5
      i32.const 0
      call $-new_value
      tee_local $-obj0
      get_local $-obj0
      i32.const 12
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 12
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 13
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 13
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 14
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 14
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 15
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 15
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 16
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 16
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 17
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 17
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 18
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 18
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 19
      i32.const 0
      call $-set_to_obj
      get_local $-obj0
      i32.const 19
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 20
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 20
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 21
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 21
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 22
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 22
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 23
      i32.const 5
      i32.const 0
      call $-new_value
      tee_local $-obj1
      get_local $-obj1
      i32.const 12
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj1
      i32.const 12
      call $-get_from_obj
      drop
      get_local $-obj1
      i32.const 14
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj1
      i32.const 14
      call $-get_from_obj
      drop
      get_local $-obj1
      i32.const 24
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj1
      i32.const 24
      call $-get_from_obj
      drop
      get_local $-obj1
      i32.const 17
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj1
      i32.const 17
      call $-get_from_obj
      drop
      get_local $-obj1
      i32.const 16
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj1
      i32.const 16
      call $-get_from_obj
      drop
      get_local $-obj1
      i32.const 15
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj1
      i32.const 15
      call $-get_from_obj
      drop
      call $-set_to_obj
      get_local $-obj0
      i32.const 23
      call $-get_from_obj
      drop
      set_global $g7
      get_global $g7
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\rewind (type $t5) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      f64.const 0x0p+0 (;=0;)
      call $-number
      set_global $g3
      get_global $g3
      drop
      f64.const 0x1p+0 (;=1;)
      call $-number
      set_global $g4
      get_global $g4
      drop
      f64.const 0x0p+0 (;=0;)
      call $-number
      set_global $g5
      get_global $g5
      drop
      i32.const 4
      i32.const 0
      call $-new_value
      set_global $g6
      get_global $g6
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\save_pos (type $t5) (result i32)
    (local $ns2\p i32) (local $-obj0 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 5
      i32.const 0
      call $-new_value
      tee_local $-obj0
      get_local $-obj0
      i32.const 25
      f64.const 0x0p+0 (;=0;)
      call $-number
      get_global $g3
      call $-add
      call $-set_to_obj
      get_local $-obj0
      i32.const 25
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 26
      f64.const 0x0p+0 (;=0;)
      call $-number
      get_global $g4
      call $-add
      call $-set_to_obj
      get_local $-obj0
      i32.const 26
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 27
      f64.const 0x0p+0 (;=0;)
      call $-number
      get_global $g5
      call $-add
      call $-set_to_obj
      get_local $-obj0
      i32.const 27
      call $-get_from_obj
      drop
      set_local $ns2\p
      get_local $ns2\p
      drop
      get_global $g6
      get_local $ns2\p
      call $ns1\array_push
      drop
      get_local $ns2\p
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\restore_pos (type $t5) (result i32)
    (local $ns2\p i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g6
      call $ns1\array_pop
      set_local $ns2\p
      get_local $ns2\p
      drop
      get_local $ns2\p
      i32.const 25
      call $-get_from_obj
      set_global $g3
      get_global $g3
      drop
      get_local $ns2\p
      i32.const 26
      call $-get_from_obj
      set_global $g4
      get_global $g4
      drop
      get_local $ns2\p
      i32.const 27
      call $-get_from_obj
      set_global $g5
      get_global $g5
      drop
      get_local $ns2\p
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\pop_pos (type $t5) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g6
      call $ns1\array_pop
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\croak (type $t4) (param $ns2\message i32) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g1
      get_local $ns2\message
      i32.const 28
      call $-add
      get_global $g4
      call $-add
      i32.const 29
      call $-add
      get_global $g5
      call $-add
      i32.const 30
      call $-add
      call $-or
      set_global $g1
      get_global $g1
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\unexpected (type $t3) (param $ns2\actual i32) (param $ns2\expected i32) (result i32)
    (local $ns2\message i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 31
      get_local $ns2\actual
      call $-add
      i32.const 32
      call $-add
      set_local $ns2\message
      get_local $ns2\message
      drop
      get_local $ns2\expected
      call $-truthy
      if $I1
        get_local $ns2\message
        i32.const 33
        get_local $ns2\expected
        call $-add
        i32.const 34
        call $-add
        call $-add
        set_local $ns2\message
        get_local $ns2\message
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\message
      call $ns2\croak
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\is_eof (type $t5) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g3
      get_global $g2
      call $ns1\size_of
      call $-ge
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\peek_char (type $t5) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 3
      get_global $g2
      get_global $g3
      f64.const 0x1p+0 (;=1;)
      call $-number
      call $ns1\binary_slice
      call $-add
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_char (type $t5) (result i32)
    (local $ns2\char i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      call $ns2\peek_char
      set_local $ns2\char
      get_local $ns2\char
      drop
      get_global $g3
      f64.const 0x1p+0 (;=1;)
      call $-inc
      set_global $g3
      get_global $g3
      drop
      get_global $g5
      f64.const 0x1p+0 (;=1;)
      call $-inc
      set_global $g5
      get_global $g5
      drop
      get_local $ns2\char
      i32.const 35
      call $-equal
      call $-truthy
      if $I1
        get_global $g4
        f64.const 0x1p+0 (;=1;)
        call $-inc
        set_global $g4
        get_global $g4
        drop
        f64.const 0x0p+0 (;=0;)
        call $-number
        set_global $g5
        get_global $g5
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\char
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\backstep (type $t5) (result i32)
    (local $ns2\char i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g3
      f64.const -0x1p+0 (;=-1;)
      call $-inc
      set_global $g3
      get_global $g3
      drop
      get_global $g5
      f64.const -0x1p+0 (;=-1;)
      call $-inc
      set_global $g5
      get_global $g5
      drop
      call $ns2\peek_char
      set_local $ns2\char
      get_local $ns2\char
      drop
      get_local $ns2\char
      i32.const 35
      call $-equal
      call $-truthy
      if $I1
        get_global $g4
        f64.const -0x1p+0 (;=-1;)
        call $-inc
        set_global $g4
        get_global $g4
        drop
        f64.const 0x1.ffffffep+27 (;=2.68435e+08;)
        call $-number
        set_global $g5
        get_global $g5
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\char
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_raw_token (type $t5) (result i32)
    (local $ns2\hexdigits i32) (local $ns2\token i32) (local $ns2\char i32) (local $ns2\illegals i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 36
      set_local $ns2\hexdigits
      get_local $ns2\hexdigits
      drop
      get_local $ns2\token
      drop
      call $ns2\peek_char
      set_local $ns2\char
      get_local $ns2\char
      drop
      block $B1
        loop $L2
          get_local $ns2\char
          i32.const 0
          call $ns1\char_code
          f64.const 0x1p+5 (;=32;)
          call $-number
          call $-le
          i32.const 1
          call $ns2\is_eof
          call $-equal
          call $-and
          call $-falsy
          br_if $B1
          block $B3
            call $ns2\read_char
            drop
            call $ns2\peek_char
            set_local $ns2\char
            get_local $ns2\char
            drop
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      get_local $ns2\char
      i32.const 8
      call $-equal
      call $-truthy
      if $I4
        call $ns2\read_char
        set_local $ns2\token
        get_local $ns2\token
        drop
        call $ns2\peek_char
        set_local $ns2\char
        get_local $ns2\char
        drop
        get_local $ns2\char
        i32.const 37
        call $-equal
        call $-truthy
        if $I5
          get_local $ns2\char
          set_local $ns2\token
          get_local $ns2\token
          drop
          block $B6
            loop $L7
              get_local $ns2\token
              i32.const 38
              i32.const 0
              call $ns1\binary_search
              i32.const 0
              call $-equal
              i32.const 1
              call $ns2\is_eof
              call $-equal
              call $-and
              call $-falsy
              br_if $B6
              block $B8
                call $ns2\read_char
                set_local $ns2\char
                get_local $ns2\char
                drop
                get_local $ns2\token
                get_local $ns2\token
                call $ns1\size_of
                get_local $ns2\char
                call $ns1\binary_write
                drop
                i32.const 1
                set_local $-success
              end
              br $L7
            end
          end
          i32.const 1
          set_local $-success
        else
          i32.const 0
          set_local $-success
        end
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $-success
      i32.eqz
      get_local $ns2\char
      i32.const 30
      call $-equal
      call $-truthy
      i32.and
      if $I9
        call $ns2\read_char
        set_local $ns2\token
        get_local $ns2\token
        drop
        i32.const 1
        set_local $-success
      end
      get_local $-success
      i32.eqz
      get_local $ns2\char
      i32.const 39
      call $-equal
      call $-truthy
      i32.and
      if $I10
        call $ns2\read_char
        set_local $ns2\token
        get_local $ns2\token
        drop
        call $ns2\read_char
        set_local $ns2\char
        get_local $ns2\char
        drop
        block $B11
          loop $L12
            get_local $ns2\char
            i32.const 39
            call $-unequal
            i32.const 1
            call $ns2\is_eof
            call $-equal
            call $-and
            call $-falsy
            br_if $B11
            block $B13
              get_local $ns2\char
              i32.const 40
              call $-equal
              call $-truthy
              if $I14
                call $ns2\read_char
                set_local $ns2\char
                get_local $ns2\char
                drop
                get_local $ns2\char
                i32.const 41
                call $-equal
                call $-truthy
                if $I15
                  get_local $ns2\token
                  get_local $ns2\token
                  call $ns1\size_of
                  i32.const 35
                  call $ns1\binary_write
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                get_local $ns2\char
                i32.const 42
                call $-equal
                call $-truthy
                i32.and
                if $I16
                  get_local $ns2\token
                  get_local $ns2\token
                  call $ns1\size_of
                  i32.const 43
                  call $ns1\binary_write
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                get_local $ns2\hexdigits
                get_local $ns2\char
                i32.const 0
                call $ns1\binary_search
                i32.const 0
                call $-unequal
                call $-truthy
                i32.and
                if $I17
                  get_local $ns2\char
                  call $ns2\read_char
                  call $-add
                  set_local $ns2\char
                  get_local $ns2\char
                  drop
                  get_local $ns2\token
                  get_local $ns2\token
                  call $ns1\size_of
                  get_local $ns2\char
                  call $ns3\from_hex
                  call $ns1\binary_write
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I18
                  get_local $ns2\token
                  get_local $ns2\token
                  call $ns1\size_of
                  get_local $ns2\char
                  call $ns1\binary_write
                  drop
                  i32.const 1
                  set_local $-success
                end
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I19
                get_local $ns2\token
                get_local $ns2\token
                call $ns1\size_of
                get_local $ns2\char
                call $ns1\binary_write
                drop
                i32.const 1
                set_local $-success
              end
              call $ns2\read_char
              set_local $ns2\char
              get_local $ns2\char
              drop
              i32.const 1
              set_local $-success
            end
            br $L12
          end
        end
        i32.const 1
        set_local $-success
      end
      get_local $-success
      i32.eqz
      get_local $ns2\char
      i32.const 37
      call $-equal
      call $-truthy
      i32.and
      if $I20
        call $ns2\read_char
        set_local $ns2\token
        get_local $ns2\token
        drop
        call $ns2\peek_char
        set_local $ns2\char
        get_local $ns2\char
        drop
        get_local $ns2\char
        i32.const 37
        call $-equal
        call $-truthy
        if $I21
          block $B22
            loop $L23
              get_local $ns2\char
              i32.const 35
              call $-unequal
              i32.const 1
              call $ns2\is_eof
              call $-equal
              call $-and
              call $-falsy
              br_if $B22
              block $B24
                call $ns2\read_char
                set_local $ns2\char
                get_local $ns2\char
                drop
                get_local $ns2\token
                get_local $ns2\token
                call $ns1\size_of
                get_local $ns2\char
                call $ns1\binary_write
                drop
                i32.const 1
                set_local $-success
              end
              br $L23
            end
          end
          i32.const 1
          set_local $-success
        else
          i32.const 0
          set_local $-success
        end
        i32.const 1
        set_local $-success
      end
      get_local $-success
      i32.eqz
      if $I25
        i32.const 3
        i32.const 6
        i32.const 0
        call $-new_value
        call $-add
        set_local $ns2\token
        get_local $ns2\token
        drop
        i32.const 44
        set_local $ns2\illegals
        get_local $ns2\illegals
        drop
        block $B26
          loop $L27
            get_local $ns2\char
            i32.const 0
            call $ns1\char_code
            f64.const 0x1p+5 (;=32;)
            call $-number
            call $-gt
            i32.const 1
            call $ns2\is_eof
            call $-equal
            call $-and
            get_local $ns2\illegals
            get_local $ns2\char
            i32.const 0
            call $ns1\binary_search
            i32.const 0
            call $-equal
            call $-and
            call $-falsy
            br_if $B26
            block $B28
              get_local $ns2\token
              get_local $ns2\token
              call $ns1\size_of
              get_local $ns2\char
              call $ns1\binary_write
              drop
              get_global $g3
              f64.const 0x1p+0 (;=1;)
              call $-inc
              set_global $g3
              get_global $g3
              drop
              call $ns2\peek_char
              set_local $ns2\char
              get_local $ns2\char
              drop
              i32.const 1
              set_local $-success
            end
            br $L27
          end
        end
        i32.const 1
        set_local $-success
      end
      get_local $ns2\token
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_token (type $t5) (result i32)
    (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 45
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          i32.const 45
          i32.const 0
          call $ns1\binary_search
          f64.const 0x0p+0 (;=0;)
          call $-number
          call $-equal
          call $-falsy
          br_if $B1
          block $B3
            call $ns2\read_raw_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      get_local $ns2\token
      i32.const 30
      call $-equal
      call $-truthy
      if $I4
        call $ns2\backstep
        drop
        i32.const 0
        set_local $ns2\token
        get_local $ns2\token
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\token
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\exit_parens (type $t5) (result i32)
    (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 45
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          get_local $ns2\token
          i32.const 30
          call $-unequal
          call $-and
          call $-falsy
          br_if $B1
          block $B3
            call $ns2\read_raw_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            get_local $ns2\token
            i32.const 8
            call $-equal
            call $-truthy
            if $I4
              call $ns2\exit_parens
              drop
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      get_local $ns2\token
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\is_name (type $t4) (param $ns2\token i32) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_local $ns2\token
      i32.const 46
      i32.const 0
      call $ns1\binary_search
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\is_string (type $t4) (param $ns2\token i32) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_local $ns2\token
      i32.const 39
      i32.const 0
      call $ns1\binary_search
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\is_number (type $t4) (param $ns2\token i32) (result i32)
    (local $ns2\digits i32) (local $ns2\char i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 47
      set_local $ns2\digits
      get_local $ns2\digits
      drop
      get_local $ns2\token
      f64.const 0x0p+0 (;=0;)
      call $-number
      f64.const 0x1p+0 (;=1;)
      call $-number
      call $ns1\binary_slice
      set_local $ns2\char
      get_local $ns2\char
      drop
      get_local $ns2\digits
      get_local $ns2\char
      i32.const 0
      call $ns1\binary_search
      i32.const 0
      call $-unequal
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\token_to_number (type $t4) (param $ns2\token i32) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_local $ns2\token
      call $ns1\json_decode
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\translate_code (type $t3) (param $ns2\bin i32) (param $ns2\token i32) (result i32)
    (local $ns2\code i32) (local $ns2\to_code i32) (local $ns2\autoend i32) (local $ns2\opcode i32) (local $ns2\num i32) (local $ns2\targets i32) (local $ns2\target i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\code
      get_local $ns2\code
      drop
      i32.const 1
      set_local $ns2\to_code
      get_local $ns2\to_code
      drop
      i32.const 1
      set_local $ns2\autoend
      get_local $ns2\autoend
      drop
      get_local $ns2\token
      i32.const 0
      call $-equal
      call $-truthy
      if $I1
        call $ns2\read_token
        set_local $ns2\token
        get_local $ns2\token
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      block $B2
        loop $L3
          get_local $ns2\token
          call $-falsy
          br_if $B2
          block $B4
            get_local $ns2\token
            i32.const 8
            call $-equal
            call $-truthy
            if $I5
              get_local $ns2\to_code
              call $-truthy
              if $I6
                get_local $ns2\code
                i32.const 0
                call $ns2\translate_code
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I7
                get_local $ns2\bin
                i32.const 0
                call $ns2\translate_code
                drop
                i32.const 1
                set_local $-success
              end
              get_local $ns2\to_code
              i32.const 0
              call $-equal
              call $-truthy
              if $I8
                i32.const 5
                set_local $ns2\to_code
                get_local $ns2\to_code
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $-success
            i32.eqz
            if $I9
              get_global $g11
              get_local $ns2\token
              call $-get_from_obj
              set_local $ns2\opcode
              get_local $ns2\opcode
              drop
              get_local $ns2\opcode
              i32.const 0
              call $-unequal
              call $-truthy
              if $I10
                get_local $ns2\code
                get_local $ns2\code
                call $ns1\size_of
                get_local $ns2\opcode
                call $ns1\binary_write
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $ns2\token
              i32.const 48
              call $-equal
              get_local $ns2\token
              i32.const 49
              call $-equal
              call $-or
              get_local $ns2\token
              i32.const 50
              call $-equal
              call $-or
              call $-truthy
              if $I11
                get_local $ns2\token
                i32.const 50
                call $-equal
                call $-truthy
                if $I12
                  i32.const 0
                  set_local $ns2\to_code
                  get_local $ns2\to_code
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I13
                  i32.const 5
                  set_local $ns2\to_code
                  get_local $ns2\to_code
                  drop
                  i32.const 1
                  set_local $-success
                end
                i32.const 5
                set_local $ns2\autoend
                get_local $ns2\autoend
                drop
                call $ns2\save_pos
                drop
                call $ns2\read_token
                set_local $ns2\num
                get_local $ns2\num
                drop
                get_local $ns2\num
                call $ns2\is_name
                call $-truthy
                if $I14
                  get_global $g10
                  get_local $ns2\num
                  call $ns1\array_unshift
                  drop
                  call $ns2\pop_pos
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I15
                  get_global $g10
                  i32.const 46
                  call $ns1\array_unshift
                  drop
                  call $ns2\restore_pos
                  drop
                  i32.const 1
                  set_local $-success
                end
                call $ns2\save_pos
                drop
                call $ns2\read_token
                set_local $ns2\num
                get_local $ns2\num
                drop
                get_local $ns2\num
                i32.const 8
                call $-equal
                call $-truthy
                if $I16
                  call $ns2\read_token
                  set_local $ns2\num
                  get_local $ns2\num
                  drop
                  get_local $ns2\num
                  i32.const 51
                  call $-equal
                  call $-truthy
                  if $I17
                    call $ns2\read_token
                    set_local $ns2\num
                    get_local $ns2\num
                    drop
                    get_local $ns2\num
                    i32.const 52
                    call $-equal
                    call $-truthy
                    if $I18
                      f64.const 0x1.fcp+6 (;=127;)
                      call $-number
                      set_local $ns2\num
                      get_local $ns2\num
                      drop
                      i32.const 1
                      set_local $-success
                    else
                      i32.const 0
                      set_local $-success
                    end
                    get_local $-success
                    i32.eqz
                    get_local $ns2\num
                    i32.const 53
                    call $-equal
                    call $-truthy
                    i32.and
                    if $I19
                      f64.const 0x1.f8p+6 (;=126;)
                      call $-number
                      set_local $ns2\num
                      get_local $ns2\num
                      drop
                      i32.const 1
                      set_local $-success
                    end
                    get_local $-success
                    i32.eqz
                    get_local $ns2\num
                    i32.const 54
                    call $-equal
                    call $-truthy
                    i32.and
                    if $I20
                      f64.const 0x1.f4p+6 (;=125;)
                      call $-number
                      set_local $ns2\num
                      get_local $ns2\num
                      drop
                      i32.const 1
                      set_local $-success
                    end
                    get_local $-success
                    i32.eqz
                    get_local $ns2\num
                    i32.const 55
                    call $-equal
                    call $-truthy
                    i32.and
                    if $I21
                      f64.const 0x1.fp+6 (;=124;)
                      call $-number
                      set_local $ns2\num
                      get_local $ns2\num
                      drop
                      i32.const 1
                      set_local $-success
                    end
                    call $ns2\pop_pos
                    drop
                    i32.const 1
                    set_local $-success
                  else
                    i32.const 0
                    set_local $-success
                  end
                  get_local $-success
                  i32.eqz
                  if $I22
                    f64.const 0x1p+6 (;=64;)
                    call $-number
                    set_local $ns2\num
                    get_local $ns2\num
                    drop
                    call $ns2\restore_pos
                    drop
                    i32.const 1
                    set_local $-success
                  end
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I23
                  f64.const 0x1p+6 (;=64;)
                  call $-number
                  set_local $ns2\num
                  get_local $ns2\num
                  drop
                  call $ns2\restore_pos
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $ns2\code
                get_local $ns2\num
                call $ns3\write_varuint
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 56
              call $-equal
              call $-truthy
              i32.and
              if $I24
                i32.const 5
                set_local $ns2\to_code
                get_local $ns2\to_code
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 57
              call $-equal
              call $-truthy
              i32.and
              if $I25
                i32.const 1
                set_local $ns2\to_code
                get_local $ns2\to_code
                drop
                i32.const 1
                set_local $ns2\autoend
                get_local $ns2\autoend
                drop
                get_global $g10
                call $ns1\array_shift
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 58
              call $-equal
              get_local $ns2\token
              i32.const 59
              call $-equal
              call $-or
              call $-truthy
              i32.and
              if $I26
                call $ns2\read_token
                set_local $ns2\num
                get_local $ns2\num
                drop
                get_local $ns2\num
                call $ns2\is_number
                call $-truthy
                if $I27
                  get_local $ns2\code
                  get_local $ns2\num
                  call $ns2\token_to_number
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                get_local $ns2\num
                call $ns2\is_name
                call $-truthy
                i32.and
                if $I28
                  get_local $ns2\code
                  get_global $g10
                  get_local $ns2\num
                  i32.const 0
                  call $ns1\array_search
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I29
                  get_local $ns2\num
                  i32.const 60
                  call $ns2\unexpected
                  set_local $-ret
                  br $B0
                  i32.const 1
                  set_local $-success
                end
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 61
              call $-equal
              call $-truthy
              i32.and
              if $I30
                i32.const 4
                i32.const 0
                call $-new_value
                set_local $ns2\targets
                get_local $ns2\targets
                drop
                call $ns2\save_pos
                drop
                call $ns2\read_token
                set_local $ns2\num
                get_local $ns2\num
                drop
                block $B31
                  loop $L32
                    get_local $ns2\num
                    get_local $ns2\num
                    call $ns2\is_name
                    get_local $ns2\num
                    call $ns2\is_number
                    call $-or
                    call $-and
                    call $-falsy
                    br_if $B31
                    block $B33
                      call $ns2\pop_pos
                      drop
                      call $ns2\save_pos
                      drop
                      get_local $ns2\num
                      call $ns2\is_name
                      call $-truthy
                      if $I34
                        get_local $ns2\targets
                        get_global $g10
                        get_local $ns2\num
                        i32.const 0
                        call $ns1\array_search
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      else
                        i32.const 0
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\num
                      call $ns2\is_number
                      call $-truthy
                      i32.and
                      if $I35
                        get_local $ns2\targets
                        get_local $ns2\num
                        call $ns2\token_to_number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      call $ns2\read_token
                      set_local $ns2\num
                      get_local $ns2\num
                      drop
                      i32.const 1
                      set_local $-success
                    end
                    br $L32
                  end
                end
                call $ns2\restore_pos
                drop
                get_local $ns2\code
                get_local $ns2\targets
                call $ns1\array_length
                f64.const 0x1p+0 (;=1;)
                call $-number
                call $-sub
                call $ns3\write_varuint
                drop
                i32.const 0
                set_local $-fori0
                get_local $ns2\targets
                set_local $-fora0
                get_local $-fora0
                call $-len
                i32.const 4
                i32.div_u
                set_local $-forl0
                block $B36
                  loop $L37
                    get_local $-fori0
                    get_local $-forl0
                    i32.ge_u
                    br_if $B36
                    get_local $-fora0
                    get_local $-fori0
                    call $-integer_u
                    call $-get_from_obj
                    set_local $ns2\target
                    block $B38
                      get_local $ns2\code
                      get_local $ns2\target
                      call $ns3\write_varuint
                      drop
                      i32.const 1
                      set_local $-success
                    end
                    get_local $-fori0
                    i32.const 1
                    i32.add
                    set_local $-fori0
                    br $L37
                  end
                end
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 62
              call $-equal
              call $-truthy
              i32.and
              if $I39
                call $ns2\read_token
                set_local $ns2\num
                get_local $ns2\num
                drop
                get_local $ns2\num
                call $ns2\is_number
                call $-truthy
                if $I40
                  get_local $ns2\code
                  get_local $ns2\num
                  call $ns2\token_to_number
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                get_local $ns2\num
                call $ns2\is_name
                call $-truthy
                i32.and
                if $I41
                  get_local $ns2\code
                  get_global $g7
                  i32.const 23
                  call $-get_from_obj
                  i32.const 14
                  call $-get_from_obj
                  get_local $ns2\num
                  i32.const 0
                  call $ns1\array_search
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I42
                  get_local $ns2\num
                  i32.const 63
                  call $ns2\unexpected
                  set_local $-ret
                  br $B0
                  i32.const 1
                  set_local $-success
                end
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 64
              call $-equal
              call $-truthy
              i32.and
              if $I43
                call $ns2\save_pos
                drop
                get_local $ns2\code
                i32.const 0
                call $ns2\read_func_type
                call $ns3\write_varuint
                drop
                get_local $ns2\code
                f64.const 0x0p+0 (;=0;)
                call $-number
                call $ns3\write_varuint
                drop
                call $ns2\restore_pos
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 65
              i32.const 0
              call $ns1\binary_search
              f64.const 0x1.8p+1 (;=3;)
              call $-number
              call $-equal
              call $-truthy
              i32.and
              if $I44
                call $ns2\read_token
                set_local $ns2\num
                get_local $ns2\num
                drop
                get_local $ns2\num
                call $ns2\is_number
                call $-truthy
                if $I45
                  get_local $ns2\code
                  get_local $ns2\num
                  call $ns2\token_to_number
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                get_local $ns2\num
                call $ns2\is_name
                call $-truthy
                i32.and
                if $I46
                  get_local $ns2\code
                  get_global $g9
                  get_local $ns2\num
                  i32.const 0
                  call $ns1\array_search
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I47
                  get_local $ns2\num
                  i32.const 66
                  call $ns2\unexpected
                  set_local $-ret
                  br $B0
                  i32.const 1
                  set_local $-success
                end
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 67
              i32.const 0
              call $ns1\binary_search
              f64.const 0x1.8p+1 (;=3;)
              call $-number
              call $-equal
              call $-truthy
              i32.and
              if $I48
                call $ns2\read_token
                set_local $ns2\num
                get_local $ns2\num
                drop
                get_local $ns2\num
                call $ns2\is_number
                call $-truthy
                if $I49
                  get_local $ns2\code
                  get_local $ns2\num
                  call $ns2\token_to_number
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                get_local $ns2\num
                call $ns2\is_name
                call $-truthy
                i32.and
                if $I50
                  get_local $ns2\code
                  get_global $g7
                  i32.const 23
                  call $-get_from_obj
                  i32.const 17
                  call $-get_from_obj
                  get_local $ns2\num
                  i32.const 0
                  call $ns1\array_search
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I51
                  get_local $ns2\num
                  i32.const 68
                  call $ns2\unexpected
                  set_local $-ret
                  br $B0
                  i32.const 1
                  set_local $-success
                end
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 69
              i32.const 0
              call $ns1\binary_search
              f64.const 0x1.8p+1 (;=3;)
              call $-number
              call $-equal
              get_local $ns2\token
              i32.const 70
              i32.const 0
              call $ns1\binary_search
              f64.const 0x1.8p+1 (;=3;)
              call $-number
              call $-equal
              call $-or
              call $-truthy
              i32.and
              if $I52
                get_local $ns2\num
                drop
                get_local $ns2\token
                i32.const 71
                i32.const 0
                call $ns1\binary_search
                call $-truthy
                if $I53
                  f64.const 0x1.8p+1 (;=3;)
                  call $-number
                  set_local $ns2\num
                  get_local $ns2\num
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $ns2\token
                i32.const 72
                i32.const 0
                call $ns1\binary_search
                call $-truthy
                if $I54
                  f64.const 0x1p+1 (;=2;)
                  call $-number
                  set_local $ns2\num
                  get_local $ns2\num
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $ns2\token
                i32.const 73
                i32.const 0
                call $ns1\binary_search
                call $-truthy
                if $I55
                  f64.const 0x1p+0 (;=1;)
                  call $-number
                  set_local $ns2\num
                  get_local $ns2\num
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $ns2\token
                i32.const 74
                i32.const 0
                call $ns1\binary_search
                call $-truthy
                if $I56
                  f64.const 0x0p+0 (;=0;)
                  call $-number
                  set_local $ns2\num
                  get_local $ns2\num
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $ns2\code
                get_local $ns2\num
                call $ns3\write_varuint
                drop
                get_local $ns2\code
                f64.const 0x0p+0 (;=0;)
                call $-number
                call $ns3\write_varuint
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 75
              call $-equal
              get_local $ns2\token
              i32.const 76
              call $-equal
              call $-or
              call $-truthy
              i32.and
              if $I57
                get_local $ns2\code
                f64.const 0x0p+0 (;=0;)
                call $-number
                call $ns3\write_varuint
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 77
              call $-equal
              get_local $ns2\token
              i32.const 78
              call $-equal
              call $-or
              call $-truthy
              i32.and
              if $I58
                call $ns2\read_token
                set_local $ns2\num
                get_local $ns2\num
                drop
                get_local $ns2\num
                call $ns2\is_number
                call $-truthy
                if $I59
                  get_local $ns2\code
                  get_local $ns2\code
                  call $ns1\size_of
                  get_local $ns2\num
                  call $ns3\token_to_varint
                  call $ns1\binary_write
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I60
                  get_local $ns2\num
                  i32.const 79
                  call $ns2\unexpected
                  set_local $-ret
                  br $B0
                  i32.const 1
                  set_local $-success
                end
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 80
              call $-equal
              call $-truthy
              i32.and
              if $I61
                call $ns2\read_token
                set_local $ns2\num
                get_local $ns2\num
                drop
                get_local $ns2\num
                call $ns2\is_number
                call $-truthy
                if $I62
                  get_local $ns2\code
                  get_local $ns2\code
                  call $ns1\size_of
                  get_local $ns2\num
                  call $ns2\token_to_number
                  call $ns3\number_to_f32bin
                  call $ns1\binary_write
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I63
                  get_local $ns2\num
                  i32.const 79
                  call $ns2\unexpected
                  set_local $-ret
                  br $B0
                  i32.const 1
                  set_local $-success
                end
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 81
              call $-equal
              call $-truthy
              i32.and
              if $I64
                call $ns2\read_token
                set_local $ns2\num
                get_local $ns2\num
                drop
                get_local $ns2\num
                call $ns2\is_number
                call $-truthy
                if $I65
                  get_local $ns2\code
                  get_local $ns2\code
                  call $ns1\size_of
                  get_local $ns2\num
                  call $ns2\token_to_number
                  call $ns3\number_to_f64bin
                  call $ns1\binary_write
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I66
                  get_local $ns2\num
                  i32.const 79
                  call $ns2\unexpected
                  set_local $-ret
                  br $B0
                  i32.const 1
                  set_local $-success
                end
                i32.const 1
                set_local $-success
              end
              i32.const 1
              set_local $-success
            end
            call $ns2\read_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            i32.const 1
            set_local $-success
          end
          br $L3
        end
      end
      get_local $ns2\autoend
      call $-truthy
      if $I67
        get_local $ns2\code
        get_local $ns2\code
        call $ns1\size_of
        f64.const 0x1.6p+3 (;=11;)
        call $-number
        call $ns1\binary_write
        drop
        get_global $g10
        call $ns1\array_shift
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      call $ns2\exit_parens
      drop
      get_local $ns2\bin
      get_local $ns2\bin
      call $ns1\size_of
      get_local $ns2\code
      call $ns1\binary_write
      drop
      get_local $ns2\bin
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_names (type $t5) (result i32)
    (local $ns2\token i32) (local $ns2\name i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          call $-falsy
          br_if $B1
          block $B3
            get_local $ns2\token
            i32.const 8
            call $-equal
            call $-truthy
            if $I4
              call $ns2\read_token
              set_local $ns2\token
              get_local $ns2\token
              drop
              get_local $ns2\token
              i32.const 12
              call $-equal
              call $-truthy
              if $I5
                get_global $g7
                i32.const 23
                call $-get_from_obj
                i32.const 12
                call $-get_from_obj
                call $ns2\read_name
                call $ns1\array_push
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 13
              call $-equal
              call $-truthy
              i32.and
              if $I6
                call $ns2\read_token
                drop
                call $ns2\read_token
                drop
                call $ns2\read_names
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 15
              call $-equal
              call $-truthy
              i32.and
              if $I7
                get_global $g7
                i32.const 23
                call $-get_from_obj
                i32.const 15
                call $-get_from_obj
                call $ns2\read_name
                call $ns1\array_push
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 16
              call $-equal
              call $-truthy
              i32.and
              if $I8
                get_global $g7
                i32.const 23
                call $-get_from_obj
                i32.const 16
                call $-get_from_obj
                call $ns2\read_name
                call $ns1\array_push
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 82
              call $-equal
              call $-truthy
              i32.and
              if $I9
                i32.const 4
                i32.const 0
                call $-new_value
                set_global $g9
                get_global $g9
                drop
                get_global $g7
                i32.const 23
                call $-get_from_obj
                i32.const 24
                call $-get_from_obj
                get_global $g9
                call $ns1\array_push
                drop
                call $ns2\read_token
                set_local $ns2\name
                get_local $ns2\name
                drop
                get_local $ns2\name
                call $ns2\is_name
                call $-truthy
                if $I10
                  get_global $g7
                  i32.const 23
                  call $-get_from_obj
                  i32.const 14
                  call $-get_from_obj
                  get_local $ns2\name
                  call $ns1\array_push
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I11
                  get_global $g7
                  i32.const 23
                  call $-get_from_obj
                  i32.const 14
                  call $-get_from_obj
                  i32.const 0
                  call $ns1\array_push
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $ns2\name
                i32.const 8
                call $-equal
                call $-truthy
                if $I12
                  call $ns2\backstep
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                call $ns2\read_names
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 17
              call $-equal
              call $-truthy
              i32.and
              if $I13
                get_global $g7
                i32.const 23
                call $-get_from_obj
                i32.const 17
                call $-get_from_obj
                call $ns2\read_name
                call $ns1\array_push
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 83
              call $-equal
              call $-truthy
              i32.and
              if $I14
                get_global $g9
                call $ns2\read_name
                call $ns1\array_push
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 84
              call $-equal
              call $-truthy
              i32.and
              if $I15
                get_global $g9
                call $ns2\read_name
                call $ns1\array_push
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I16
                call $ns2\exit_parens
                drop
                i32.const 1
                set_local $-success
              end
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            call $ns2\read_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      call $ns2\exit_parens
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_name (type $t5) (result i32)
    (local $ns2\token i32) (local $ns2\name i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      get_local $ns2\token
      call $ns2\is_name
      call $-truthy
      if $I1
        get_local $ns2\token
        set_local $ns2\name
        get_local $ns2\name
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\token
      i32.const 8
      call $-equal
      call $-truthy
      if $I2
        call $ns2\exit_parens
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      call $ns2\exit_parens
      drop
      get_local $ns2\name
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_module (type $t5) (result i32)
    (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          call $-falsy
          br_if $B1
          block $B3
            get_local $ns2\token
            i32.const 8
            call $-equal
            call $-truthy
            if $I4
              call $ns2\read_token
              set_local $ns2\token
              get_local $ns2\token
              drop
              get_local $ns2\token
              i32.const 12
              call $-equal
              call $-truthy
              if $I5
                call $ns2\read_type
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 13
              call $-equal
              call $-truthy
              i32.and
              if $I6
                call $ns2\read_import
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 15
              call $-equal
              call $-truthy
              i32.and
              if $I7
                i32.const 5
                call $ns2\read_table_type
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 16
              call $-equal
              call $-truthy
              i32.and
              if $I8
                i32.const 5
                call $ns2\read_memory_type
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 82
              call $-equal
              call $-truthy
              i32.and
              if $I9
                i32.const 5
                call $ns2\read_func_type
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 17
              call $-equal
              call $-truthy
              i32.and
              if $I10
                i32.const 5
                call $ns2\read_global_type
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 18
              call $-equal
              call $-truthy
              i32.and
              if $I11
                i32.const 5
                call $ns2\read_export
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 19
              call $-equal
              call $-truthy
              i32.and
              if $I12
                i32.const 5
                call $ns2\read_start
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 85
              call $-equal
              call $-truthy
              i32.and
              if $I13
                i32.const 5
                call $ns2\read_element
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 22
              call $-equal
              call $-truthy
              i32.and
              if $I14
                i32.const 5
                call $ns2\read_data
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I15
                get_local $ns2\token
                i32.const 86
                call $ns2\unexpected
                set_local $-ret
                br $B0
                call $ns2\exit_parens
                drop
                i32.const 1
                set_local $-success
              end
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $-success
            i32.eqz
            if $I16
              get_local $ns2\token
              i32.const 9
              call $ns2\unexpected
              set_local $-ret
              br $B0
              i32.const 1
              set_local $-success
            end
            call $ns2\read_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      call $ns2\exit_parens
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_type (type $t5) (result i32)
    (local $ns2\type i32) (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_local $ns2\type
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      get_local $ns2\token
      call $ns2\is_name
      call $-truthy
      if $I1
        call $ns2\read_token
        set_local $ns2\token
        get_local $ns2\token
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\token
      i32.const 8
      call $-equal
      call $-truthy
      if $I2
        call $ns2\read_token
        set_local $ns2\token
        get_local $ns2\token
        drop
        get_local $ns2\token
        i32.const 82
        call $-equal
        call $-truthy
        if $I3
          i32.const 0
          call $ns2\read_func_type
          set_local $ns2\type
          get_local $ns2\type
          drop
          i32.const 1
          set_local $-success
        else
          i32.const 0
          set_local $-success
        end
        get_local $-success
        i32.eqz
        if $I4
          get_local $ns2\token
          i32.const 87
          call $ns2\unexpected
          set_local $-ret
          br $B0
          i32.const 1
          set_local $-success
        end
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $-success
      i32.eqz
      if $I5
        get_local $ns2\token
        i32.const 9
        call $ns2\unexpected
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      end
      call $ns2\exit_parens
      drop
      get_local $ns2\type
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_import (type $t5) (result i32)
    (local $ns2\_import i32) (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 5
      i32.const 0
      call $-new_value
      set_local $ns2\_import
      get_local $ns2\_import
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          call $-falsy
          br_if $B1
          block $B3
            get_local $ns2\token
            call $ns2\is_string
            call $-truthy
            if $I4
              get_local $ns2\_import
              i32.const 10
              i32.const 3
              get_local $ns2\token
              f64.const 0x1p+0 (;=1;)
              call $-number
              get_local $ns2\token
              call $ns1\size_of
              call $ns1\binary_slice
              call $-add
              call $-set_to_obj
              get_local $ns2\_import
              i32.const 10
              call $-get_from_obj
              drop
              call $ns2\read_token
              set_local $ns2\token
              get_local $ns2\token
              drop
              get_local $ns2\token
              call $ns2\is_string
              call $-truthy
              if $I5
                get_local $ns2\_import
                i32.const 88
                i32.const 3
                get_local $ns2\token
                f64.const 0x1p+0 (;=1;)
                call $-number
                get_local $ns2\token
                call $ns1\size_of
                call $ns1\binary_slice
                call $-add
                call $-set_to_obj
                get_local $ns2\_import
                i32.const 88
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I6
                get_local $ns2\token
                i32.const 89
                call $ns2\unexpected
                set_local $-ret
                br $B0
                i32.const 1
                set_local $-success
              end
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 8
            call $-equal
            call $-truthy
            i32.and
            if $I7
              call $ns2\read_token
              set_local $ns2\token
              get_local $ns2\token
              drop
              get_local $ns2\token
              i32.const 82
              call $-equal
              call $-truthy
              if $I8
                get_local $ns2\_import
                i32.const 90
                f64.const 0x0p+0 (;=0;)
                call $-number
                call $-set_to_obj
                get_local $ns2\_import
                i32.const 90
                call $-get_from_obj
                drop
                get_local $ns2\_import
                i32.const 12
                i32.const 0
                call $ns2\read_func_type
                call $-set_to_obj
                get_local $ns2\_import
                i32.const 12
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 15
              call $-equal
              call $-truthy
              i32.and
              if $I9
                get_local $ns2\_import
                i32.const 90
                f64.const 0x1p+0 (;=1;)
                call $-number
                call $-set_to_obj
                get_local $ns2\_import
                i32.const 90
                call $-get_from_obj
                drop
                get_local $ns2\_import
                i32.const 12
                i32.const 0
                call $ns2\read_table_type
                call $-set_to_obj
                get_local $ns2\_import
                i32.const 12
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 16
              call $-equal
              call $-truthy
              i32.and
              if $I10
                get_local $ns2\_import
                i32.const 90
                f64.const 0x1p+1 (;=2;)
                call $-number
                call $-set_to_obj
                get_local $ns2\_import
                i32.const 90
                call $-get_from_obj
                drop
                get_local $ns2\_import
                i32.const 12
                i32.const 0
                call $ns2\read_memory_type
                call $-set_to_obj
                get_local $ns2\_import
                i32.const 12
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 17
              call $-equal
              call $-truthy
              i32.and
              if $I11
                get_local $ns2\_import
                i32.const 90
                f64.const 0x1.8p+1 (;=3;)
                call $-number
                call $-set_to_obj
                get_local $ns2\_import
                i32.const 90
                call $-get_from_obj
                drop
                get_local $ns2\_import
                i32.const 12
                i32.const 0
                call $ns2\read_global_type
                call $-set_to_obj
                get_local $ns2\_import
                i32.const 12
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I12
                get_local $ns2\token
                i32.const 91
                call $ns2\unexpected
                set_local $-ret
                br $B0
                i32.const 1
                set_local $-success
              end
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            if $I13
              get_local $ns2\token
              i32.const 0
              call $ns2\unexpected
              set_local $-ret
              br $B0
              i32.const 1
              set_local $-success
            end
            call $ns2\read_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      call $ns2\exit_parens
      drop
      get_global $g7
      i32.const 13
      call $-get_from_obj
      get_local $ns2\_import
      call $ns1\array_push
      drop
      get_local $ns2\_import
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_table_type (type $t4) (param $ns2\save i32) (result i32)
    (local $ns2\type i32) (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 5
      i32.const 0
      call $-new_value
      set_local $ns2\type
      get_local $ns2\type
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          call $-falsy
          br_if $B1
          block $B3
            get_local $ns2\token
            call $ns2\is_number
            call $-truthy
            if $I4
              get_local $ns2\type
              i32.const 92
              call $-get_from_obj
              i32.const 0
              call $-equal
              call $-truthy
              if $I5
                get_local $ns2\type
                i32.const 92
                get_local $ns2\token
                call $ns2\token_to_number
                call $-set_to_obj
                get_local $ns2\type
                i32.const 92
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I6
                get_local $ns2\type
                i32.const 93
                get_local $ns2\token
                call $ns2\token_to_number
                call $-set_to_obj
                get_local $ns2\type
                i32.const 93
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              end
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            call $ns2\is_name
            call $-truthy
            i32.and
            if $I7
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 52
            call $-equal
            call $-truthy
            i32.and
            if $I8
              get_local $ns2\type
              i32.const 94
              f64.const 0x1.fcp+6 (;=127;)
              call $-number
              call $-set_to_obj
              get_local $ns2\type
              i32.const 94
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 53
            call $-equal
            call $-truthy
            i32.and
            if $I9
              get_local $ns2\type
              i32.const 94
              f64.const 0x1.f8p+6 (;=126;)
              call $-number
              call $-set_to_obj
              get_local $ns2\type
              i32.const 94
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 54
            call $-equal
            call $-truthy
            i32.and
            if $I10
              get_local $ns2\type
              i32.const 94
              f64.const 0x1.f4p+6 (;=125;)
              call $-number
              call $-set_to_obj
              get_local $ns2\type
              i32.const 94
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 55
            call $-equal
            call $-truthy
            i32.and
            if $I11
              get_local $ns2\type
              i32.const 94
              f64.const 0x1.fp+6 (;=124;)
              call $-number
              call $-set_to_obj
              get_local $ns2\type
              i32.const 94
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 95
            call $-equal
            call $-truthy
            i32.and
            if $I12
              get_local $ns2\type
              i32.const 94
              f64.const 0x1.cp+6 (;=112;)
              call $-number
              call $-set_to_obj
              get_local $ns2\type
              i32.const 94
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 82
            call $-equal
            call $-truthy
            i32.and
            if $I13
              get_local $ns2\type
              i32.const 94
              f64.const 0x1.8p+6 (;=96;)
              call $-number
              call $-set_to_obj
              get_local $ns2\type
              i32.const 94
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            if $I14
              get_local $ns2\token
              i32.const 0
              call $ns2\unexpected
              set_local $-ret
              br $B0
              i32.const 1
              set_local $-success
            end
            call $ns2\read_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      call $ns2\exit_parens
      drop
      get_local $ns2\save
      call $-truthy
      if $I15
        get_global $g7
        i32.const 15
        call $-get_from_obj
        get_local $ns2\type
        call $ns1\array_push
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\type
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_memory_type (type $t4) (param $ns2\save i32) (result i32)
    (local $ns2\type i32) (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 5
      i32.const 0
      call $-new_value
      set_local $ns2\type
      get_local $ns2\type
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          call $-falsy
          br_if $B1
          block $B3
            get_local $ns2\token
            call $ns2\is_number
            call $-truthy
            if $I4
              get_local $ns2\type
              i32.const 92
              call $-get_from_obj
              i32.const 0
              call $-equal
              call $-truthy
              if $I5
                get_local $ns2\type
                i32.const 92
                get_local $ns2\token
                call $ns2\token_to_number
                call $-set_to_obj
                get_local $ns2\type
                i32.const 92
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\type
              i32.const 93
              call $-get_from_obj
              i32.const 0
              call $-equal
              call $-truthy
              i32.and
              if $I6
                get_local $ns2\type
                i32.const 93
                get_local $ns2\token
                call $ns2\token_to_number
                call $-set_to_obj
                get_local $ns2\type
                i32.const 93
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I7
                get_local $ns2\token
                i32.const 0
                call $ns2\unexpected
                set_local $-ret
                br $B0
                i32.const 1
                set_local $-success
              end
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            call $ns2\is_name
            call $-truthy
            i32.and
            if $I8
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            if $I9
              get_local $ns2\token
              i32.const 0
              call $ns2\unexpected
              set_local $-ret
              br $B0
              i32.const 1
              set_local $-success
            end
            call $ns2\read_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      call $ns2\exit_parens
      drop
      get_local $ns2\save
      call $-truthy
      if $I10
        get_global $g7
        i32.const 16
        call $-get_from_obj
        get_local $ns2\type
        call $ns1\array_push
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\type
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_global_type (type $t4) (param $ns2\save i32) (result i32)
    (local $ns2\type i32) (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 5
      i32.const 0
      call $-new_value
      set_local $ns2\type
      get_local $ns2\type
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          call $-falsy
          br_if $B1
          block $B3
            get_local $ns2\token
            i32.const 8
            call $-equal
            call $-truthy
            if $I4
              get_local $ns2\type
              i32.const 96
              call $-get_from_obj
              call $-truthy
              if $I5
                get_local $ns2\type
                i32.const 97
                i32.const 6
                i32.const 0
                call $-new_value
                i32.const 0
                call $ns2\translate_code
                call $-set_to_obj
                get_local $ns2\type
                i32.const 97
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I6
                get_local $ns2\type
                i32.const 0
                call $ns2\read_global_type
                call $-add
                set_local $ns2\type
                get_local $ns2\type
                drop
                i32.const 1
                set_local $-success
              end
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            call $ns2\is_name
            call $-truthy
            i32.and
            if $I7
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 98
            call $-equal
            call $-truthy
            i32.and
            if $I8
              get_local $ns2\type
              i32.const 99
              f64.const 0x1p+0 (;=1;)
              call $-number
              call $-set_to_obj
              get_local $ns2\type
              i32.const 99
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 52
            call $-equal
            call $-truthy
            i32.and
            if $I9
              get_local $ns2\type
              i32.const 96
              f64.const 0x1.fcp+6 (;=127;)
              call $-number
              call $-set_to_obj
              get_local $ns2\type
              i32.const 96
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 53
            call $-equal
            call $-truthy
            i32.and
            if $I10
              get_local $ns2\type
              i32.const 96
              f64.const 0x1.f8p+6 (;=126;)
              call $-number
              call $-set_to_obj
              get_local $ns2\type
              i32.const 96
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 54
            call $-equal
            call $-truthy
            i32.and
            if $I11
              get_local $ns2\type
              i32.const 96
              f64.const 0x1.f4p+6 (;=125;)
              call $-number
              call $-set_to_obj
              get_local $ns2\type
              i32.const 96
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 55
            call $-equal
            call $-truthy
            i32.and
            if $I12
              get_local $ns2\type
              i32.const 96
              f64.const 0x1.fp+6 (;=124;)
              call $-number
              call $-set_to_obj
              get_local $ns2\type
              i32.const 96
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            if $I13
              get_local $ns2\token
              i32.const 0
              call $ns2\unexpected
              set_local $-ret
              br $B0
              i32.const 1
              set_local $-success
            end
            call $ns2\read_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      call $ns2\exit_parens
      drop
      get_local $ns2\save
      call $-truthy
      if $I14
        get_global $g7
        i32.const 17
        call $-get_from_obj
        get_local $ns2\type
        call $ns1\array_push
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\type
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_func_type (type $t4) (param $ns2\save i32) (result i32)
    (local $ns2\type i32) (local $-obj0 i32) (local $ns2\function i32) (local $-obj1 i32) (local $ns2\token i32) (local $ns2\type_index i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 5
      i32.const 0
      call $-new_value
      tee_local $-obj0
      get_local $-obj0
      i32.const 100
      f64.const 0x1.8p+6 (;=96;)
      call $-number
      call $-set_to_obj
      get_local $-obj0
      i32.const 100
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 101
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 101
      call $-get_from_obj
      drop
      get_local $-obj0
      i32.const 102
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 102
      call $-get_from_obj
      drop
      set_local $ns2\type
      get_local $ns2\type
      drop
      i32.const 4
      i32.const 0
      call $-new_value
      set_global $g9
      get_global $g9
      drop
      i32.const 4
      i32.const 0
      call $-new_value
      set_global $g10
      get_global $g10
      drop
      i32.const 5
      i32.const 0
      call $-new_value
      tee_local $-obj1
      get_local $-obj1
      i32.const 24
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj1
      i32.const 24
      call $-get_from_obj
      drop
      get_local $-obj1
      i32.const 103
      get_global $g9
      call $-set_to_obj
      get_local $-obj1
      i32.const 103
      call $-get_from_obj
      drop
      get_local $-obj1
      i32.const 21
      i32.const 6
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj1
      i32.const 21
      call $-get_from_obj
      drop
      set_local $ns2\function
      get_local $ns2\function
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          call $-falsy
          br_if $B1
          block $B3
            get_local $ns2\token
            call $ns2\is_name
            call $-truthy
            if $I4
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 8
            call $-equal
            call $-truthy
            i32.and
            if $I5
              call $ns2\read_token
              set_local $ns2\token
              get_local $ns2\token
              drop
              get_local $ns2\token
              i32.const 12
              call $-equal
              call $-truthy
              if $I6
                call $ns2\read_token
                set_local $ns2\token
                get_local $ns2\token
                drop
                get_local $ns2\token
                call $ns2\is_name
                call $-truthy
                if $I7
                  get_global $g7
                  i32.const 23
                  call $-get_from_obj
                  i32.const 12
                  call $-get_from_obj
                  get_local $ns2\token
                  i32.const 0
                  call $ns1\array_search
                  set_local $ns2\type_index
                  get_local $ns2\type_index
                  drop
                  i32.const 1
                  set_local $-success
                else
                  i32.const 0
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                get_local $ns2\token
                call $ns2\is_number
                call $-truthy
                i32.and
                if $I8
                  i32.const 0
                  call $ns2\token_to_number
                  set_local $ns2\type_index
                  get_local $ns2\type_index
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-success
                i32.eqz
                if $I9
                  get_local $ns2\token
                  i32.const 104
                  call $ns2\unexpected
                  set_local $-ret
                  br $B0
                  i32.const 1
                  set_local $-success
                end
                call $ns2\exit_parens
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 83
              call $-equal
              call $-truthy
              i32.and
              if $I10
                block $B11
                  loop $L12
                    get_local $ns2\token
                    call $-falsy
                    br_if $B11
                    block $B13
                      get_local $ns2\token
                      call $ns2\is_name
                      call $-truthy
                      if $I14
                        get_local $ns2\function
                        i32.const 103
                        call $-get_from_obj
                        get_local $ns2\token
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      else
                        i32.const 0
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\token
                      i32.const 52
                      call $-equal
                      call $-truthy
                      i32.and
                      if $I15
                        get_local $ns2\type
                        i32.const 101
                        call $-get_from_obj
                        f64.const 0x1.fcp+6 (;=127;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\token
                      i32.const 53
                      call $-equal
                      call $-truthy
                      i32.and
                      if $I16
                        get_local $ns2\type
                        i32.const 101
                        call $-get_from_obj
                        f64.const 0x1.f8p+6 (;=126;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\token
                      i32.const 54
                      call $-equal
                      call $-truthy
                      i32.and
                      if $I17
                        get_local $ns2\type
                        i32.const 101
                        call $-get_from_obj
                        f64.const 0x1.f4p+6 (;=125;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\token
                      i32.const 55
                      call $-equal
                      call $-truthy
                      i32.and
                      if $I18
                        get_local $ns2\type
                        i32.const 101
                        call $-get_from_obj
                        f64.const 0x1.fp+6 (;=124;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      call $ns2\read_token
                      set_local $ns2\token
                      get_local $ns2\token
                      drop
                      i32.const 1
                      set_local $-success
                    end
                    br $L12
                  end
                end
                call $ns2\exit_parens
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 84
              call $-equal
              call $-truthy
              i32.and
              if $I19
                block $B20
                  loop $L21
                    get_local $ns2\token
                    call $-falsy
                    br_if $B20
                    block $B22
                      get_local $ns2\token
                      call $ns2\is_name
                      call $-truthy
                      if $I23
                        get_local $ns2\function
                        i32.const 103
                        call $-get_from_obj
                        get_local $ns2\token
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      else
                        i32.const 0
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\token
                      i32.const 52
                      call $-equal
                      call $-truthy
                      i32.and
                      if $I24
                        get_local $ns2\function
                        i32.const 24
                        call $-get_from_obj
                        f64.const 0x1.fcp+6 (;=127;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\token
                      i32.const 53
                      call $-equal
                      call $-truthy
                      i32.and
                      if $I25
                        get_local $ns2\function
                        i32.const 24
                        call $-get_from_obj
                        f64.const 0x1.f8p+6 (;=126;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\token
                      i32.const 54
                      call $-equal
                      call $-truthy
                      i32.and
                      if $I26
                        get_local $ns2\function
                        i32.const 24
                        call $-get_from_obj
                        f64.const 0x1.f4p+6 (;=125;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\token
                      i32.const 55
                      call $-equal
                      call $-truthy
                      i32.and
                      if $I27
                        get_local $ns2\function
                        i32.const 24
                        call $-get_from_obj
                        f64.const 0x1.fp+6 (;=124;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      call $ns2\read_token
                      set_local $ns2\token
                      get_local $ns2\token
                      drop
                      i32.const 1
                      set_local $-success
                    end
                    br $L21
                  end
                end
                call $ns2\exit_parens
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              get_local $ns2\token
              i32.const 51
              call $-equal
              call $-truthy
              i32.and
              if $I28
                block $B29
                  loop $L30
                    get_local $ns2\token
                    call $-falsy
                    br_if $B29
                    block $B31
                      get_local $ns2\token
                      i32.const 52
                      call $-equal
                      call $-truthy
                      if $I32
                        get_local $ns2\type
                        i32.const 102
                        call $-get_from_obj
                        f64.const 0x1.fcp+6 (;=127;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      else
                        i32.const 0
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\token
                      i32.const 53
                      call $-equal
                      call $-truthy
                      i32.and
                      if $I33
                        get_local $ns2\type
                        i32.const 102
                        call $-get_from_obj
                        f64.const 0x1.f8p+6 (;=126;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\token
                      i32.const 54
                      call $-equal
                      call $-truthy
                      i32.and
                      if $I34
                        get_local $ns2\type
                        i32.const 102
                        call $-get_from_obj
                        f64.const 0x1.f4p+6 (;=125;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      get_local $-success
                      i32.eqz
                      get_local $ns2\token
                      i32.const 55
                      call $-equal
                      call $-truthy
                      i32.and
                      if $I35
                        get_local $ns2\type
                        i32.const 102
                        call $-get_from_obj
                        f64.const 0x1.fp+6 (;=124;)
                        call $-number
                        call $ns1\array_push
                        drop
                        i32.const 1
                        set_local $-success
                      end
                      call $ns2\read_token
                      set_local $ns2\token
                      get_local $ns2\token
                      drop
                      i32.const 1
                      set_local $-success
                    end
                    br $L30
                  end
                end
                call $ns2\exit_parens
                drop
                i32.const 1
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I36
                get_local $ns2\function
                i32.const 21
                call $-get_from_obj
                get_local $ns2\token
                call $ns2\translate_code
                drop
                i32.const 1
                set_local $-success
              end
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            if $I37
              get_local $ns2\function
              i32.const 21
              call $-get_from_obj
              get_local $ns2\token
              call $ns2\translate_code
              drop
              call $ns2\backstep
              drop
              i32.const 1
              set_local $-success
            end
            call $ns2\read_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      call $ns2\exit_parens
      drop
      get_local $ns2\type_index
      i32.const 0
      call $-equal
      call $-truthy
      if $I38
        get_local $ns2\type
        call $ns1\json_encode
        set_local $ns2\type
        get_local $ns2\type
        drop
        get_global $g7
        i32.const 12
        call $-get_from_obj
        get_local $ns2\type
        i32.const 0
        call $ns1\array_search
        set_local $ns2\type_index
        get_local $ns2\type_index
        drop
        get_local $ns2\type_index
        i32.const 0
        call $-equal
        call $-truthy
        if $I39
          get_global $g7
          i32.const 12
          call $-get_from_obj
          call $ns1\array_length
          set_local $ns2\type_index
          get_local $ns2\type_index
          drop
          get_global $g7
          i32.const 12
          call $-get_from_obj
          get_local $ns2\type
          call $ns1\array_push
          drop
          i32.const 1
          set_local $-success
        else
          i32.const 0
          set_local $-success
        end
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\save
      call $-truthy
      if $I40
        get_global $g7
        i32.const 14
        call $-get_from_obj
        get_local $ns2\type_index
        call $ns1\array_push
        drop
        get_global $g7
        i32.const 21
        call $-get_from_obj
        get_local $ns2\function
        call $ns1\array_push
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\type_index
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_export (type $t4) (param $ns2\save i32) (result i32)
    (local $ns2\xport i32) (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 5
      i32.const 0
      call $-new_value
      set_local $ns2\xport
      get_local $ns2\xport
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      get_local $ns2\token
      call $ns2\is_string
      call $-truthy
      if $I1
        get_local $ns2\xport
        i32.const 88
        get_local $ns2\token
        f64.const 0x1p+0 (;=1;)
        call $-number
        get_local $ns2\token
        call $ns1\size_of
        call $ns1\binary_slice
        call $-set_to_obj
        get_local $ns2\xport
        i32.const 88
        call $-get_from_obj
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $-success
      i32.eqz
      if $I2
        get_local $ns2\token
        i32.const 89
        call $ns2\unexpected
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      end
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      get_local $ns2\token
      i32.const 8
      call $-equal
      call $-truthy
      if $I3
        call $ns2\read_token
        set_local $ns2\token
        get_local $ns2\token
        drop
        get_local $ns2\token
        i32.const 82
        call $-equal
        call $-truthy
        if $I4
          get_local $ns2\xport
          i32.const 90
          f64.const 0x0p+0 (;=0;)
          call $-number
          call $-set_to_obj
          get_local $ns2\xport
          i32.const 90
          call $-get_from_obj
          drop
          call $ns2\read_token
          set_local $ns2\token
          get_local $ns2\token
          drop
          get_local $ns2\token
          call $ns2\is_number
          call $-truthy
          if $I5
            get_local $ns2\xport
            i32.const 105
            get_local $ns2\token
            call $ns2\token_to_number
            call $-set_to_obj
            get_local $ns2\xport
            i32.const 105
            call $-get_from_obj
            drop
            i32.const 1
            set_local $-success
          else
            i32.const 0
            set_local $-success
          end
          get_local $-success
          i32.eqz
          get_local $ns2\token
          call $ns2\is_name
          call $-truthy
          i32.and
          if $I6
            get_local $ns2\xport
            i32.const 105
            get_global $g7
            i32.const 23
            call $-get_from_obj
            i32.const 14
            call $-get_from_obj
            get_local $ns2\token
            i32.const 0
            call $ns1\array_search
            call $-set_to_obj
            get_local $ns2\xport
            i32.const 105
            call $-get_from_obj
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-success
          i32.eqz
          if $I7
            get_local $ns2\token
            i32.const 106
            call $ns2\unexpected
            set_local $-ret
            br $B0
            i32.const 1
            set_local $-success
          end
          call $ns2\exit_parens
          drop
          i32.const 1
          set_local $-success
        else
          i32.const 0
          set_local $-success
        end
        get_local $-success
        i32.eqz
        get_local $ns2\token
        i32.const 15
        call $-equal
        call $-truthy
        i32.and
        if $I8
          get_local $ns2\xport
          i32.const 90
          f64.const 0x1p+0 (;=1;)
          call $-number
          call $-set_to_obj
          get_local $ns2\xport
          i32.const 90
          call $-get_from_obj
          drop
          call $ns2\read_token
          set_local $ns2\token
          get_local $ns2\token
          drop
          get_local $ns2\token
          call $ns2\is_number
          call $-truthy
          if $I9
            get_local $ns2\xport
            i32.const 105
            get_local $ns2\token
            call $ns2\token_to_number
            call $-set_to_obj
            get_local $ns2\xport
            i32.const 105
            call $-get_from_obj
            drop
            i32.const 1
            set_local $-success
          else
            i32.const 0
            set_local $-success
          end
          get_local $-success
          i32.eqz
          get_local $ns2\token
          call $ns2\is_name
          call $-truthy
          i32.and
          if $I10
            get_local $ns2\xport
            i32.const 105
            get_global $g7
            i32.const 23
            call $-get_from_obj
            i32.const 15
            call $-get_from_obj
            get_local $ns2\token
            i32.const 0
            call $ns1\array_search
            call $-set_to_obj
            get_local $ns2\xport
            i32.const 105
            call $-get_from_obj
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-success
          i32.eqz
          if $I11
            get_local $ns2\token
            i32.const 106
            call $ns2\unexpected
            set_local $-ret
            br $B0
            i32.const 1
            set_local $-success
          end
          call $ns2\exit_parens
          drop
          i32.const 1
          set_local $-success
        end
        get_local $-success
        i32.eqz
        get_local $ns2\token
        i32.const 16
        call $-equal
        call $-truthy
        i32.and
        if $I12
          get_local $ns2\xport
          i32.const 90
          f64.const 0x1p+1 (;=2;)
          call $-number
          call $-set_to_obj
          get_local $ns2\xport
          i32.const 90
          call $-get_from_obj
          drop
          call $ns2\read_token
          set_local $ns2\token
          get_local $ns2\token
          drop
          get_local $ns2\token
          call $ns2\is_number
          call $-truthy
          if $I13
            get_local $ns2\xport
            i32.const 105
            get_local $ns2\token
            call $ns2\token_to_number
            call $-set_to_obj
            get_local $ns2\xport
            i32.const 105
            call $-get_from_obj
            drop
            i32.const 1
            set_local $-success
          else
            i32.const 0
            set_local $-success
          end
          get_local $-success
          i32.eqz
          get_local $ns2\token
          call $ns2\is_name
          call $-truthy
          i32.and
          if $I14
            get_local $ns2\xport
            i32.const 105
            get_global $g7
            i32.const 23
            call $-get_from_obj
            i32.const 16
            call $-get_from_obj
            get_local $ns2\token
            i32.const 0
            call $ns1\array_search
            call $-set_to_obj
            get_local $ns2\xport
            i32.const 105
            call $-get_from_obj
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-success
          i32.eqz
          if $I15
            get_local $ns2\token
            i32.const 106
            call $ns2\unexpected
            set_local $-ret
            br $B0
            i32.const 1
            set_local $-success
          end
          call $ns2\exit_parens
          drop
          i32.const 1
          set_local $-success
        end
        get_local $-success
        i32.eqz
        get_local $ns2\token
        i32.const 17
        call $-equal
        call $-truthy
        i32.and
        if $I16
          get_local $ns2\xport
          i32.const 90
          f64.const 0x1.8p+1 (;=3;)
          call $-number
          call $-set_to_obj
          get_local $ns2\xport
          i32.const 90
          call $-get_from_obj
          drop
          call $ns2\read_token
          set_local $ns2\token
          get_local $ns2\token
          drop
          get_local $ns2\token
          call $ns2\is_number
          call $-truthy
          if $I17
            get_local $ns2\xport
            i32.const 105
            get_local $ns2\token
            call $ns2\token_to_number
            call $-set_to_obj
            get_local $ns2\xport
            i32.const 105
            call $-get_from_obj
            drop
            i32.const 1
            set_local $-success
          else
            i32.const 0
            set_local $-success
          end
          get_local $-success
          i32.eqz
          get_local $ns2\token
          call $ns2\is_name
          call $-truthy
          i32.and
          if $I18
            get_local $ns2\xport
            i32.const 105
            get_global $g7
            i32.const 23
            call $-get_from_obj
            i32.const 17
            call $-get_from_obj
            get_local $ns2\token
            i32.const 0
            call $ns1\array_search
            call $-set_to_obj
            get_local $ns2\xport
            i32.const 105
            call $-get_from_obj
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-success
          i32.eqz
          if $I19
            get_local $ns2\token
            i32.const 106
            call $ns2\unexpected
            set_local $-ret
            br $B0
            i32.const 1
            set_local $-success
          end
          call $ns2\exit_parens
          drop
          i32.const 1
          set_local $-success
        end
        get_local $-success
        i32.eqz
        if $I20
          get_local $ns2\token
          i32.const 90
          call $ns2\unexpected
          set_local $-ret
          br $B0
          i32.const 1
          set_local $-success
        end
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $-success
      i32.eqz
      if $I21
        get_local $ns2\token
        i32.const 9
        call $ns2\unexpected
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      end
      get_local $ns2\save
      call $-truthy
      if $I22
        get_global $g7
        i32.const 18
        call $-get_from_obj
        get_local $ns2\xport
        call $ns1\array_push
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      call $ns2\exit_parens
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_start (type $t4) (param $ns2\save i32) (result i32)
    (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      get_local $ns2\token
      call $ns2\is_number
      call $-truthy
      if $I1
        get_global $g7
        i32.const 19
        get_local $ns2\token
        call $ns2\token_to_number
        call $-set_to_obj
        get_global $g7
        i32.const 19
        call $-get_from_obj
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $-success
      i32.eqz
      get_local $ns2\token
      call $ns2\is_name
      call $-truthy
      i32.and
      if $I2
        get_global $g7
        i32.const 19
        get_global $g7
        i32.const 23
        call $-get_from_obj
        i32.const 14
        call $-get_from_obj
        get_local $ns2\token
        i32.const 0
        call $ns1\array_search
        call $-set_to_obj
        get_global $g7
        i32.const 19
        call $-get_from_obj
        drop
        i32.const 1
        set_local $-success
      end
      get_local $-success
      i32.eqz
      if $I3
        get_local $ns2\token
        i32.const 107
        call $ns2\unexpected
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      end
      call $ns2\exit_parens
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_element (type $t4) (param $ns2\save i32) (result i32)
    (local $ns2\elem i32) (local $-obj0 i32) (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 5
      i32.const 0
      call $-new_value
      tee_local $-obj0
      get_local $-obj0
      i32.const 108
      i32.const 4
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj0
      i32.const 108
      call $-get_from_obj
      drop
      set_local $ns2\elem
      get_local $ns2\elem
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          call $-falsy
          br_if $B1
          block $B3
            get_local $ns2\token
            call $ns2\is_number
            call $-truthy
            if $I4
              get_local $ns2\elem
              i32.const 105
              call $-get_from_obj
              i32.const 0
              call $-equal
              call $-truthy
              if $I5
                get_local $ns2\elem
                i32.const 105
                get_local $ns2\token
                call $ns2\token_to_number
                call $-set_to_obj
                get_local $ns2\elem
                i32.const 105
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I6
                get_local $ns2\elem
                i32.const 108
                call $-get_from_obj
                get_local $ns2\token
                call $ns2\token_to_number
                call $ns1\array_push
                drop
                i32.const 1
                set_local $-success
              end
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            call $ns2\is_name
            call $-truthy
            i32.and
            if $I7
              get_local $ns2\elem
              i32.const 105
              call $-get_from_obj
              i32.const 0
              call $-equal
              call $-truthy
              if $I8
                get_local $ns2\elem
                i32.const 105
                get_global $g7
                i32.const 23
                call $-get_from_obj
                i32.const 15
                call $-get_from_obj
                get_local $ns2\token
                i32.const 0
                call $ns1\array_search
                call $-set_to_obj
                get_local $ns2\elem
                i32.const 105
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $-success
              i32.eqz
              if $I9
                get_local $ns2\elem
                i32.const 108
                call $-get_from_obj
                get_global $g7
                i32.const 23
                call $-get_from_obj
                i32.const 14
                call $-get_from_obj
                get_local $ns2\token
                i32.const 0
                call $ns1\array_search
                call $ns1\array_push
                drop
                i32.const 1
                set_local $-success
              end
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 8
            call $-equal
            call $-truthy
            i32.and
            if $I10
              get_local $ns2\elem
              i32.const 105
              call $-get_from_obj
              i32.const 0
              call $-equal
              call $-truthy
              if $I11
                get_local $ns2\elem
                i32.const 105
                f64.const 0x0p+0 (;=0;)
                call $-number
                call $-set_to_obj
                get_local $ns2\elem
                i32.const 105
                call $-get_from_obj
                drop
                i32.const 1
                set_local $-success
              else
                i32.const 0
                set_local $-success
              end
              get_local $ns2\elem
              i32.const 109
              i32.const 6
              i32.const 0
              call $-new_value
              i32.const 0
              call $ns2\translate_code
              call $-set_to_obj
              get_local $ns2\elem
              i32.const 109
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            if $I12
              get_local $ns2\token
              i32.const 0
              call $ns2\unexpected
              set_local $-ret
              br $B0
              i32.const 1
              set_local $-success
            end
            call $ns2\read_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      call $ns2\exit_parens
      drop
      get_local $ns2\save
      call $-truthy
      if $I13
        get_global $g7
        i32.const 20
        call $-get_from_obj
        get_local $ns2\elem
        call $ns1\array_push
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\elem
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\read_data (type $t4) (param $ns2\save i32) (result i32)
    (local $ns2\data i32) (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      i32.const 5
      i32.const 0
      call $-new_value
      set_local $ns2\data
      get_local $ns2\data
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          call $-falsy
          br_if $B1
          block $B3
            get_local $ns2\token
            call $ns2\is_number
            call $-truthy
            if $I4
              get_local $ns2\data
              i32.const 105
              get_local $ns2\token
              call $ns2\token_to_number
              call $-set_to_obj
              get_local $ns2\data
              i32.const 105
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            call $ns2\is_name
            call $-truthy
            i32.and
            if $I5
              get_local $ns2\data
              i32.const 105
              get_global $g7
              i32.const 23
              call $-get_from_obj
              i32.const 16
              call $-get_from_obj
              get_local $ns2\token
              i32.const 0
              call $ns1\array_search
              call $-set_to_obj
              get_local $ns2\data
              i32.const 105
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            i32.const 8
            call $-equal
            call $-truthy
            i32.and
            if $I6
              get_local $ns2\data
              i32.const 109
              i32.const 6
              i32.const 0
              call $-new_value
              i32.const 0
              call $ns2\translate_code
              call $-set_to_obj
              get_local $ns2\data
              i32.const 109
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            get_local $ns2\token
            call $ns2\is_string
            call $-truthy
            i32.and
            if $I7
              get_local $ns2\data
              i32.const 110
              get_local $ns2\token
              f64.const 0x1p+0 (;=1;)
              call $-number
              get_local $ns2\token
              call $ns1\size_of
              call $ns1\binary_slice
              call $-set_to_obj
              get_local $ns2\data
              i32.const 110
              call $-get_from_obj
              drop
              i32.const 1
              set_local $-success
            end
            get_local $-success
            i32.eqz
            if $I8
              get_local $ns2\token
              i32.const 0
              call $ns2\unexpected
              set_local $-ret
              br $B0
              i32.const 1
              set_local $-success
            end
            call $ns2\read_token
            set_local $ns2\token
            get_local $ns2\token
            drop
            i32.const 1
            set_local $-success
          end
          br $L2
        end
      end
      call $ns2\exit_parens
      drop
      get_local $ns2\save
      call $-truthy
      if $I9
        get_global $g7
        i32.const 22
        call $-get_from_obj
        get_local $ns2\data
        call $ns1\array_push
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\data
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_module (type $t5) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      f64.const 0x1p+3 (;=8;)
      call $-number
      call $ns1\binary_string
      set_global $g8
      get_global $g8
      drop
      get_global $g8
      f64.const 0x1p+0 (;=1;)
      call $-number
      i32.const 111
      call $ns1\binary_write
      drop
      get_global $g8
      f64.const 0x1p+2 (;=4;)
      call $-number
      f64.const 0x1p+0 (;=1;)
      call $-number
      call $ns1\binary_write
      drop
      call $ns2\write_type_section
      drop
      call $ns2\write_import_section
      drop
      call $ns2\write_function_section
      drop
      call $ns2\write_table_section
      drop
      call $ns2\write_memory_section
      drop
      call $ns2\write_global_section
      drop
      call $ns2\write_export_section
      drop
      call $ns2\write_start_section
      drop
      call $ns2\write_element_section
      drop
      call $ns2\write_code_section
      drop
      call $ns2\write_data_section
      drop
      call $ns2\write_name_section
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_string (type $t3) (param $ns2\bin i32) (param $ns2\str i32) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_local $ns2\bin
      get_local $ns2\str
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_local $ns2\bin
      get_local $ns2\bin
      call $ns1\size_of
      get_local $ns2\str
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_resizable_limits (type $t3) (param $ns2\bin i32) (param $ns2\limits i32) (result i32)
    (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_local $ns2\limits
      i32.const 93
      call $-get_from_obj
      i32.const 0
      call $-equal
      call $-truthy
      if $I1
        get_local $ns2\bin
        f64.const 0x0p+0 (;=0;)
        call $-number
        call $ns3\write_varuint
        drop
        get_local $ns2\bin
        get_local $ns2\limits
        i32.const 92
        call $-get_from_obj
        call $ns3\write_varuint
        drop
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $-success
      i32.eqz
      if $I2
        get_local $ns2\bin
        f64.const 0x1p+0 (;=1;)
        call $-number
        call $ns3\write_varuint
        drop
        get_local $ns2\bin
        get_local $ns2\limits
        i32.const 92
        call $-get_from_obj
        call $ns3\write_varuint
        drop
        get_local $ns2\bin
        get_local $ns2\limits
        i32.const 93
        call $-get_from_obj
        call $ns3\write_varuint
        drop
        i32.const 1
        set_local $-success
      end
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_type_section (type $t5) (result i32)
    (local $ns2\bin i32) (local $ns2\type i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $ns2\param i32) (local $-fori1 i32) (local $-forl1 i32) (local $-fora1 i32) (local $ns2\_return i32) (local $-fori2 i32) (local $-forl2 i32) (local $-fora2 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 12
      call $-get_from_obj
      call $ns1\array_length
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      get_global $g7
      i32.const 12
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      i32.const 0
      set_local $-fori0
      get_global $g7
      i32.const 12
      call $-get_from_obj
      set_local $-fora0
      get_local $-fora0
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl0
      block $B2
        loop $L3
          get_local $-fori0
          get_local $-forl0
          i32.ge_u
          br_if $B2
          get_local $-fora0
          get_local $-fori0
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\type
          block $B4
            get_local $ns2\type
            call $ns1\json_decode
            set_local $ns2\type
            get_local $ns2\type
            drop
            get_local $ns2\bin
            get_local $ns2\type
            i32.const 100
            call $-get_from_obj
            call $ns3\write_varuint
            drop
            get_local $ns2\bin
            get_local $ns2\type
            i32.const 101
            call $-get_from_obj
            call $ns1\array_length
            call $ns3\write_varuint
            drop
            i32.const 0
            set_local $-fori1
            get_local $ns2\type
            i32.const 101
            call $-get_from_obj
            set_local $-fora1
            get_local $-fora1
            call $-len
            i32.const 4
            i32.div_u
            set_local $-forl1
            block $B5
              loop $L6
                get_local $-fori1
                get_local $-forl1
                i32.ge_u
                br_if $B5
                get_local $-fora1
                get_local $-fori1
                call $-integer_u
                call $-get_from_obj
                set_local $ns2\param
                block $B7
                  get_local $ns2\bin
                  get_local $ns2\param
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-fori1
                i32.const 1
                i32.add
                set_local $-fori1
                br $L6
              end
            end
            get_local $ns2\bin
            get_local $ns2\type
            i32.const 102
            call $-get_from_obj
            call $ns1\array_length
            call $ns3\write_varuint
            drop
            i32.const 0
            set_local $-fori2
            get_local $ns2\type
            i32.const 102
            call $-get_from_obj
            set_local $-fora2
            get_local $-fora2
            call $-len
            i32.const 4
            i32.div_u
            set_local $-forl2
            block $B8
              loop $L9
                get_local $-fori2
                get_local $-forl2
                i32.ge_u
                br_if $B8
                get_local $-fora2
                get_local $-fori2
                call $-integer_u
                call $-get_from_obj
                set_local $ns2\_return
                block $B10
                  get_local $ns2\bin
                  get_local $ns2\_return
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-fori2
                i32.const 1
                i32.add
                set_local $-fori2
                br $L9
              end
            end
            i32.const 1
            set_local $-success
          end
          get_local $-fori0
          i32.const 1
          i32.add
          set_local $-fori0
          br $L3
        end
      end
      get_global $g8
      f64.const 0x1p+0 (;=1;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_import_section (type $t5) (result i32)
    (local $ns2\bin i32) (local $ns2\_import i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 13
      call $-get_from_obj
      call $ns1\array_length
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      get_global $g7
      i32.const 13
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      i32.const 0
      set_local $-fori0
      get_global $g7
      i32.const 13
      call $-get_from_obj
      set_local $-fora0
      get_local $-fora0
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl0
      block $B2
        loop $L3
          get_local $-fori0
          get_local $-forl0
          i32.ge_u
          br_if $B2
          get_local $-fora0
          get_local $-fori0
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\_import
          block $B4
            get_local $ns2\bin
            get_local $ns2\_import
            i32.const 10
            call $-get_from_obj
            call $ns2\write_string
            drop
            get_local $ns2\bin
            get_local $ns2\_import
            i32.const 88
            call $-get_from_obj
            call $ns2\write_string
            drop
            get_local $ns2\bin
            get_local $ns2\_import
            i32.const 90
            call $-get_from_obj
            call $ns3\write_varuint
            drop
            get_local $ns2\_import
            i32.const 90
            call $-get_from_obj
            f64.const 0x0p+0 (;=0;)
            call $-number
            call $-equal
            call $-truthy
            if $I5
              get_local $ns2\bin
              get_local $ns2\_import
              i32.const 12
              call $-get_from_obj
              call $ns3\write_varuint
              drop
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $ns2\_import
            i32.const 90
            call $-get_from_obj
            f64.const 0x1p+0 (;=1;)
            call $-number
            call $-equal
            call $-truthy
            if $I6
              get_local $ns2\bin
              get_local $ns2\_import
              i32.const 12
              call $-get_from_obj
              i32.const 94
              call $-get_from_obj
              call $ns3\write_varuint
              drop
              get_local $ns2\bin
              get_local $ns2\_import
              i32.const 12
              call $-get_from_obj
              call $ns2\write_resizable_limits
              drop
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $ns2\_import
            i32.const 90
            call $-get_from_obj
            f64.const 0x1p+1 (;=2;)
            call $-number
            call $-equal
            call $-truthy
            if $I7
              get_local $ns2\bin
              get_local $ns2\_import
              i32.const 12
              call $-get_from_obj
              call $ns2\write_resizable_limits
              drop
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $ns2\_import
            i32.const 90
            call $-get_from_obj
            f64.const 0x1.8p+1 (;=3;)
            call $-number
            call $-equal
            call $-truthy
            if $I8
              get_local $ns2\bin
              get_local $ns2\_import
              i32.const 12
              call $-get_from_obj
              i32.const 96
              call $-get_from_obj
              call $ns3\write_varuint
              drop
              get_local $ns2\bin
              get_local $ns2\_import
              i32.const 12
              call $-get_from_obj
              i32.const 99
              call $-get_from_obj
              call $ns3\write_varuint
              drop
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            i32.const 1
            set_local $-success
          end
          get_local $-fori0
          i32.const 1
          i32.add
          set_local $-fori0
          br $L3
        end
      end
      get_global $g8
      f64.const 0x1p+1 (;=2;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_function_section (type $t5) (result i32)
    (local $ns2\bin i32) (local $ns2\function i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 14
      call $-get_from_obj
      call $ns1\array_length
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      get_global $g7
      i32.const 14
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      i32.const 0
      set_local $-fori0
      get_global $g7
      i32.const 14
      call $-get_from_obj
      set_local $-fora0
      get_local $-fora0
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl0
      block $B2
        loop $L3
          get_local $-fori0
          get_local $-forl0
          i32.ge_u
          br_if $B2
          get_local $-fora0
          get_local $-fori0
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\function
          block $B4
            get_local $ns2\bin
            get_local $ns2\function
            call $ns3\write_varuint
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-fori0
          i32.const 1
          i32.add
          set_local $-fori0
          br $L3
        end
      end
      get_global $g8
      f64.const 0x1.8p+1 (;=3;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_table_section (type $t5) (result i32)
    (local $ns2\bin i32) (local $ns2\table i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 15
      call $-get_from_obj
      call $ns1\array_length
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      get_global $g7
      i32.const 15
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      i32.const 0
      set_local $-fori0
      get_global $g7
      i32.const 15
      call $-get_from_obj
      set_local $-fora0
      get_local $-fora0
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl0
      block $B2
        loop $L3
          get_local $-fori0
          get_local $-forl0
          i32.ge_u
          br_if $B2
          get_local $-fora0
          get_local $-fori0
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\table
          block $B4
            get_local $ns2\bin
            get_local $ns2\table
            i32.const 94
            call $-get_from_obj
            call $ns3\write_varuint
            drop
            get_local $ns2\bin
            get_local $ns2\table
            call $ns2\write_resizable_limits
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-fori0
          i32.const 1
          i32.add
          set_local $-fori0
          br $L3
        end
      end
      get_global $g8
      f64.const 0x1p+2 (;=4;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_memory_section (type $t5) (result i32)
    (local $ns2\bin i32) (local $ns2\memory i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 16
      call $-get_from_obj
      call $ns1\array_length
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      get_global $g7
      i32.const 16
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      i32.const 0
      set_local $-fori0
      get_global $g7
      i32.const 16
      call $-get_from_obj
      set_local $-fora0
      get_local $-fora0
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl0
      block $B2
        loop $L3
          get_local $-fori0
          get_local $-forl0
          i32.ge_u
          br_if $B2
          get_local $-fora0
          get_local $-fori0
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\memory
          block $B4
            get_local $ns2\bin
            get_local $ns2\memory
            call $ns2\write_resizable_limits
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-fori0
          i32.const 1
          i32.add
          set_local $-fori0
          br $L3
        end
      end
      get_global $g8
      f64.const 0x1.4p+2 (;=5;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_global_section (type $t5) (result i32)
    (local $ns2\bin i32) (local $ns2\global i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 17
      call $-get_from_obj
      call $ns1\array_length
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      get_global $g7
      i32.const 17
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      i32.const 0
      set_local $-fori0
      get_global $g7
      i32.const 17
      call $-get_from_obj
      set_local $-fora0
      get_local $-fora0
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl0
      block $B2
        loop $L3
          get_local $-fori0
          get_local $-forl0
          i32.ge_u
          br_if $B2
          get_local $-fora0
          get_local $-fori0
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\global
          block $B4
            get_local $ns2\bin
            get_local $ns2\global
            i32.const 96
            call $-get_from_obj
            call $ns3\write_varuint
            drop
            get_local $ns2\bin
            get_local $ns2\global
            i32.const 99
            call $-get_from_obj
            call $ns3\write_varuint
            drop
            get_local $ns2\bin
            get_local $ns2\bin
            call $ns1\size_of
            get_local $ns2\global
            i32.const 97
            call $-get_from_obj
            call $ns1\binary_write
            drop
            get_local $ns2\bin
            get_local $ns2\bin
            call $ns1\size_of
            f64.const 0x1.6p+3 (;=11;)
            call $-number
            call $ns1\binary_write
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-fori0
          i32.const 1
          i32.add
          set_local $-fori0
          br $L3
        end
      end
      get_global $g8
      f64.const 0x1.8p+2 (;=6;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_export_section (type $t5) (result i32)
    (local $ns2\bin i32) (local $ns2\xport i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 18
      call $-get_from_obj
      call $ns1\array_length
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      get_global $g7
      i32.const 18
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      i32.const 0
      set_local $-fori0
      get_global $g7
      i32.const 18
      call $-get_from_obj
      set_local $-fora0
      get_local $-fora0
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl0
      block $B2
        loop $L3
          get_local $-fori0
          get_local $-forl0
          i32.ge_u
          br_if $B2
          get_local $-fora0
          get_local $-fori0
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\xport
          block $B4
            get_local $ns2\bin
            get_local $ns2\xport
            i32.const 88
            call $-get_from_obj
            call $ns2\write_string
            drop
            get_local $ns2\bin
            get_local $ns2\xport
            i32.const 90
            call $-get_from_obj
            call $ns3\write_varuint
            drop
            get_local $ns2\bin
            get_local $ns2\xport
            i32.const 105
            call $-get_from_obj
            call $ns3\write_varuint
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-fori0
          i32.const 1
          i32.add
          set_local $-fori0
          br $L3
        end
      end
      get_global $g8
      f64.const 0x1.cp+2 (;=7;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_start_section (type $t5) (result i32)
    (local $ns2\bin i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 19
      call $-get_from_obj
      i32.const 0
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      get_global $g7
      i32.const 19
      call $-get_from_obj
      call $ns3\write_varuint
      drop
      get_global $g8
      f64.const 0x1p+3 (;=8;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_element_section (type $t5) (result i32)
    (local $ns2\bin i32) (local $ns2\elem i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $ns2\_elem i32) (local $-fori1 i32) (local $-forl1 i32) (local $-fora1 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 20
      call $-get_from_obj
      call $ns1\array_length
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      get_global $g7
      i32.const 20
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      i32.const 0
      set_local $-fori0
      get_global $g7
      i32.const 20
      call $-get_from_obj
      set_local $-fora0
      get_local $-fora0
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl0
      block $B2
        loop $L3
          get_local $-fori0
          get_local $-forl0
          i32.ge_u
          br_if $B2
          get_local $-fora0
          get_local $-fori0
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\elem
          block $B4
            get_local $ns2\bin
            get_local $ns2\elem
            i32.const 105
            call $-get_from_obj
            call $ns3\write_varuint
            drop
            get_local $ns2\bin
            get_local $ns2\bin
            call $ns1\size_of
            get_local $ns2\elem
            i32.const 109
            call $-get_from_obj
            call $ns1\binary_write
            drop
            get_local $ns2\bin
            get_local $ns2\bin
            call $ns1\size_of
            f64.const 0x1.6p+3 (;=11;)
            call $-number
            call $ns1\binary_write
            drop
            get_local $ns2\bin
            get_local $ns2\elem
            i32.const 108
            call $-get_from_obj
            call $ns1\array_length
            call $ns3\write_varuint
            drop
            i32.const 0
            set_local $-fori1
            get_local $ns2\elem
            i32.const 108
            call $-get_from_obj
            set_local $-fora1
            get_local $-fora1
            call $-len
            i32.const 4
            i32.div_u
            set_local $-forl1
            block $B5
              loop $L6
                get_local $-fori1
                get_local $-forl1
                i32.ge_u
                br_if $B5
                get_local $-fora1
                get_local $-fori1
                call $-integer_u
                call $-get_from_obj
                set_local $ns2\_elem
                block $B7
                  get_local $ns2\bin
                  get_local $ns2\_elem
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-fori1
                i32.const 1
                i32.add
                set_local $-fori1
                br $L6
              end
            end
            i32.const 1
            set_local $-success
          end
          get_local $-fori0
          i32.const 1
          i32.add
          set_local $-fori0
          br $L3
        end
      end
      get_global $g8
      f64.const 0x1.2p+3 (;=9;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_code_section (type $t5) (result i32)
    (local $ns2\t i32) (local $ns2\c i32) (local $ns2\locals i32) (local $ns2\bin i32) (local $ns2\body i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $ns2\bodybin i32) (local $ns2\local i32) (local $-fori1 i32) (local $-forl1 i32) (local $-fora1 i32) (local $-obj0 i32) (local $-obj1 i32) (local $-fori2 i32) (local $-forl2 i32) (local $-fora2 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 21
      call $-get_from_obj
      call $ns1\array_length
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      get_local $ns2\t
      drop
      get_local $ns2\c
      drop
      get_local $ns2\locals
      drop
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      get_global $g7
      i32.const 21
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      i32.const 0
      set_local $-fori0
      get_global $g7
      i32.const 21
      call $-get_from_obj
      set_local $-fora0
      get_local $-fora0
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl0
      block $B2
        loop $L3
          get_local $-fori0
          get_local $-forl0
          i32.ge_u
          br_if $B2
          get_local $-fora0
          get_local $-fori0
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\body
          block $B4
            i32.const 6
            i32.const 0
            call $-new_value
            set_local $ns2\bodybin
            get_local $ns2\bodybin
            drop
            i32.const 4
            i32.const 0
            call $-new_value
            set_local $ns2\locals
            get_local $ns2\locals
            drop
            f64.const 0x0p+0 (;=0;)
            call $-number
            set_local $ns2\c
            get_local $ns2\c
            drop
            i32.const 0
            set_local $ns2\t
            get_local $ns2\t
            drop
            i32.const 0
            set_local $-fori1
            get_local $ns2\body
            i32.const 24
            call $-get_from_obj
            set_local $-fora1
            get_local $-fora1
            call $-len
            i32.const 4
            i32.div_u
            set_local $-forl1
            block $B5
              loop $L6
                get_local $-fori1
                get_local $-forl1
                i32.ge_u
                br_if $B5
                get_local $-fora1
                get_local $-fori1
                call $-integer_u
                call $-get_from_obj
                set_local $ns2\local
                block $B7
                  get_local $ns2\local
                  get_local $ns2\t
                  call $-unequal
                  call $-truthy
                  if $I8
                    get_local $ns2\c
                    call $-truthy
                    if $I9
                      get_local $ns2\locals
                      i32.const 5
                      i32.const 0
                      call $-new_value
                      tee_local $-obj0
                      get_local $-obj0
                      i32.const 112
                      get_local $ns2\c
                      call $-set_to_obj
                      get_local $-obj0
                      i32.const 112
                      call $-get_from_obj
                      drop
                      get_local $-obj0
                      i32.const 12
                      get_local $ns2\t
                      call $-set_to_obj
                      get_local $-obj0
                      i32.const 12
                      call $-get_from_obj
                      drop
                      call $ns1\array_push
                      drop
                      i32.const 1
                      set_local $-success
                    else
                      i32.const 0
                      set_local $-success
                    end
                    f64.const 0x0p+0 (;=0;)
                    call $-number
                    set_local $ns2\c
                    get_local $ns2\c
                    drop
                    get_local $ns2\local
                    set_local $ns2\t
                    get_local $ns2\t
                    drop
                    i32.const 1
                    set_local $-success
                  else
                    i32.const 0
                    set_local $-success
                  end
                  get_local $ns2\c
                  f64.const 0x1p+0 (;=1;)
                  call $-inc
                  set_local $ns2\c
                  get_local $ns2\c
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-fori1
                i32.const 1
                i32.add
                set_local $-fori1
                br $L6
              end
            end
            get_local $ns2\c
            call $-truthy
            if $I10
              get_local $ns2\locals
              i32.const 5
              i32.const 0
              call $-new_value
              tee_local $-obj1
              get_local $-obj1
              i32.const 112
              get_local $ns2\c
              call $-set_to_obj
              get_local $-obj1
              i32.const 112
              call $-get_from_obj
              drop
              get_local $-obj1
              i32.const 12
              get_local $ns2\t
              call $-set_to_obj
              get_local $-obj1
              i32.const 12
              call $-get_from_obj
              drop
              call $ns1\array_push
              drop
              i32.const 1
              set_local $-success
            else
              i32.const 0
              set_local $-success
            end
            get_local $ns2\bodybin
            get_local $ns2\locals
            call $ns1\array_length
            call $ns3\write_varuint
            drop
            i32.const 0
            set_local $-fori2
            get_local $ns2\locals
            set_local $-fora2
            get_local $-fora2
            call $-len
            i32.const 4
            i32.div_u
            set_local $-forl2
            block $B11
              loop $L12
                get_local $-fori2
                get_local $-forl2
                i32.ge_u
                br_if $B11
                get_local $-fora2
                get_local $-fori2
                call $-integer_u
                call $-get_from_obj
                set_local $ns2\local
                block $B13
                  get_local $ns2\bodybin
                  get_local $ns2\local
                  i32.const 112
                  call $-get_from_obj
                  call $ns3\write_varuint
                  drop
                  get_local $ns2\bodybin
                  get_local $ns2\local
                  i32.const 12
                  call $-get_from_obj
                  call $ns3\write_varuint
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-fori2
                i32.const 1
                i32.add
                set_local $-fori2
                br $L12
              end
            end
            get_local $ns2\bodybin
            get_local $ns2\bodybin
            call $ns1\size_of
            get_local $ns2\body
            i32.const 21
            call $-get_from_obj
            call $ns1\binary_write
            drop
            get_local $ns2\bodybin
            get_local $ns2\bodybin
            call $ns1\size_of
            f64.const 0x1.6p+3 (;=11;)
            call $-number
            call $ns1\binary_write
            drop
            get_local $ns2\bin
            get_local $ns2\bodybin
            call $ns1\size_of
            call $ns3\write_varuint
            drop
            get_local $ns2\bin
            get_local $ns2\bin
            call $ns1\size_of
            get_local $ns2\bodybin
            call $ns1\binary_write
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-fori0
          i32.const 1
          i32.add
          set_local $-fori0
          br $L3
        end
      end
      get_global $g8
      f64.const 0x1.4p+3 (;=10;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_data_section (type $t5) (result i32)
    (local $ns2\bin i32) (local $ns2\data i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 22
      call $-get_from_obj
      call $ns1\array_length
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      get_global $g7
      i32.const 22
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      i32.const 0
      set_local $-fori0
      get_global $g7
      i32.const 22
      call $-get_from_obj
      set_local $-fora0
      get_local $-fora0
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl0
      block $B2
        loop $L3
          get_local $-fori0
          get_local $-forl0
          i32.ge_u
          br_if $B2
          get_local $-fora0
          get_local $-fori0
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\data
          block $B4
            get_local $ns2\bin
            get_local $ns2\data
            i32.const 105
            call $-get_from_obj
            call $ns3\write_varuint
            drop
            get_local $ns2\bin
            get_local $ns2\bin
            call $ns1\size_of
            get_local $ns2\data
            i32.const 109
            call $-get_from_obj
            call $ns1\binary_write
            drop
            get_local $ns2\bin
            get_local $ns2\bin
            call $ns1\size_of
            f64.const 0x1.6p+3 (;=11;)
            call $-number
            call $ns1\binary_write
            drop
            get_local $ns2\bin
            get_local $ns2\data
            i32.const 110
            call $-get_from_obj
            call $ns1\size_of
            call $ns3\write_varuint
            drop
            get_local $ns2\bin
            get_local $ns2\bin
            call $ns1\size_of
            get_local $ns2\data
            i32.const 110
            call $-get_from_obj
            call $ns1\binary_write
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-fori0
          i32.const 1
          i32.add
          set_local $-fori0
          br $L3
        end
      end
      get_global $g8
      f64.const 0x1.6p+3 (;=11;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns2\write_name_section (type $t5) (result i32)
    (local $ns2\bin i32) (local $ns2\total_locals i32) (local $ns2\names i32) (local $ns2\index i32) (local $ns2\name i32) (local $-fori0 i32) (local $-forl0 i32) (local $-fora0 i32) (local $ns2\fun i32) (local $ns2\locals i32) (local $-fori1 i32) (local $-forl1 i32) (local $-fora1 i32) (local $-fori2 i32) (local $-forl2 i32) (local $-fora2 i32) (local $-ret i32) (local $-success i32)
    call $-funcstart
    block $B0
      get_global $g7
      i32.const 23
      call $-get_from_obj
      call $ns1\array_length
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-equal
      call $-truthy
      if $I1
        i32.const 0
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      else
        i32.const 0
        set_local $-success
      end
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\bin
      get_local $ns2\bin
      drop
      get_local $ns2\bin
      i32.const 23
      call $ns2\write_string
      drop
      f64.const 0x0p+0 (;=0;)
      call $-number
      set_local $ns2\total_locals
      get_local $ns2\total_locals
      drop
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\names
      get_local $ns2\names
      drop
      f64.const 0x0p+0 (;=0;)
      call $-number
      set_local $ns2\index
      get_local $ns2\index
      drop
      get_local $ns2\names
      get_global $g7
      i32.const 23
      call $-get_from_obj
      i32.const 14
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      i32.const 0
      set_local $-fori0
      get_global $g7
      i32.const 23
      call $-get_from_obj
      i32.const 14
      call $-get_from_obj
      set_local $-fora0
      get_local $-fora0
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl0
      block $B2
        loop $L3
          get_local $-fori0
          get_local $-forl0
          i32.ge_u
          br_if $B2
          get_local $-fora0
          get_local $-fori0
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\name
          block $B4
            get_local $ns2\names
            get_local $ns2\index
            call $ns3\write_varuint
            drop
            get_local $ns2\names
            get_local $ns2\name
            f64.const 0x1p+0 (;=1;)
            call $-number
            get_local $ns2\name
            call $ns1\size_of
            call $ns1\binary_slice
            call $ns2\write_string
            drop
            get_local $ns2\total_locals
            get_global $g7
            i32.const 23
            call $-get_from_obj
            i32.const 24
            call $-get_from_obj
            get_local $ns2\index
            call $-get_from_obj
            call $ns1\array_length
            call $-add
            set_local $ns2\total_locals
            get_local $ns2\total_locals
            drop
            get_local $ns2\index
            f64.const 0x1p+0 (;=1;)
            call $-inc
            set_local $ns2\index
            get_local $ns2\index
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-fori0
          i32.const 1
          i32.add
          set_local $-fori0
          br $L3
        end
      end
      get_local $ns2\bin
      f64.const 0x1p+0 (;=1;)
      call $-number
      call $ns3\write_varuint
      drop
      get_local $ns2\bin
      get_local $ns2\names
      call $ns2\write_string
      drop
      i32.const 6
      i32.const 0
      call $-new_value
      set_local $ns2\names
      get_local $ns2\names
      drop
      get_local $ns2\names
      get_global $g7
      i32.const 23
      call $-get_from_obj
      i32.const 24
      call $-get_from_obj
      call $ns1\array_length
      call $ns3\write_varuint
      drop
      f64.const 0x0p+0 (;=0;)
      call $-number
      set_local $ns2\fun
      get_local $ns2\fun
      drop
      i32.const 0
      set_local $-fori1
      get_global $g7
      i32.const 23
      call $-get_from_obj
      i32.const 24
      call $-get_from_obj
      set_local $-fora1
      get_local $-fora1
      call $-len
      i32.const 4
      i32.div_u
      set_local $-forl1
      block $B5
        loop $L6
          get_local $-fori1
          get_local $-forl1
          i32.ge_u
          br_if $B5
          get_local $-fora1
          get_local $-fori1
          call $-integer_u
          call $-get_from_obj
          set_local $ns2\locals
          block $B7
            get_local $ns2\names
            get_local $ns2\fun
            call $ns3\write_varuint
            drop
            f64.const 0x0p+0 (;=0;)
            call $-number
            set_local $ns2\index
            get_local $ns2\index
            drop
            get_local $ns2\names
            get_local $ns2\locals
            call $ns1\array_length
            call $ns3\write_varuint
            drop
            i32.const 0
            set_local $-fori2
            get_local $ns2\locals
            set_local $-fora2
            get_local $-fora2
            call $-len
            i32.const 4
            i32.div_u
            set_local $-forl2
            block $B8
              loop $L9
                get_local $-fori2
                get_local $-forl2
                i32.ge_u
                br_if $B8
                get_local $-fora2
                get_local $-fori2
                call $-integer_u
                call $-get_from_obj
                set_local $ns2\name
                block $B10
                  get_local $ns2\names
                  get_local $ns2\index
                  call $ns3\write_varuint
                  drop
                  get_local $ns2\names
                  get_local $ns2\name
                  f64.const 0x1p+0 (;=1;)
                  call $-number
                  get_local $ns2\name
                  call $ns1\size_of
                  call $ns1\binary_slice
                  call $ns2\write_string
                  drop
                  get_local $ns2\index
                  f64.const 0x1p+0 (;=1;)
                  call $-inc
                  set_local $ns2\index
                  get_local $ns2\index
                  drop
                  i32.const 1
                  set_local $-success
                end
                get_local $-fori2
                i32.const 1
                i32.add
                set_local $-fori2
                br $L9
              end
            end
            get_local $ns2\fun
            f64.const 0x1p+0 (;=1;)
            call $-inc
            set_local $ns2\fun
            get_local $ns2\fun
            drop
            i32.const 1
            set_local $-success
          end
          get_local $-fori1
          i32.const 1
          i32.add
          set_local $-fori1
          br $L6
        end
      end
      get_local $ns2\bin
      f64.const 0x1p+1 (;=2;)
      call $-number
      call $ns3\write_varuint
      drop
      get_local $ns2\bin
      get_local $ns2\names
      call $ns2\write_string
      drop
      get_global $g8
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $ns3\write_varuint
      drop
      get_global $g8
      get_local $ns2\bin
      call $ns1\size_of
      call $ns3\write_varuint
      drop
      get_global $g8
      get_global $g8
      call $ns1\size_of
      get_local $ns2\bin
      call $ns1\binary_write
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret
    call $-funcend)
  (func $ns3\token_to_varint (type $t4) (param $ns3\token i32) (result i32)
    (local $ns3\pos i32) (local $ns3\len i32) (local $ns3\neg i32) (local $ns3\dig i64) (local $ns3\num i64) (local $ns3\out i32)
    get_local $ns3\token
    call $-offset
    set_local $ns3\pos
    get_local $ns3\token
    call $-len
    set_local $ns3\len
    get_local $ns3\pos
    i64.load8_u
    set_local $ns3\dig
    get_local $ns3\dig
    i64.const 45
    i64.eq
    if $I0
      i32.const 1
      set_local $ns3\neg
      get_local $ns3\pos
      i32.const 1
      i32.add
      set_local $ns3\pos
      get_local $ns3\len
      i32.const 1
      i32.sub
      set_local $ns3\len
    end
    get_local $ns3\pos
    i32.load16_u
    i32.const 30768
    i32.eq
    if $I1
      get_local $ns3\pos
      i32.const 2
      i32.add
      set_local $ns3\pos
      get_local $ns3\len
      i32.const 2
      i32.sub
      set_local $ns3\len
      block $B2
        loop $L3
          get_local $ns3\len
          i32.eqz
          br_if $B2
          get_local $ns3\pos
          i64.load8_u
          set_local $ns3\dig
          get_local $ns3\num
          i64.const 16
          i64.mul
          set_local $ns3\num
          get_local $ns3\dig
          i64.const 64
          i64.lt_u
          if $I4
            get_local $ns3\num
            get_local $ns3\dig
            i64.const 48
            i64.sub
            i64.add
            set_local $ns3\num
          else
            get_local $ns3\dig
            i64.const 96
            i64.lt_u
            if $I5
              get_local $ns3\num
              get_local $ns3\dig
              i64.const 55
              i64.sub
              i64.add
              set_local $ns3\num
            else
              get_local $ns3\num
              get_local $ns3\dig
              i64.const 87
              i64.sub
              i64.add
              set_local $ns3\num
            end
          end
          get_local $ns3\pos
          i32.const 1
          i32.add
          set_local $ns3\pos
          get_local $ns3\len
          i32.const 1
          i32.sub
          set_local $ns3\len
          br $L3
        end
      end
    else
      block $B6
        loop $L7
          get_local $ns3\len
          i32.eqz
          br_if $B6
          get_local $ns3\pos
          i64.load8_u
          set_local $ns3\dig
          get_local $ns3\num
          i64.const 10
          i64.mul
          set_local $ns3\num
          get_local $ns3\num
          get_local $ns3\dig
          i64.const 48
          i64.sub
          i64.add
          set_local $ns3\num
          get_local $ns3\pos
          i32.const 1
          i32.add
          set_local $ns3\pos
          get_local $ns3\len
          i32.const 1
          i32.sub
          set_local $ns3\len
          br $L7
        end
      end
    end
    get_local $ns3\neg
    if $I8
      get_local $ns3\num
      i64.const -1
      i64.xor
      i64.const 1
      i64.add
      set_local $ns3\num
    end
    i32.const 6
    i32.const 0
    call $-new_value
    set_local $ns3\out
    block $B9
      loop $L10
        get_local $ns3\out
        get_local $ns3\len
        get_local $ns3\num
        i64.const 128
        i64.rem_u
        i64.const 128
        i64.or
        i32.wrap/i64
        call $-write8
        get_local $ns3\num
        i64.const 7
        i64.shr_s
        set_local $ns3\num
        get_local $ns3\num
        i64.eqz
        br_if $B9
        get_local $ns3\num
        i64.const -1
        i64.eq
        br_if $B9
        get_local $ns3\len
        i32.const 1
        i32.add
        set_local $ns3\len
        br $L10
      end
    end
    get_local $ns3\out
    get_local $ns3\len
    call $-read8
    i32.const 127
    i32.and
    set_local $ns3\pos
    get_local $ns3\out
    get_local $ns3\len
    get_local $ns3\pos
    call $-write8
    get_local $ns3\neg
    if $I11
      get_local $ns3\pos
      i32.const 64
      i32.and
      i32.eqz
      if $I12
        get_local $ns3\out
        get_local $ns3\len
        get_local $ns3\pos
        i32.const 128
        i32.or
        call $-write8
        get_local $ns3\out
        get_local $ns3\len
        i32.const 1
        i32.add
        i32.const 127
        call $-write8
      end
    else
      get_local $ns3\pos
      i32.const 64
      i32.and
      if $I13
        get_local $ns3\out
        get_local $ns3\len
        get_local $ns3\pos
        i32.const 128
        i32.or
        call $-write8
        get_local $ns3\out
        get_local $ns3\len
        i32.const 1
        i32.add
        i32.const 0
        call $-write8
      end
    end
    get_local $ns3\out)
  (func $ns3\number_to_f64bin (type $t4) (param $ns3\num i32) (result i32)
    (local $ns3\out i32)
    i32.const 6
    i32.const 8
    call $-new_value
    set_local $ns3\out
    get_local $ns3\out
    call $-offset
    get_local $ns3\num
    call $-f64
    f64.store
    get_local $ns3\out)
  (func $ns3\number_to_f32bin (type $t4) (param $ns3\num i32) (result i32)
    (local $ns3\out i32)
    i32.const 6
    i32.const 4
    call $-new_value
    set_local $ns3\out
    get_local $ns3\out
    call $-offset
    get_local $ns3\num
    call $-f64
    f32.demote/f64
    f32.store
    get_local $ns3\out)
  (func $ns3\write_varuint (type $t3) (param $ns3\id i32) (param $ns3\num i32) (result i32)
    (local $ns3\len i32)
    get_local $ns3\id
    call $-len
    set_local $ns3\len
    get_local $ns3\num
    call $-i32_u
    set_local $ns3\num
    block $B0
      loop $L1
        get_local $ns3\num
        i32.const 128
        i32.lt_u
        if $I2
          get_local $ns3\id
          get_local $ns3\len
          get_local $ns3\num
          i32.const 128
          i32.rem_u
          call $-write8
        else
          get_local $ns3\id
          get_local $ns3\len
          get_local $ns3\num
          i32.const 128
          i32.rem_u
          i32.const 128
          i32.or
          call $-write8
        end
        get_local $ns3\len
        i32.const 1
        i32.add
        set_local $ns3\len
        get_local $ns3\num
        i32.const 7
        i32.shr_u
        set_local $ns3\num
        get_local $ns3\num
        i32.eqz
        br_if $B0
        br $L1
      end
    end
    get_local $ns3\id)
  (func $ns3\from_hex (type $t4) (param $ns3\hex i32) (result i32)
    get_local $ns3\hex
    call $-from_hex
    call $-integer_u)
  (func $-start (type $t8)
    (local $-success i32) (local $-obj0 i32) (local $-ret i32)
    call $-initruntime
    i32.const -1
    i32.const 2152
    call $-resize
    i32.const 65536
    i32.const 1
    call $-string
    drop
    i32.const 65552
    i32.const 3
    call $-string
    drop
    i32.const 65568
    i32.const 6
    call $-string
    drop
    i32.const 65584
    i32.const 8
    call $-string
    drop
    i32.const 65608
    i32.const 4
    call $-string
    drop
    i32.const 65624
    i32.const 6
    call $-string
    drop
    i32.const 65640
    i32.const 8
    call $-string
    drop
    i32.const 65664
    i32.const 5
    call $-string
    drop
    i32.const 65680
    i32.const 6
    call $-string
    drop
    i32.const 65696
    i32.const 6
    call $-string
    drop
    i32.const 65712
    i32.const 6
    call $-string
    drop
    i32.const 65728
    i32.const 5
    call $-string
    drop
    i32.const 65744
    i32.const 7
    call $-string
    drop
    i32.const 65760
    i32.const 4
    call $-string
    drop
    i32.const 65776
    i32.const 4
    call $-string
    drop
    i32.const 65792
    i32.const 4
    call $-string
    drop
    i32.const 65808
    i32.const 6
    call $-string
    drop
    i32.const 65824
    i32.const 3
    call $-string
    drop
    i32.const 65840
    i32.const 4
    call $-string
    drop
    i32.const 65856
    i32.const 6
    call $-string
    drop
    i32.const 65872
    i32.const 11
    call $-string
    drop
    i32.const 65896
    i32.const 1
    call $-string
    drop
    i32.const 65912
    i32.const 1
    call $-string
    drop
    i32.const 65928
    i32.const 18
    call $-string
    drop
    i32.const 65960
    i32.const 1
    call $-string
    drop
    i32.const 65976
    i32.const 8
    call $-string
    drop
    i32.const 66000
    i32.const 10
    call $-string
    drop
    i32.const 66024
    i32.const 1
    call $-string
    drop
    i32.const 66040
    i32.const 22
    call $-string
    drop
    i32.const 66072
    i32.const 1
    call $-string
    drop
    i32.const 66088
    i32.const 2
    call $-string
    drop
    i32.const 66104
    i32.const 1
    call $-string
    drop
    i32.const 66120
    i32.const 1
    call $-string
    drop
    i32.const 66136
    i32.const 1
    call $-string
    drop
    i32.const 66152
    i32.const 1
    call $-string
    drop
    i32.const 66168
    i32.const 1
    call $-string
    drop
    i32.const 66184
    i32.const 4
    call $-string
    drop
    i32.const 66200
    i32.const 2
    call $-string
    drop
    i32.const 66216
    i32.const 1
    call $-string
    drop
    i32.const 66232
    i32.const 11
    call $-string
    drop
    i32.const 66256
    i32.const 5
    call $-string
    drop
    i32.const 66272
    i32.const 4
    call $-string
    drop
    i32.const 66288
    i32.const 2
    call $-string
    drop
    i32.const 66304
    i32.const 6
    call $-string
    drop
    i32.const 66320
    i32.const 3
    call $-string
    drop
    i32.const 66336
    i32.const 3
    call $-string
    drop
    i32.const 66352
    i32.const 3
    call $-string
    drop
    i32.const 66368
    i32.const 3
    call $-string
    drop
    i32.const 66384
    i32.const 4
    call $-string
    drop
    i32.const 66400
    i32.const 3
    call $-string
    drop
    i32.const 66416
    i32.const 2
    call $-string
    drop
    i32.const 66432
    i32.const 5
    call $-string
    drop
    i32.const 66448
    i32.const 16
    call $-string
    drop
    i32.const 66480
    i32.const 8
    call $-string
    drop
    i32.const 66504
    i32.const 4
    call $-string
    drop
    i32.const 66520
    i32.const 20
    call $-string
    drop
    i32.const 66552
    i32.const 13
    call $-string
    drop
    i32.const 66576
    i32.const 6
    call $-string
    drop
    i32.const 66592
    i32.const 17
    call $-string
    drop
    i32.const 66624
    i32.const 7
    call $-string
    drop
    i32.const 66640
    i32.const 18
    call $-string
    drop
    i32.const 66672
    i32.const 5
    call $-string
    drop
    i32.const 66688
    i32.const 6
    call $-string
    drop
    i32.const 66704
    i32.const 2
    call $-string
    drop
    i32.const 66720
    i32.const 2
    call $-string
    drop
    i32.const 66736
    i32.const 2
    call $-string
    drop
    i32.const 66752
    i32.const 1
    call $-string
    drop
    i32.const 66768
    i32.const 14
    call $-string
    drop
    i32.const 66792
    i32.const 11
    call $-string
    drop
    i32.const 66816
    i32.const 9
    call $-string
    drop
    i32.const 66840
    i32.const 9
    call $-string
    drop
    i32.const 66864
    i32.const 8
    call $-string
    drop
    i32.const 66888
    i32.const 9
    call $-string
    drop
    i32.const 66912
    i32.const 9
    call $-string
    drop
    i32.const 66936
    i32.const 4
    call $-string
    drop
    i32.const 66952
    i32.const 5
    call $-string
    drop
    i32.const 66968
    i32.const 5
    call $-string
    drop
    i32.const 66984
    i32.const 4
    call $-string
    drop
    i32.const 67000
    i32.const 18
    call $-string
    drop
    i32.const 67032
    i32.const 6
    call $-string
    drop
    i32.const 67048
    i32.const 5
    call $-string
    drop
    i32.const 67064
    i32.const 8
    call $-string
    drop
    i32.const 67088
    i32.const 4
    call $-string
    drop
    i32.const 67104
    i32.const 14
    call $-string
    drop
    i32.const 67128
    i32.const 7
    call $-string
    drop
    i32.const 67144
    i32.const 7
    call $-string
    drop
    i32.const 67160
    i32.const 12
    call $-string
    drop
    i32.const 67184
    i32.const 7
    call $-string
    drop
    i32.const 67200
    i32.const 12
    call $-string
    drop
    i32.const 67224
    i32.const 9
    call $-string
    drop
    i32.const 67248
    i32.const 3
    call $-string
    drop
    i32.const 67264
    i32.const 10
    call $-string
    drop
    i32.const 67288
    i32.const 4
    call $-string
    drop
    i32.const 67304
    i32.const 6
    call $-string
    drop
    i32.const 67320
    i32.const 7
    call $-string
    drop
    i32.const 67336
    i32.const 5
    call $-string
    drop
    i32.const 67352
    i32.const 14
    call $-string
    drop
    i32.const 67376
    i32.const 5
    call $-string
    drop
    i32.const 67392
    i32.const 6
    call $-string
    drop
    i32.const 67408
    i32.const 18
    call $-string
    drop
    i32.const 67440
    i32.const 5
    call $-string
    drop
    i32.const 67456
    i32.const 6
    call $-string
    drop
    i32.const 67472
    i32.const 6
    call $-string
    drop
    i32.const 67488
    i32.const 3
    call $-string
    drop
    i32.const 67504
    i32.const 5
    call $-string
    drop
    i32.const 67520
    i32.const 11
    call $-string
    drop
    i32.const 67544
    i32.const 3
    call $-string
    drop
    i32.const 67560
    i32.const 6
    call $-string
    drop
    i32.const 67576
    i32.const 4
    call $-string
    drop
    i32.const 67592
    i32.const 6
    call $-string
    drop
    i32.const 67608
    i32.const 9
    call $-string
    drop
    i32.const 67632
    i32.const 9
    call $-string
    drop
    i32.const 67656
    i32.const 9
    call $-string
    drop
    i32.const 67680
    i32.const 10
    call $-string
    drop
    i32.const 67704
    i32.const 10
    call $-string
    drop
    i32.const 67728
    i32.const 8
    call $-string
    drop
    i32.const 67752
    i32.const 8
    call $-string
    drop
    i32.const 67776
    i32.const 8
    call $-string
    drop
    i32.const 67800
    i32.const 8
    call $-string
    drop
    i32.const 67824
    i32.const 11
    call $-string
    drop
    i32.const 67848
    i32.const 11
    call $-string
    drop
    i32.const 67872
    i32.const 12
    call $-string
    drop
    i32.const 67896
    i32.const 12
    call $-string
    drop
    i32.const 67920
    i32.const 11
    call $-string
    drop
    i32.const 67944
    i32.const 11
    call $-string
    drop
    i32.const 67968
    i32.const 12
    call $-string
    drop
    i32.const 67992
    i32.const 12
    call $-string
    drop
    i32.const 68016
    i32.const 12
    call $-string
    drop
    i32.const 68040
    i32.const 12
    call $-string
    drop
    i32.const 68064
    i32.const 9
    call $-string
    drop
    i32.const 68088
    i32.const 9
    call $-string
    drop
    i32.const 68112
    i32.const 9
    call $-string
    drop
    i32.const 68136
    i32.const 9
    call $-string
    drop
    i32.const 68160
    i32.const 10
    call $-string
    drop
    i32.const 68184
    i32.const 11
    call $-string
    drop
    i32.const 68208
    i32.const 10
    call $-string
    drop
    i32.const 68232
    i32.const 11
    call $-string
    drop
    i32.const 68256
    i32.const 11
    call $-string
    drop
    i32.const 68280
    i32.const 7
    call $-string
    drop
    i32.const 68296
    i32.const 6
    call $-string
    drop
    i32.const 68312
    i32.const 6
    call $-string
    drop
    i32.const 68328
    i32.const 8
    call $-string
    drop
    i32.const 68352
    i32.const 8
    call $-string
    drop
    i32.const 68376
    i32.const 8
    call $-string
    drop
    i32.const 68400
    i32.const 8
    call $-string
    drop
    i32.const 68424
    i32.const 8
    call $-string
    drop
    i32.const 68448
    i32.const 8
    call $-string
    drop
    i32.const 68472
    i32.const 8
    call $-string
    drop
    i32.const 68496
    i32.const 8
    call $-string
    drop
    i32.const 68520
    i32.const 7
    call $-string
    drop
    i32.const 68536
    i32.const 6
    call $-string
    drop
    i32.const 68552
    i32.const 6
    call $-string
    drop
    i32.const 68568
    i32.const 8
    call $-string
    drop
    i32.const 68592
    i32.const 8
    call $-string
    drop
    i32.const 68616
    i32.const 8
    call $-string
    drop
    i32.const 68640
    i32.const 8
    call $-string
    drop
    i32.const 68664
    i32.const 8
    call $-string
    drop
    i32.const 68688
    i32.const 8
    call $-string
    drop
    i32.const 68712
    i32.const 8
    call $-string
    drop
    i32.const 68736
    i32.const 8
    call $-string
    drop
    i32.const 68760
    i32.const 6
    call $-string
    drop
    i32.const 68776
    i32.const 6
    call $-string
    drop
    i32.const 68792
    i32.const 6
    call $-string
    drop
    i32.const 68808
    i32.const 6
    call $-string
    drop
    i32.const 68824
    i32.const 6
    call $-string
    drop
    i32.const 68840
    i32.const 6
    call $-string
    drop
    i32.const 68856
    i32.const 6
    call $-string
    drop
    i32.const 68872
    i32.const 6
    call $-string
    drop
    i32.const 68888
    i32.const 6
    call $-string
    drop
    i32.const 68904
    i32.const 6
    call $-string
    drop
    i32.const 68920
    i32.const 6
    call $-string
    drop
    i32.const 68936
    i32.const 6
    call $-string
    drop
    i32.const 68952
    i32.const 7
    call $-string
    drop
    i32.const 68968
    i32.const 7
    call $-string
    drop
    i32.const 68984
    i32.const 10
    call $-string
    drop
    i32.const 69008
    i32.const 7
    call $-string
    drop
    i32.const 69024
    i32.const 7
    call $-string
    drop
    i32.const 69040
    i32.const 7
    call $-string
    drop
    i32.const 69056
    i32.const 9
    call $-string
    drop
    i32.const 69080
    i32.const 9
    call $-string
    drop
    i32.const 69104
    i32.const 9
    call $-string
    drop
    i32.const 69128
    i32.const 9
    call $-string
    drop
    i32.const 69152
    i32.const 7
    call $-string
    drop
    i32.const 69168
    i32.const 6
    call $-string
    drop
    i32.const 69184
    i32.const 7
    call $-string
    drop
    i32.const 69200
    i32.const 7
    call $-string
    drop
    i32.const 69216
    i32.const 9
    call $-string
    drop
    i32.const 69240
    i32.const 9
    call $-string
    drop
    i32.const 69264
    i32.const 8
    call $-string
    drop
    i32.const 69288
    i32.const 8
    call $-string
    drop
    i32.const 69312
    i32.const 7
    call $-string
    drop
    i32.const 69328
    i32.const 7
    call $-string
    drop
    i32.const 69344
    i32.const 10
    call $-string
    drop
    i32.const 69368
    i32.const 7
    call $-string
    drop
    i32.const 69384
    i32.const 7
    call $-string
    drop
    i32.const 69400
    i32.const 7
    call $-string
    drop
    i32.const 69416
    i32.const 9
    call $-string
    drop
    i32.const 69440
    i32.const 9
    call $-string
    drop
    i32.const 69464
    i32.const 9
    call $-string
    drop
    i32.const 69488
    i32.const 9
    call $-string
    drop
    i32.const 69512
    i32.const 7
    call $-string
    drop
    i32.const 69528
    i32.const 6
    call $-string
    drop
    i32.const 69544
    i32.const 7
    call $-string
    drop
    i32.const 69560
    i32.const 7
    call $-string
    drop
    i32.const 69576
    i32.const 9
    call $-string
    drop
    i32.const 69600
    i32.const 9
    call $-string
    drop
    i32.const 69624
    i32.const 8
    call $-string
    drop
    i32.const 69648
    i32.const 8
    call $-string
    drop
    i32.const 69672
    i32.const 7
    call $-string
    drop
    i32.const 69688
    i32.const 7
    call $-string
    drop
    i32.const 69704
    i32.const 8
    call $-string
    drop
    i32.const 69728
    i32.const 9
    call $-string
    drop
    i32.const 69752
    i32.const 9
    call $-string
    drop
    i32.const 69776
    i32.const 11
    call $-string
    drop
    i32.const 69800
    i32.const 8
    call $-string
    drop
    i32.const 69824
    i32.const 7
    call $-string
    drop
    i32.const 69840
    i32.const 7
    call $-string
    drop
    i32.const 69856
    i32.const 7
    call $-string
    drop
    i32.const 69872
    i32.const 7
    call $-string
    drop
    i32.const 69888
    i32.const 7
    call $-string
    drop
    i32.const 69904
    i32.const 7
    call $-string
    drop
    i32.const 69920
    i32.const 12
    call $-string
    drop
    i32.const 69944
    i32.const 7
    call $-string
    drop
    i32.const 69960
    i32.const 7
    call $-string
    drop
    i32.const 69976
    i32.const 8
    call $-string
    drop
    i32.const 70000
    i32.const 9
    call $-string
    drop
    i32.const 70024
    i32.const 9
    call $-string
    drop
    i32.const 70048
    i32.const 11
    call $-string
    drop
    i32.const 70072
    i32.const 8
    call $-string
    drop
    i32.const 70096
    i32.const 7
    call $-string
    drop
    i32.const 70112
    i32.const 7
    call $-string
    drop
    i32.const 70128
    i32.const 7
    call $-string
    drop
    i32.const 70144
    i32.const 7
    call $-string
    drop
    i32.const 70160
    i32.const 7
    call $-string
    drop
    i32.const 70176
    i32.const 7
    call $-string
    drop
    i32.const 70192
    i32.const 12
    call $-string
    drop
    i32.const 70216
    i32.const 12
    call $-string
    drop
    i32.const 70240
    i32.const 15
    call $-string
    drop
    i32.const 70264
    i32.const 15
    call $-string
    drop
    i32.const 70288
    i32.const 15
    call $-string
    drop
    i32.const 70312
    i32.const 15
    call $-string
    drop
    i32.const 70336
    i32.const 16
    call $-string
    drop
    i32.const 70368
    i32.const 16
    call $-string
    drop
    i32.const 70400
    i32.const 15
    call $-string
    drop
    i32.const 70424
    i32.const 15
    call $-string
    drop
    i32.const 70448
    i32.const 15
    call $-string
    drop
    i32.const 70472
    i32.const 15
    call $-string
    drop
    i32.const 70496
    i32.const 17
    call $-string
    drop
    i32.const 70528
    i32.const 17
    call $-string
    drop
    i32.const 70560
    i32.const 17
    call $-string
    drop
    i32.const 70592
    i32.const 17
    call $-string
    drop
    i32.const 70624
    i32.const 14
    call $-string
    drop
    i32.const 70648
    i32.const 17
    call $-string
    drop
    i32.const 70680
    i32.const 17
    call $-string
    drop
    i32.const 70712
    i32.const 17
    call $-string
    drop
    i32.const 70744
    i32.const 17
    call $-string
    drop
    i32.const 70776
    i32.const 15
    call $-string
    drop
    i32.const 70800
    i32.const 19
    call $-string
    drop
    i32.const 70832
    i32.const 19
    call $-string
    drop
    i32.const 70864
    i32.const 19
    call $-string
    drop
    i32.const 70896
    i32.const 19
    call $-string
    drop
    call $-funcstart
    get_global $g1
    drop
    get_global $g2
    drop
    get_global $g3
    drop
    get_global $g4
    drop
    get_global $g5
    drop
    get_global $g6
    drop
    get_global $g7
    drop
    get_global $g8
    drop
    get_global $g9
    drop
    get_global $g10
    drop
    i32.const 5
    i32.const 0
    call $-new_value
    tee_local $-obj0
    get_local $-obj0
    i32.const 113
    f64.const 0x0p+0 (;=0;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 113
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 114
    f64.const 0x1p+0 (;=1;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 114
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 48
    f64.const 0x1p+1 (;=2;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 48
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 49
    f64.const 0x1.8p+1 (;=3;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 49
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 50
    f64.const 0x1p+2 (;=4;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 50
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 56
    f64.const 0x1.4p+2 (;=5;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 56
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 57
    f64.const 0x1.6p+3 (;=11;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 57
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 58
    f64.const 0x1.8p+3 (;=12;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 58
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 59
    f64.const 0x1.ap+3 (;=13;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 59
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 61
    f64.const 0x1.cp+3 (;=14;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 61
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 115
    f64.const 0x1.ep+3 (;=15;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 115
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 62
    f64.const 0x1p+4 (;=16;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 62
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 64
    f64.const 0x1.1p+4 (;=17;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 64
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 116
    f64.const 0x1.ap+4 (;=26;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 116
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 117
    f64.const 0x1.bp+4 (;=27;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 117
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 118
    f64.const 0x1p+5 (;=32;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 118
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 119
    f64.const 0x1.08p+5 (;=33;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 119
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 120
    f64.const 0x1.1p+5 (;=34;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 120
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 121
    f64.const 0x1.18p+5 (;=35;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 121
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 122
    f64.const 0x1.2p+5 (;=36;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 122
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 123
    f64.const 0x1.4p+5 (;=40;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 123
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 124
    f64.const 0x1.48p+5 (;=41;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 124
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 125
    f64.const 0x1.5p+5 (;=42;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 125
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 126
    f64.const 0x1.58p+5 (;=43;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 126
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 127
    f64.const 0x1.6p+5 (;=44;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 127
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 128
    f64.const 0x1.68p+5 (;=45;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 128
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 129
    f64.const 0x1.7p+5 (;=46;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 129
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 130
    f64.const 0x1.78p+5 (;=47;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 130
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 131
    f64.const 0x1.8p+5 (;=48;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 131
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 132
    f64.const 0x1.88p+5 (;=49;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 132
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 133
    f64.const 0x1.9p+5 (;=50;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 133
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 134
    f64.const 0x1.98p+5 (;=51;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 134
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 135
    f64.const 0x1.ap+5 (;=52;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 135
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 136
    f64.const 0x1.a8p+5 (;=53;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 136
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 137
    f64.const 0x1.bp+5 (;=54;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 137
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 138
    f64.const 0x1.b8p+5 (;=55;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 138
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 139
    f64.const 0x1.cp+5 (;=56;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 139
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 140
    f64.const 0x1.c8p+5 (;=57;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 140
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 141
    f64.const 0x1.dp+5 (;=58;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 141
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 142
    f64.const 0x1.d8p+5 (;=59;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 142
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 143
    f64.const 0x1.ep+5 (;=60;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 143
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 144
    f64.const 0x1.e8p+5 (;=61;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 144
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 145
    f64.const 0x1.fp+5 (;=62;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 145
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 75
    f64.const 0x1.f8p+5 (;=63;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 75
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 76
    f64.const 0x1p+6 (;=64;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 76
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 77
    f64.const 0x1.04p+6 (;=65;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 77
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 78
    f64.const 0x1.08p+6 (;=66;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 78
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 80
    f64.const 0x1.0cp+6 (;=67;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 80
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 81
    f64.const 0x1.1p+6 (;=68;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 81
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 146
    f64.const 0x1.14p+6 (;=69;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 146
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 147
    f64.const 0x1.18p+6 (;=70;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 147
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 148
    f64.const 0x1.1cp+6 (;=71;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 148
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 149
    f64.const 0x1.2p+6 (;=72;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 149
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 150
    f64.const 0x1.24p+6 (;=73;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 150
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 151
    f64.const 0x1.28p+6 (;=74;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 151
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 152
    f64.const 0x1.2cp+6 (;=75;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 152
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 153
    f64.const 0x1.3p+6 (;=76;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 153
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 154
    f64.const 0x1.34p+6 (;=77;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 154
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 155
    f64.const 0x1.38p+6 (;=78;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 155
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 156
    f64.const 0x1.3cp+6 (;=79;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 156
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 157
    f64.const 0x1.4p+6 (;=80;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 157
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 158
    f64.const 0x1.44p+6 (;=81;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 158
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 159
    f64.const 0x1.48p+6 (;=82;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 159
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 160
    f64.const 0x1.4cp+6 (;=83;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 160
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 161
    f64.const 0x1.5p+6 (;=84;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 161
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 162
    f64.const 0x1.54p+6 (;=85;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 162
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 163
    f64.const 0x1.58p+6 (;=86;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 163
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 164
    f64.const 0x1.5cp+6 (;=87;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 164
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 165
    f64.const 0x1.6p+6 (;=88;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 165
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 166
    f64.const 0x1.64p+6 (;=89;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 166
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 167
    f64.const 0x1.68p+6 (;=90;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 167
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 168
    f64.const 0x1.6cp+6 (;=91;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 168
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 169
    f64.const 0x1.7p+6 (;=92;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 169
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 170
    f64.const 0x1.74p+6 (;=93;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 170
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 171
    f64.const 0x1.78p+6 (;=94;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 171
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 172
    f64.const 0x1.7cp+6 (;=95;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 172
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 173
    f64.const 0x1.8p+6 (;=96;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 173
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 174
    f64.const 0x1.84p+6 (;=97;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 174
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 175
    f64.const 0x1.88p+6 (;=98;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 175
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 176
    f64.const 0x1.8cp+6 (;=99;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 176
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 177
    f64.const 0x1.9p+6 (;=100;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 177
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 178
    f64.const 0x1.94p+6 (;=101;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 178
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 179
    f64.const 0x1.98p+6 (;=102;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 179
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 180
    f64.const 0x1.9cp+6 (;=103;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 180
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 181
    f64.const 0x1.ap+6 (;=104;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 181
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 182
    f64.const 0x1.a4p+6 (;=105;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 182
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 183
    f64.const 0x1.a8p+6 (;=106;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 183
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 184
    f64.const 0x1.acp+6 (;=107;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 184
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 185
    f64.const 0x1.bp+6 (;=108;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 185
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 186
    f64.const 0x1.b4p+6 (;=109;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 186
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 187
    f64.const 0x1.b8p+6 (;=110;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 187
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 188
    f64.const 0x1.bcp+6 (;=111;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 188
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 189
    f64.const 0x1.cp+6 (;=112;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 189
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 190
    f64.const 0x1.c4p+6 (;=113;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 190
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 191
    f64.const 0x1.c8p+6 (;=114;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 191
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 192
    f64.const 0x1.ccp+6 (;=115;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 192
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 193
    f64.const 0x1.dp+6 (;=116;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 193
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 194
    f64.const 0x1.d4p+6 (;=117;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 194
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 195
    f64.const 0x1.d8p+6 (;=118;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 195
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 196
    f64.const 0x1.dcp+6 (;=119;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 196
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 197
    f64.const 0x1.ep+6 (;=120;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 197
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 198
    f64.const 0x1.e4p+6 (;=121;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 198
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 199
    f64.const 0x1.e8p+6 (;=122;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 199
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 200
    f64.const 0x1.ecp+6 (;=123;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 200
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 201
    f64.const 0x1.fp+6 (;=124;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 201
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 202
    f64.const 0x1.f4p+6 (;=125;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 202
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 203
    f64.const 0x1.f8p+6 (;=126;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 203
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 204
    f64.const 0x1.fcp+6 (;=127;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 204
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 205
    f64.const 0x1p+7 (;=128;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 205
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 206
    f64.const 0x1.02p+7 (;=129;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 206
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 207
    f64.const 0x1.04p+7 (;=130;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 207
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 208
    f64.const 0x1.06p+7 (;=131;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 208
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 209
    f64.const 0x1.08p+7 (;=132;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 209
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 210
    f64.const 0x1.0ap+7 (;=133;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 210
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 211
    f64.const 0x1.0cp+7 (;=134;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 211
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 212
    f64.const 0x1.0ep+7 (;=135;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 212
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 213
    f64.const 0x1.1p+7 (;=136;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 213
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 214
    f64.const 0x1.12p+7 (;=137;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 214
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 215
    f64.const 0x1.14p+7 (;=138;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 215
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 216
    f64.const 0x1.16p+7 (;=139;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 216
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 217
    f64.const 0x1.18p+7 (;=140;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 217
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 218
    f64.const 0x1.1ap+7 (;=141;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 218
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 219
    f64.const 0x1.1cp+7 (;=142;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 219
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 220
    f64.const 0x1.1ep+7 (;=143;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 220
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 221
    f64.const 0x1.2p+7 (;=144;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 221
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 222
    f64.const 0x1.22p+7 (;=145;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 222
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 223
    f64.const 0x1.24p+7 (;=146;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 223
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 224
    f64.const 0x1.26p+7 (;=147;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 224
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 225
    f64.const 0x1.28p+7 (;=148;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 225
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 226
    f64.const 0x1.2ap+7 (;=149;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 226
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 227
    f64.const 0x1.2cp+7 (;=150;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 227
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 228
    f64.const 0x1.2ep+7 (;=151;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 228
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 229
    f64.const 0x1.3p+7 (;=152;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 229
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 230
    f64.const 0x1.32p+7 (;=153;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 230
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 231
    f64.const 0x1.34p+7 (;=154;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 231
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 232
    f64.const 0x1.36p+7 (;=155;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 232
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 233
    f64.const 0x1.38p+7 (;=156;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 233
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 234
    f64.const 0x1.3ap+7 (;=157;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 234
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 235
    f64.const 0x1.3cp+7 (;=158;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 235
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 236
    f64.const 0x1.3ep+7 (;=159;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 236
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 237
    f64.const 0x1.4p+7 (;=160;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 237
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 238
    f64.const 0x1.42p+7 (;=161;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 238
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 239
    f64.const 0x1.44p+7 (;=162;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 239
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 240
    f64.const 0x1.46p+7 (;=163;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 240
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 241
    f64.const 0x1.48p+7 (;=164;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 241
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 242
    f64.const 0x1.4ap+7 (;=165;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 242
    call $-get_from_obj
    drop
    get_local $-obj0
    i32.const 243
    f64.const 0x1.4cp+7 (;=166;)
    call $-number
    call $-set_to_obj
    get_local $-obj0
    i32.const 243
    call $-get_from_obj
    drop
    set_global $g11
    get_global $g11
    drop
    get_global $g11
    i32.const 244
    f64.const 0x1.4ep+7 (;=167;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 244
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 245
    f64.const 0x1.5p+7 (;=168;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 245
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 246
    f64.const 0x1.52p+7 (;=169;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 246
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 247
    f64.const 0x1.54p+7 (;=170;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 247
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 248
    f64.const 0x1.56p+7 (;=171;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 248
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 249
    f64.const 0x1.58p+7 (;=172;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 249
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 250
    f64.const 0x1.5ap+7 (;=173;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 250
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 251
    f64.const 0x1.5cp+7 (;=174;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 251
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 252
    f64.const 0x1.5ep+7 (;=175;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 252
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 253
    f64.const 0x1.6p+7 (;=176;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 253
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 254
    f64.const 0x1.62p+7 (;=177;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 254
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 255
    f64.const 0x1.64p+7 (;=178;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 255
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 256
    f64.const 0x1.66p+7 (;=179;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 256
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 257
    f64.const 0x1.68p+7 (;=180;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 257
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 258
    f64.const 0x1.6ap+7 (;=181;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 258
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 259
    f64.const 0x1.6cp+7 (;=182;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 259
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 260
    f64.const 0x1.6ep+7 (;=183;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 260
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 261
    f64.const 0x1.7p+7 (;=184;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 261
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 262
    f64.const 0x1.72p+7 (;=185;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 262
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 263
    f64.const 0x1.74p+7 (;=186;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 263
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 264
    f64.const 0x1.76p+7 (;=187;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 264
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 265
    f64.const 0x1.78p+7 (;=188;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 265
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 266
    f64.const 0x1.7ap+7 (;=189;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 266
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 267
    f64.const 0x1.7cp+7 (;=190;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 267
    call $-get_from_obj
    drop
    get_global $g11
    i32.const 268
    f64.const 0x1.7ep+7 (;=191;)
    call $-number
    call $-set_to_obj
    get_global $g11
    i32.const 268
    call $-get_from_obj
    drop)
  (func $--ns0\init (type $t2) (result f64)
    call $-funcstart
    call $ns0\init
    call $-funcend
    call $-f64)
  (func $-initruntime (type $t8)
    i32.const 65536
    memory.size
    i32.mul
    set_global $g12
    i32.const 0
    i32.const 65536
    memory.size
    i32.mul
    i32.const 8
    i32.sub
    i32.store
    i32.const 8
    call $-alloc
    set_global $g16)
  (func $-funcstart (type $t8)
    get_global $g13
    i32.const 1
    i32.le_u
    if $I0
      call $-zerorefs
      call $-garbagecollect
    end
    get_global $g13
    i32.const 1
    i32.add
    set_global $g13)
  (func $-funcend (type $t4) (param $ret i32) (result i32)
    get_global $g13
    if $I0
      get_global $g13
      i32.const 1
      i32.sub
      set_global $g13
      get_local $ret
      if $I1
        get_global $g19
        i32.const 1
        i32.add
        i32.const 127
        i32.and
        set_global $g19
        get_local $ret
        call $-passdown
      end
      get_global $g14
      get_global $g13
      i32.gt_u
      if $I2
        call $-garbagecollect
      end
    end
    get_local $ret)
  (func $-alloc (type $t4) (param $len i32) (result i32)
    (local $offset i32) (local $offset2 i32) (local $space i32) (local $space2 i32) (local $totmem i32) (local $allowgrow i32)
    get_global $g15
    if $I0
      get_global $g15
      i32.const 8
      i32.sub
      set_local $offset
      get_local $offset
      get_local $offset
      i32.load
      i32.sub
      set_local $offset
    else
      i32.const 1
      set_local $allowgrow
    end
    get_local $offset
    i32.load
    set_local $space
    get_local $space
    i32.const -8
    i32.and
    set_local $space
    block $B1
      loop $L2
        get_local $space
        get_local $len
        i32.const 32
        i32.add
        i32.gt_u
        br_if $B1
        get_local $offset
        get_local $space
        i32.add
        i32.const 4
        i32.add
        set_local $offset
        get_local $offset
        i32.load
        set_local $space
        get_global $g12
        get_local $offset
        i32.sub
        i32.const 8
        i32.le_u
        if $I3
          get_local $allowgrow
          if $I4
            get_global $g12
            i32.const 8
            i32.add
            set_local $offset2
            memory.size
            memory.grow
            drop
            i32.const 65536
            memory.size
            i32.mul
            set_global $g12
            get_local $offset2
            get_global $g12
            i32.const 8
            get_local $offset2
            i32.add
            i32.sub
            i32.store
            get_local $offset2
            i32.const 8
            i32.sub
            call $-dealloc
            i32.const 0
            i32.load
            set_local $space
            get_local $space
            i32.const 4
            i32.add
            set_local $offset
            get_local $offset
            i32.load
            set_local $space
          else
            call $-garbagecollect
            i32.const 1
            set_local $allowgrow
            i32.const 0
            set_local $offset
            get_local $offset
            i32.load
            set_local $space
            get_local $space
            i32.const -8
            i32.and
            set_local $space
            get_local $offset
            get_local $space
            i32.add
            i32.const 4
            i32.add
            set_local $offset
            get_local $offset
            i32.load
            set_local $space
          end
        end
        get_local $offset
        get_local $space
        i32.add
        i32.const 4
        i32.add
        set_local $offset
        get_local $offset
        i32.const -8
        i32.and
        i32.const 8
        i32.add
        set_local $offset
        get_local $offset
        i32.load
        set_local $space
        get_local $space
        i32.const -8
        i32.and
        set_local $space
        br $L2
      end
    end
    get_local $offset
    i32.const 0
    i32.store
    get_local $offset
    i32.const 4
    i32.add
    set_local $offset2
    get_local $offset2
    get_local $len
    i32.store
    get_local $offset2
    get_local $len
    i32.add
    i32.const 4
    i32.add
    set_local $offset2
    get_local $offset2
    i32.const -8
    i32.and
    set_local $offset2
    get_local $offset2
    i64.const 0
    i64.store
    get_local $offset2
    i32.const 8
    i32.add
    set_local $offset2
    get_local $space
    get_local $offset2
    get_local $offset
    i32.sub
    i32.sub
    set_local $space2
    get_local $offset2
    get_local $space2
    i32.store
    get_local $offset2
    get_local $space2
    i32.add
    set_local $offset2
    get_local $offset2
    get_local $space2
    i32.store
    i32.const 8
    get_local $offset
    i32.add
    set_local $offset
    get_local $offset
    get_local $len
    call $-memzero
    get_local $offset
    set_global $g15
    get_local $offset
    return)
  (func $-dealloc (type $t9) (param $offset i32)
    (local $offset i32) (local $offset2 i32) (local $space i32) (local $space2 i32)
    get_local $offset
    get_global $g15
    i32.eq
    if $I0
      i32.const 0
      set_global $g15
    end
    get_local $offset
    i32.const -8
    i32.and
    i32.const 8
    i32.sub
    set_local $offset
    get_local $offset
    i32.load
    set_local $space
    get_local $space
    i32.const -8
    i32.and
    set_local $space
    get_local $offset
    get_local $space
    i32.sub
    set_local $offset
    get_local $offset
    get_local $space
    i32.add
    i32.const 4
    i32.add
    set_local $offset2
    get_local $offset2
    i32.load
    set_local $space2
    get_local $offset2
    get_local $space2
    i32.add
    i32.const 4
    i32.add
    set_local $offset2
    get_local $offset2
    i32.const -8
    i32.and
    i32.const 8
    i32.add
    set_local $offset2
    get_local $offset2
    i32.load
    set_local $space2
    get_local $space2
    i32.const -8
    i32.and
    set_local $space2
    get_local $offset2
    get_local $space2
    i32.add
    set_local $offset2
    get_local $offset2
    get_local $offset
    i32.sub
    set_local $space
    get_local $offset
    get_local $space
    i32.store
    get_local $offset2
    get_local $space
    i32.store)
  (func $-memzero (type $t10) (param $offset i32) (param $len i32)
    block $B0
      loop $L1
        get_local $len
        i32.const 8
        i32.lt_u
        br_if $B0
        get_local $offset
        i64.const 0
        i64.store
        get_local $offset
        i32.const 8
        i32.add
        set_local $offset
        get_local $len
        i32.const 8
        i32.sub
        set_local $len
        br $L1
      end
    end
    block $B2
      loop $L3
        get_local $len
        i32.eqz
        br_if $B2
        get_local $offset
        i32.const 0
        i32.store8
        get_local $offset
        i32.const 1
        i32.add
        set_local $offset
        get_local $len
        i32.const 1
        i32.sub
        set_local $len
        br $L3
      end
    end)
  (func $-memcopy (type $t11) (param $from i32) (param $to i32) (param $len i32)
    (local $delta i32)
    get_local $from
    get_local $to
    i32.lt_u
    if $I0
      i32.const -8
      set_local $delta
      get_local $from
      get_local $len
      i32.add
      set_local $from
      get_local $to
      get_local $len
      i32.add
      set_local $to
      block $B1
        loop $L2
          get_local $len
          i32.const 8
          i32.lt_s
          br_if $B1
          get_local $from
          get_local $delta
          i32.add
          set_local $from
          get_local $to
          get_local $delta
          i32.add
          set_local $to
          get_local $to
          get_local $from
          i64.load
          i64.store
          get_local $len
          i32.const 8
          i32.sub
          set_local $len
          br $L2
        end
      end
      i32.const -1
      set_local $delta
      block $B3
        loop $L4
          get_local $len
          i32.const 1
          i32.lt_s
          br_if $B3
          get_local $from
          get_local $delta
          i32.add
          set_local $from
          get_local $to
          get_local $delta
          i32.add
          set_local $to
          get_local $to
          get_local $from
          i32.load8_u
          i32.store8
          get_local $len
          i32.const 1
          i32.sub
          set_local $len
          br $L4
        end
      end
    else
      i32.const 8
      set_local $delta
      block $B5
        loop $L6
          get_local $len
          i32.const 8
          i32.lt_s
          br_if $B5
          get_local $to
          get_local $from
          i64.load
          i64.store
          get_local $from
          get_local $delta
          i32.add
          set_local $from
          get_local $to
          get_local $delta
          i32.add
          set_local $to
          get_local $len
          i32.const 8
          i32.sub
          set_local $len
          br $L6
        end
      end
      i32.const 1
      set_local $delta
      block $B7
        loop $L8
          get_local $len
          i32.const 1
          i32.lt_s
          br_if $B7
          get_local $to
          get_local $from
          i32.load8_u
          i32.store8
          get_local $from
          get_local $delta
          i32.add
          set_local $from
          get_local $to
          get_local $delta
          i32.add
          set_local $to
          get_local $len
          i32.const 1
          i32.sub
          set_local $len
          br $L8
        end
      end
    end)
  (func $-offset (type $t4) (param $id i32) (result i32)
    (local $offset i32)
    get_local $id
    i32.const -1
    i32.eq
    if $I0
      get_global $g16
      set_local $offset
    else
      get_local $id
      i32.const 8
      i32.lt_u
      if $I1
        i32.const 0
        set_local $offset
      else
        get_local $id
        i32.const 8
        i32.sub
        set_local $id
        i32.const -1
        call $-len
        i32.const 8
        get_local $id
        i32.mul
        i32.gt_u
        if $I2
          get_global $g16
          i32.const 8
          get_local $id
          i32.mul
          i32.add
          set_local $offset
          get_local $offset
          i32.load
          set_local $offset
        end
      end
    end
    get_local $offset
    i32.const -8
    i32.and
    set_local $offset
    get_local $offset)
  (func $-datatype (type $t4) (param $id i32) (result i32)
    (local $datatype i32)
    get_local $id
    i32.const -1
    i32.eq
    if $I0
      i32.const 7
      set_local $datatype
    else
      get_local $id
      i32.const 8
      i32.lt_u
      if $I1
        get_local $id
        i32.const 3
        i32.and
        set_local $datatype
      else
        get_global $g16
        i32.const 64
        i32.sub
        set_local $datatype
        get_local $datatype
        i32.const 8
        get_local $id
        i32.mul
        i32.const 6
        i32.add
        i32.add
        set_local $datatype
        get_local $datatype
        i32.load8_u
        set_local $datatype
      end
    end
    get_local $datatype)
  (func $-len (type $t4) (param $id i32) (result i32)
    (local $offset i32) (local $len i32)
    get_local $id
    call $-offset
    set_local $offset
    get_local $offset
    if $I0
      get_local $offset
      i32.const 4
      i32.sub
      i32.load
      set_local $len
    end
    get_local $len)
  (func $-callstack_depth (type $t4) (param $id i32) (result i32)
    (local $depth i32)
    get_local $id
    i32.const 8
    i32.ge_u
    if $I0
      get_global $g16
      i32.const 64
      i32.sub
      set_local $depth
      get_local $depth
      i32.const 8
      get_local $id
      i32.mul
      i32.const 4
      i32.add
      i32.add
      set_local $depth
      get_local $depth
      i32.load16_u
      set_local $depth
    end
    get_local $depth)
  (func $-resize (type $t10) (param $id i32) (param $newlen i32)
    (local $offset i32) (local $len i32) (local $spaceafter i32) (local $newoffset i32)
    get_local $id
    i32.const -1
    i32.eq
    if $I0
      i32.const 1
      set_local $len
      block $B1
        loop $L2
          get_local $len
          get_local $newlen
          i32.ge_u
          br_if $B1
          get_local $len
          i32.const 2
          i32.mul
          set_local $len
          br $L2
        end
      end
      get_local $len
      set_local $newlen
    end
    get_local $id
    call $-offset
    set_local $offset
    get_local $offset
    if $I3
      get_local $offset
      i32.const 4
      i32.sub
      i32.load
      set_local $len
      get_local $len
      i32.const -8
      i32.and
      get_local $newlen
      i32.const -8
      i32.and
      i32.eq
      if $I4
        get_local $offset
        i32.const 4
        i32.sub
        get_local $newlen
        i32.store
        get_local $len
        get_local $newlen
        i32.gt_u
        if $I5
          get_local $offset
          get_local $newlen
          i32.add
          get_local $len
          get_local $newlen
          i32.sub
          call $-memzero
        else
          get_local $offset
          get_local $len
          i32.add
          get_local $newlen
          get_local $len
          i32.sub
          call $-memzero
        end
      else
        get_local $offset
        get_local $len
        i32.const -8
        i32.and
        i32.const 8
        i32.add
        i32.add
        i32.load
        set_local $spaceafter
        get_local $len
        get_local $newlen
        i32.gt_u
        get_local $spaceafter
        get_local $newlen
        get_local $len
        i32.sub
        i32.gt_u
        i32.or
        if $I6
          get_local $spaceafter
          get_local $len
          i32.const -8
          i32.and
          get_local $newlen
          i32.const -8
          i32.and
          i32.sub
          i32.add
          set_local $spaceafter
          get_local $offset
          i32.const 4
          i32.sub
          get_local $newlen
          i32.store
          get_local $len
          get_local $newlen
          i32.gt_u
          if $I7
            get_local $offset
            get_local $newlen
            i32.add
            get_local $len
            get_local $newlen
            i32.sub
            call $-memzero
          else
            get_local $offset
            get_local $len
            i32.add
            get_local $newlen
            get_local $len
            i32.sub
            call $-memzero
          end
          get_local $offset
          get_local $newlen
          i32.const -8
          i32.and
          i32.const 8
          i32.add
          i32.add
          get_local $spaceafter
          i32.store
          get_local $offset
          get_local $newlen
          i32.const -8
          i32.and
          i32.const 8
          i32.add
          i32.add
          get_local $spaceafter
          i32.add
          get_local $spaceafter
          i32.store
        else
          get_local $newlen
          i32.const 2
          i32.mul
          call $-alloc
          set_local $newoffset
          get_local $offset
          get_local $newoffset
          get_local $len
          call $-memcopy
          get_local $offset
          call $-dealloc
          get_local $id
          i32.const -1
          i32.eq
          if $I8
            get_local $newoffset
            set_global $g16
          else
            i32.const -1
            get_local $id
            i32.const 8
            i32.sub
            i32.const 8
            i32.mul
            get_local $newoffset
            call $-write32
          end
          i32.const 6
          i32.const 1
          call $-new_value
          drop
          i32.const 6
          i32.const 1
          call $-new_value
          drop
          get_local $id
          get_local $newlen
          call $-resize
        end
      end
    end)
  (func $-set_datatype (type $t3) (param $id i32) (param $datatype i32) (result i32)
    (local $offset i32)
    get_local $id
    i32.const -1
    i32.eq
    if $I0
      i32.const 7
      set_local $datatype
    else
      get_local $id
      i32.const 8
      i32.lt_u
      if $I1
        get_local $id
        i32.const 3
        i32.and
        set_local $datatype
      else
        get_global $g16
        i32.const 64
        i32.sub
        set_local $offset
        get_local $offset
        i32.const 8
        get_local $id
        i32.mul
        i32.const 6
        i32.add
        i32.add
        set_local $offset
        get_local $offset
        get_local $datatype
        i32.store8
      end
    end
    get_local $id)
  (func $-read8 (type $t3) (param $id i32) (param $pos i32) (result i32)
    (local $offset i32) (local $data i32)
    get_local $id
    call $-offset
    set_local $offset
    get_local $pos
    get_local $id
    call $-len
    i32.lt_u
    if $I0
      get_local $offset
      get_local $pos
      i32.add
      i32.load8_u
      set_local $data
    end
    get_local $data)
  (func $-read16 (type $t3) (param $id i32) (param $pos i32) (result i32)
    (local $offset i32) (local $data i32)
    get_local $id
    call $-offset
    set_local $offset
    get_local $pos
    i32.const 1
    i32.add
    get_local $id
    call $-len
    i32.lt_u
    if $I0
      get_local $offset
      get_local $pos
      i32.add
      i32.load16_u
      set_local $data
    end
    get_local $data)
  (func $-read32 (type $t3) (param $id i32) (param $pos i32) (result i32)
    (local $offset i32) (local $data i32)
    get_local $id
    call $-offset
    set_local $offset
    get_local $pos
    i32.const 3
    i32.add
    get_local $id
    call $-len
    i32.lt_u
    if $I0
      get_local $offset
      get_local $pos
      i32.add
      i32.load
      set_local $data
    end
    get_local $data)
  (func $-write8 (type $t11) (param $id i32) (param $pos i32) (param $data i32)
    (local $offset i32)
    get_local $id
    call $-offset
    set_local $offset
    get_local $offset
    if $I0
      get_local $pos
      get_local $id
      call $-len
      i32.ge_u
      if $I1
        get_local $id
        get_local $pos
        i32.const 1
        i32.add
        call $-resize
        get_local $id
        call $-offset
        set_local $offset
      end
      get_local $offset
      get_local $pos
      i32.add
      get_local $data
      i32.store8
    end)
  (func $-write16 (type $t11) (param $id i32) (param $pos i32) (param $data i32)
    (local $offset i32)
    get_local $id
    call $-offset
    set_local $offset
    get_local $offset
    if $I0
      get_local $pos
      i32.const 1
      i32.add
      get_local $id
      call $-len
      i32.ge_u
      if $I1
        get_local $id
        get_local $pos
        i32.const 2
        i32.add
        call $-resize
        get_local $id
        call $-offset
        set_local $offset
      end
      get_local $offset
      get_local $pos
      i32.add
      get_local $data
      i32.store16
    end)
  (func $-write32 (type $t11) (param $id i32) (param $pos i32) (param $data i32)
    (local $offset i32)
    get_local $id
    call $-offset
    set_local $offset
    get_local $offset
    if $I0
      get_local $pos
      i32.const 3
      i32.add
      get_local $id
      call $-len
      i32.ge_u
      if $I1
        get_local $id
        get_local $pos
        i32.const 4
        i32.add
        call $-resize
        get_local $id
        call $-offset
        set_local $offset
      end
      get_local $offset
      get_local $pos
      i32.add
      get_local $data
      i32.store
    end)
  (func $-write_to (type $t11) (param $id i32) (param $pos i32) (param $data_id i32)
    (local $offset i32) (local $len i32)
    get_local $id
    call $-offset
    set_local $offset
    get_local $data_id
    call $-len
    set_local $len
    get_local $offset
    if $I0
      get_local $pos
      get_local $len
      i32.add
      get_local $id
      call $-len
      i32.gt_u
      if $I1
        get_local $id
        get_local $pos
        get_local $len
        i32.add
        call $-resize
        get_local $id
        call $-offset
        set_local $offset
      end
      get_local $data_id
      call $-offset
      get_local $offset
      get_local $pos
      i32.add
      get_local $len
      call $-memcopy
    end)
  (func $-new_value (type $t3) (param $datatype i32) (param $len i32) (result i32)
    (local $offset i32) (local $id i32)
    get_global $g17
    set_local $id
    get_local $len
    call $-alloc
    set_local $offset
    block $B0
      loop $L1
        i32.const -1
        get_local $id
        i32.const 8
        i32.mul
        call $-read32
        i32.eqz
        br_if $B0
        get_local $id
        i32.const 1
        i32.add
        set_local $id
        br $L1
      end
    end
    i32.const -1
    get_local $id
    i32.const 8
    i32.mul
    get_local $offset
    call $-write32
    i32.const -1
    get_local $id
    i32.const 8
    i32.mul
    i32.const 4
    i32.add
    get_global $g13
    call $-write16
    i32.const -1
    get_local $id
    i32.const 8
    i32.mul
    i32.const 6
    i32.add
    get_local $datatype
    call $-write8
    i32.const -1
    get_local $id
    i32.const 8
    i32.mul
    i32.const 7
    i32.add
    i32.const 130
    call $-write8
    get_local $id
    i32.const 1
    i32.add
    set_global $g17
    get_local $id
    i32.const 8
    i32.add)
  (func $-ref (type $t9) (param $id i32)
    (local $refs i32)
    get_local $id
    call $-offset
    if $I0
      get_local $id
      i32.const 8
      i32.sub
      set_local $id
      i32.const -1
      get_local $id
      i32.const 8
      i32.mul
      i32.const 7
      i32.add
      i32.const 1
      call $-write8
    end)
  (func $-zerorefs (type $t8)
    (local $id i32)
    get_global $g18
    i32.eqz
    if $I0
      get_global $g17
      set_global $g18
    end
    i32.const -1
    call $-len
    i32.const 8
    i32.div_u
    set_local $id
    block $B1
      loop $L2
        get_local $id
        i32.eqz
        br_if $B1
        get_local $id
        i32.const 1
        i32.sub
        set_local $id
        get_local $id
        get_global $g18
        i32.lt_u
        if $I3
          i32.const -1
          get_local $id
          i32.const 8
          i32.mul
          i32.const 4
          i32.add
          i32.const 0
          call $-write16
        else
          i32.const -1
          get_local $id
          i32.const 8
          i32.mul
          i32.const 4
          i32.add
          i32.const 4
          call $-write16
        end
        br $L2
      end
    end)
  (func $-passdown (type $t9) (param $id i32)
    (local $offset i32) (local $datatype i32) (local $csdepth i32) (local $mark i32)
    get_local $id
    call $-offset
    set_local $offset
    get_local $offset
    if $I0
      get_local $id
      i32.const 8
      i32.sub
      set_local $id
      i32.const -1
      get_local $id
      i32.const 8
      i32.mul
      i32.const 7
      i32.add
      call $-read8
      set_local $mark
      i32.const -1
      get_local $id
      i32.const 8
      i32.mul
      i32.const 4
      i32.add
      call $-read16
      set_local $csdepth
      get_local $mark
      get_global $g19
      i32.ne
      get_local $csdepth
      get_global $g13
      i32.gt_u
      i32.or
      if $I1
        i32.const -1
        get_local $id
        i32.const 8
        i32.mul
        i32.const 7
        i32.add
        get_global $g19
        call $-write8
        get_local $csdepth
        get_global $g13
        i32.gt_u
        if $I2
          i32.const -1
          get_local $id
          i32.const 8
          i32.mul
          i32.const 4
          i32.add
          get_global $g13
          call $-write16
        end
        i32.const -1
        get_local $id
        i32.const 8
        i32.mul
        i32.const 6
        i32.add
        call $-read8
        set_local $datatype
        get_local $id
        i32.const 8
        i32.add
        set_local $id
        get_local $datatype
        i32.const 6
        i32.and
        i32.const 4
        i32.eq
        if $I3
          get_local $id
          call $-len
          set_local $offset
          block $B4
            loop $L5
              get_local $offset
              i32.eqz
              br_if $B4
              get_local $offset
              i32.const 4
              i32.sub
              set_local $offset
              get_local $id
              get_local $offset
              call $-read32
              call $-passdown
              br $L5
            end
          end
        end
      end
    end)
  (func $-garbagecollect (type $t8)
    (local $id i32) (local $csdepth i32) (local $offset i32) (local $last_id i32)
    get_global $g19
    i32.const 1
    i32.add
    i32.const 127
    i32.and
    set_global $g19
    call $-passdown_globals
    i32.const -1
    call $-len
    i32.const 8
    i32.div_u
    set_local $id
    block $B0
      loop $L1
        get_local $id
        i32.eqz
        br_if $B0
        get_local $id
        i32.const 1
        i32.sub
        set_local $id
        i32.const -1
        get_local $id
        i32.const 8
        i32.mul
        call $-read32
        set_local $offset
        i32.const -1
        get_local $id
        i32.const 8
        i32.mul
        i32.const 4
        i32.add
        call $-read16
        set_local $csdepth
        get_local $offset
        if $I2
          get_local $csdepth
          get_global $g13
          i32.gt_u
          if $I3
            get_local $offset
            call $-dealloc
            get_local $id
            set_global $g17
            i32.const -1
            get_local $id
            i32.const 8
            i32.mul
            i32.const 0
            call $-write32
            i32.const -1
            get_local $id
            i32.const 8
            i32.mul
            i32.const 4
            i32.add
            i32.const 0
            call $-write32
          else
            get_local $last_id
            i32.eqz
            if $I4
              get_local $id
              set_local $last_id
            end
          end
        end
        br $L1
      end
    end
    i32.const 0
    set_global $g15
    get_global $g13
    set_global $g14
    i32.const -1
    get_local $last_id
    i32.const 1
    i32.add
    i32.const 8
    i32.mul
    call $-resize)
  (func $-truthy (type $t4) (param $id i32) (result i32)
    (local $datatype i32) (local $truthy i32)
    get_local $id
    i32.const 4
    i32.gt_u
    if $I0
      i32.const 1
      set_local $truthy
      get_local $id
      call $-datatype
      set_local $datatype
      get_local $datatype
      i32.const 2
      i32.eq
      get_local $id
      call $-f64
      f64.const 0x0p+0 (;=0;)
      f64.eq
      i32.and
      if $I1
        i32.const 0
        set_local $truthy
      end
      get_local $datatype
      i32.const 3
      i32.eq
      get_local $id
      call $-len
      i32.const 0
      i32.eq
      i32.and
      if $I2
        i32.const 0
        set_local $truthy
      end
    end
    get_local $truthy)
  (func $-falsy (type $t4) (param $id i32) (result i32)
    get_local $id
    call $-truthy
    i32.eqz)
  (func $-compare (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    (local $res f64) (local $len i32) (local $pos i32)
    get_local $id1
    get_local $id2
    i32.eq
    if $I0
      i32.const 0
      return
    end
    get_local $id1
    call $-datatype
    get_local $id2
    call $-datatype
    i32.eq
    if $I1
      get_local $id1
      call $-datatype
      i32.const 6
      i32.and
      i32.const 4
      i32.eq
      if $I2
        get_local $id1
        get_local $id2
        i32.sub
        return
      end
      get_local $id1
      call $-datatype
      i32.const 3
      i32.lt_u
      if $I3
        get_local $id1
        call $-to_number
        call $-f64
        get_local $id2
        call $-to_number
        call $-f64
        f64.sub
        set_local $res
        get_local $res
        f64.const 0x0p+0 (;=0;)
        f64.eq
        if $I4
          i32.const 0
          return
        end
        get_local $res
        f64.const 0x0p+0 (;=0;)
        f64.gt
        if $I5
          i32.const 1
          return
        end
        get_local $res
        f64.const 0x0p+0 (;=0;)
        f64.lt
        if $I6
          i32.const -1
          return
        end
      else
        i32.const 0
        set_local $pos
        get_local $id1
        call $-len
        get_local $id2
        call $-len
        i32.lt_u
        if $I7
          get_local $id1
          call $-len
          set_local $len
        else
          get_local $id2
          call $-len
          set_local $len
        end
        block $B8
          loop $L9
            get_local $len
            i32.eqz
            br_if $B8
            get_local $id1
            get_local $pos
            call $-read8
            get_local $id2
            get_local $pos
            call $-read8
            i32.ne
            if $I10
              get_local $id1
              get_local $pos
              call $-read8
              get_local $id2
              get_local $pos
              call $-read8
              i32.sub
              return
            end
            get_local $pos
            i32.const 1
            i32.add
            set_local $pos
            get_local $len
            i32.const 1
            i32.sub
            set_local $len
            br $L9
          end
        end
        get_local $id1
        call $-len
        get_local $id2
        call $-len
        i32.sub
        return
      end
    else
      get_local $id1
      call $-datatype
      get_local $id2
      call $-datatype
      i32.sub
      return
    end
    i32.const 0
    return)
  (func $-equal (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    get_local $id1
    get_local $id2
    call $-compare
    if $I0
      i32.const 1
      return
    end
    i32.const 5)
  (func $-unequal (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    i32.const 6
    get_local $id1
    get_local $id2
    call $-equal
    i32.sub)
  (func $-lt (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    get_local $id1
    get_local $id2
    call $-compare
    i32.const 0
    i32.lt_s
    if $I0
      i32.const 5
      return
    end
    i32.const 1)
  (func $-le (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    get_local $id1
    get_local $id2
    call $-compare
    i32.const 0
    i32.le_s
    if $I0
      i32.const 5
      return
    end
    i32.const 1)
  (func $-gt (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    get_local $id1
    get_local $id2
    call $-compare
    i32.const 0
    i32.gt_s
    if $I0
      i32.const 5
      return
    end
    i32.const 1)
  (func $-ge (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    get_local $id1
    get_local $id2
    call $-compare
    i32.const 0
    i32.ge_s
    if $I0
      i32.const 5
      return
    end
    i32.const 1)
  (func $-and (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    (local $success i32)
    i32.const 1
    set_local $success
    get_local $id1
    call $-truthy
    if $I0
      get_local $id2
      set_local $success
    else
      get_local $id1
      set_local $success
    end
    get_local $success)
  (func $-or (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    (local $success i32)
    i32.const 1
    set_local $success
    get_local $id1
    call $-truthy
    if $I0
      get_local $id1
      set_local $success
    else
      get_local $id2
      set_local $success
    end
    get_local $success)
  (func $-concat (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    (local $len1 i32) (local $len2 i32) (local $datatype i32) (local $id3 i32) (local $offset i32)
    get_local $id1
    call $-len
    set_local $len1
    get_local $id2
    call $-len
    set_local $len2
    get_local $id1
    call $-datatype
    set_local $datatype
    get_local $datatype
    get_local $len1
    get_local $len2
    i32.add
    call $-new_value
    set_local $id3
    get_local $id1
    call $-offset
    get_local $id3
    call $-offset
    get_local $len1
    call $-memcopy
    get_local $id2
    call $-offset
    get_local $id3
    call $-offset
    get_local $len1
    i32.add
    get_local $len2
    call $-memcopy
    get_local $id3)
  (func $-to_number (type $t4) (param $id i32) (result i32)
    (local $datatype i32) (local $id3 i32)
    get_local $id
    call $-datatype
    set_local $datatype
    i32.const 2
    set_local $id3
    get_local $id
    i32.const 2
    i32.lt_u
    if $I0
      i32.const 2
      set_local $id3
    end
    get_local $id
    i32.const 5
    i32.eq
    if $I1
      i32.const 1
      call $-integer_u
      set_local $id3
    end
    get_local $datatype
    i32.const 2
    i32.eq
    if $I2
      get_local $id
      set_local $id3
    end
    get_local $id3)
  (func $-to_string (type $t4) (param $id i32) (result i32)
    (local $datatype i32) (local $id3 i32) (local $digit f64) (local $decimals i32) (local $pos i32)
    get_local $id
    call $-datatype
    set_local $datatype
    get_local $id
    set_local $id3
    get_local $id
    i32.const 0
    i32.eq
    if $I0
      i32.const 3
      i32.const 4
      call $-new_value
      set_local $id3
      get_local $id3
      i32.const 0
      i32.const 1819047278
      call $-write32
    end
    get_local $id
    i32.const 1
    i32.eq
    if $I1
      i32.const 3
      i32.const 5
      call $-new_value
      set_local $id3
      get_local $id3
      i32.const 0
      i32.const 1936482662
      call $-write32
      get_local $id3
      i32.const 4
      i32.const 101
      call $-write8
    end
    get_local $id
    i32.const 5
    i32.eq
    if $I2
      i32.const 3
      i32.const 4
      call $-new_value
      set_local $id3
      get_local $id3
      i32.const 0
      i32.const 1702195828
      call $-write32
    end
    get_local $datatype
    i32.const 2
    i32.eq
    if $I3
      i32.const 3
      i32.const 0
      call $-new_value
      set_local $id3
      get_local $id
      call $-f64
      set_local $digit
      get_local $digit
      f64.const 0x0p+0 (;=0;)
      f64.lt
      if $I4
        get_local $id3
        get_local $pos
        i32.const 45
        call $-write8
        get_local $pos
        i32.const 1
        i32.add
        set_local $pos
        get_local $digit
        f64.const -0x1p+0 (;=-1;)
        f64.mul
        set_local $digit
      end
      get_local $id3
      get_local $pos
      i32.const 48
      call $-write8
      block $B5
        loop $L6
          get_local $digit
          f64.const 0x1p+0 (;=1;)
          f64.lt
          br_if $B5
          get_local $digit
          f64.const 0x1.4p+3 (;=10;)
          f64.div
          set_local $digit
          get_local $id3
          get_local $pos
          i32.const 48
          call $-write8
          get_local $pos
          i32.const 1
          i32.add
          set_local $pos
          br $L6
        end
      end
      get_local $id
      call $-f64
      f64.abs
      f64.trunc
      i32.trunc_u/f64
      set_local $decimals
      block $B7
        loop $L8
          get_local $decimals
          i32.eqz
          br_if $B7
          get_local $pos
          i32.const 1
          i32.sub
          set_local $pos
          get_local $id3
          get_local $pos
          i32.const 48
          get_local $decimals
          i32.const 10
          i32.rem_u
          i32.add
          call $-write8
          get_local $decimals
          i32.const 10
          i32.div_u
          set_local $decimals
          br $L8
        end
      end
      get_local $id3
      call $-len
      set_local $pos
      i32.const 0
      set_local $decimals
      get_local $id
      call $-f64
      f64.abs
      set_local $digit
      get_local $digit
      get_local $digit
      f64.trunc
      f64.sub
      set_local $digit
      get_local $digit
      f64.const 0x1.4f8b588e368f1p-17 (;=1e-05;)
      f64.gt
      if $I9
        get_local $id3
        get_local $pos
        i32.const 46
        call $-write8
        get_local $pos
        i32.const 1
        i32.add
        set_local $pos
        get_local $digit
        f64.const 0x1.4p+3 (;=10;)
        f64.mul
        set_local $digit
        block $B10
          loop $L11
            get_local $decimals
            i32.const 16
            i32.ge_s
            br_if $B10
            get_local $id3
            get_local $pos
            i32.const 48
            get_local $digit
            f64.trunc
            i32.trunc_s/f64
            i32.add
            call $-write8
            get_local $pos
            i32.const 1
            i32.add
            set_local $pos
            get_local $digit
            get_local $digit
            f64.trunc
            f64.sub
            set_local $digit
            get_local $digit
            f64.const 0x1.4p+3 (;=10;)
            f64.mul
            set_local $digit
            get_local $digit
            f64.const 0x1.4f8b588e368f1p-17 (;=1e-05;)
            f64.le
            if $I12
              i32.const 1024
              set_local $decimals
            end
            get_local $decimals
            i32.const 1
            i32.add
            set_local $decimals
            br $L11
          end
        end
      end
    end
    get_local $datatype
    i32.const 4
    i32.eq
    if $I13
      i32.const 3
      i32.const 5
      call $-new_value
      set_local $id3
      get_local $id3
      i32.const 0
      i32.const 1634890337
      call $-write32
      get_local $id3
      i32.const 4
      i32.const 121
      call $-write8
    end
    get_local $datatype
    i32.const 5
    i32.eq
    if $I14
      i32.const 3
      i32.const 6
      call $-new_value
      set_local $id3
      get_local $id3
      i32.const 0
      i32.const 1701470831
      call $-write32
      get_local $id3
      i32.const 4
      i32.const 29795
      call $-write16
    end
    get_local $datatype
    i32.const 6
    i32.eq
    if $I15
      i32.const 3
      get_local $id
      call $-concat
      set_local $id3
    end
    get_local $id3)
  (func $-to_hex (type $t3) (param $int i32) (param $digits i32) (result i32)
    (local $str i32) (local $dig i32)
    i32.const 3
    get_local $digits
    call $-new_value
    set_local $str
    block $B0
      loop $L1
        get_local $digits
        i32.eqz
        br_if $B0
        get_local $digits
        i32.const 1
        i32.sub
        set_local $digits
        get_local $int
        i32.const 15
        i32.and
        set_local $dig
        get_local $int
        i32.const 16
        i32.div_u
        set_local $int
        get_local $dig
        i32.const 10
        i32.lt_u
        if $I2
          get_local $str
          get_local $digits
          i32.const 48
          get_local $dig
          i32.add
          call $-write8
        else
          get_local $str
          get_local $digits
          i32.const 87
          get_local $dig
          i32.add
          call $-write8
        end
        br $L1
      end
    end
    get_local $str)
  (func $-from_hex (type $t4) (param $str i32) (result i32)
    (local $int i32) (local $dig i32) (local $pos i32) (local $len i32)
    get_local $str
    call $-len
    set_local $len
    block $B0
      loop $L1
        get_local $pos
        get_local $len
        i32.ge_u
        br_if $B0
        get_local $int
        i32.const 16
        i32.mul
        set_local $int
        get_local $str
        get_local $pos
        call $-read8
        set_local $dig
        get_local $dig
        i32.const 95
        i32.gt_u
        if $I2
          get_local $dig
          i32.const 32
          i32.sub
          set_local $dig
        end
        get_local $dig
        i32.const 64
        i32.lt_u
        if $I3
          get_local $int
          get_local $dig
          i32.const 48
          i32.sub
          i32.add
          set_local $int
        else
          get_local $int
          get_local $dig
          i32.const 55
          i32.sub
          i32.add
          set_local $int
        end
        get_local $pos
        i32.const 1
        i32.add
        set_local $pos
        br $L1
      end
    end
    get_local $int)
  (func $-parse_integer (type $t12) (param $offset i32) (param $base i32) (result i64)
    (local $result i64) (local $neg i32) (local $char i32) (local $digit i32)
    get_local $offset
    i32.eqz
    if $I0
      get_global $g20
      set_local $offset
    end
    get_local $base
    i32.eqz
    if $I1
      i32.const 10
      set_local $base
    end
    i32.const 1
    set_local $neg
    get_local $offset
    i32.load8_u
    set_local $char
    get_local $char
    i32.const 45
    i32.eq
    if $I2
      i32.const -1
      set_local $neg
      i32.const 48
      set_local $char
      get_local $offset
      i32.const 1
      i32.add
      set_local $offset
    end
    get_local $char
    i32.const 43
    i32.eq
    if $I3
      i32.const 1
      set_local $neg
      i32.const 48
      set_local $char
      get_local $offset
      i32.const 1
      i32.add
      set_local $offset
    end
    block $B4
      loop $L5
        get_local $offset
        i32.load8_u
        set_local $char
        get_local $offset
        i32.const 1
        i32.add
        set_local $offset
        get_local $char
        i32.const 48
        i32.lt_u
        br_if $B4
        get_local $char
        i32.const 48
        i32.sub
        set_local $digit
        get_local $digit
        i32.const 9
        i32.gt_u
        if $I6
          get_local $digit
          i32.const 7
          i32.sub
          set_local $digit
        end
        get_local $digit
        i32.const 41
        i32.gt_u
        if $I7
          get_local $digit
          i32.const 32
          i32.sub
          set_local $digit
        end
        get_local $digit
        i32.const 33
        i32.eq
        if $I8
          i32.const 16
          set_local $base
          i32.const 0
          set_local $digit
        end
        get_local $digit
        get_local $base
        i32.ge_u
        br_if $B4
        get_local $result
        get_local $base
        i64.extend_u/i32
        i64.mul
        set_local $result
        get_local $result
        get_local $digit
        i64.extend_u/i32
        i64.add
        set_local $result
        br $L5
      end
    end
    get_local $offset
    i32.const 1
    i32.sub
    set_local $offset
    get_local $offset
    set_global $g20
    get_local $result
    get_local $neg
    i64.extend_s/i32
    i64.mul
    tee_local $result)
  (func $-parse_float (type $t13) (param $offset i32) (param $base i32) (result f64)
    (local $iresult f64) (local $dresult f64) (local $int i64) (local $dec i64) (local $declen i64) (local $exp i64) (local $pow i64) (local $neg f64) (local $k f64) (local $char i32)
    get_local $offset
    i32.eqz
    if $I0
      get_global $g20
      set_local $offset
    end
    get_local $base
    i32.eqz
    if $I1
      i32.const 10
      set_local $base
    end
    f64.const 0x1p+0 (;=1;)
    set_local $neg
    get_local $offset
    i32.load8_u
    set_local $char
    get_local $char
    i32.const 45
    i32.eq
    if $I2
      f64.const -0x1p+0 (;=-1;)
      set_local $neg
      get_local $offset
      i32.const 1
      i32.add
      set_local $offset
    end
    get_local $char
    i32.const 43
    i32.eq
    if $I3
      f64.const 0x1p+0 (;=1;)
      set_local $neg
      get_local $offset
      i32.const 1
      i32.add
      set_local $offset
    end
    get_local $offset
    i32.load16_u
    set_local $char
    get_local $char
    i32.const 22576
    i32.eq
    if $I4
      i32.const 16
      set_local $base
      get_local $offset
      i32.const 2
      i32.add
      set_local $offset
    end
    get_local $char
    i32.const 30768
    i32.eq
    if $I5
      i32.const 16
      set_local $base
      get_local $offset
      i32.const 2
      i32.add
      set_local $offset
    end
    get_local $offset
    get_local $base
    call $-parse_integer
    set_local $int
    get_global $g20
    set_local $offset
    get_local $offset
    i32.load8_u
    set_local $char
    get_local $offset
    i32.const 1
    i32.add
    set_local $offset
    get_local $char
    i32.const 46
    i32.eq
    if $I6
      get_local $offset
      get_local $base
      call $-parse_integer
      set_local $dec
      get_global $g20
      get_local $offset
      i32.sub
      i64.extend_u/i32
      set_local $declen
      get_global $g20
      set_local $offset
      get_local $offset
      i32.load8_u
      set_local $char
      get_local $offset
      i32.const 1
      i32.add
      set_local $offset
    end
    get_local $char
    i32.const 96
    i32.ge_u
    if $I7
      get_local $char
      i32.const 32
      i32.sub
      set_local $char
    end
    get_local $char
    i32.const 69
    i32.eq
    if $I8
      get_local $offset
      i32.const 0
      call $-parse_integer
      set_local $exp
    end
    get_local $char
    i32.const 80
    i32.eq
    if $I9
      get_local $offset
      i32.const 0
      call $-parse_integer
      set_local $pow
    end
    get_local $dec
    f64.convert_u/i64
    set_local $dresult
    get_local $exp
    get_local $declen
    i64.sub
    set_local $declen
    get_local $declen
    i64.const 0
    i64.lt_s
    if $I10
      f64.const -0x1p+0 (;=-1;)
      set_local $k
    else
      f64.const 0x1p+0 (;=1;)
      set_local $k
    end
    block $B11
      loop $L12
        get_local $declen
        i64.const 0
        i64.ge_s
        br_if $B11
        get_local $k
        get_local $base
        f64.convert_u/i32
        f64.mul
        set_local $k
        get_local $declen
        i64.const 1
        i64.add
        set_local $declen
        br $L12
      end
    end
    block $B13
      loop $L14
        get_local $declen
        i64.const 0
        i64.le_s
        br_if $B13
        get_local $k
        get_local $base
        f64.convert_u/i32
        f64.mul
        set_local $k
        get_local $declen
        i64.const 1
        i64.sub
        set_local $declen
        br $L14
      end
    end
    get_local $k
    f64.const 0x0p+0 (;=0;)
    f64.lt
    if $I15
      get_local $k
      f64.const -0x1p+0 (;=-1;)
      f64.mul
      set_local $k
      get_local $dresult
      get_local $k
      f64.div
      set_local $dresult
    else
      get_local $dresult
      get_local $k
      f64.mul
      set_local $dresult
    end
    get_local $int
    f64.convert_u/i64
    set_local $iresult
    get_local $exp
    i64.const 0
    i64.lt_s
    if $I16
      f64.const -0x1p+0 (;=-1;)
      set_local $k
    else
      f64.const 0x1p+0 (;=1;)
      set_local $k
    end
    block $B17
      loop $L18
        get_local $exp
        i64.const 0
        i64.ge_s
        br_if $B17
        get_local $k
        get_local $base
        f64.convert_u/i32
        f64.mul
        set_local $k
        get_local $exp
        i64.const 1
        i64.add
        set_local $exp
        br $L18
      end
    end
    block $B19
      loop $L20
        get_local $exp
        i64.const 0
        i64.le_s
        br_if $B19
        get_local $k
        get_local $base
        f64.convert_u/i32
        f64.mul
        set_local $k
        get_local $exp
        i64.const 1
        i64.sub
        set_local $exp
        br $L20
      end
    end
    get_local $k
    f64.const 0x0p+0 (;=0;)
    f64.lt
    if $I21
      get_local $k
      f64.const -0x1p+0 (;=-1;)
      f64.mul
      set_local $k
      get_local $iresult
      get_local $k
      f64.div
      set_local $iresult
    else
      get_local $iresult
      get_local $k
      f64.mul
      set_local $iresult
    end
    block $B22
      loop $L23
        get_local $pow
        i64.const 0
        i64.ge_s
        br_if $B22
        get_local $iresult
        f64.const 0x1p+1 (;=2;)
        f64.div
        set_local $iresult
        get_local $dresult
        f64.const 0x1p+1 (;=2;)
        f64.div
        set_local $dresult
        get_local $pow
        i64.const 1
        i64.add
        set_local $pow
        br $L23
      end
    end
    block $B24
      loop $L25
        get_local $pow
        i64.const 0
        i64.le_s
        br_if $B24
        get_local $iresult
        f64.const 0x1p+1 (;=2;)
        f64.mul
        set_local $iresult
        get_local $dresult
        f64.const 0x1p+1 (;=2;)
        f64.mul
        set_local $dresult
        get_local $pow
        i64.const 1
        i64.sub
        set_local $pow
        br $L25
      end
    end
    get_local $neg
    get_local $iresult
    get_local $dresult
    f64.add
    f64.mul)
  (func $-inc (type $t14) (param $num i32) (param $delta f64) (result i32)
    (local $offset i32) (local $float f64)
    get_local $num
    call $-offset
    set_local $offset
    get_local $offset
    if $I0
      get_local $offset
      f64.load
      set_local $float
      get_local $offset
      get_local $float
      get_local $delta
      f64.add
      f64.store
    else
      get_local $delta
      call $-number
      set_local $num
    end
    get_local $num)
  (func $-add (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    (local $datatype1 i32) (local $datatype2 i32) (local $id3 i32)
    get_local $id1
    call $-datatype
    set_local $datatype1
    get_local $id2
    call $-datatype
    set_local $datatype2
    get_local $datatype1
    i32.const 3
    i32.lt_u
    get_local $datatype2
    i32.const 3
    i32.lt_u
    i32.and
    if $I0
      get_local $id1
      call $-to_number
      call $-f64
      get_local $id2
      call $-to_number
      call $-f64
      f64.add
      call $-number
      set_local $id3
    else
      get_local $datatype1
      i32.const 3
      i32.eq
      get_local $datatype2
      i32.const 3
      i32.eq
      i32.or
      if $I1
        get_local $id1
        call $-to_string
        get_local $id2
        call $-to_string
        call $-concat
        set_local $id3
      else
        get_local $datatype1
        get_local $datatype2
        i32.eq
        if $I2
          get_local $id1
          get_local $id2
          call $-concat
          set_local $id3
        end
      end
    end
    get_local $id3)
  (func $-sub (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    (local $datatype1 i32) (local $datatype2 i32) (local $id3 i32)
    get_local $id1
    call $-datatype
    set_local $datatype1
    get_local $id2
    call $-datatype
    set_local $datatype2
    get_local $datatype1
    i32.const 3
    i32.lt_u
    get_local $datatype2
    i32.const 3
    i32.lt_u
    i32.and
    if $I0
      get_local $id1
      call $-to_number
      call $-f64
      get_local $id2
      call $-to_number
      call $-f64
      f64.sub
      call $-number
      set_local $id3
    end
    get_local $id3)
  (func $-mul (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    (local $datatype1 i32) (local $datatype2 i32) (local $id3 i32)
    get_local $id1
    call $-datatype
    set_local $datatype1
    get_local $id2
    call $-datatype
    set_local $datatype2
    get_local $datatype1
    i32.const 3
    i32.lt_u
    get_local $datatype2
    i32.const 3
    i32.lt_u
    i32.and
    if $I0
      get_local $id1
      call $-to_number
      call $-f64
      get_local $id2
      call $-to_number
      call $-f64
      f64.mul
      call $-number
      set_local $id3
    end
    get_local $id3)
  (func $-div (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    (local $datatype1 i32) (local $datatype2 i32) (local $id3 i32)
    get_local $id1
    call $-datatype
    set_local $datatype1
    get_local $id2
    call $-datatype
    set_local $datatype2
    get_local $datatype1
    i32.const 3
    i32.lt_u
    get_local $datatype2
    i32.const 3
    i32.lt_u
    i32.and
    if $I0
      get_local $id1
      call $-to_number
      call $-f64
      get_local $id2
      call $-to_number
      call $-f64
      f64.div
      call $-number
      set_local $id3
    end
    get_local $id3)
  (func $-mod (type $t3) (param $id1 i32) (param $id2 i32) (result i32)
    (local $datatype1 i32) (local $datatype2 i32) (local $f1 f64) (local $f2 f64) (local $f3 f64) (local $id3 i32)
    get_local $id1
    call $-datatype
    set_local $datatype1
    get_local $id2
    call $-datatype
    set_local $datatype2
    get_local $datatype1
    i32.const 3
    i32.lt_u
    get_local $datatype2
    i32.const 3
    i32.lt_u
    i32.and
    if $I0
      get_local $id1
      call $-to_number
      call $-f64
      set_local $f1
      get_local $id2
      call $-to_number
      call $-f64
      f64.abs
      set_local $f2
      get_local $f1
      get_local $f2
      f64.div
      f64.trunc
      set_local $f3
      get_local $f1
      get_local $f2
      get_local $f3
      f64.mul
      f64.sub
      set_local $f1
      get_local $f1
      call $-number
      set_local $id3
    end
    get_local $id3)
  (func $-f64 (type $t15) (param $id i32) (result f64)
    (local $val f64)
    get_local $id
    i32.const 4
    i32.gt_u
    if $I0
      get_local $id
      call $-offset
      f64.load
      set_local $val
    end
    get_local $val)
  (func $-i32_s (type $t4) (param $id i32) (result i32)
    get_local $id
    call $-f64
    i32.trunc_s/f64)
  (func $-i32_u (type $t4) (param $id i32) (result i32)
    get_local $id
    call $-f64
    i32.trunc_u/f64)
  (func $-number (type $t16) (param $val f64) (result i32)
    (local $id i32)
    i32.const 2
    set_local $id
    get_local $val
    f64.const 0x0p+0 (;=0;)
    f64.ne
    if $I0
      i32.const 2
      i32.const 0
      call $-new_value
      set_local $id
      get_local $id
      call $-offset
      get_local $val
      f64.store
    end
    get_local $id)
  (func $-integer_s (type $t4) (param $val i32) (result i32)
    get_local $val
    f64.convert_s/i32
    call $-number)
  (func $-integer_u (type $t4) (param $val i32) (result i32)
    get_local $val
    f64.convert_u/i32
    call $-number)
  (func $-string (type $t3) (param $offset i32) (param $len i32) (result i32)
    (local $id i32)
    i32.const 3
    get_local $len
    call $-new_value
    set_local $id
    get_local $offset
    get_local $id
    call $-offset
    get_local $len
    call $-memcopy
    get_local $id
    call $-ref
    get_local $id)
  (func $-char_size (type $t4) (param $byte i32) (result i32)
    (local $size i32)
    get_local $byte
    i32.const 1
    i32.ge_u
    if $I0
      get_local $size
      i32.const 1
      i32.add
      set_local $size
    end
    get_local $byte
    i32.const 192
    i32.ge_u
    if $I1
      get_local $size
      i32.const 1
      i32.add
      set_local $size
    end
    get_local $byte
    i32.const 224
    i32.ge_u
    if $I2
      get_local $size
      i32.const 1
      i32.add
      set_local $size
    end
    get_local $byte
    i32.const 240
    i32.ge_u
    if $I3
      get_local $size
      i32.const 1
      i32.add
      set_local $size
    end
    get_local $byte
    i32.const 248
    i32.ge_u
    if $I4
      get_local $size
      i32.const 1
      i32.add
      set_local $size
    end
    get_local $byte
    i32.const 252
    i32.ge_u
    if $I5
      get_local $size
      i32.const 1
      i32.add
      set_local $size
    end
    get_local $byte
    i32.const 254
    i32.ge_u
    if $I6
      get_local $size
      i32.const 1
      i32.add
      set_local $size
    end
    get_local $byte
    i32.const 255
    i32.ge_u
    if $I7
      get_local $size
      i32.const 1
      i32.add
      set_local $size
    end
    get_local $size)
  (func $-bytes_to_chars (type $t3) (param $start i32) (param $bytes i32) (result i32)
    (local $pos i32) (local $len i32) (local $charlen i32) (local $chars i32)
    get_local $start
    set_local $pos
    get_local $bytes
    set_local $len
    block $B0
      loop $L1
        get_local $len
        i32.const 0
        i32.le_s
        br_if $B0
        get_local $pos
        i32.load8_u
        call $-char_size
        set_local $charlen
        get_local $charlen
        if $I2
          get_local $len
          get_local $charlen
          i32.sub
          set_local $len
          get_local $pos
          get_local $charlen
          i32.add
          set_local $pos
          get_local $chars
          i32.const 1
          i32.add
          set_local $chars
        else
          i32.const 0
          set_local $len
        end
        br $L1
      end
    end
    get_local $chars)
  (func $-chars_to_bytes (type $t3) (param $start i32) (param $chars i32) (result i32)
    (local $pos i32) (local $byte i32)
    get_local $start
    set_local $pos
    block $B0
      loop $L1
        get_local $chars
        i32.const 0
        i32.le_s
        br_if $B0
        get_local $pos
        i32.load8_u
        set_local $byte
        get_local $pos
        get_local $byte
        call $-char_size
        i32.add
        set_local $pos
        get_local $chars
        i32.const 1
        i32.sub
        set_local $chars
        br $L1
      end
    end
    get_local $pos
    get_local $start
    i32.sub)
  (func $-char (type $t4) (param $code i32) (result i32)
    (local $str i32) (local $pos i32) (local $max i32) (local $charlen i32)
    get_local $code
    i32.const 128
    i32.lt_u
    if $I0
      i32.const 3
      i32.const 1
      call $-new_value
      set_local $str
      get_local $str
      get_local $pos
      get_local $code
      call $-write8
    else
      i32.const 1
      set_local $max
      block $B1
        loop $L2
          get_local $max
          get_local $code
          i32.gt_u
          br_if $B1
          get_local $charlen
          i32.const 1
          i32.add
          set_local $charlen
          get_local $max
          i32.const 5
          i32.shl
          set_local $max
          br $L2
        end
      end
      i32.const 3
      get_local $charlen
      call $-new_value
      set_local $str
      block $B3
        loop $L4
          get_local $charlen
          i32.eqz
          br_if $B3
          get_local $charlen
          i32.const 1
          i32.sub
          set_local $charlen
          get_local $str
          get_local $charlen
          i32.const 128
          get_local $code
          i32.const 63
          i32.and
          i32.or
          call $-write8
          get_local $code
          i32.const 6
          i32.shr_u
          set_local $code
          br $L4
        end
      end
      i32.const 16776960
      set_local $max
      get_local $max
      get_local $str
      call $-len
      i32.shr_u
      set_local $max
      get_local $str
      get_local $charlen
      get_local $max
      get_local $str
      get_local $charlen
      call $-read8
      i32.or
      call $-write8
    end
    get_local $str)
  (func $-char_code (type $t4) (param $offset i32) (result i32)
    (local $code i32) (local $charlen i32) (local $mask i32)
    get_local $offset
    i32.load8_u
    call $-char_size
    set_local $charlen
    i32.const 255
    set_local $mask
    get_local $mask
    get_local $charlen
    i32.shr_u
    set_local $mask
    block $B0
      loop $L1
        get_local $charlen
        i32.eqz
        br_if $B0
        get_local $code
        i32.const 6
        i32.shl
        set_local $code
        get_local $code
        get_local $offset
        i32.load8_u
        get_local $mask
        i32.and
        i32.add
        set_local $code
        i32.const 63
        set_local $mask
        get_local $offset
        i32.const 1
        i32.add
        set_local $offset
        get_local $charlen
        i32.const 1
        i32.sub
        set_local $charlen
        br $L1
      end
    end
    get_local $code)
  (func $-get_from_obj (type $t3) (param $objId i32) (param $indexId i32) (result i32)
    (local $elem i32) (local $index i32)
    get_local $indexId
    call $-datatype
    i32.const 2
    i32.eq
    if $I0
      get_local $indexId
      call $-i32_u
      set_local $index
      get_local $objId
      get_local $index
      i32.const 4
      i32.mul
      call $-read32
      set_local $elem
    else
      get_local $objId
      get_local $index
      i32.const 4
      i32.mul
      call $-read32
      set_local $elem
      block $B1
        loop $L2
          get_local $elem
          i32.eqz
          if $I3
            get_local $indexId
            set_local $elem
          end
          get_local $elem
          get_local $indexId
          call $-equal
          call $-truthy
          br_if $B1
          get_local $index
          i32.const 2
          i32.add
          set_local $index
          get_local $objId
          get_local $index
          i32.const 4
          i32.mul
          call $-read32
          set_local $elem
          br $L2
        end
      end
      get_local $index
      i32.const 1
      i32.add
      set_local $index
      get_local $objId
      get_local $index
      i32.const 4
      i32.mul
      call $-read32
      set_local $elem
    end
    get_local $elem)
  (func $-set_to_obj (type $t11) (param $objId i32) (param $indexId i32) (param $valId i32)
    (local $elem i32) (local $index i32) (local $len i32)
    get_local $indexId
    call $-datatype
    i32.const 2
    i32.eq
    if $I0
      get_local $indexId
      call $-i32_u
      set_local $index
      get_local $objId
      get_local $index
      i32.const 4
      i32.mul
      get_local $valId
      call $-write32
    else
      get_local $objId
      get_local $index
      i32.const 4
      i32.mul
      call $-read32
      set_local $elem
      block $B1
        loop $L2
          get_local $elem
          i32.eqz
          if $I3
            get_local $objId
            get_local $index
            i32.const 4
            i32.mul
            get_local $indexId
            call $-write32
            get_local $indexId
            set_local $elem
          end
          get_local $elem
          get_local $indexId
          call $-equal
          call $-truthy
          br_if $B1
          get_local $index
          i32.const 2
          i32.add
          set_local $index
          get_local $objId
          get_local $index
          i32.const 4
          i32.mul
          call $-read32
          set_local $elem
          br $L2
        end
      end
      get_local $index
      i32.const 1
      i32.add
      set_local $index
      get_local $objId
      get_local $index
      i32.const 4
      i32.mul
      get_local $valId
      call $-write32
      get_local $valId
      i32.eqz
      if $I4
        get_local $objId
        call $-len
        set_local $len
        get_local $len
        get_local $index
        i32.const 4
        i32.mul
        i32.sub
        set_local $len
        get_local $objId
        call $-offset
        get_local $index
        i32.const 1
        i32.add
        i32.const 4
        i32.mul
        i32.add
        get_local $objId
        call $-offset
        get_local $index
        i32.const 1
        i32.sub
        i32.const 4
        i32.mul
        i32.add
        get_local $len
        call $-memcopy
        get_local $objId
        get_local $objId
        call $-len
        i32.const 8
        i32.sub
        call $-resize
      end
    end)
  (func $-passdown_globals (type $t8)
    get_global $g1
    call $-passdown
    get_global $g2
    call $-passdown
    get_global $g3
    call $-passdown
    get_global $g4
    call $-passdown
    get_global $g5
    call $-passdown
    get_global $g6
    call $-passdown
    get_global $g7
    call $-passdown
    get_global $g8
    call $-passdown
    get_global $g9
    call $-passdown
    get_global $g10
    call $-passdown
    get_global $g11
    call $-passdown)
  (table $T0 0 anyfunc)
  (memory $memory 2)
  (global $g0 (mut i32) (i32.const 0))
  (global $g1 (mut i32) (i32.const 0))
  (global $g2 (mut i32) (i32.const 0))
  (global $g3 (mut i32) (i32.const 0))
  (global $g4 (mut i32) (i32.const 0))
  (global $g5 (mut i32) (i32.const 0))
  (global $g6 (mut i32) (i32.const 0))
  (global $g7 (mut i32) (i32.const 0))
  (global $g8 (mut i32) (i32.const 0))
  (global $g9 (mut i32) (i32.const 0))
  (global $g10 (mut i32) (i32.const 0))
  (global $g11 (mut i32) (i32.const 0))
  (global $g12 (mut i32) (i32.const 0))
  (global $g13 (mut i32) (i32.const 0))
  (global $g14 (mut i32) (i32.const 1))
  (global $g15 (mut i32) (i32.const 0))
  (global $g16 (mut i32) (i32.const 0))
  (global $g17 (mut i32) (i32.const 0))
  (global $g18 (mut i32) (i32.const 0))
  (global $g19 (mut i32) (i32.const 1))
  (global $g20 (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "init" (func $--ns0\init))
  (start 114)
  (data (i32.const 65536) "(")
  (data (i32.const 65552) "'('")
  (data (i32.const 65568) "module")
  (data (i32.const 65584) "'module'")
  (data (i32.const 65608) "type")
  (data (i32.const 65624) "import")
  (data (i32.const 65640) "function")
  (data (i32.const 65664) "table")
  (data (i32.const 65680) "memory")
  (data (i32.const 65696) "global")
  (data (i32.const 65712) "export")
  (data (i32.const 65728) "start")
  (data (i32.const 65744) "element")
  (data (i32.const 65760) "code")
  (data (i32.const 65776) "data")
  (data (i32.const 65792) "name")
  (data (i32.const 65808) "locals")
  (data (i32.const 65824) "pos")
  (data (i32.const 65840) "line")
  (data (i32.const 65856) "column")
  (data (i32.const 65872) "! (<input>:")
  (data (i32.const 65896) ":")
  (data (i32.const 65912) ")")
  (data (i32.const 65928) "unexpected token '")
  (data (i32.const 65960) "'")
  (data (i32.const 65976) ", where ")
  (data (i32.const 66000) " should be")
  (data (i32.const 66024) "\0a")
  (data (i32.const 66040) "0123456789ABCDEFabcdef")
  (data (i32.const 66072) ";")
  (data (i32.const 66088) ";)")
  (data (i32.const 66104) "\22")
  (data (i32.const 66120) "\5c")
  (data (i32.const 66136) "n")
  (data (i32.const 66152) "t")
  (data (i32.const 66168) "\09")
  (data (i32.const 66184) "();\22")
  (data (i32.const 66200) ";;")
  (data (i32.const 66216) "$")
  (data (i32.const 66232) "-0123456789")
  (data (i32.const 66256) "block")
  (data (i32.const 66272) "loop")
  (data (i32.const 66288) "if")
  (data (i32.const 66304) "result")
  (data (i32.const 66320) "i32")
  (data (i32.const 66336) "i64")
  (data (i32.const 66352) "f32")
  (data (i32.const 66368) "f64")
  (data (i32.const 66384) "else")
  (data (i32.const 66400) "end")
  (data (i32.const 66416) "br")
  (data (i32.const 66432) "br_if")
  (data (i32.const 66448) "a relative depth")
  (data (i32.const 66480) "br_table")
  (data (i32.const 66504) "call")
  (data (i32.const 66520) "a function reference")
  (data (i32.const 66552) "call_indirect")
  (data (i32.const 66576) "_local")
  (data (i32.const 66592) "a local reference")
  (data (i32.const 66624) "_global")
  (data (i32.const 66640) "a global reference")
  (data (i32.const 66672) ".load")
  (data (i32.const 66688) ".store")
  (data (i32.const 66704) "64")
  (data (i32.const 66720) "32")
  (data (i32.const 66736) "16")
  (data (i32.const 66752) "8")
  (data (i32.const 66768) "current_memory")
  (data (i32.const 66792) "grow_memory")
  (data (i32.const 66816) "i32.const")
  (data (i32.const 66840) "i64.const")
  (data (i32.const 66864) "a number")
  (data (i32.const 66888) "f32.const")
  (data (i32.const 66912) "f64.const")
  (data (i32.const 66936) "func")
  (data (i32.const 66952) "param")
  (data (i32.const 66968) "local")
  (data (i32.const 66984) "elem")
  (data (i32.const 67000) "module-level token")
  (data (i32.const 67032) "'func'")
  (data (i32.const 67048) "field")
  (data (i32.const 67064) "a string")
  (data (i32.const 67088) "kind")
  (data (i32.const 67104) "a valid import")
  (data (i32.const 67128) "initial")
  (data (i32.const 67144) "maximum")
  (data (i32.const 67160) "element_type")
  (data (i32.const 67184) "anyfunc")
  (data (i32.const 67200) "content_type")
  (data (i32.const 67224) "init_expr")
  (data (i32.const 67248) "mut")
  (data (i32.const 67264) "mutability")
  (data (i32.const 67288) "form")
  (data (i32.const 67304) "params")
  (data (i32.const 67320) "returns")
  (data (i32.const 67336) "names")
  (data (i32.const 67352) "type reference")
  (data (i32.const 67376) "index")
  (data (i32.const 67392) "a name")
  (data (i32.const 67408) "function reference")
  (data (i32.const 67440) "elems")
  (data (i32.const 67456) "offset")
  (data (i32.const 67472) "string")
  (data (i32.const 67488) "asm")
  (data (i32.const 67504) "count")
  (data (i32.const 67520) "unreachable")
  (data (i32.const 67544) "nop")
  (data (i32.const 67560) "return")
  (data (i32.const 67576) "drop")
  (data (i32.const 67592) "select")
  (data (i32.const 67608) "get_local")
  (data (i32.const 67632) "set_local")
  (data (i32.const 67656) "tee_local")
  (data (i32.const 67680) "get_global")
  (data (i32.const 67704) "set_global")
  (data (i32.const 67728) "i32.load")
  (data (i32.const 67752) "i64.load")
  (data (i32.const 67776) "f32.load")
  (data (i32.const 67800) "f64.load")
  (data (i32.const 67824) "i32.load8_s")
  (data (i32.const 67848) "i32.load8_u")
  (data (i32.const 67872) "i32.load16_s")
  (data (i32.const 67896) "i32.load16_u")
  (data (i32.const 67920) "i64.load8_s")
  (data (i32.const 67944) "i64.load8_u")
  (data (i32.const 67968) "i64.load16_s")
  (data (i32.const 67992) "i64.load16_u")
  (data (i32.const 68016) "i64.load32_s")
  (data (i32.const 68040) "i64.load32_u")
  (data (i32.const 68064) "i32.store")
  (data (i32.const 68088) "i64.store")
  (data (i32.const 68112) "f32.store")
  (data (i32.const 68136) "f64.store")
  (data (i32.const 68160) "i32.store8")
  (data (i32.const 68184) "i32.store16")
  (data (i32.const 68208) "i64.store8")
  (data (i32.const 68232) "i64.store16")
  (data (i32.const 68256) "i64.store32")
  (data (i32.const 68280) "i32.eqz")
  (data (i32.const 68296) "i32.eq")
  (data (i32.const 68312) "i32.ne")
  (data (i32.const 68328) "i32.lt_s")
  (data (i32.const 68352) "i32.lt_u")
  (data (i32.const 68376) "i32.gt_s")
  (data (i32.const 68400) "i32.gt_u")
  (data (i32.const 68424) "i32.le_s")
  (data (i32.const 68448) "i32.le_u")
  (data (i32.const 68472) "i32.ge_s")
  (data (i32.const 68496) "i32.ge_u")
  (data (i32.const 68520) "i64.eqz")
  (data (i32.const 68536) "i64.eq")
  (data (i32.const 68552) "i64.ne")
  (data (i32.const 68568) "i64.lt_s")
  (data (i32.const 68592) "i64.lt_u")
  (data (i32.const 68616) "i64.gt_s")
  (data (i32.const 68640) "i64.gt_u")
  (data (i32.const 68664) "i64.le_s")
  (data (i32.const 68688) "i64.le_u")
  (data (i32.const 68712) "i64.ge_s")
  (data (i32.const 68736) "i64.ge_u")
  (data (i32.const 68760) "f32.eq")
  (data (i32.const 68776) "f32.ne")
  (data (i32.const 68792) "f32.lt")
  (data (i32.const 68808) "f32.gt")
  (data (i32.const 68824) "f32.le")
  (data (i32.const 68840) "f32.ge")
  (data (i32.const 68856) "f64.eq")
  (data (i32.const 68872) "f64.ne")
  (data (i32.const 68888) "f64.lt")
  (data (i32.const 68904) "f64.gt")
  (data (i32.const 68920) "f64.le")
  (data (i32.const 68936) "f64.ge")
  (data (i32.const 68952) "i32.clz")
  (data (i32.const 68968) "i32.ctz")
  (data (i32.const 68984) "i32.popcnt")
  (data (i32.const 69008) "i32.add")
  (data (i32.const 69024) "i32.sub")
  (data (i32.const 69040) "i32.mul")
  (data (i32.const 69056) "i32.div_s")
  (data (i32.const 69080) "i32.div_u")
  (data (i32.const 69104) "i32.rem_s")
  (data (i32.const 69128) "i32.rem_u")
  (data (i32.const 69152) "i32.and")
  (data (i32.const 69168) "i32.or")
  (data (i32.const 69184) "i32.xor")
  (data (i32.const 69200) "i32.shl")
  (data (i32.const 69216) "i32.shr_s")
  (data (i32.const 69240) "i32.shr_u")
  (data (i32.const 69264) "i32.rotl")
  (data (i32.const 69288) "i32.rotr")
  (data (i32.const 69312) "i64.clz")
  (data (i32.const 69328) "i64.ctz")
  (data (i32.const 69344) "i64.popcnt")
  (data (i32.const 69368) "i64.add")
  (data (i32.const 69384) "i64.sub")
  (data (i32.const 69400) "i64.mul")
  (data (i32.const 69416) "i64.div_s")
  (data (i32.const 69440) "i64.div_u")
  (data (i32.const 69464) "i64.rem_s")
  (data (i32.const 69488) "i64.rem_u")
  (data (i32.const 69512) "i64.and")
  (data (i32.const 69528) "i64.or")
  (data (i32.const 69544) "i64.xor")
  (data (i32.const 69560) "i64.shl")
  (data (i32.const 69576) "i64.shr_s")
  (data (i32.const 69600) "i64.shr_u")
  (data (i32.const 69624) "i64.rotl")
  (data (i32.const 69648) "i64.rotr")
  (data (i32.const 69672) "f32.abs")
  (data (i32.const 69688) "f32.neg")
  (data (i32.const 69704) "f32.ceil")
  (data (i32.const 69728) "f32.floor")
  (data (i32.const 69752) "f32.trunc")
  (data (i32.const 69776) "f32.nearest")
  (data (i32.const 69800) "f32.sqrt")
  (data (i32.const 69824) "f32.add")
  (data (i32.const 69840) "f32.sub")
  (data (i32.const 69856) "f32.mul")
  (data (i32.const 69872) "f32.div")
  (data (i32.const 69888) "f32.min")
  (data (i32.const 69904) "f32.max")
  (data (i32.const 69920) "f32.copysign")
  (data (i32.const 69944) "f64.abs")
  (data (i32.const 69960) "f64.neg")
  (data (i32.const 69976) "f64.ceil")
  (data (i32.const 70000) "f64.floor")
  (data (i32.const 70024) "f64.trunc")
  (data (i32.const 70048) "f64.nearest")
  (data (i32.const 70072) "f64.sqrt")
  (data (i32.const 70096) "f64.add")
  (data (i32.const 70112) "f64.sub")
  (data (i32.const 70128) "f64.mul")
  (data (i32.const 70144) "f64.div")
  (data (i32.const 70160) "f64.min")
  (data (i32.const 70176) "f64.max")
  (data (i32.const 70192) "f64.copysign")
  (data (i32.const 70216) "i32.wrap/i64")
  (data (i32.const 70240) "i32.trunc_s/f32")
  (data (i32.const 70264) "i32.trunc_u/f32")
  (data (i32.const 70288) "i32.trunc_s/f64")
  (data (i32.const 70312) "i32.trunc_u/f64")
  (data (i32.const 70336) "i64.extend_s/i32")
  (data (i32.const 70368) "i64.extend_u/i32")
  (data (i32.const 70400) "i64.trunc_s/f32")
  (data (i32.const 70424) "i64.trunc_u/f32")
  (data (i32.const 70448) "i64.trunc_s/f64")
  (data (i32.const 70472) "i64.trunc_u/f64")
  (data (i32.const 70496) "f32.convert_s/i32")
  (data (i32.const 70528) "f32.convert_u/i32")
  (data (i32.const 70560) "f32.convert_s/i64")
  (data (i32.const 70592) "f32.convert_u/i64")
  (data (i32.const 70624) "f32.demote/f64")
  (data (i32.const 70648) "f64.convert_s/i32")
  (data (i32.const 70680) "f64.convert_u/i32")
  (data (i32.const 70712) "f64.convert_s/i64")
  (data (i32.const 70744) "f64.convert_u/i64")
  (data (i32.const 70776) "f64.promote/f32")
  (data (i32.const 70800) "i32.reinterpret/f32")
  (data (i32.const 70832) "i64.reinterpret/f64")
  (data (i32.const 70864) "f32.reinterpret/i32")
  (data (i32.const 70896) "f64.reinterpret/i64"))
