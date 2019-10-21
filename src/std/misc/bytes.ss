;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     belmarca
;;; miscellaneous bytes utilities
package: std/misc

(import (for-syntax :std/stxutil)
        :gerbil/gambit/exact
        :gerbil/gambit/bits
        :gerbil/gambit/fixnum
        :std/text/hex
        :std/foreign)
(export
  ;; Endianness
  endianness big little native native-endianness
  ;; Primitives
  bytevector-u8-ref
  bytevector-u8-set!

  u8vector-s8-ref bytevector-s8-ref
  u8vector-s8-set! bytevector-s8-set!

  u8vector-uint-ref bytevector-uint-ref
  u8vector-uint-set! bytevector-uint-set!

  u8vector->uint-list bytevector->uint-list
  u8vector->sint-list bytevector->sint-list
  uint-list->u8vector uint-list->bytevector
  sint-list->u8vector sint-list->bytevector

  u8vector-u16-ref bytevector-u16-ref
  u8vector-u16-native-ref bytevector-u16-native-ref
  u8vector-u16-set! bytevector-u16-set!
  u8vector-u16-native-set! bytevector-u16-native-set!

  u8vector-s16-ref bytevector-s16-ref
  u8vector-s16-native-ref bytevector-s16-native-ref
  u8vector-s16-set! bytevector-s16-set!
  u8vector-s16-native-set! bytevector-s16-native-set!

  u8vector-u32-ref bytevector-u32-ref
  u8vector-u32-native-ref bytevector-u32-native-ref
  u8vector-u32-set! bytevector-u32-set!
  u8vector-u32-native-set! bytevector-u32-native-set!

  u8vector-s32-ref bytevector-s32-ref
  u8vector-s32-native-ref bytevector-s32-native-ref
  u8vector-s32-set! bytevector-s32-set!
  u8vector-s32-native-set! bytevector-s32-native-set!

  u8vector-u64-ref bytevector-u64-ref
  u8vector-u64-native-ref bytevector-u64-native-ref
  u8vector-u64-set! bytevector-u64-set!
  u8vector-u64-native-set! bytevector-u64-native-set!

  u8vector-s64-ref bytevector-s64-ref
  u8vector-s64-native-ref bytevector-s64-native-ref
  u8vector-s64-set! bytevector-s64-set!
  u8vector-s64-native-set! bytevector-s64-native-set!

  ;; Utilities
  u8vector-swap! bytevector-swap!
  u8vector-reverse bytevector-reverse
  u8vector-reverse! bytevector-reverse!
  u8vector->bytestring bytevector->bytestring
  bytestring->u8vector bytestring->bytevector
  u8vector->uint bytevector->uint
  uint->u8vector uint->bytevector

  ;; uhchecked operations
  &u8vector-s8-ref
  &u8vector-s8-set!

  &u8vector-uint-ref/be
  &u8vector-uint-ref/le
  &u8vector-uint-set!/be
  &u8vector-uint-set!/le
  &u8vector-sint-ref/be
  &u8vector-sint-ref/le
  &u8vector-sint-set!/be
  &u8vector-sint-set!/le

  &u8vector-u16-ref/native
  &u8vector-u16-set!/native
  &u8vector-s16-ref/native
  &u8vector-s16-set!/native
  &u8vector-u32-ref/native
  &u8vector-u32-set!/native
  &u8vector-s32-ref/native
  &u8vector-s32-set!/native
  &u8vector-u64-ref/native
  &u8vector-u64-set!/native
  &u8vector-s64-ref/native
  &u8vector-s64-set!/native
  )

;;; Endianness

