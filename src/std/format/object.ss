;;; -*- Gerbil -*-
;;; © vyzo
;;; format object writers and scanners
(import :gerbil/runtime/mop
        :gerbil/runtime/error
        :std/io/interface
        :std/io/bio/api
        ./io
        ./ioutil)
(export #t)

;; base
(defformatter :t (format-t writer writer obj env)
  XXX
  )

;; standard classes
(defformater :class (format-class writer obj env)
  XXX
  )

;; standard objects
(defformatter :object (format-object writer obj env)
  XXX
  )

(defformatter Error (format-error writer obj env)
  XXX
  )

;; builtin objects
(defformater :immediate (format-immediate writer obj env)
  XXX
  )

(deformatter :fixnum (format-fixnum writer obj env)
  XXX
  )

(defformatter :null (format-null writer key env)
  XXX
  )

(defformatter :pair (format-pair writer p env)
  XXX
  )

(defformatter :subtyped (format-builtin-subtyped writer v env)
  XXX
  )

(defformatter :procedure (format-continuation writer v env)
  XXX
  )

(defformatter :bignum (format-bignum writer obj env)
  XXX
  )

(defformatter :ratnum (format-ratnum writer obj env)
  XXX
  )

(defformatter :flonum (format-flonum writer obj env)
  XXX
  )

(defformatter :cpxnum (format-flonum writer obj env)
  XXX
  )

(defformatter :string (format-string writer str env)
  (if env.display?
    (writer.write-string str)
    (writer.write-string/quote str)))

(defformatter :symbol (format-symbol writer sym env)
  (if env.display?
    (writer.write-symbol sym)
    (writer.write-symbol/quote sym)))

(defformatter :keyword (format-keyword writer key env)
  (if env.display?
    (writer.write-keyword key)
    (writer.write-keyword/quote key)))

(defformatter :vector (format-vector writer v env)
  XXX
  )

(defformatter :u8vector (format-u8vector writer v env)
  XXX
  )

(defformatter :u16vector (format-u16vector writer v env)
  XXX
  )

(defformatter :u32vector (format-u32vector writer v env)
  XXX
  )

(defformatter :u64vector (format-u63vector writer v env)
  XXX
  )

(defformatter :s8vector (format-s8vector writer v env)
  XXX
  )

(defformatter :s16vector (format-s16vector writer v env)
  XXX
  )

(defformatter :s32vector (format-s32vector writer v env)
  XXX
  )

(defformatter :s64vector (format-s64vector writer v env)
  XXX
  )

(defformatter :f32vector (format-f32vector writer v env)
  XXX
  )

(defformatter :f64vector (format-f64vector writer v env)
  XXX
  )

(defformatter :values (format-values writer v env)
  XXX
  )

(defformatter :box (format-box writer v env)
  XXX
  )


(defformatter :structure (format-builtin-structure writer v env)
  XXX
  )

(defformatter :time (format-builtin-time writer v env)
  XXX
  )
