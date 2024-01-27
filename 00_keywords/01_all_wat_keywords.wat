;; comment                 ;; This is a comment
()

"string"                   ;; This is a string

"\n\t\\\0F\2a"             ;; This is a string with escape sequences

;; Types                   ;; These are the types
i32                        ;; 32-bit integer
i64                        ;; 64-bit integer
f32                        ;; 32-bit floating point number
f64                        ;; 64-bit floating point number

;; Constants               ;; These are the constants
i32.const                  ;; 32-bit integer constant
i64.const                  ;; 64-bit integer constant
f32.const                  ;; 32-bit floating point number constant
f64.const                  ;; 64-bit floating point number constant

;; Arithmetic and bitwise operations
i32.add                    ;; Addition for 32-bit integers
i32.sub                    ;; Subtraction for 32-bit integers
i32.mul                    ;; Multiplication for 32-bit integers
i32.div_s                  ;; Signed division for 32-bit integers
i32.div_u                  ;; Unsigned division for 32-bit integers
i32.rem_s                  ;; Signed remainder for 32-bit integers
i32.rem_u                  ;; Unsigned remainder for 32-bit integers
i32.and                    ;; Bitwise AND for 32-bit integers
i32.or                     ;; Bitwise OR for 32-bit integers
i32.xor                    ;; Bitwise XOR for 32-bit integers
i32.shl                    ;; Left shift for 32-bit integers
i32.shr_s                  ;; Signed right shift for 32-bit integers
i32.shr_u                  ;; Unsigned right shift for 32-bit integers
i32.rotl                   ;; Left rotate for 32-bit integers
i32.rotr                   ;; Right rotate for 32-bit integers

;; Comparison operations
i32.eq                     ;; Equality comparison for 32-bit integers
i32.ne                     ;; Inequality comparison for 32-bit integers
i32.lt_s                   ;; Signed less-than comparison for 32-bit integers
i32.lt_u                   ;; Unsigned less-than comparison for 32-bit integers
i32.le_s                   ;; Signed less-than-or-equal-to comparison for 32-bit integers
i32.le_u                   ;; Unsigned less-than-or-equal-to comparison for 32-bit integers
i32.gt_s                   ;; Signed greater-than comparison for 32-bit integers
i32.gt_u                   ;; Unsigned greater-than comparison for 32-bit integers
i32.ge_s                   ;; Signed greater-than-or-equal-to comparison for 32-bit integers
i32.ge_u                   ;; Unsigned greater-than-or-equal-to comparison for 32-bit integers

;; Control flow
block                      ;; Start of a block of code
loop                       ;; Start of a loop block
if                         ;; Start of an if statement
else                       ;; Start of an else statement
br                         ;; Unconditional branch (jump)
br_if                      ;; Conditional branch
br_table                   ;; Branch table (jump table)
return                     ;; Return from the current function
call                       ;; Call a function
call_indirect              ;; Call a function through a function pointer

;; Memory operations
i32.load                   ;; Load a 32-bit integer from memory
i32.load8_s                ;; Load a 8-bit signed integer from memory and extend it to 32 bits
i32.load8_u                ;; Load a 8-bit unsigned integer from memory and extend it to 32 bits
i32.load16_s               ;; Load a 16-bit signed integer from memory and extend it to 32 bits
i32.load16_u               ;; Load a 16-bit unsigned integer from memory and extend it to 32 bits
i32.store                  ;; Store a 32-bit integer to memory
i32.store8                 ;; Store the least significant 8 bits of a 32-bit integer to memory
i32.store16                ;; Store the least significant 16 bits of a 32-bit integer to memory

