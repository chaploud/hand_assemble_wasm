(module
  ;; ========== print function ==========
  (import "wasi_unstable" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))

  ;; Memory declaration
  (memory 1)
  (export "memory" (memory 0))

  ;; Function to print a string with a newline
  (func $print (export "print") (param $ptr i32) (param $len i32)
    ;; The iovec array
    (i32.store (i32.const 0) (local.get $ptr))  ;; iov.iov_base
    (i32.store (i32.const 4) (local.get $len))  ;; iov.iov_len

    ;; Call fd_write
    (call $fd_write
      (i32.const 1)  ;; fd
      (i32.const 0)  ;; iovs
      (i32.const 1)  ;; iovs_len
      (i32.const 20) ;; nwritten
    )
    drop

    ;; Add a newline
    (i32.store (i32.const 0) (i32.const 1000))  ;; iov.iov_base
    (i32.store (i32.const 4) (i32.const 1))  ;; iov.iov_len

    ;; Call fd_write again
    (call $fd_write
      (i32.const 1)  ;; fd
      (i32.const 0)  ;; iovs
      (i32.const 1)  ;; iovs_len
      (i32.const 20) ;; nwritten
    )
    drop
  )
  ;; The newline character
  (data (i32.const 1000) "\n")
  ;; ===================================

  ;; Function to convert an integer to a string
  (func $int_to_str (param $num i32) (param $buf i32) (result i32)
    (local $i i32)
    (local.set $i (local.get $buf))
    (block $done
      (loop $loop
        (local.set $i (i32.sub (local.get $i) (i32.const 1)))
        (i32.store8 (local.get $i) (i32.add (i32.const 48) (i32.rem_u (local.get $num) (i32.const 10))))
        (local.set $num (i32.div_u (local.get $num) (i32.const 10)))
        (br_if $done (i32.eqz (local.get $num)))
        (br $loop)
      )
    )
    (local.get $i)
  )

    ;; Function to print an integer
  (func $print_int (export "print_int") (param $num i32)
    (local $buf i32)
    (local.set $buf (i32.const 100))
    (local.set $buf (call $int_to_str (local.get $num) (local.get $buf)))
    (call $print (local.get $buf) (i32.sub (i32.const 100) (local.get $buf)))
  )

  ;; Start function
  (func (export "_start")
    (local $i i32)
    (local.set $i (i32.const 0))
    (loop $loop
      ;; Store the value in memory
      (i32.store (i32.mul (local.get $i) (i32.const 4)) (local.get $i))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $loop (i32.lt_s (local.get $i) (i32.const 10)))
    )

    ;; Reset the counter
    (local.set $i (i32.const 0))

    (loop $loop2
      ;; Load the value from memory and print it
      (call $print_int (i32.load (i32.mul (local.get $i) (i32.const 4))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $loop2 (i32.lt_s (local.get $i) (i32.const 10)))
    )
  )
)