(def big 'big)
(def little 'little)
(def native 'native)

(defrules endianness (big little native)
  ((_ big) big)
  ((_ little) little)
  ((_ native) native)
  ((_ unknown)
   (syntax-error "Unknown endianness" unknown)))

;;; Primitives

(defalias bytevector-u8-ref u8vector-ref)
(defalias bytevector-u8-set! u8vector-set!)
(defalias bytevector-s8-ref u8vector-s8-ref)
(defalias bytevector-s8-set! u8vector-s8-set!)
(defalias bytevector-uint-ref u8vector-uint-ref)
(defalias bytevector-uint-set! u8vector-uint-set!)
(defalias bytevector-sint-ref u8vector-sint-ref)
(defalias bytevector-sint-set! u8vector-sint-set!)
(defalias bytevector->uint-list u8vector->uint-list)
(defalias bytevector->sint-list u8vector->sint-list)
(defalias uint-list->bytevector uint-list->u8vector)
(defalias sint-list->bytevector sint-list->u8vector)

(defrules check-int-ref ()
  ((_ v k size)
   (begin
     (unless (u8vector? v)
       (error "Expected u8vector" v))
     (unless (and (fixnum? k)
                  (fx<= 0 k (fx1- (##u8vector-length v))))
       (error "Bad index" v k))
     (unless (and (fixnum? size)
                  (fx<= 0 size (fx- (##u8vector-length v) k)))
       (error "Bad integer size" v k size))))
  ((_ v size)
   (begin
     (unless (u8vector? v)
       (error "Expected u8vector" v))
     (unless (and (fixnum? size)
                  (fx> size 0)
                  (fxzero? (fxremainder (##u8vector-length v) size)))
       (error "Bad size" v size)))))

(defrules do-endianness ()
  ((_ endianness do-big do-little)
   (case endianness
     ((big) do-big)
     ((little) do-little)
     ((native)
      (if (eq? native-endianness little)
        do-little
        do-big))
     (else
      (error "Bad endianness" endianness))))
  ((_ endianness do-big do-little do-native)
   (if (eq? endianness native-endianness)
     do-native
     (case endianness
       ((big) do-big)
       ((little) do-little)
       ((native) do-native)
       (else
        (error "Bad endianness" endianness))))))

(def (u8vector-s8-ref v i)
  (check-int-ref v i 1)
  (&u8vector-s8-ref v i))

(def (&u8vector-s8-ref v i)
  (declare (not safe))
  (let (u8 (u8vector-ref v i))
    (if (fx> u8 127)
      (fx- u8 256)
      u8)))

(def (u8vector-s8-set! v i s8)
  (check-int-ref v i 1)
  (unless (fixnum? s8)
    (error "expected fixnum" s8))
  (&u8vector-s8-set! v i s8))

(def (&u8vector-s8-set! v i s8)
  (declare (not safe))
  (let (u8 (if (fx< s8 0)
             (fx+ s8 256)
             s8))
    (u8vector-set! v i u8)))

(def (u8vector-uint-ref v k endianness size)
  (check-int-ref v k size)
  (do-endianness endianness
     (&u8vector-uint-ref/be v k size)
     (&u8vector-uint-ref/le v k size)))

(def (&u8vector-uint-ref/be v k size)
  (declare (not safe))
  (let (k+size (fx+ k size))
    (let lp ((i k) (r 0))
      (if (fx< i k+size)
        (let (u8 (u8vector-ref v i))
          (lp (fx1+ i)
              (bitwise-ior (arithmetic-shift r 8) u8)))
        r))))

(def (&u8vector-uint-ref/le v k size)
  (declare (not safe))
  (let (k+size-1 (fx1- (fx+ k size)))
    (let lp ((i k+size-1) (r 0))
      (if (fx>= i k)
        (let (u8 (u8vector-ref v i))
          (lp (fx1- i)
              (bitwise-ior (arithmetic-shift r 8) u8)))
        r))))

(def (u8vector-uint-set! v k uint endianness size)
  (check-int-ref v k size)
  (do-endianness endianness
   (&u8vector-uint-set!/be v k uint size)
   (&u8vector-uint-set!/le v k uint size)))

(def (&u8vector-uint-set!/be v k uint size)
  (declare (not safe))
  (let (k+size-1 (fx1- (fx+ k size)))
    (let lp ((i k+size-1) (uint uint))
      (when (and (fx>= i k) (> uint 0))
        (let (u8 (bitwise-and uint #xff))
          (u8vector-set! v i u8)
          (lp (fx1- i) (arithmetic-shift uint -8)))))))

(def (&u8vector-uint-set!/le v k uint size)
  (declare (not safe))
  (let (k+size (fx+ k size))
    (let lp ((i k) (uint uint))
      (when (and (fx< i k+size) (> uint 0))
        (let (u8 (bitwise-and uint #xff))
          (u8vector-set! v i u8)
          (lp (fx1+ i) (arithmetic-shift uint -8)))))))

(def (u8vector-sint-ref v k endianness size)
  (check-int-ref v k size)
  (do-endianness endianness
     (&u8vector-sint-ref/be v k size)
     (&u8vector-sint-ref/le v k size)))

(defrules do-sint-ref ()
  ((_ size getq)
   (let (uint getq)
     (if (> uint (1- (expt 2 (1- (fx* size 8)))))
      (- uint (expt 2 (fx* size 8)))
      uint))))

(def (&u8vector-sint-ref/be v k size)
  (do-sint-ref size (&u8vector-uint-ref/be v k size)))

(def (&u8vector-sint-ref/le v k size)
  (do-sint-ref size (&u8vector-uint-ref/le v k size)))

(def (u8vector-sint-set! v k sint endianness size)
  (check-int-ref v k size)
  (do-endianness endianness
     (&u8vector-sint-set!/be v k sint size)
     (&u8vector-sint-set!/le v k sint size)))

(defrules do-sint-set! ()
  ((_ size sint uint setq)
   (let (uint (if (< sint 0)
                (+ sint (expt 2 (fx* size 8)))
                sint))
     setq)))

(def (&u8vector-sint-set!/be v k sint size)
  (do-sint-set! size sint uint (&u8vector-uint-set!/be v k uint size)))

(def (&u8vector-sint-set!/le v k sint size)
  (do-sint-set! size sint uint (&u8vector-uint-set!/le v k uint size)))

(def (u8vector->uint-list v endianness size)
  (check-int-ref v size)
  (do-endianness endianness
    (&u8vector->int-list v size &u8vector-uint-ref/be)
    (&u8vector->int-list v size &u8vector-uint-ref/le)))

(def (u8vector->sint-list v endianness size)
  (check-int-ref v size)
  (do-endianness endianness
    (&u8vector->int-list v size &u8vector-sint-ref/be)
    (&u8vector->int-list v size &u8vector-sint-ref/le)))

(def (&u8vector->int-list v size getf)
  (declare (fixnum) (not safe))
  (let (len (u8vector-length v))
    (let lp ((i 0) (r []))
      (if (< i len)
        (let (next (getf v i size))
          (lp (+ i size) (cons next r)))
        (reverse r)))))

(defrules check-int-list ()
  ((_ lst size)
   (begin
     (unless (and (list? lst) (andmap exact-integer? lst))
       (error "Expected list of exact integers" lst))
     (unless (and (fixnum? size) (fx> size 0))
       (error "Bad size" size)))))

(def (uint-list->u8vector lst endianness size)
  (check-int-list lst size)
  (do-endianness endianness
    (&int-list->u8vector lst size &u8vector-uint-set!/be)
    (&int-list->u8vector lst size &u8vector-uint-set!/le)))

(def (sint-list->u8vector lst endianness size)
  (check-int-list lst size)
  (do-endianness endianness
    (&int-list->u8vector lst size &u8vector-sint-set!/be)
    (&int-list->u8vector lst size &u8vector-sint-set!/le)))

(def (&int-list->u8vector lst size setf)
  (declare (fixnum) (not safe))
  (let* ((len (* (length lst) size))
         (v (make-u8vector len)))
    (let lp ((rest lst) (i 0))
      (match rest
        ([int . rest]
         (setf v i int size)
         (lp rest (+ i size)))
        (else v)))))

(defsyntax (defintprocs stx)
  (def (make-def int size &int-ref &int-set!)
    (with-syntax ((size size)
                  (&int-ref/be      (format-id &int-ref "~a/be" &int-ref))
                  (&int-ref/le      (format-id &int-ref "~a/le" &int-ref))
                  (&int-ref/native  (format-id int "&u8vector-~a-ref/native" int))
                  (&int-set!/be     (format-id &int-set! "~a/be" &int-set!))
                  (&int-set!/le     (format-id &int-set! "~a/le" &int-set!))
                  (&int-set!/native (format-id int "&u8vector-~a-set!/native" int))
                  (int-ref          (format-id int "u8vector-~a-ref" int))
                  (int-native-ref   (format-id int "u8vector-~a-native-ref" int))
                  (int-set!         (format-id int "u8vector-~a-set!" int))
                  (int-native-set!  (format-id int "u8vector-~a-native-set!" int))
                  (bv-ref           (format-id int "bytevector-~a-ref" int))
                  (bv-native-ref    (format-id int "bytevector-~a-native-ref" int))
                  (bv-set!          (format-id int "bytevector-~a-set!" int))
                  (bv-native-set!   (format-id int "bytevector-~a-native-set!" int)))
      #'(begin
          (def (int-ref v k endianness)
            (check-int-ref v k size)
            (do-endianness endianness
              (&int-ref/be v k size)
              (&int-ref/le v k size)
              (&int-ref/native v k)))
          (defalias bv-ref int-ref)
          (def (int-set! v k n endianness)
            (check-int-ref v k size)
            (do-endianness endianness
              (&int-set!/be v k n size)
              (&int-set!/le v k n size)
              (&int-set!/native v k n)))
          (defalias bv-set! int-set!)
          (def (int-native-ref v k)
            (check-int-ref v k size)
            (&int-ref/native v k))
          (defalias bv-native-ref int-native-ref)
          (def (int-native-set! v k n)
            (check-int-ref v k size)
            (&int-set!/native v k n))
          (defalias bv-native-set! int-native-set!))))

  (syntax-case stx ()
    ((_ (int size &int-ref &int-set!) ...)
     (with-syntax (((defs ...)
                    (map make-def
                         #'(int ...)
                         #'(size ...)
                         #'(&int-ref ...)
                         #'(&int-set! ...))))
       #'(begin defs ...)))))

(defintprocs
  (u16 2 &u8vector-uint-ref &u8vector-uint-set!)
  (s16 2 &u8vector-sint-ref &u8vector-sint-set!)
  (u32 4 &u8vector-uint-ref &u8vector-uint-set!)
  (s32 4 &u8vector-sint-ref &u8vector-sint-set!)
  (u64 8 &u8vector-uint-ref &u8vector-uint-set!)
  (s64 8 &u8vector-sint-ref &u8vector-sint-set!))

;;; Utilities

(defalias bytevector-swap! u8vector-swap!)
(defalias bytevector-reverse! u8vector-reverse!)
(defalias bytevector-reverse u8vector-reverse)
(defalias bytevector->bytestring u8vector->bytestring)
(defalias bytestring->bytevector bytestring->u8vector)
(defalias bytevector->uint u8vector->uint)
(defalias uint->bytevector uint->u8vector)

(def (u8vector-swap! v j k)
  (unless (u8vector? v)
    (error "Expected u8vector" v))
  (let (len-1 (fx1- (##u8vector-length v)))
    (unless (fx<= 0 j len-1)
      (error "Index out of range" v j))
    (unless (fx<= 0 k len-1)
      (error "Index out of range" v k)))
  (&u8vector-swap! v j k))

(def (&u8vector-swap! v j k)
  (declare (not safe))
  (let ((j-val (u8vector-ref v j))
        (k-val (u8vector-ref v k)))
    (u8vector-set! v j k-val)
    (u8vector-set! v k j-val)))

(def (u8vector-reverse! v)
  (declare (fixnum) (not safe))
  (unless (u8vector? v)
    (error "Expected u8vector" v))
  (let* ((len (u8vector-length v))
         (len-1 (1- len)))
    (do ((left-index 0 (+ left-index 1))
         (right-index len-1 (- right-index 1)))
        ((<= right-index left-index))
      (&u8vector-swap! v left-index right-index))))

(def (u8vector-reverse v)
  (declare (fixnum) (not safe))
  (unless (u8vector? v)
    (error "Expected u8vector" v))
  (let* ((len (u8vector-length v))
         (len-1 (1- len))
         (u (make-u8vector len)))
    (do ((i len-1 (1- i)))
        ((= i -1))
      (u8vector-set! u (- len-1 i) (u8vector-ref v i)))
    u))

(def (u8vector->bytestring v (delim #\space))
  (declare (fixnum) (not safe))
  (unless (u8vector? v)
    (error "Expected u8vector" v))
  (unless (or (not delim) (char? delim))
    (error "Expected character or #f" delim))
  (let* ((len (u8vector-length v))
         (s (make-string (+ (* 2 len) (if delim (1- len) 0)))))
    (let lp ((i 0) (j 0))
      (when (< i len)
        (let (next (u8vector-ref v i))
          (string-set! s j (char-upcase (hex (fxarithmetic-shift next -4))))
          (string-set! s (+ j 1) (char-upcase (hex (fxand next #x0f))))
          (when delim
            (string-set! s (+ j 2) delim))
          (lp (1+ i) (+ j 2 (if delim 1 0))))))
    s))

;; TODO: this could be a lot more efficient if we were operating directly on the string
;;       instead of splitting it.
;;       optimize me!
(def (bytestring->u8vector bs (delim #\space))
  (declare (fixnum) (not safe))
  (if delim
    (let* ((lst (string-split bs delim))
           (v (make-u8vector (length lst))))
      (let lp ((rest lst) (i 0))
        (match rest
          ([x . rest]
           (unless (= (string-length x) 2)
             (error "Invalid bytestring component" x))
           (let ((hi (unhex (string-ref x 0)))
                 (lo (unhex (string-ref x 1))))
             (u8vector-set! v i (fxior (fxarithmetic-shift hi 4) lo))
             (lp rest (1+ i))))
          (else v))))
    (hex-decode bs)))

(def (u8vector->uint v (endianness big))
  (unless (u8vector? v)
    (error "Expected u8vector" v))
  (do-endianness endianness
    (&u8vector->uint/be v)
    (&u8vector->uint/le v)))

(def (&u8vector->uint/be v)
  (declare (not safe))
  (let (len (u8vector-length v))
    (let lp ((i 0) (r 0))
      (if (fx< i len)
        (lp (fx1+ i)
            (bitwise-ior (arithmetic-shift r 8)
                         (u8vector-ref v i)))
        r))))

(def (&u8vector->uint/le v)
  (declare (not safe))
  (let (len (u8vector-length v))
    (let lp ((i (fx1- len)) (r 0))
      (if (fx>= i 0)
        (lp (fx1- i)
            (bitwise-ior (arithmetic-shift r 8)
                         (u8vector-ref v i)))
        r))))

(def (uint->u8vector uint (endianness big))
  (unless (and (exact-integer? uint) (>= uint 0))
    (error "Non-negative exact integer expected" uint))
  (do-endianness endianness
    (&uint->u8vector/be uint)
    (&uint->u8vector/le uint)))

(def (&uint->u8vector/be uint)
  (declare (not safe))
  (let* ((bits (integer-length uint))
         (bytes (fx+ (fxquotient bits 8) (if (fx> (fxremainder bits 8) 0) 1 0)))
         (res (make-u8vector bytes)))
    (let lp ((uint uint) (i (fx- bytes 1)))
      (if (> uint 0)
        (begin
          (u8vector-set! res i (bitwise-and uint #xff))
          (lp (arithmetic-shift uint -8)
              (fx1- i)))
        res))))

(def (&uint->u8vector/le uint)
  (declare (not safe))
  (let* ((bits (integer-length uint))
         (bytes (fx+ (fxquotient bits 8) (if (fx> (fxremainder bits 8) 0) 1 0)))
         (res (make-u8vector bytes)))
    (let lp ((uint uint) (i 0))
      (if (> uint 0)
        (begin
          (u8vector-set! res i (bitwise-and uint #xff))
          (lp (arithmetic-shift uint -8)
              (fx1+ i)))
        res))))

;;; FFI
(begin-ffi (native-endianness
            &u8vector-u16-ref/native
            &u8vector-u16-set!/native
            &u8vector-s16-ref/native
            &u8vector-s16-set!/native
            &u8vector-u32-ref/native
            &u8vector-u32-set!/native
            &u8vector-s32-ref/native
            &u8vector-s32-set!/native
            &u8vector-u64-ref/native
            &u8vector-u64-set!/native
            &u8vector-s64-ref/native
            &u8vector-s64-set!/native
            )
  (define native-endianness
    (if ((c-lambda () scheme-object
              #<<END-C
#ifdef ___LITTLE_ENDIAN
___return(___TRU);
#else
___return(___FAL);
#endif
END-C
))
      'little
      'big))

  (c-declare "")

  (define-c-lambda &u8vector-u16-ref/native (scheme-object int) unsigned-int16
    "u_int16_t res = *(u_int16_t*)(U8_DATA(___arg1) + ___arg2); ___return(res);")
  (define-c-lambda &u8vector-u16-set!/native (scheme-object int unsigned-int16) void
    "*(u_int16_t*)(U8_DATA(___arg1) + ___arg2) = ___arg3; ___return;")
  (define-c-lambda &u8vector-s16-ref/native (scheme-object int) int16
    "int16_t res = *(int16_t*)(U8_DATA(___arg1) + ___arg2); ___return(res);")
  (define-c-lambda &u8vector-s16-set!/native (scheme-object int int16) void
    "*(int16_t*)(U8_DATA(___arg1) + ___arg2) = ___arg3; ___return;")

  (define-c-lambda &u8vector-u32-ref/native (scheme-object int) unsigned-int32
    "u_int32_t res = *(u_int32_t*)(U8_DATA(___arg1) + ___arg2); ___return(res);")
  (define-c-lambda &u8vector-u32-set!/native (scheme-object int unsigned-int32) void
    "*(u_int32_t*)(U8_DATA(___arg1) + ___arg2) = ___arg3; ___return;")
  (define-c-lambda &u8vector-s32-ref/native (scheme-object int) int32
    "int32_t res = *(int32_t*)(U8_DATA(___arg1) + ___arg2); ___return(res);")
  (define-c-lambda &u8vector-s32-set!/native (scheme-object int int32) void
    "*(int32_t*)(U8_DATA(___arg1) + ___arg2) = ___arg3; ___return;")

  (define-c-lambda &u8vector-u64-ref/native (scheme-object int) unsigned-int64
    "u_int64_t res = *(u_int64_t*)(U8_DATA(___arg1) + ___arg2); ___return(res);")
  (define-c-lambda &u8vector-u64-set!/native (scheme-object int unsigned-int64) void
    "*(u_int64_t*)(U8_DATA(___arg1) + ___arg2) = ___arg3; ___return;")
  (define-c-lambda &u8vector-s64-ref/native (scheme-object int) int64
    "int64_t res = *(int64_t*)(U8_DATA(___arg1) + ___arg2); ___return(res);")
  (define-c-lambda &u8vector-s64-set!/native (scheme-object int int64) void
    "*(int64_t*)(U8_DATA(___arg1) + ___arg2) = ___arg3; ___return;")

  )