;; Atomic operations
i32.atomic.load            ;; Atomically load a 32-bit integer from memory
i32.atomic.load8_u         ;; Atomically load a 8-bit unsigned integer from memory and extend it to 32 bits
i32.atomic.load16_u        ;; Atomically load a 16-bit unsigned integer from memory and extend it to 32 bits
i32.atomic.store           ;; Atomically store a 32-bit integer to memory
i32.atomic.store8          ;; Atomically store the least significant 8 bits of a 32-bit integer to memory
i32.atomic.store16         ;; Atomically store the least significant 16 bits of a 32-bit integer to memory
i32.atomic.rmw.add         ;; Atomically read a 32-bit integer from memory, add a value, and store the result
i32.atomic.rmw.sub         ;; Atomically read a 32-bit integer from memory, subtract a value, and store the result
i32.atomic.rmw.and         ;; Atomically read a 32-bit integer from memory, perform bitwise AND with a value, and store the result
i32.atomic.rmw.or          ;; Atomically read a 32-bit integer from memory, perform bitwise OR with a value, and store the result
i32.atomic.rmw.xor         ;; Atomically read a 32-bit integer from memory, perform bitwise XOR with a value, and store the result
i32.atomic.rmw.xchg        ;; Atomically exchange a 32-bit integer in memory with a value
i32.atomic.rmw.cmpxchg     ;; Atomically compare a 32-bit integer in memory with a given value and, if they are the same, store a new value
i32.atomic.rmw8.add_u      ;; Atomically read a 8-bit unsigned integer from memory, add a value, and store the result, extending it to 32 bits
i32.atomic.rmw8.sub_u      ;; Atomically read a 8-bit unsigned integer from memory, subtract a value, and store the result, extending it to 32 bits
i32.atomic.rmw8.and_u      ;; Atomically read a 8-bit unsigned integer from memory, perform bitwise AND with a value, and store the result, extending it to 32 bits
i32.atomic.rmw8.or_u       ;; Atomically read a 8-bit unsigned integer from memory, perform bitwise OR with a value, and store the result, extending it to 32 bits
i32.atomic.rmw8.xor_u      ;; Atomically read a 8-bit unsigned integer from memory, perform bitwise XOR with a value, and store the result, extending it to 32 bits
i32.atomic.rmw8.xchg_u     ;; Atomically exchange a 8-bit unsigned integer in memory with a value, extending it to 32 bits
i32.atomic.rmw8.cmpxchg_u  ;; Atomically compare a 8-bit unsigned integer in memory with a given value and, if they are the same, store a new value, extending it to 32 bits
i32.atomic.rmw16.add_u     ;; Atomically read a 16-bit unsigned integer from memory, add a value, and store the result, extending it to 32 bits
i32.atomic.rmw16.sub_u     ;; Atomically read a 16-bit unsigned integer from memory, subtract a value, and store the result, extending it to 32 bits
i32.atomic.rmw16.and_u     ;; Atomically read a 16-bit unsigned integer from memory, perform bitwise AND with a value, and store the result, extending it to 32 bits
i32.atomic.rmw16.or_u      ;; Atomically read a 16-bit unsigned integer from memory, perform bitwise OR with a value, and store the result, extending it to 32 bits
i32.atomic.rmw16.xor_u     ;; Atomically read a 16-bit unsigned integer from memory, perform bitwise XOR with a value, and store the result, extending it to 32 bits
i32.atomic.rmw16.xchg_u    ;; Atomically exchange a 16-bit unsigned integer in memory with a value, extending it to 32 bits
i32.atomic.rmw16.cmpxchg_u ;; Atomically compare a 16-bit unsigned integer in memory with a given value and, if they are the same, store a new value, extending it to 32 bits

;; Other
nop                        ;; No operation
drop                       ;; Drop the top value from the stack
select                     ;; Select one of two values based on a condition
unreachable                ;; Indicate that this point in the code should never be reached

;; Conversion operations
i32.wrap_i64               ;; Truncate a 64-bit integer to a 32-bit integer
i32.trunc_f32_s            ;; Truncate a 32-bit float to a 32-bit integer (signed)
i32.trunc_f32_u            ;; Truncate a 32-bit float to a 32-bit integer (unsigned)
i32.trunc_f64_s            ;; Truncate a 64-bit float to a 32-bit integer (signed)
i32.trunc_f64_u            ;; Truncate a 64-bit float to a 32-bit integer (unsigned)
i64.extend_i32_s           ;; Extend a 32-bit integer to a 64-bit integer (signed)
i64.extend_i32_u           ;; Extend a 32-bit integer to a 64-bit integer (unsigned)
i64.trunc_f32_s            ;; Truncate a 32-bit float to a 64-bit integer (signed)
i64.trunc_f32_u            ;; Truncate a 32-bit float to a 64-bit integer (unsigned)
i64.trunc_f64_s            ;; Truncate a 64-bit float to a 64-bit integer (signed)
i64.trunc_f64_u            ;; Truncate a 64-bit float to a 64-bit integer (unsigned)
f32.convert_i32_s          ;; Convert a 32-bit integer to a 32-bit float (signed)
f32.convert_i32_u          ;; Convert a 32-bit integer to a 32-bit float (unsigned)
f32.convert_i64_s          ;; Convert a 64-bit integer to a 32-bit float (signed)
f32.convert_i64_u          ;; Convert a 64-bit integer to a 32-bit float (unsigned)
f32.demote_f64             ;; Demote a 64-bit float to a 32-bit float
f64.convert_i32_s          ;; Convert a 32-bit integer to a 64-bit float (signed)
f64.convert_i32_u          ;; Convert a 32-bit integer to a 64-bit float (unsigned)
f64.convert_i64_s          ;; Convert a 64-bit integer to a 64-bit float (signed)
f64.convert_i64_u          ;; Convert a 64-bit integer to a 64-bit float (unsigned)
f64.promote_f32            ;; Promote a 32-bit float to a 64-bit float

