;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme base) library -- implementation details
package: scheme

(import :gerbil/gambit
        :scheme/stubs)
(export #t)

;; macros
(defsyntax-stub features)
(defsyntax-stub guard)
(defsyntax-stub include-ci)

;; misc
(defrules defeqv ()
  ((_ id is? =?)
   (def* id
     ((x y)
      (and (is? x)
           (is? y)
           (=? x y)))
     ((x y . rest)
      (let* ((y-rest (cons y rest))
             (x-y-rest (cons x y-rest)))
        (and (andmap is? x-y-rest)
             (andmap (cut =? x <>) y-rest)))))))

(defeqv boolean=? boolean? eq?)
(defeqv symbol=? symbol? eq?)

(defstub raise-continuable)

;; numerics
(def (exact-integer? obj)
  (and (exact? obj)
       (integer? obj)))

(defstub denominator)
(defstub exact-integer-sqrt)
(defstub floor/)
(defstub floor-quotient)
(defstub floor-remainder)
(defstub square)
(defstub truncate/)
(defstub truncate-quotient)
(defstub truncate-remainder)

;; lists
(def (list-copy lst)
  (foldr cons [] lst))

(def (list-set! lst k obj)
  (set! (car (list-tail lst k))
    obj))

;; vectors
(defrules defvector-copy ()
  ((_ id copy-e subvector-e length-e)
   (def* id
     ((vec)
      (copy-e vec))
     ((vec start)
      (subvector-e vec start (length-e vec)))
     ((vec start end)
      (subvector-e vec start end)))))

(defrules defvector-copy! ()
  ((_ id move-e length-e)
   (def* id
     ((dest dest-start src)
      (move-e src 0 (length-e src) dest dest-start))
     ((dest dest-start src src-start)
      (move-e src src-start (length-e src) dest dest-start))
     ((dest dest-start src src-start src-end)
      (move-e src src-start src-end dest dest-start)))))

(defrules defvector-for-each ()
  ((_ id length-e ref-e)
   (def* id
     ((proc vec)
      (let (len (length-e vec))
        (let lp ((x 0))
          (when (fx< x len)
            (proc (ref-e vec x))
            (lp (fx1+ x))))))
     ((proc vec1 vec2)
      (let ((len1 (length-e vec1))
            (len2 (length-e vec2)))
        (let lp ((x 0))
          (when (and (fx< x len1) (fx< x len2))
            (proc (ref-e vec1 x) (ref-e vec2 x))
            (lp (fx1+ x))))))
     ((proc . vecs)
      (let (lens (map length-e vecs))
        (let lp ((x 0))
          (when (andmap (cut fx< x <>) lens)
            (apply proc (map (cut ref-e <> x) vecs))
            (lp (fx1+ x)))))))))

(defrules defvector-map ()
  ((_ id make-e length-e ref-e set-e)
   (def* id
     ((proc vec)
      (let* ((len (length-e vec))
             (res (make-e len)))
        (let lp ((x 0))
          (if (fx< x len)
            (let (val (proc (ref-e vec x)))
              (set-e res x val)
              (lp (fx1+ x)))
            res))))
     ((proc vec1 vec2)
      (let* ((len1 (length-e vec1))
             (len2 (length-e vec2))
             (len (min len1 len2))
             (res (make-e len)))
        (let lp ((x 0))
          (if (fx< x len)
            (let (val (proc (ref-e vec1 x) (ref-e vec2 x)))
              (set-e res x val)
              (lp (fx1+ x)))
            res))))
     ((proc . vecs)
      (let* ((lens (map length-e vecs))
             (len (apply min lens))
             (res (make-e len)))
        (let lp ((x 0))
          (if (fx< x len)
            (let (val (apply proc (map (cut ref-e <> x) vecs)))
              (set-e res x val)
              (lp (fx1+ x)))
            res)))))))

(defrules defvector->vector ()
  ((_ id length-e ref-e make-e is? set-e)
   (def (id vec (start 0) (end (length-e vec)))
     (let* ((len (fx- end start))
            (res (make-e len)))
       (let lp ((x 0))
         (if (fx< x len)
           (let (val (ref-e vec (fx+ start x)))
             (unless (is? val)
               (error "Illegal argument" vec x val))
             (set-e res x val)
             (lp (fx1+ x)))
           res))))))

(defvector-for-each vector-for-each vector-length ##vector-ref)
(defvector-map r7rs-vector-map make-vector vector-length ##vector-ref ##vector-set!)
(defvector-copy r7rs-vector-copy vector-copy subvector vector-length)
(defvector-copy! vector-copy! subvector-move! vector-length)

;; strings
(defvector-for-each string-for-each string-length ##string-ref)
(defvector-map string-map make-string string-length ##string-ref ##string-set!)
(defvector-copy r7rs-string-copy string-copy substring string-length)
(defvector-copy! string-copy! substring-move! string-length)
(defvector->vector vector->string vector-length ##vector-ref make-string char? ##string-set!)
(defvector->vector string->vector string-length ##string-ref make-vector true ##vector-set!)

;; byte vectors
(defvector-copy bytevector-copy u8vector-copy subu8vector u8vector-length)
(defvector-copy! bytevector-copy! subu8vector-move! u8vector-length)

;; i/o
(def (read-bytevector k (port (current-input-port)))
  (unless (and (fixnum? k) (fx> k 0))
    (error "Illegal argument; expected positive fixnum" k))
  (let* ((bytes (make-u8vector k))
         (rd (read-subu8vector bytes 0 k port)))
    (cond
     ((fxzero? rd)
      (eof-object))
     ((fx< rd k)
      (u8vector-shrink! bytes rd)
      bytes)
     (else
      bytes))))

(def (read-bytevector! bytes (port (current-input-port)) (start 0) (end (u8vector-length bytes)))
  (unless (and (fixnum? start) (fixnum? end) (fx< start end))
    (error "Illegal bytevector range; need at least one char" start end))
  (let (rd (read-subu8vector bytes start end port))
    (if (fxzero? rd)
      (eof-object)
      rd)))

(def (write-bytevector bytes (port (current-output-port)) (start 0) (end (u8vector-length bytes)))
  (write-subu8vector bytes start end port))

(defstub read-error?)
(defstub file-error?)

(defstub binary-port?)
(defstub textual-port?)

(defstub call-with-port)

(defstub input-port-open?)
(defstub output-port-open?)

(defstub u8-ready?)
(defstub peek-u8)
