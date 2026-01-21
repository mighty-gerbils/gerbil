;;; -*- Gerbil -*-
;;; © vyzo
;;; format object writers and scanners
(import :gerbil/runtime/mop
        :gerbil/runtime/error
        :std/io/interface
        :std/io/bio/api
        ./env
        ./ioutil
        ./io)
(export #t)

;; base
(defwriter-ext (format-class-type writer (klass : :class) (env : FormatEnv))
  (do-format-style format-class-type
    (writer.write-symbol/quote klass.id)
    (writer.write-symbol/quote klass.name)
    (let* ((wr (writer.write-symbol/quote klass.name))
           (wr (fx+ wr (writer.write-colon)))
           (wr (fx+ wr (writer.write-space)))
           (wr (fx+ wr (writer.write-symbol/quote klass.id))))
      wr)))

(defwriter-ext (format-begin-object writer (klass : :class) (env : FormatEnv))
  (let* ((wr (writer.write-sharp))
         (wr (fx+ wr (writer.write-lbrace)))
         (wr (fx+ wr (writer.format-class-type klass))))
    wr))

(defwriter-ext (format-end-object writer (env : FormatEnv))
  (writer.write-rbrace))

;; base - opaque class
(defformatter :t (format-t writer writer obj env)
  (using (klass (class-of obj) :- :class)
    (let* ((wr (writer.format-begin-object klass env))
           (wr (fx+ wr (writer.format-end-object env))))
      wr)))

;; standard classes
(defformater :class (format-class writer klass env)
  (let* ((wr (writer.format-begin-object (class-type klass) env))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.format-class-type klass)))
         (wr (fx+ wr (writer.format-end-object env))))
      wr))

;; standard objects
(defformatter :object (format-object writer obj env)
  (let* ((wr (writer.format-bebin-object (object-class obj) env))
         (wr (fx+ wr (writer.format-object-slots obj env)))
         (wr (fx+ wr (writer.format-end-object env))))
    env))

(defwriter-ext (format-object-slots writer (obj : :object) (env : FormatEnv))
  (let (len (##structue-length obj))
    (if (fx> len 1)
      (let (klass (object-class obj))
        (cond
         ((fx= env.opt.style FORMAT-DEBUG)
          (let (slots (vector->list (class-type-slot-vector klass)))
            (let loop ((rest slots) (offset 1) (wr 0))
              (match rest
                ([slot . rest]
                 (using (slot :- :symbol)
                   (let (wr (fx+ wr (writer.format-slot obj slot offset env)))
                     (loop rest (fx+ offset 1) wr))))
                (else wr)))))
         ((class-type-printable-slots klass)
          ;; print spec: [[slot . offset] ...]
          => (lambda (lst)
               (let lp ((rest lst) (wr 0))
                 (match rest
                   ([print-spec . rest]
                    (using ((spec   print-spec :- :pair)
                            (slot   (car spec) :- :symbol)
                            (offset (cdr spec) :- :fixnum))
                      (let (wr (fx+ wr (wrier.format-slot obj slot offset env)))
                        (loop rest wr))))
                   (else wr)))))
         (else 0)))
      0)))

(defwriter-ext (format-slot writer (obj : :object) (slot : :symbol) (offset : :fixnum) (env : FormatEnv))
  (let* ((wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.write-symbol/quote slot)))
         (wr (fx+ wr (writer.write-colon)))
         (wr (fx+ wr (writer.write-space)))
         (wr (fx+ wr (writer.format (unchecked-field-ref obj offset)
                                    env))))
    wr))

;; builtin objects
(defformatter :char (format-char writer char env)
  XXX
  )

(defformatter :void (format-void writer atom env)
  XXX
  )

(defformatter :eof (format-eof atom env)
  XXX
  )

(defformatter :true (format-true atom env)
  XXX
  )

(defformatter :false (format-false atom env)
  XXX
  )

(defformatter :special (format-special atom env)
  XXX
  )

(defformatter :bignum (format-bignum writer obj env)
  XXX
  )

(deformatter :fixnum (format-fixnum writer obj env)
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

(defformatter :symbol (format-symbol writer sym env)
  (do-format-style format-symbol env.opt
    (writer.write-symbol/quote sym)
    (writer.write-symbol sym)))

(defformatter :keyword (format-keyword writer key env)
  (do-format-style format-keyword env.opt
    (writer.write-keyword/quote sym)
    (writer.write-keyword sym)))


(defformatter :null (format-null writer key env)
  XXX
  )

(defformatter :pair (format-pair writer p env)
  XXX
  )

(defformatter :string (format-vector writer v env)
  XXX
  )

(defformatter :string (format-string writer str env)
  (do-format-style format-string env.opt
    (writer.write-string/quote str)
    (writer.write-string str)))

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

(defformatter :continuation (format-continuation writer v env)
  XXX
  )

(defformatter :foreign (format-foreign writer v env)
  XXX
  )

(defformatter :procedue (format-procedure writer proc env)
  XXX
  )

(defformatter :structure (format-builtin-structure writer v env)
  XXX
  )

(defformatter :time (format-builtin-time writer v env)
  XXX
  )

(defformatter :thread (format-builtin-time writer v env)
  XXX
  )

(defformatter :thread-group (format-builtin-time writer v env)
  XXX
  )

(defformatter :mutex (format-builtin-time writer v env)
  XXX
  )

(defformatter :condvar (format-builtin-time writer v env)
  XXX
  )

(defformatter :port (format-builtin-time writer v env)
  XXX
  )

(defformatter :table (format-builtin-time writer v env)
  XXX
  )