;; Reinterpretations
i32.reinterpret_f32        ;; Reinterpret the bits of a 32-bit float as a 32-bit integer
i64.reinterpret_f64        ;; Reinterpret the bits of a 64-bit float as a 64-bit integer
f32.reinterpret_i32        ;; Reinterpret the bits of a 32-bit integer as a 32-bit float
f64.reinterpret_i64        ;; Reinterpret the bits of a 64-bit integer as a 64-bit float

;; local variables
local.get                  ;; Get the value of a local variable
local.set                  ;; Set the value of a local variable
local.tee                  ;; Set the value of a local variable and keep the value on the stack

;; global variables
global.get                 ;; Get the value of a global variable
global.set                 ;; Set the value of a global variable

;; Memory instructions
memory.size                ;; Get the current size of memory
memory.grow                ;; Increase the size of memory

;; Table instructions
table.get                  ;; Get an element from a table
table.init                 ;; Initialize a portion of a table with elements from a segment
table.copy                 ;; Copy elements from one portion of a table to another
table.grow                 ;; Increase the size of a table
table.size                 ;; Get the current size of a table
table.fill                 ;; Fill a portion of a table with a specific element

;; Module structure
(import)                   ;; Import a function, table, memory, or global from another module
(export)                   ;; Export a function, table, memory, or global to be used by other modules
(elem)                     ;; Define a segment of elements for a table
(data)                     ;; Define a segment of data for memory
(type)                     ;; Define a type for a function
(func)                     ;; Define a function
(memory)                   ;; Define a memory
(table)                    ;; Define a table
(global)                   ;; Define a global variable

;; WASI modules
;; Import the args_get function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "args_get" (func $args_get (param i32 i32) (result i32)))

;; Import the args_sizes_get function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "args_sizes_get" (func $args_sizes_get (param i32 i32) (result i32)))

;; Import the environ_get function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "environ_get" (func $environ_get (param i32 i32) (result i32)))

;; Import the environ_sizes_get function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "environ_sizes_get" (func $environ_sizes_get (param i32 i32) (result i32)))

;; Import the clock_time_get function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "clock_time_get" (func $clock_time_get (param i32 i64 i32) (result i32)))

;; Import the fd_write function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))

;; Import the fd_read function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_read" (func $fd_read (param i32 i32 i32 i32) (result i32)))

;; Import the fd_close function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_close" (func $fd_close (param i32) (result i32)))

;; Import the fd_seek function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_seek" (func $fd_seek (param i32 i64 i32 i32) (result i32)))

;; Import the proc_exit function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "proc_exit" (func $proc_exit (param i32)))

;; Import the fd_prestat_get function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_prestat_get" (func $fd_prestat_get (param i32 i32) (result i32)))

;; Import the fd_prestat_dir_name function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_prestat_dir_name" (func $fd_prestat_dir_name (param i32 i32 i32) (result i32)))

;; Import the path_open function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "path_open" (func $path_open (param i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))

;; Import the fd_datasync function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_datasync" (func $fd_datasync (param i32) (result i32)))

;; Import the fd_sync function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_sync" (func $fd_sync (param i32) (result i32)))

;; Import the fd_write function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))

;; Import the fd_advise function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_advise" (func $fd_advise (param i32 i64 i64 i32) (result i32)))

;; Import the fd_allocate function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_allocate" (func $fd_allocate (param i32 i64 i64) (result i32)))

