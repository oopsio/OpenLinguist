(module
  ;; Import the 'log' function and 'memory' from the 'env' namespace in JavaScript
  (import "env" "log" (func $log (param i32 i32)))
  (import "env" "memory" (memory $mem 1))

  ;; Define a function 'hello' that will be exported to JavaScript
  (func (export "hello")
    ;; Push the offset (0) and length (13) of the string onto the stack
    (i32.const 0)
    (i32.const 13)
    ;; Call the imported 'log' function with the offset and length as arguments
    (call $log)
  )

  ;; Store the string "Hello, World!" in the shared memory starting at offset 0
  (data (i32.const 0) "Hello, World!")
)
