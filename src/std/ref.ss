;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org, proksi at disroot.org
;;; generic ref


(import :std/generic
        :std/hash-table)

(export ref ~ :ref
        ref-set! ~-set! :set!)

(defalias ~ ref)
(defalias ~-set! ref-set!)

(defrules ref ()
  ((_ obj x) (:ref obj x))
  ((recur obj x rest ...) (recur (:ref obj x) rest ...)))

(defrules ref-set! ()
  ((_ obj x val) (:set! obj x val))
  ((recur obj x y rest ...) (recur (:ref obj x) y rest ...)))

(defgeneric :ref)
(defgeneric :set!)

(defmethod (:ref (lst :list) (n :fixnum))
  (list-ref lst n))

(defmethod (:ref (hsh HashTable) (k :t))
  (hash-ref hsh k))

(defmethod (:ref (vctr :u8vector) (n :fixnum))
  (u8vector-ref vctr n))

(defmethod (:ref (vctr :u16vector) (n :fixnum))
  (u16vector-ref vctr n))

(defmethod (:ref (vctr :s16vector) (n :fixnum))
  (s16vector-ref vctr n))

(defmethod (:ref (vctr :u32vector) (n :fixnum))
  (u32vector-ref vctr n))

(defmethod (:ref (vctr :s32vector) (n :fixnum))
  (s32vector-ref vctr n))

(defmethod (:ref (vctr :u64vector) (n :fixnum))
  (u64vector-ref vctr n))

(defmethod (:ref (vctr :s64vector) (n :fixnum))
  (s64vector-ref vctr n))

(defmethod (:ref (vctr :f32vector) (n :fixnum))
  (f32vector-ref vctr n))

(defmethod (:ref (vctr :f64vector) (n :fixnum))
  (f64vector-ref vctr n))

(defmethod (:ref (str :string) (n :fixnum))
  (string-ref str n))

(defmethod (:ref (vctr :vector) (n :fixnum))
  (vector-ref vctr n))

(defmethod (:ref (obj :t) (slot :symbolic))
  (slot-ref obj slot))

(defmethod (:set! (lst :list) (n :fixnum) (val :t))
  (list-set! lst n val))

(defmethod (:set! (hsh HashTable) (k :t) (val :t))
  (hash-put! hsh k val))

(defmethod (:set! (vctr :u8vector) (n :fixnum) (val :fixnum))
  (u8vector-set! vctr n val))

(defmethod (:set! (vctr :s8vector) (n :fixnum) (val :fixnum))
  (s8vector-set! vctr n val))

(defmethod (:set! (vctr :u16vector) (n :fixnum) (val :fixnum))
  (u16vector-set! vctr n val))

(defmethod (:set! (vctr :s16vector) (n :fixnum) (val :fixnum))
  (s16vector-set! vctr n val))

(defmethod (:set! (vctr :u32vector) (n :fixnum) (val :integer))
  (u32vector-set! vctr n val))

(defmethod (:set! (vctr :s32vector) (n :fixnum) (val :integer))
  (s32vector-set! vctr n val))

(defmethod (:set! (vctr :u64vector) (n :fixnum) (val :integer))
  (u64vector-set! vctr n val))

(defmethod (:set! (vctr :s64vector) (n :fixnum) (val :integer))
  (s64vector-set! vctr n val))

(defmethod (:set! (vctr :f32vector) (n :fixnum) (val :flonum))
  (f32vector-set! vctr n val))

(defmethod (:set! (vctr :f64vector) (n :fixnum) (val :flonum))
  (f64vector-set! vctr n val))

(defmethod (:set! (str :string) (n :fixnum) (val :char))
  (string-set! str n val))

(defmethod (:set! (vctr :vector) (n :fixnum) (val :t))
  (vector-set! vctr n val))

(defmethod (:set! (obj :t) (slot :symbolic) (val :t))
  (slot-set! obj slot val))