;; Import the fd_tell function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_tell" (func $fd_tell (param i32 i32) (result i32)))

;; Import the fd_filestat_get function from the wasi_snapshot_preview1 module
(import "wasi_snapshot_preview1" "fd_filestat_get" (func $fd_filestat_get (param i32 i32) (result i32)))

;; Numeric operations
i32.clz                    ;; Count leading zeros in a 32-bit integer
i32.ctz                    ;; Count trailing zeros in a 32-bit integer
i32.popcnt                 ;; Count the number of set bits in a 32-bit integer
i32.eqz                    ;; Check if a 32-bit integer is zero
i64.clz                    ;; Count leading zeros in a 64-bit integer
i64.ctz                    ;; Count trailing zeros in a 64-bit integer
i64.popcnt                 ;; Count the number of set bits in a 64-bit integer
i64.eqz                    ;; Check if a 64-bit integer is zero
f32.abs                    ;; Compute the absolute value of a 32-bit float
f32.neg                    ;; Negate a 32-bit float
f32.ceil                   ;; Round a 32-bit float upwards to the nearest integer
f32.floor                  ;; Round a 32-bit float downwards to the nearest integer
f32.trunc                  ;; Truncate a 32-bit float to an integer
f32.nearest                ;; Round a 32-bit float to the nearest integer
f32.sqrt                   ;; Compute the square root of a 32-bit float
f32.min                    ;; Compute the minimum of two 32-bit floats
f32.max                    ;; Compute the maximum of two 32-bit floats
f32.copysign               ;; Copy the sign of one 32-bit float to another
f64.abs                    ;; Compute the absolute value of a 64-bit float
f64.neg                    ;; Negate a 64-bit float
f64.ceil                   ;; Round a 64-bit float upwards to the nearest integer
f64.floor                  ;; Round a 64-bit float downwards to the nearest integer
f64.trunc                  ;; Truncate a 64-bit float to an integer
f64.nearest                ;; Round a 64-bit float to the nearest integer
f64.sqrt                   ;; Compute the square root of a 64-bit float
f64.min                    ;; Compute the minimum of two 64-bit floats
f64.max                    ;; Compute the maximum of two 64-bit floats
f64.copysign               ;; Copy the sign of one 64-bit float to another

;; Saturation conversion operations
i32.trunc_sat_f32_s        ;; Convert a 32-bit float to a 32-bit integer, saturating and rounding towards zero
i32.trunc_sat_f32_u        ;; Convert a 32-bit float to a 32-bit unsigned integer, saturating and rounding towards zero
i32.trunc_sat_f64_s        ;; Convert a 64-bit float to a 32-bit integer, saturating and rounding towards zero
i32.trunc_sat_f64_u        ;; Convert a 64-bit float to a 32-bit unsigned integer, saturating and rounding towards zero
i64.trunc_sat_f32_s        ;; Convert a 32-bit float to a 64-bit integer, saturating and rounding towards zero
i64.trunc_sat_f32_u        ;; Convert a 32-bit float to a 64-bit unsigned integer, saturating and rounding towards zero
i64.trunc_sat_f64_s        ;; Convert a 64-bit float to a 64-bit integer, saturating and rounding towards zero
i64.trunc_sat_f64_u        ;; Convert a 64-bit float to a 64-bit unsigned integer, saturating and rounding towards zero

;; SIMD operations
v128.load                  ;; Load a 128-bit vector
i8x16.splat                ;; Create a 128-bit vector with 16 copies of a 8-bit integer
i16x8.splat                ;; Create a 128-bit vector with 8 copies of a 16-bit integer
i32x4.splat                ;; Create a 128-bit vector with 4 copies of a 32-bit integer
i64x2.splat                ;; Create a 128-bit vector with 2 copies of a 64-bit integer
f32x4.splat                ;; Create a 128-bit vector with 4 copies of a 32-bit float
f64x2.splat                ;; Create a 128-bit vector with 2 copies of a 64-bit float
i8x16.extract_lane_s       ;; Extract a signed 8-bit integer from a 128-bit vector
i8x16.extract_lane_u       ;; Extract an unsigned 8-bit integer from a 128-bit vector
i16x8.extract_lane_s       ;; Extract a signed 16-bit integer from a 128-bit vector
i16x8.extract_lane_u       ;; Extract an unsigned 16-bit integer from a 128-bit vector
i32x4.extract_lane         ;; Extract a 32-bit integer from a 128-bit vector
i64x2.extract_lane         ;; Extract a 64-bit integer from a 128-bit vector
f32x4.extract_lane         ;; Extract a 32-bit float from a 128-bit vector
f64x2.extract_lane         ;; Extract a 64-bit float from a 128-bit vector
i8x16.replace_lane         ;; Replace a 8-bit integer in a 128-bit vector
i16x8.replace_lane         ;; Replace a 16-bit integer in a 128-bit vector
i32x4.replace_lane         ;; Replace a 32-bit integer in a 128-bit vector
i64x2.replace_lane         ;; Replace a 64-bit integer in a 128-bit vector
f32x4.replace_lane         ;; Replace a 32-bit float in a 128-bit vector
f64x2.replace_lane         ;; Replace a 64-bit float in a 128-bit vector

