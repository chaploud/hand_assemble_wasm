(module
  ;; Import the necessary WASI functions
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

  ;; Start function
  (func (export "_start")
    (call $print (i32.const 100) (i32.const 13))
    (call $print (i32.const 113) (i32.const 12))
    (call $print (i32.const 125) (i32.const 12))
  )

  ;; The strings to print
  (data (i32.const 100) "Hello, World!")
  (data (i32.const 113) "Hello, Wasm!")
  (data (i32.const 125) "Hello, WASI!")
)
