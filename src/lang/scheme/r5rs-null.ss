;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS r5rs-null environment imports
(import ./r5rs)
(export
  begin define lambda if let let* letrec set! quote
  and or case cond do delay
  define-syntax let-syntax letrec-syntax
  (phi: +1 syntax-rules))
