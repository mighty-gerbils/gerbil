;;; -*- Gerbil -*-
;;; © vyzo
;;; SRFI-160: Homogeneous Numeric Vector Libraries

(import :gerbil/gambit
        ./cvector)

(export make-u8vector make-s8vector make-u16vector make-s16vector
        make-u32vector make-s32vector make-u64vector make-s64vector
        make-f32vector make-f64vector make-c64vector make-c128vector
        u8vector s8vector u16vector s16vector
        u32vector s32vector u64vector s64vector
        f32vector f64vector
        (rename: make-c64vector* c64vector)
        (rename: make-c128vector* c128vector)
        u8vector? s8vector? u16vector? s16vector?
        u32vector? s32vector? u64vector? s64vector?
        f32vector? f64vector? c64vector? c128vector?
        u8vector-length s8vector-length u16vector-length s16vector-length
        u32vector-length s32vector-length u64vector-length s64vector-length
        f32vector-length f64vector-length c64vector-length c128vector-length
        u8vector-ref s8vector-ref u16vector-ref s16vector-ref
        u32vector-ref s32vector-ref u64vector-ref s64vector-ref
        f32vector-ref f64vector-ref c64vector-ref c128vector-ref
        u8vector-set! s8vector-set! u16vector-set! s16vector-set!
        u32vector-set! s32vector-set! u64vector-set! s64vector-set!
        f32vector-set! f64vector-set! c64vector-set! c128vector-set!
        u8vector->list s8vector->list u16vector->list s16vector->list
        u32vector->list s32vector->list u64vector->list s64vector->list
        f32vector->list f64vector->list c64vector->list c128vector->list
        list->u8vector list->s8vector list->u16vector list->s16vector
        list->u32vector list->s32vector list->u64vector list->s64vector
        list->f32vector list->f64vector list->c64vector list->c128vector
        u8? s8? u16? s16? u32? s32? u64? s64? f32? f64? c64? c128?)

(def (u8? n)
  (and (exact-integer? n) (<= 0 n 255)))

(def (s8? n)
  (and (exact-integer? n) (<= -128 n 127)))

(def (u16? n)
  (and (exact-integer? n) (<= 0 n 65535)))

(def (s16? n)
  (and (exact-integer? n) (<= -32768 n 32767)))

(def (u32? n)
  (and (exact-integer? n) (<= 0 n 4294967295)))

(def (s32? n)
  (and (exact-integer? n) (<= -2147483648 n 2147483647)))

(def (u64? n)
  (and (exact-integer? n) (<= 0 n 18446744073709551615)))

(def (s64? n)
  (and (exact-integer? n) (<= -9223372036854775808 n 9223372036854775807)))

(def (f32? n)
  (flonum? n))

(def (f64? n)
  (flonum? n))

(def (c64? n)
  (and (complex? n) (inexact? n)))

(def (c128? n)
  (and (complex? n) (inexact? n)))