;; SIMD operations (continued)
i8x16.eq                   ;; Compare 8-bit integers in a 128-bit vector for equality
i8x16.ne                   ;; Compare 8-bit integers in a 128-bit vector for inequality
i8x16.lt_s                 ;; Compare 8-bit integers in a 128-bit vector for less than (signed)
i8x16.lt_u                 ;; Compare 8-bit integers in a 128-bit vector for less than (unsigned)
i8x16.gt_s                 ;; Compare 8-bit integers in a 128-bit vector for greater than (signed)
i8x16.gt_u                 ;; Compare 8-bit integers in a 128-bit vector for greater than (unsigned)
i8x16.le_s                 ;; Compare 8-bit integers in a 128-bit vector for less than or equal to (signed)
i8x16.le_u                 ;; Compare 8-bit integers in a 128-bit vector for less than or equal to (unsigned)
i8x16.ge_s                 ;; Compare 8-bit integers in a 128-bit vector for greater than or equal to (signed)
i8x16.ge_u                 ;; Compare 8-bit integers in a 128-bit vector for greater than or equal to (unsigned)
i16x8.eq                   ;; Compare 16-bit integers in a 128-bit vector for equality
i16x8.ne                   ;; Compare 16-bit integers in a 128-bit vector for inequality
i16x8.lt_s                 ;; Compare 16-bit integers in a 128-bit vector for less than (signed)
i16x8.lt_u                 ;; Compare 16-bit integers in a 128-bit vector for less than (unsigned)
i16x8.gt_s                 ;; Compare 16-bit integers in a 128-bit vector for greater than (signed)
i16x8.gt_u                 ;; Compare 16-bit integers in a 128-bit vector for greater than (unsigned)
i16x8.le_s                 ;; Compare 16-bit integers in a 128-bit vector for less than or equal to (signed)
i16x8.le_u                 ;; Compare 16-bit integers in a 128-bit vector for less than or equal to (unsigned)
i16x8.ge_s                 ;; Compare 16-bit integers in a 128-bit vector for greater than or equal to (signed)
i16x8.ge_u                 ;; Compare 16-bit integers in a 128-bit vector for greater than or equal to (unsigned)
i32x4.eq                   ;; Compare 32-bit integers in a 128-bit vector for equality
i32x4.ne                   ;; Compare 32-bit integers in a 128-bit vector for inequality
i32x4.lt_s                 ;; Compare 32-bit integers in a 128-bit vector for less than (signed)
i32x4.lt_u                 ;; Compare 32-bit integers in a 128-bit vector for less than (unsigned)
i32x4.gt_s                 ;; Compare 32-bit integers in a 128-bit vector for greater than (signed)
i32x4.gt_u                 ;; Compare 32-bit integers in a 128-bit vector for greater than (unsigned)
i32x4.le_s                 ;; Compare 32-bit integers in a 128-bit vector for less than or equal to (signed)
i32x4.le_u                 ;; Compare 32-bit integers in a 128-bit vector for less than or equal to (unsigned)
i32x4.ge_s                 ;; Compare 32-bit integers in a 128-bit vector for greater than or equal to (signed)
i32x4.ge_u                 ;; Compare 32-bit integers in a 128-bit vector for greater than or equal to (unsigned)
f32x4.eq                   ;; Compare 32-bit floats in a 128-bit vector for equality
f32x4.ne                   ;; Compare 32-bit floats in a 128-bit vector for inequality
f32x4.lt                   ;; Compare 32-bit floats in a 128-bit vector for less than
f32x4.gt                   ;; Compare 32-bit floats in a 128-bit vector for greater than
f32x4.le                   ;; Compare 32-bit floats in a 128-bit vector for less than or equal to
f32x4.ge                   ;; Compare 32-bit floats in a 128-bit vector for greater than or equal to
f64x2.eq                   ;; Compare 64-bit floats in a 128-bit vector for equality
f64x2.ne                   ;; Compare 64-bit floats in a 128-bit vector for inequality
f64x2.lt                   ;; Compare 64-bit floats in a 128-bit vector for less than
f64x2.gt                   ;; Compare 64-bit floats in a 128-bit vector for greater than
f64x2.le                   ;; Compare 64-bit floats in a 128-bit vector for less than or equal to
f64x2.ge                   ;; Compare 64-bit floats in a 128-bit vector for greater than or equal to

