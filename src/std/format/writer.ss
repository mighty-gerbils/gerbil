;;; -*- Gerbil -*-
;;; © vyzo
;;; object writer
(import :gerbil/runtime/mop
        :std/interface
        :std/io/interface
        :std/io/bio/api
        :std/serde/scan
        :std/serde/serialize
        ./env
        ./ioutil)
(export #t)

(interface ObjectWriter
  (write (writer : BufferedWriter) (env : FormatEnv)) => :fixnum)

(defsyntax (defobject-writer stx)
  (syntax-case stx ()
    ((_ klass (write-it writer obj env)
        body ...)
     (with-syntax ((write (syntax-local-introduce 'write))
                   (writer.write-it
                    (stx-identifier #'writer #'writer "." #'write-it)))
       #'(begin
           (defwriter-ext (write-it writer (obj : klass) (env : WriteEnv))
             body ...)
           (defmethod {write klass}
             (lambda (self writer env)
               (writer.write-it self env))
             interface: ObjectWriter))))))

(defwriter-ext (display writer obj (env : FormatEnv))
  (writer.format obj (format-env-with-style env FORMAT-DISPLAY)))

(defwriter-ext (debug writer obj (env : FormatEnv))
  (writer.format obj (format-env-with-style env FORMAT-DEBUG)))

(defwriter-ext (format writer obj (env : FormatEnv))
  (defrule (do-object obj)
    (writer.format-raw obj env))
  (defrule (do-anchor obj id)
    (writer.format-anchor obj id env))
  (defrule (do-reference id)
    (writer.format-reference id env))

  (@serialize obj env.scan do-object do-anchor do-reference))

(defwriter-ext (format-raw writer obj (env : FormatEnv))
  (apply-object-writer obj writer env))

(defwriter-ext (format-anchor writer obj (id : :fixnum) (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-fixnum-decimal id)
    (writer.write-equal)
    (writer.write-sharp)
    (writer.format-raw obj env)
    wr))

(defwriter-ext (format-reference write (id : :fixnum) (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-fixnum-decimal id)
    (writer.write-sharp)
    wr))

(def (apply-object-writer obj writer (env : FormatEnv)) => :fixnum
  (__object-write obj writer env))

(defcall-interface-method ObjectWriter writer
  (__object-write obj writer env)
  :- :fixnum)

;;; base
(defwriter-ext (format-object-begin writer (klass : :class) (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-lbrace)
    (writer.format-object-type klass env)
    wr))

(defwriter-ext (format-object-end writer (env : FormatEnv))
  (writer.write-rbrace))

(defwriter-ext (format-object-type writer (klass : :class) (env : FormatEnv))
  (do-format-style format-object-type env.opt
    (writer.write-symbol/quote klass.id)
    (writer.write-symbol/quote klass.name)
    (do-write (wr 0)
      (writer.write-symbol/quote klass.name)
      (writer.write-colon)
      (writer.write-sharp)
      (writer.write-colon)
      (writer.write-symbol/quote klass.id)
      wr)))

;; standard classes
(defformater :class (format-class writer klass env)
  (do-write (wr 0)
    (writer.format-object-begin (class-type klass) env)
    (writer.write-space)
    (writer.format-object-type klass env)
    (writer.format-object-end env)
    wr))

;; standard objects
(defobject-writer :object (format-object writer obj env)
  (do-write (wr 0)
    (writer.format-bebin-object (object-class obj) env)
    (writer.format-object-slots obj env)
    (writer.format-object-end env)
    wr))

(defwriter-ext (format-object-slots writer (obj : :object) (env : FormatEnv))
  (let (len (##structue-length obj))
    (if (fx> len 1)
      (let (klass (object-class obj))
        (cond
         ((fx= env.opt.style FORMAT-DEBUG)
          (let (slots (vector->list (class-type-slot-vector klass) 1))
            (let loop ((rest slots) (offset 1) (wr 0))
              (match rest
                ([slot . rest]
                 (using (slot :- :symbol)
                   (do-write (wr wr)
                     (writer.format-slot obj slot offset env)
                     (loop rest (fx+ offset 1) wr))))
                (else wr)))))
         ((class-type-printable-slots klass)
          ;; print spec: [[slot . offset] ...]
          => (lambda (lst)
               (let loop ((rest lst) (wr 0))
                 (match rest
                   ([print-spec . rest]
                    (using ((spec   print-spec :- :pair)
                            (slot   (car spec) :- :symbol)
                            (offset (cdr spec) :- :fixnum))
                      (do-write (wr wr)
                        (wrier.format-slot obj slot offset env)
                        (loop rest wr))))
                   (else wr)))))
         (else 0)))
      0)))

(defwriter-ext (format-field writer (slot : :symbol) obj (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-space)
    (writer.write-symbol/quote slot)
    (writer.write-colon)
    (writer.write-space)
    (writer.format obj env)
    wr))

(defwriter-ext (format-slot writer (obj : :object) (slot : :symbol) (offset : :fixnum) (env : FormatEnv))
  (writer.format-field slot (unchecked-field-ref obj offset) env))

;; builtin objects
(defobject-writer :t (format-t writer writer obj env)
  (using (klass (class-of obj) :- :class)
    (do-write (wr 0)
      (writer.format-object-begin klass env)
      (writer.format-object-end env)
      wr)))

(defobject-writer :char (format-char writer char env)
  XXX
  )

(defobject-writer :void (format-void writer atom env)
  XXX
  )

(defobject-writer :eof (format-eof atom env)
  XXX
  )

(defobject-writer :true (format-true atom env)
  XXX
  )

(defobject-writer :false (format-false atom env)
  XXX
  )

(defobject-writer :special (format-special atom env)
  XXX
  )

(defobject-writer :bignum (format-bignum writer obj env)
  XXX
  )

(defobject-writer :fixnum (format-fixnum writer obj env)
  XXX
  )

(defobject-writer :ratnum (format-ratnum writer obj env)
  XXX
  )

(defobject-writer :flonum (format-flonum writer obj env)
  XXX
  )

(defobject-writer :cpxnum (format-flonum writer obj env)
  XXX
  )

(defobject-writer :symbol (format-symbol writer sym env)
  (do-format-style format-symbol env.opt
    (writer.write-symbol/quote sym)
    (writer.write-symbol sym)))

(defobject-writer :keyword (format-keyword writer key env)
  (do-format-style format-keyword env.opt
    (writer.write-keyword/quote sym)
    (writer.write-keyword sym)))


(defobject-writer :null (format-null writer key env)
  XXX
  )

(defobject-writer :pair (format-pair writer p env)
  XXX
  )

(defobject-writer :string (format-vector writer v env)
  XXX
  )

(defobject-writer :string (format-string writer str env)
  (do-format-style format-string env.opt
    (writer.write-string/quote str)
    (writer.write-string str)))

(defobject-writer :u8vector (format-u8vector writer v env)
  XXX
  )

(defobject-writer :u16vector (format-u16vector writer v env)
  XXX
  )

(defobject-writer :u32vector (format-u32vector writer v env)
  XXX
  )

(defobject-writer :u64vector (format-u63vector writer v env)
  XXX
  )

(defobject-writer :s8vector (format-s8vector writer v env)
  XXX
  )

(defobject-writer :s16vector (format-s16vector writer v env)
  XXX
  )

(defobject-writer :s32vector (format-s32vector writer v env)
  XXX
  )

(defobject-writer :s64vector (format-s64vector writer v env)
  XXX
  )

(defobject-writer :f32vector (format-f32vector writer v env)
  XXX
  )

(defobject-writer :f64vector (format-f64vector writer v env)
  XXX
  )

(defobject-writer :values (format-values writer v env)
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
