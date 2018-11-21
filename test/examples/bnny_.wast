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
  (type $t12 (func (param i32 f64) (result i32)))
  (type $t13 (func (param i32) (result f64)))
  (type $t14 (func (param f64) (result i32)))
  (import "env" "pushFromMemory" (func $--ns0\_push_from_memory (type $t0)))
  (import "env" "popToMemory" (func $--ns0\_pop_to_memory (type $t1)))
  (import "env" "log" (func $--ns0\_log (type $t2)))
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
    get_local $-ret)
  (func $ns0\get_input (type $t5) (result i32)
    (local $ns0\input i32) (local $-ret i32) (local $-success i32)
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
    get_local $-ret)
  (func $ns0\send_output (type $t4) (param $ns0\data i32) (result i32)
    (local $-ret i32) (local $-success i32)
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
    get_local $-ret)
  (func $ns0\send_error (type $t4) (param $ns0\data i32) (result i32)
    (local $-ret i32) (local $-success i32)
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
    get_local $-ret)
  (func $ns0\init (type $t5) (result i32)
    (local $-ret i32) (local $-success i32)
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
    get_local $-ret)
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
    i32.const 3
    i32.eq
    if $I1
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
      block $B2
        loop $L3
          get_local $ns1\ipos
          get_local $ns1\len
          i32.ge_u
          br_if $B2
          i32.const 0
          set_local $ns1\done
          get_local $ns1\value
          get_local $ns1\ipos
          call $-read8
          set_local $ns1\char
          get_local $ns1\char
          i32.const 8
          i32.eq
          if $I4
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
          if $I5
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
          if $I6
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
          if $I7
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
          if $I8
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
          if $I9
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
          if $I10
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
          if $I11
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
          if $I12
            get_local $ns1\char
            i32.const 32
            i32.lt_u
            if $I13
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
          br $L3
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
    if $I14
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
      block $B15
        loop $L16
          get_local $ns1\ipos
          get_local $ns1\len
          i32.ge_u
          br_if $B15
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
          br $L16
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
    if $I17
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
      block $B18
        loop $L19
          get_local $ns1\ipos
          get_local $ns1\len
          i32.ge_u
          br_if $B18
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
          br $L19
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
      f64.const 0x0p+0 (;=0;)
      set_local $ns1\num
      f64.const 0x0p+0 (;=0;)
      set_local $ns1\exp
      get_local $ns1\char
      i32.const 45
      i32.eq
      if $I7
        f64.const -0x1p+0 (;=-1;)
        set_local $ns1\neg
        get_global $g0
        i32.load8_u
        set_local $ns1\char
        get_global $g0
        i32.const 1
        i32.add
        set_global $g0
      else
        f64.const 0x1p+0 (;=1;)
        set_local $ns1\neg
      end
      block $B8
        loop $L9
          get_local $ns1\char
          i32.const 48
          i32.lt_u
          get_local $ns1\char
          i32.const 57
          i32.gt_u
          i32.or
          br_if $B8
          get_local $ns1\num
          f64.const 0x1.4p+3 (;=10;)
          f64.mul
          set_local $ns1\num
          get_local $ns1\num
          get_local $ns1\char
          i32.const 48
          i32.sub
          f64.convert_u/i32
          f64.add
          set_local $ns1\num
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
      get_local $ns1\char
      i32.const 46
      i32.eq
      if $I10
        get_global $g0
        i32.load8_u
        set_local $ns1\char
        get_global $g0
        i32.const 1
        i32.add
        set_global $g0
        block $B11
          loop $L12
            get_local $ns1\char
            i32.const 48
            i32.lt_u
            get_local $ns1\char
            i32.const 57
            i32.gt_u
            i32.or
            br_if $B11
            get_local $ns1\num
            f64.const 0x1.4p+3 (;=10;)
            f64.mul
            set_local $ns1\num
            get_local $ns1\num
            get_local $ns1\char
            i32.const 48
            i32.sub
            f64.convert_u/i32
            f64.add
            set_local $ns1\num
            get_local $ns1\exp
            f64.const 0x1p+0 (;=1;)
            f64.sub
            set_local $ns1\exp
            get_global $g0
            i32.load8_u
            set_local $ns1\char
            get_global $g0
            i32.const 1
            i32.add
            set_global $g0
            br $L12
          end
        end
        block $B13
          loop $L14
            get_local $ns1\exp
            f64.const 0x0p+0 (;=0;)
            f64.ge
            br_if $B13
            get_local $ns1\num
            f64.const 0x1.4p+3 (;=10;)
            f64.div
            set_local $ns1\num
            get_local $ns1\exp
            f64.const 0x1p+0 (;=1;)
            f64.add
            set_local $ns1\exp
            br $L14
          end
        end
      end
      get_local $ns1\char
      i32.const 101
      i32.eq
      if $I15
        get_local $ns1\char
        i32.const 32
        i32.sub
        set_local $ns1\char
      end
      get_local $ns1\char
      i32.const 69
      i32.eq
      if $I16
        get_global $g0
        i32.load8_u
        set_local $ns1\char
        get_global $g0
        i32.const 1
        i32.add
        set_global $g0
        get_local $ns1\char
        i32.const 45
        i32.eq
        if $I17
          f64.const -0x1p+0 (;=-1;)
          set_local $ns1\eneg
          get_global $g0
          i32.load8_u
          set_local $ns1\char
          get_global $g0
          i32.const 1
          i32.add
          set_global $g0
        else
          f64.const 0x1p+0 (;=1;)
          set_local $ns1\eneg
        end
        block $B18
          loop $L19
            get_local $ns1\char
            i32.const 48
            i32.lt_u
            get_local $ns1\char
            i32.const 57
            i32.gt_u
            i32.or
            br_if $B18
            get_local $ns1\exp
            f64.const 0x1.4p+3 (;=10;)
            f64.mul
            set_local $ns1\exp
            get_local $ns1\exp
            get_local $ns1\char
            i32.const 48
            i32.sub
            f64.convert_u/i32
            f64.add
            set_local $ns1\exp
            get_global $g0
            i32.load8_u
            set_local $ns1\char
            get_global $g0
            i32.const 1
            i32.add
            set_global $g0
            br $L19
          end
        end
        get_local $ns1\exp
        get_local $ns1\eneg
        f64.mul
        set_local $ns1\exp
        block $B20
          loop $L21
            get_local $ns1\exp
            f64.const 0x0p+0 (;=0;)
            f64.le
            br_if $B20
            get_local $ns1\num
            f64.const 0x1.4p+3 (;=10;)
            f64.mul
            set_local $ns1\num
            get_local $ns1\exp
            f64.const 0x1p+0 (;=1;)
            f64.sub
            set_local $ns1\exp
            br $L21
          end
        end
        block $B22
          loop $L23
            get_local $ns1\exp
            f64.const 0x0p+0 (;=0;)
            f64.ge
            br_if $B22
            get_local $ns1\num
            f64.const 0x1.4p+3 (;=10;)
            f64.div
            set_local $ns1\num
            get_local $ns1\exp
            f64.const 0x1p+0 (;=1;)
            f64.add
            set_local $ns1\exp
            br $L23
          end
        end
      end
      get_global $g0
      i32.const 1
      i32.sub
      set_global $g0
      get_local $ns1\num
      get_local $ns1\neg
      f64.mul
      call $-number
      set_local $ns1\value
    end
    get_local $ns1\char
    i32.const 34
    i32.eq
    if $I24
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
      block $B25
        loop $L26
          get_local $ns1\char
          i32.const 34
          i32.eq
          br_if $B25
          get_local $ns1\value
          call $-len
          set_local $ns1\pos
          get_local $ns1\char
          i32.const 92
          i32.eq
          if $I27
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
            if $I28
              get_local $ns1\value
              get_local $ns1\pos
              i32.const 8
              call $-write8
            end
            get_local $ns1\char
            i32.const 102
            i32.eq
            if $I29
              get_local $ns1\value
              get_local $ns1\pos
              i32.const 12
              call $-write8
            end
            get_local $ns1\char
            i32.const 110
            i32.eq
            if $I30
              get_local $ns1\value
              get_local $ns1\pos
              i32.const 10
              call $-write8
            end
            get_local $ns1\char
            i32.const 114
            i32.eq
            if $I31
              get_local $ns1\value
              get_local $ns1\pos
              i32.const 13
              call $-write8
            end
            get_local $ns1\char
            i32.const 116
            i32.eq
            if $I32
              get_local $ns1\value
              get_local $ns1\pos
              i32.const 9
              call $-write8
            end
            get_local $ns1\char
            i32.const 117
            i32.eq
            if $I33
              get_local $ns1\hex
              i32.eqz
              if $I34
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
              if $I35
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
          br $L26
        end
      end
    end
    get_local $ns1\char
    i32.const 91
    i32.eq
    if $I36
      i32.const 4
      i32.const 0
      call $-new_value
      set_local $ns1\value
      call $ns1\~skip_whitespace
      set_local $ns1\char
      call $ns1\~skip_whitespace
      i32.eqz
      set_local $ns1\err
      block $B37
        loop $L38
          get_local $ns1\err
          get_local $ns1\char
          i32.const 93
          i32.eq
          i32.or
          br_if $B37
          get_local $ns1\char
          i32.const 44
          i32.eq
          if $I39
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
          br $L38
        end
      end
      get_local $ns1\char
      i32.const 93
      i32.eq
      if $I40
        get_global $g0
        i32.const 1
        i32.add
        set_global $g0
      end
    end
    get_local $ns1\char
    i32.const 123
    i32.eq
    if $I41
      i32.const 5
      i32.const 0
      call $-new_value
      set_local $ns1\value
      call $ns1\~skip_whitespace
      set_local $ns1\char
      call $ns1\~skip_whitespace
      i32.eqz
      set_local $ns1\err
      block $B42
        loop $L43
          get_local $ns1\err
          get_local $ns1\char
          i32.const 125
          i32.eq
          i32.or
          br_if $B42
          get_local $ns1\char
          i32.const 44
          i32.eq
          if $I44
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
          if $I45
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
          br $L43
        end
      end
      get_local $ns1\char
      i32.const 125
      i32.eq
      if $I46
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
  (func $ns2\reset (type $t5) (result i32)
    (local $-obj0 i32) (local $-obj1 i32) (local $-ret i32) (local $-success i32)
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
      i32.const 8
      i32.const 5
      i32.const 0
      call $-new_value
      tee_local $-obj1
      get_local $-obj1
      i32.const 9
      f64.const 0x0p+0 (;=0;)
      call $-number
      call $-set_to_obj
      get_local $-obj1
      i32.const 9
      call $-get_from_obj
      drop
      get_local $-obj1
      i32.const 10
      i32.const 6
      i32.const 0
      call $-new_value
      call $-set_to_obj
      get_local $-obj1
      i32.const 10
      call $-get_from_obj
      drop
      call $-set_to_obj
      get_local $-obj0
      i32.const 8
      call $-get_from_obj
      drop
      set_global $g6
      get_global $g6
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret)
  (func $ns2\rewind (type $t5) (result i32)
    (local $-ret i32) (local $-success i32)
    block $B0
      f64.const 0x0p+0 (;=0;)
      call $-number
      set_global $g3
      get_global $g3
      drop
      f64.const 0x0p+0 (;=0;)
      call $-number
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
    end
    get_local $-ret)
  (func $ns2\assemble (type $t4) (param $ns2\wast i32) (result i32)
    (local $ns2\tokens i32) (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    block $B0
      call $ns2\reset
      drop
      get_local $ns2\wast
      set_global $g2
      get_global $g2
      drop
      i32.const 4
      i32.const 0
      call $-new_value
      set_local $ns2\tokens
      get_local $ns2\tokens
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          i32.const 11
          call $-unequal
          call $-falsy
          br_if $B1
          block $B3
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
      call $ns2\read_parens
      set_local $ns2\tokens
      get_local $ns2\tokens
      drop
      get_global $g1
      call $-truthy
      if $I4
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
      if $I5
        get_local $ns2\tokens
        call $ns1\json_encode
        set_local $-ret
        br $B0
        i32.const 1
        set_local $-success
      end
      i32.const 1
      set_local $-success
    end
    get_local $-ret)
  (func $ns2\croak (type $t4) (param $ns2\message i32) (result i32)
    (local $-ret i32) (local $-success i32)
    block $B0
      get_local $ns2\message
      i32.const 12
      call $-add
      get_global $g4
      call $-add
      i32.const 13
      call $-add
      get_global $g5
      call $-add
      i32.const 14
      call $-add
      set_global $g1
      get_global $g1
      drop
      i32.const 1
      set_local $-success
    end
    get_local $-ret)
  (func $ns2\is_eof (type $t5) (result i32)
    (local $-ret i32) (local $-success i32)
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
    get_local $-ret)
  (func $ns2\read_char (type $t5) (result i32)
    (local $ns2\char i32) (local $-ret i32) (local $-success i32)
    block $B0
      i32.const 3
      get_global $g2
      get_global $g3
      f64.const 0x1p+0 (;=1;)
      call $-number
      call $ns1\binary_slice
      call $-add
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
      i32.const 15
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
    get_local $-ret)
  (func $ns2\peek_char (type $t5) (result i32)
    (local $-ret i32) (local $-success i32)
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
    get_local $-ret)
  (func $ns2\read_token (type $t5) (result i32)
    (local $ns2\token i32) (local $ns2\char i32) (local $ns2\illegals i32) (local $-ret i32) (local $-success i32)
    block $B0
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
      i32.const 11
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
        i32.const 16
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
              i32.const 17
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
      i32.const 18
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
      i32.const 19
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
            i32.const 19
            call $-unequal
            i32.const 1
            call $ns2\is_eof
            call $-equal
            call $-and
            call $-falsy
            br_if $B11
            block $B13
              get_local $ns2\token
              get_local $ns2\token
              call $ns1\size_of
              get_local $ns2\char
              call $ns1\binary_write
              drop
              get_local $ns2\char
              i32.const 20
              call $-equal
              call $-truthy
              if $I14
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
              else
                i32.const 0
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
        get_local $ns2\token
        get_local $ns2\token
        call $ns1\size_of
        get_local $ns2\char
        call $ns1\binary_write
        drop
        i32.const 1
        set_local $-success
      end
      get_local $-success
      i32.eqz
      get_local $ns2\char
      i32.const 16
      call $-equal
      call $-truthy
      i32.and
      if $I15
        call $ns2\read_char
        set_local $ns2\token
        get_local $ns2\token
        drop
        call $ns2\peek_char
        set_local $ns2\char
        get_local $ns2\char
        drop
        get_local $ns2\char
        i32.const 16
        call $-equal
        call $-truthy
        if $I16
          block $B17
            loop $L18
              get_local $ns2\char
              i32.const 15
              call $-unequal
              i32.const 1
              call $ns2\is_eof
              call $-equal
              call $-and
              call $-falsy
              br_if $B17
              block $B19
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
              br $L18
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
      if $I20
        i32.const 3
        i32.const 6
        i32.const 0
        call $-new_value
        call $-add
        set_local $ns2\token
        get_local $ns2\token
        drop
        i32.const 21
        set_local $ns2\illegals
        get_local $ns2\illegals
        drop
        block $B21
          loop $L22
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
            br_if $B21
            block $B23
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
            br $L22
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
    get_local $-ret)
  (func $ns2\read_parens (type $t5) (result i32)
    (local $ns2\out i32) (local $ns2\token i32) (local $-ret i32) (local $-success i32)
    block $B0
      i32.const 4
      i32.const 0
      call $-new_value
      set_local $ns2\out
      get_local $ns2\out
      drop
      call $ns2\read_token
      set_local $ns2\token
      get_local $ns2\token
      drop
      block $B1
        loop $L2
          get_local $ns2\token
          get_local $ns2\token
          i32.const 18
          call $-unequal
          call $-and
          call $-falsy
          br_if $B1
          block $B3
            get_local $ns2\token
            i32.const 11
            call $-equal
            call $-truthy
            if $I4
              get_local $ns2\out
              call $ns2\read_parens
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
            if $I5
              get_local $ns2\out
              get_local $ns2\token
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
          br $L2
        end
      end
      get_local $ns2\out
      set_local $-ret
      br $B0
      i32.const 1
      set_local $-success
    end
    get_local $-ret)
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
        i32.eqz
        br_if $B0
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
          i32.and
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
        br $L1
      end
    end
    get_local $ns3\id)
  (func $-start (type $t8)
    (local $-success i32) (local $-ret i32)
    call $-initruntime
    i32.const -1
    i32.const 176
    call $-resize
    i32.const 65536
    i32.const 4
    call $-string
    drop
    i32.const 65552
    i32.const 5
    call $-string
    drop
    i32.const 65568
    i32.const 3
    call $-string
    drop
    i32.const 65584
    i32.const 1
    call $-string
    drop
    i32.const 65600
    i32.const 9
    call $-string
    drop
    i32.const 65624
    i32.const 9
    call $-string
    drop
    i32.const 65648
    i32.const 1
    call $-string
    drop
    i32.const 65664
    i32.const 1
    call $-string
    drop
    i32.const 65680
    i32.const 1
    call $-string
    drop
    i32.const 65696
    i32.const 2
    call $-string
    drop
    i32.const 65712
    i32.const 1
    call $-string
    drop
    i32.const 65728
    i32.const 1
    call $-string
    drop
    i32.const 65744
    i32.const 1
    call $-string
    drop
    i32.const 65760
    i32.const 4
    call $-string
    drop
    call $-zerorefs
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
    drop)
  (func $--ns0\init (type $t2) (result f64)
    call $-funcstart
    call $ns0\init
    call $-f64
    call $-funcend)
  (func $-initruntime (type $t8)
    i32.const 65536
    memory.size
    i32.mul
    set_global $g7
    i32.const 0
    i32.const 65536
    memory.size
    i32.mul
    i32.const 8
    i32.sub
    i32.store
    i32.const 8
    call $-alloc
    set_global $g10)
  (func $-funcstart (type $t8)
    get_global $g8
    i32.eqz
    if $I0
      call $-traceGC
    end
    get_global $g8
    i32.const 1
    i32.add
    set_global $g8)
  (func $-funcend (type $t8)
    get_global $g8
    if $I0
      get_global $g8
      i32.const 1
      i32.sub
      set_global $g8
    end)
  (func $-alloc (type $t4) (param $len i32) (result i32)
    (local $offset i32) (local $offset2 i32) (local $space i32) (local $space2 i32) (local $totmem i32) (local $allowgrow i32)
    get_global $g9
    if $I0
      get_global $g9
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
        get_global $g7
        get_local $offset
        i32.sub
        i32.const 8
        i32.le_u
        if $I3
          get_local $allowgrow
          if $I4
            get_global $g7
            i32.const 8
            i32.add
            set_local $offset2
            memory.size
            memory.grow
            drop
            i32.const 65536
            memory.size
            i32.mul
            set_global $g7
            get_local $offset2
            get_global $g7
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
    set_global $g9
    get_local $offset
    return)
  (func $-dealloc (type $t9) (param $offset i32)
    (local $offset i32) (local $offset2 i32) (local $space i32) (local $space2 i32)
    get_local $offset
    get_global $g9
    i32.eq
    if $I0
      i32.const 0
      set_global $g9
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
      get_global $g10
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
          get_global $g10
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
        get_global $g10
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
            set_global $g10
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
        get_global $g10
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
    get_global $g11
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
    i32.const 0
    call $-write32
    i32.const -1
    get_local $id
    i32.const 8
    i32.mul
    i32.const 6
    i32.add
    get_local $datatype
    call $-write8
    get_local $id
    i32.const 1
    i32.add
    set_global $g11
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
    get_global $g12
    i32.eqz
    if $I0
      get_global $g11
      set_global $g12
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
        get_global $g12
        i32.lt_u
        if $I3
          i32.const -1
          get_local $id
          i32.const 8
          i32.mul
          i32.const 7
          i32.add
          i32.const 1
          call $-write8
        else
          i32.const -1
          get_local $id
          i32.const 8
          i32.mul
          i32.const 7
          i32.add
          i32.const 0
          call $-write8
        end
        br $L2
      end
    end)
  (func $-reftree (type $t9) (param $id i32)
    (local $offset i32) (local $datatype i32) (local $refs i32)
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
      set_local $refs
      get_local $refs
      i32.eqz
      if $I1
        i32.const -1
        get_local $id
        i32.const 8
        i32.mul
        i32.const 7
        i32.add
        i32.const 1
        call $-write8
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
        if $I2
          get_local $id
          call $-len
          set_local $offset
          block $B3
            loop $L4
              get_local $offset
              i32.eqz
              br_if $B3
              get_local $offset
              i32.const 4
              i32.sub
              set_local $offset
              get_local $id
              get_local $offset
              call $-read32
              call $-reftree
              br $L4
            end
          end
        end
      end
    end)
  (func $-garbagecollect (type $t8)
    (local $id i32) (local $refs i32) (local $offset i32)
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
        i32.const 7
        i32.add
        call $-read8
        set_local $refs
        get_local $refs
        i32.eqz
        if $I2
          i32.const -1
          get_local $id
          i32.const 8
          i32.mul
          call $-read32
          set_local $offset
          get_local $offset
          if $I3
            get_local $offset
            call $-dealloc
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
          end
        end
        br $L1
      end
    end
    i32.const 0
    set_global $g9
    i32.const 0
    set_global $g11)
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
      block $B5
        loop $L6
          get_local $digit
          f64.const 0x1.4p+3 (;=10;)
          f64.lt
          br_if $B5
          get_local $digit
          f64.const 0x1.4p+3 (;=10;)
          f64.div
          set_local $digit
          get_local $decimals
          i32.const 1
          i32.sub
          set_local $decimals
          br $L6
        end
      end
      block $B7
        loop $L8
          get_local $decimals
          i32.const 10
          i32.ge_s
          br_if $B7
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
          get_local $decimals
          i32.const 0
          i32.eq
          if $I9
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
            if $I10
              get_local $id3
              get_local $pos
              i32.const 46
              call $-write8
              get_local $pos
              i32.const 1
              i32.add
              set_local $pos
            else
              i32.const 1024
              set_local $decimals
            end
          end
          get_local $digit
          get_local $digit
          f64.trunc
          f64.sub
          set_local $digit
          get_local $digit
          f64.const 0x1.4p+3 (;=10;)
          f64.mul
          set_local $digit
          get_local $decimals
          i32.const 0
          i32.gt_s
          if $I11
            get_local $digit
            f64.const 0x1.4f8b588e368f1p-17 (;=1e-05;)
            f64.le
            if $I12
              i32.const 1024
              set_local $decimals
            end
          end
          get_local $decimals
          i32.const 1
          i32.add
          set_local $decimals
          br $L8
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
  (func $-inc (type $t12) (param $num i32) (param $delta f64) (result i32)
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
  (func $-f64 (type $t13) (param $id i32) (result f64)
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
  (func $-number (type $t14) (param $val f64) (result i32)
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
  (func $-traceGC (type $t8)
    call $-zerorefs
    get_global $g1
    call $-reftree
    get_global $g2
    call $-reftree
    get_global $g3
    call $-reftree
    get_global $g4
    call $-reftree
    get_global $g5
    call $-reftree
    get_global $g6
    call $-reftree
    call $-garbagecollect)
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
  (export "memory" (memory 0))
  (export "init" (func $--ns0\init))
  (start 69)
  (data (i32.const 65536) "type")
  (data (i32.const 65552) "count")
  (data (i32.const 65568) "bin")
  (data (i32.const 65584) "(")
  (data (i32.const 65600) " at line ")
  (data (i32.const 65624) ", column ")
  (data (i32.const 65648) "!")
  (data (i32.const 65664) "\0a")
  (data (i32.const 65680) ";")
  (data (i32.const 65696) ";)")
  (data (i32.const 65712) ")")
  (data (i32.const 65728) "\22")
  (data (i32.const 65744) "\5c")
  (data (i32.const 65760) "();\22"))
