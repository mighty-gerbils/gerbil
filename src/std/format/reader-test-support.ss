;;; -*- Gerbil -*-
;;; © vyzo
;;; reader test compiled support
(import :std/interface
	:std/serde/interface
	:std/serde/deserialize)
(export #t)

(defclass A (b)
  transparent: #t)
(defclass B (x)
  transparent: #f)

(interface C
  (foo!))

(implement C A
  (foo!
   (lambda (self) self.b)))

(implement ObjectDeserializer
  (A
   (validate!
    (lambda (self path)
      (validate! self.b path))))
  (B
   (validate!
    (lambda (self path)
      (when self.x
	(error "expected x to be #f"))
      (set! self.x 2)))))
