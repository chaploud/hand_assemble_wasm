(module
  ;; Import the necessary WASI functions
  (import "wasi_unstable" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))

  ;; Memory declaration
  (memory 1)
  (export "memory" (memory 0))

  ;; Function to print a string
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
  )

  ;; Start function
  (func (export "_start")
    (call $print (i32.const 100) (i32.const 14))
    (call $print (i32.const 114) (i32.const 13))
    (call $print (i32.const 127) (i32.const 13))
  )

  ;; The strings to print
  (data (i32.const 100) "Hello, World!\n")
  (data (i32.const 114) "Hello, Wasm!\n")
  (data (i32.const 127) "Hello, WASI!\n")
)
