;; comment
()

"string"

"\n\t\\\0F\2a"

;; Types
i32
i64
f32
f64

;; Constants
i32.const
i64.const
f32.const
f64.const

;; Arithmetic and bitwise operations
i32.add
i32.sub
i32.mul
i32.div_s
i32.div_u
i32.rem_s
i32.rem_u
i32.and
i32.or
i32.xor
i32.shl
i32.shr_s
i32.shr_u
i32.rotl
i32.rotr

;; Comparison operations
i32.eq
i32.ne
i32.lt_s
i32.lt_u
i32.le_s
i32.le_u
i32.gt_s
i32.gt_u
i32.ge_s
i32.ge_u

;; Control flow
block
loop
if
else
br
br_if
br_table
return
call
call_indirect

;; Memory operations
i32.load
i32.load8_s
i32.load8_u
i32.load16_s
i32.load16_u
i32.store
i32.store8
i32.store16

;; Atomic operations
i32.atomic.load
i32.atomic.load8_u
i32.atomic.load16_u
i32.atomic.store
i32.atomic.store8
i32.atomic.store16
i32.atomic.rmw.add
i32.atomic.rmw.sub
i32.atomic.rmw.and
i32.atomic.rmw.or
i32.atomic.rmw.xor
i32.atomic.rmw.xchg
i32.atomic.rmw.cmpxchg
i32.atomic.rmw8.add_u
i32.atomic.rmw8.sub_u
i32.atomic.rmw8.and_u
i32.atomic.rmw8.or_u
i32.atomic.rmw8.xor_u
i32.atomic.rmw8.xchg_u
i32.atomic.rmw8.cmpxchg_u
i32.atomic.rmw16.add_u
i32.atomic.rmw16.sub_u
i32.atomic.rmw16.and_u
i32.atomic.rmw16.or_u
i32.atomic.rmw16.xor_u
i32.atomic.rmw16.xchg_u
i32.atomic.rmw16.cmpxchg_u

;; Other
nop
drop
select
unreachable

;; Conversion operations
i32.wrap_i64
i32.trunc_f32_s
i32.trunc_f32_u
i32.trunc_f64_s
i32.trunc_f64_u
i64.extend_i32_s
i64.extend_i32_u
i64.trunc_f32_s
i64.trunc_f32_u
i64.trunc_f64_s
i64.trunc_f64_u
f32.convert_i32_s
f32.convert_i32_u
f32.convert_i64_s
f32.convert_i64_u
f32.demote_f64
f64.convert_i32_s
f64.convert_i32_u
f64.convert_i64_s
f64.convert_i64_u
f64.promote_f32

;; Reinterpretations
i32.reinterpret_f32
i64.reinterpret_f64
f32.reinterpret_i32
f64.reinterpret_i64

;; Parameter and local variables
local.get
local.set
local.tee

;; Global variables
global.get
global.set

;; Memory instructions
memory.size
memory.grow

;; Table instructions
table.get
table.init
table.copy
table.grow
table.size
table.fill

;; Module structure
(import)
(export)
(elem)
(data)
(type)
(func)
(memory)
(table)
(global)

;; WASI modules
(import "wasi_snapshot_preview1" "args_get" (func $args_get (param i32 i32) (result i32)))
(import "wasi_snapshot_preview1" "args_sizes_get" (func $args_sizes_get (param i32 i32) (result i32)))
(import "wasi_snapshot_preview1" "environ_get" (func $environ_get (param i32 i32) (result i32)))
(import "wasi_snapshot_preview1" "environ_sizes_get" (func $environ_sizes_get (param i32 i32) (result i32)))
(import "wasi_snapshot_preview1" "clock_time_get" (func $clock_time_get (param i32 i64 i32) (result i32)))
(import "wasi_snapshot_preview1" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))
(import "wasi_snapshot_preview1" "fd_read" (func $fd_read (param i32 i32 i32 i32) (result i32)))
(import "wasi_snapshot_preview1" "fd_close" (func $fd_close (param i32) (result i32)))
(import "wasi_snapshot_preview1" "fd_seek" (func $fd_seek (param i32 i64 i32 i32) (result i32)))
(import "wasi_snapshot_preview1" "proc_exit" (func $proc_exit (param i32)))

