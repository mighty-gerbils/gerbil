;;; -*- Gerbil -*-
;;; © vyzo
;;; reader test compiled support
(import :std/interface
	./interface
        ./scan
        ./scanner
        ./serialize
        ./deserialize)
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
   (untaint!
    (lambda (self path)
      (untaint! self.b path))))
  (B
   (untaint!
    (lambda (self path)
      (when self.x
	(error "expected x to be #f"))
      (set! self.x 2)))))
