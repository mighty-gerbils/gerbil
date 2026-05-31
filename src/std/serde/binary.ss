;;; -*- Gerbil -*-
;;; © vyzo
;;; binary serialization tags
(import :std/io/interface
        :std/io/bio/api)
(export #t)

;; stream special
(def anchor-tag    0)
(def reference-tag 1)
;; gerbil objects
(def class-tag        2)
(def object-begin-tag 3)
(def object-end-tag   4)
(def hash-table-tag   5)

;; atomics
(def uint-tag      16)
(def sint-tag      17)
(def float32-tag   18)
(def float64-tag   19)
(def char-tag      20)
(def null-tag      21)
(def false-tag     22)
(def true-tag      23)
(def void-tag      24)
(def eof-tag       25)
(def unbound-tag   26)
(def unbound2-tag  27)
(def unused-tag    28)
(def deleted-tag   29)
(def absent-tag    30)
(def optional-tag  31)
(def key-tag       32)
(def rest-tag      33)

;; builtin hunks
(def vector-tag    40)
(def box-tag       41)
(def s8vector-tag  42)
(def u8vector-tag  43)
(def s16vector-tag 48)
(def u16vector-tag 49)
(def s32vector-tag 50)
(def u32vector-tag 51)
(def s64vector-tag 52)
(def u64vector-tag 53)
(def f32vector-tag 54)
(def f64vector-tag 55)
(def string-tag    56)
(def symbol-tag    57)
(def keyword-tag   58)
(def ratnum-tag    59)
(def cpxnum-tag    60)
(def values-tag    63)

;; lists
(def list-begin-tag 70)
(def list-end-tag   71)
(def list-tail-tag  72)

;; hvector tags
(def __hvector-tags
  (vector
   s8vector-tag
   u8vector-tag
   s16vector-tag
   u16vector-tag
   s32vector-tag
   u32vector-tag
   f32vector-tag
   s64vector-tag
   u64vector-tag
   f64vector-tag))

(def (hvector-tag (v : :hvector)) => :fixnum
  (let (st (##subtype v))
    (:- (##vector-ref __hvector-tags (fx- st (##subtype '#s8())))
        :fixnum)))

(def __hvector-length-procs
  (vector
   s8vector-length
   u8vector-length
   s16vector-length
   u16vector-length
   s32vector-length
   u32vector-length
   f32vector-length
   s64vector-length
   u64vector-length
   f64vector-length))

(def (hvector-length (v : :hvector)) => :fixnum
  (let (st (##subtype v))
    (:- ((:- (##vector-ref __hvector-length-procs (fx- st (##subtype '#s8())))
             :procedure)
         v)
        :fixnum)))

(def __hvector-write-packed-procs
  (vector
   &BufferedWriter-write-s8
   &BufferedWriter-write-u8
   &BufferedWriter-write-s16
   &BufferedWriter-write-u16
   &BufferedWriter-write-s32
   &BufferedWriter-write-u32
   &BufferedWriter-write-f32
   &BufferedWriter-write-s64
   &BufferedWriter-write-u64
   &BufferedWriter-write-f64))

(def (hvector-write-packed-proc (v : :hvector)) => :procedure
  (let (st (##subtype v))
    (:- (##vector-ref __hvector-write-packed-procs (fx- st (##subtype '#s8())))
        :procedure)))