;; SIMD operations (continued)
v128.not                   ;; Compute the bitwise not of a 128-bit vector
v128.and                   ;; Compute the bitwise and of two 128-bit vectors
v128.or                    ;; Compute the bitwise or of two 128-bit vectors
v128.xor                   ;; Compute the bitwise xor of two 128-bit vectors
v128.bitselect             ;; Select bits from two 128-bit vectors based on a mask
i8x16.neg                  ;; Negate 8-bit integers in a 128-bit vector
i8x16.any_true             ;; Check if any 8-bit integers in a 128-bit vector are true
i8x16.all_true             ;; Check if all 8-bit integers in a 128-bit vector are true
i8x16.shl                  ;; Shift left 8-bit integers in a 128-bit vector
i8x16.shr_s                ;; Shift right 8-bit integers in a 128-bit vector (signed)
i8x16.shr_u                ;; Shift right 8-bit integers in a 128-bit vector (unsigned)
i8x16.add                  ;; Add 8-bit integers in a 128-bit vector
i8x16.add_saturate_s       ;; Add 8-bit integers in a 128-bit vector with saturation (signed)
i8x16.add_saturate_u       ;; Add 8-bit integers in a 128-bit vector with saturation (unsigned)
i8x16.sub                  ;; Subtract 8-bit integers in a 128-bit vector
i8x16.sub_saturate_s       ;; Subtract 8-bit integers in a 128-bit vector with saturation (signed)
i8x16.sub_saturate_u       ;; Subtract 8-bit integers in a 128-bit vector with saturation (unsigned)
i8x16.mul                  ;; Multiply 8-bit integers in a 128-bit vector
i16x8.neg                  ;; Negate 16-bit integers in a 128-bit vector
i16x8.any_true             ;; Check if any 16-bit integers in a 128-bit vector are true
i16x8.all_true             ;; Check if all 16-bit integers in a 128-bit vector are true
i16x8.shl                  ;; Shift left 16-bit integers in a 128-bit vector
i16x8.shr_s                ;; Shift right 16-bit integers in a 128-bit vector (signed)
i16x8.shr_u                ;; Shift right 16-bit integers in a 128-bit vector (unsigned)
i16x8.add                  ;; Add 16-bit integers in a 128-bit vector
i16x8.add_saturate_s       ;; Add 16-bit integers in a 128-bit vector with saturation (signed)
i16x8.add_saturate_u       ;; Add 16-bit integers in a 128-bit vector with saturation (unsigned)
i16x8.sub                  ;; Subtract 16-bit integers in a 128-bit vector
i16x8.sub_saturate_s       ;; Subtract 16-bit integers in a 128-bit vector with saturation (signed)
i16x8.sub_saturate_u       ;; Subtract 16-bit integers in a 128-bit vector with saturation (unsigned)
i16x8.mul                  ;; Multiply 16-bit integers in a 128-bit vector

