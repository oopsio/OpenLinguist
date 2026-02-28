;;;; Complex "Hello World" in Common Lisp
;;;; Features: Macros, Object System, Functional Composition, Formatting

;; 1. Define a class to hold the message
(defclass message-holder ()
  ((text :initarg :text :reader text)))

;; 2. Create a macro that generates a formatted string;;    treating code as data.
(defmacro generate-complex-output (obj)
  `(format nil "~@(~{~a~^ ~}~)" 
           (list "hello" (format nil "~a" (text ,obj)))))

;; 3. Define a generic function
(defgeneric say-hello (object)
  (:documentation "Outputs a greeting"))

;; 4. Define a method for our specific class
(defmethod say-hello ((obj message-holder))
  (format t "~%--- MESSAGE ---~%")
  (let ((output (generate-complex-output obj)))
    (format t "~A, World!~%" (string-capitalize output)))
  (format t "---------------~%"))

;; 5. Execute
(let ((my-msg (make-instance 'message-holder :text "world")))
  (say-hello my-msg))