;; Numeric operations
i32.clz
i32.ctz
i32.popcnt
i32.eqz
i64.clz
i64.ctz
i64.popcnt
i64.eqz
f32.abs
f32.neg
f32.ceil
f32.floor
f32.trunc
f32.nearest
f32.sqrt
f32.min
f32.max
f32.copysign
f64.abs
f64.neg
f64.ceil
f64.floor
f64.trunc
f64.nearest
f64.sqrt
f64.min
f64.max
f64.copysign

;; Saturation conversion operations
i32.trunc_sat_f32_s
i32.trunc_sat_f32_u
i32.trunc_sat_f64_s
i32.trunc_sat_f64_u
i64.trunc_sat_f32_s
i64.trunc_sat_f32_u
i64.trunc_sat_f64_s
i64.trunc_sat_f64_u

;; SIMD operations
v128.load
i8x16.splat
i16x8.splat
i32x4.splat
i64x2.splat
f32x4.splat
f64x2.splat
i8x16.extract_lane_s
i8x16.extract_lane_u
i16x8.extract_lane_s
i16x8.extract_lane_u
i32x4.extract_lane
i64x2.extract_lane
f32x4.extract_lane
f64x2.extract_lane
i8x16.replace_lane
i16x8.replace_lane
i32x4.replace_lane
i64x2.replace_lane
f32x4.replace_lane
f64x2.replace_lane

;; SIMD operations (continued)
i8x16.eq
i8x16.ne
i8x16.lt_s
i8x16.lt_u
i8x16.gt_s
i8x16.gt_u
i8x16.le_s
i8x16.le_u
i8x16.ge_s
i8x16.ge_u
i16x8.eq
i16x8.ne
i16x8.lt_s
i16x8.lt_u
i16x8.gt_s
i16x8.gt_u
i16x8.le_s
i16x8.le_u
i16x8.ge_s
i16x8.ge_u
i32x4.eq
i32x4.ne
i32x4.lt_s
i32x4.lt_u
i32x4.gt_s
i32x4.gt_u
i32x4.le_s
i32x4.le_u
i32x4.ge_s
i32x4.ge_u
f32x4.eq
f32x4.ne
f32x4.lt
f32x4.gt
f32x4.le
f32x4.ge
f64x2.eq
f64x2.ne
f64x2.lt
f64x2.gt
f64x2.le
f64x2.ge

;; SIMD operations (continued)
v128.not
v128.and
v128.or
v128.xor
v128.bitselect
i8x16.neg
i8x16.any_true
i8x16.all_true
i8x16.shl
i8x16.shr_s
i8x16.shr_u
i8x16.add
i8x16.add_saturate_s
i8x16.add_saturate_u
i8x16.sub
i8x16.sub_saturate_s
i8x16.sub_saturate_u
i8x16.mul
i16x8.neg
i16x8.any_true
i16x8.all_true
i16x8.shl
i16x8.shr_s
i16x8.shr_u
i16x8.add
i16x8.add_saturate_s
i16x8.add_saturate_u
i16x8.sub
i16x8.sub_saturate_s
i16x8.sub_saturate_u
i16x8.mul

;; SIMD operations (continued)
i32x4.neg
i32x4.any_true
i32x4.all_true
i32x4.shl
i32x4.shr_s
i32x4.shr_u
i32x4.add
i32x4.sub
i32x4.mul
i64x2.neg
i64x2.shl
i64x2.shr_s
i64x2.shr_u
i64x2.add
i64x2.sub
f32x4.neg
f32x4.abs
f32x4.min
f32x4.max
f32x4.add
f32x4.sub
f32x4.mul
f32x4.div
f32x4.sqrt
f64x2.neg
f64x2.abs
f64x2.min
f64x2.max
f64x2.add
f64x2.sub
f64x2.mul
f64x2.div
f64x2.sqrt

;; Memory instructions
(memory $0 1)
(load)
(store)
(offset)
(align)

;; Control instructions
(nop)
(unreachable)
(block)
(loop)
(if)
(then)
(else)
(end)
(br)
(br_if)
(br_table)
(return)
(call)
(call_indirect)

;; Global instructions
(global $g (mut i32) (i32.const 0))
(global.set $g)
(global.get $g)

;; Table instructions
(table $t 1 anyfunc)
(elem (i32.const 0) $f)
(call_indirect (get_local $l))

;; Type instructions
(type $t (func (param i32) (result i32)))
