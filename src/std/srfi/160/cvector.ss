;;; -*- Gerbil -*-
;;; © vyzo
;;; SRFI-160: Homogeneous Numeric Vector Libraries

(import :gerbil/gambit
        :std/error)
(export #t)

(defstruct c64vector (e)
  final: #t unchecked: #t equal: #t
  constructor: :init!)

(defstruct c128vector (e)
  final: #t unchecked: #t equal: #t
  constructor: init!)

(defmethod {:init! c64vector}
  (lambda (self size (fill #f))
    (let (e (make-f32vector (fx* 2 size)))
      (struct-instance-init! self e)
      (when fill
        (unless (complex? fill)
          (raise-bad-argument cvector "complex number" fill))
        (cvector-fill! e fill  ##f32vector-set! size)))))

(defmethod {:init! c128vector}
  (lambda (self size (fill #f))
    (let (e (make-f64vector (fx* 2 size)))
      (struct-instance-init! self e)
      (when fill
        (unless (complex? fill)
          (raise-bad-argument cvector "complex number" fill))
        (cvector-fill! e fill ##f64vector-set! size)))))

(def (cvector-fill! v fill set-e size)
  (declare (not safe))
  (let ((real (inexact (real-part fill)))
        (imag (inexact (imag-part fill))))
    (do ((i 0 (fx1+ i)))
        ((fx= i size))
      (let (j (fx* i 2))
        (set-e v j real)
        (set-e v (fx1+ j) imag)))))

(def (make-c64vector* . args)
  (list->c64vector args))

(def (make-c128vector* . args)
  (list->c128vector args))

(def (list->c64vector lst)
  (let (v (make-c64vector (length lst)))
    (cvector-init! (&c64vector-e v) lst ##f32vector-set!)
    v))

(def (list->c128vector lst)
  (let (v (make-c128vector (length lst)))
    (cvector-init! (&c128vector-e v) lst ##f64vector-set!)
    v))

(def (cvector-init! v lst set-e)
  (declare (not safe))
  (let lp ((rest lst) (i 0))
    (match rest
      ([x . rest]
       (unless (complex? x)
         (raise-bad-argument cvector "complex number" x))
       (let ((real (inexact (real-part x)))
             (imag (inexact (imag-part x))))
         (set-e v i real)
         (set-e v (fx1+ i) imag)
         (lp rest (fx+ i 2))))
      (else (void)))))

(def (c64vector-ref v i)
  (with ((c64vector e) v)
    (let* ((j (fx* i 2))
           (real (f32vector-ref e j))
           (imag (f32vector-ref e (fx1+ j))))
      (##cpxnum-make real imag))))

(def (c64vector-set! v i x)
  (with ((c64vector e) v)
    (let* ((j (fx* i 2))
           (real (inexact (real-part x)))
           (imag (inexact (imag-part x))))
      (f32vector-set! e j real)
      (f32vector-set! e (fx1+ j) imag))))

(def (c128vector-ref v i)
  (with ((c128vector e) v)
    (let* ((j (fx* i 2))
           (real (f64vector-ref e j))
           (imag (f64vector-ref e (fx1+ j))))
      (##cpxnum-make real imag))))

(def (c128vector-set! v i x)
  (with ((c128vector e) v)
    (let* ((j (fx* i 2))
           (real (inexact (real-part x)))
           (imag (inexact (imag-part x))))
      (f64vector-set! e j real)
      (f64vector-set! e (fx1+ j) imag))))

(def (c64vector-length v)
  (with ((c64vector e) v)
    (##fxquotient (##f32vector-length e) 2)))

(def (c128vector-length v)
  (with ((c128vector e) v)
    (##fxquotient (##f64vector-length e) 2)))

(def (c64vector->list v)
  (with ((c64vector e) v)
    (cvector->list e ##f32vector-ref ##f32vector-length)))

(def (c128vector->list v)
  (with ((c128vector e) v)
    (cvector->list e ##f64vector-ref ##f64vector-length)))

(def (cvector->list v ref-e length-e)
  (declare (not safe))
  (def end (length-e v))
  (let lp ((i 0) (r []))
    (if (fx< i end)
      (let ((real (ref-e v i))
            (imag (ref-e v (fx1+ i))))
        (lp (fx+ i 2)
            (cons (##cpxnum-make real imag) r)))
      (reverse r))))

(defmethod {:write c64vector}
  (lambda (self port)
    (let (lst (c64vector->list self))
      (write "#c64" port)
      (write lst port))))

(defmethod {:write c128vector}
  (lambda (self port)
    (let (lst (c128vector->list self))
      (write "#c128" port)
      (write lst port))))