;; SIMD operations (continued)
i32x4.neg                  ;; Negate 32-bit integers in a 128-bit vector
i32x4.any_true             ;; Check if any 32-bit integers in a 128-bit vector are true
i32x4.all_true             ;; Check if all 32-bit integers in a 128-bit vector are true
i32x4.shl                  ;; Shift left 32-bit integers in a 128-bit vector
i32x4.shr_s                ;; Shift right 32-bit integers in a 128-bit vector (signed)
i32x4.shr_u                ;; Shift right 32-bit integers in a 128-bit vector (unsigned)
i32x4.add                  ;; Add 32-bit integers in a 128-bit vector
i32x4.sub                  ;; Subtract 32-bit integers in a 128-bit vector
i32x4.mul                  ;; Multiply 32-bit integers in a 128-bit vector
i64x2.neg                  ;; Negate 64-bit integers in a 128-bit vector
i64x2.shl                  ;; Shift left 64-bit integers in a 128-bit vector
i64x2.shr_s                ;; Shift right 64-bit integers in a 128-bit vector (signed)
i64x2.shr_u                ;; Shift right 64-bit integers in a 128-bit vector (unsigned)
i64x2.add                  ;; Add 64-bit integers in a 128-bit vector
i64x2.sub                  ;; Subtract 64-bit integers in a 128-bit vector
f32x4.neg                  ;; Negate 32-bit floats in a 128-bit vector
f32x4.abs                  ;; Compute the absolute value of 32-bit floats in a 128-bit vector
f32x4.min                  ;; Compute the minimum of 32-bit floats in a 128-bit vector
f32x4.max                  ;; Compute the maximum of 32-bit floats in a 128-bit vector
f32x4.add                  ;; Add 32-bit floats in a 128-bit vector
f32x4.sub                  ;; Subtract 32-bit floats in a 128-bit vector
f32x4.mul                  ;; Multiply 32-bit floats in a 128-bit vector
f32x4.div                  ;; Divide 32-bit floats in a 128-bit vector
f32x4.sqrt                 ;; Compute the square root of 32-bit floats in a 128-bit vector
f64x2.neg                  ;; Negate 64-bit floats in a 128-bit vector
f64x2.abs                  ;; Compute the absolute value of 64-bit floats in a 128-bit vector
f64x2.min                  ;; Compute the minimum of 64-bit floats in a 128-bit vector
f64x2.max                  ;; Compute the maximum of 64-bit floats in a 128-bit vector
f64x2.add                  ;; Add 64-bit floats in a 128-bit vector
f64x2.sub                  ;; Subtract 64-bit floats in a 128-bit vector
f64x2.mul                  ;; Multiply 64-bit floats in a 128-bit vector
f64x2.div                  ;; Divide 64-bit floats in a 128-bit vector
f64x2.sqrt                 ;; Compute the square root of 64-bit floats in a 128-bit vector

;; Memory instructions
(memory $0 1)              ;; Declare a memory with initial size of 1 page
(load)                     ;; Load a value from memory
(store)                    ;; Store a value into memory
(offset)                   ;; Specify the offset for a memory operation
(align)                    ;; Specify the alignment for a memory operation

;; Control instructions
(nop)                      ;; Perform no operation
(unreachable)              ;; Indicate an unreachable point in the code
(block)                    ;; Start a sequence of instructions
(loop)                     ;; Start a loop block
(if)                       ;; Start an if block
(else)                     ;; Start an else block
(end)                      ;; End a block, loop, if, or else
(br)                       ;; Branch to a label
(br_if)                    ;; Conditionally branch to a label
(br_table)                 ;; Branch to a label in a table
(return)                   ;; Return from the current function
(call)                     ;; Call a function
(call_indirect)            ;; Call a function through a table
(drop)                     ;; Drop the top value from the stack
(select)                   ;; Select one of two values based on a condition
(local.get)                ;; Get the value of a local variable
(local.set)                ;; Set the value of a local variable
(local.tee)                ;; Set the value of a local variable and keep the value on the stack
(global.get)               ;; Get the value of a global variable
(global.set)               ;; Set the value of a global variable

;; Global instructions
(global $g (mut i32) (i32.const 0)) ;; Declare a mutable global variable of type i32 and initialize it to 0
(global.set $g)                     ;; Set the value of the global variable $g
(global.get $g)                     ;; Get the value of the global variable $g

;; Table instructions
(table $t 1 anyfunc)                ;; Declare a table of size 1 with elements of any function type
(elem (i32.const 0) $f)             ;; Initialize the first element of the table with the function $f
(call_indirect (get_local $l))      ;; Call a function from the table using an index from a local variable $l

;; Type instructions
(type $t (func (param i32) (result i32))) ;; Declare a function type $t with a parameter of type i32 and a result of type i32
