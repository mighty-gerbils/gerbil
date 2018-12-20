;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org, proksi at disroot.org
;;; generic ref

(import :gerbil/gambit
        :std/generic)

(export ref ~ :ref)

(def* ref
  ((obj x) (:ref obj x))
  ((obj x . rest) (apply ref (:ref obj x) rest)))

(defgeneric :ref (lambda args #f))

(defmethod (:ref (lst <pair>) (n <fixnum>))
  (list-ref lst n))

(defmethod (:ref (hsh <hash-table>) (k <t>))
  (hash-ref hsh k))

(defmethod (:ref (vctr <u8vector>) (n <fixnum>))
  (u8vector-ref vctr n))

(defmethod (:ref (vctr <u16vector>) (n <fixnum>))
  (u16vector-ref vctr n))

(defmethod (:ref (vctr <u32vector>) (n <fixnum>))
  (u32vector-ref vctr n))

(defmethod (:ref (vctr <u64vector>) (n <fixnum>))
  (u64vector-ref vctr n))

(defmethod (:ref (vctr <f32vector>) (n <fixnum>))
  (f32vector-ref vctr n))

(defmethod (:ref (vctr <f64vector>) (n <fixnum>))
  (f64vector-ref vctr n))

(defmethod (:ref (str <string>) (n <fixnum>))
  (string-ref str n))

(defalias ~ ref)
