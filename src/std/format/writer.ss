;;; -*- Gerbil -*-
;;; © vyzo
;;; object writer
(import :gerbil/runtime/mop
        :gerbil/runtime/interface
        :gerbil/runtime/hash
        :std/interface
        :std/io/interface
        :std/io/bio/api
        :std/serde/scan
        :std/serde/serialize
        ./env
        ./ioutil
        ./io
        ./string)
(export #t)

;;; base
(defwriter-ext (format-object-begin writer (klass : :class) (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-sharp)
    (writer.write-lbrace)
    (writer.format-object-type klass env)
    wr))

(defwriter-ext (format-object-end writer (env : FormatEnv))
  (writer.write-rbrace))

(defwriteer-ext (format-object-type-full (klass : :class) (env : FormatEnv))
  (do-write (wr 0)
    (writer.write-symbol/quote klass.name)
    (writer.write-colon)
    (writer.write-sharp)
    (writer.write-colon)
    (writer.write-symbol/quote klass.id)
    wr))

(defwriter-ext (format-object-type writer (klass : :class) (env : FormatEnv))
  (do-format-style format-object-type env.opt
    (writer.write-symbol/quote klass.id)
    (writer.format-object-type-full klass env)))

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
    (writer.format-object-begin (object-class obj) env)
    (writer.format-object-slots obj env)
    (writer.format-object-end env)
    wr))

(defwriter-ext (format-object-slots writer (obj : :object) (env : FormatEnv))
  (let (len (##structure-length obj))
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

(defobject-writer interface-instance (format-interface-instance writer inst env)
  (do-write (wr 0)
    (writer.format-object-begin (object-class inst) env)
    (writer.write-space)
    (writer.format inst.object env)
    (writer.format-object-end env)))

(defobject-writer HashTable (format-hash-table writer ht env)
  (do-write (wr 0)
    (writer.format-object-begin (object-class ht) env)
    (let (wr-body 0)
      (writer.write-lparen)
      (ht.for-each
       (lambda (k v)
         (do-write (wr 0)
           (writer.write-space)
           (writer.write-lparen)
           (writer.format k env)
           (writer.write-space)
           (writer.write-dot)
           (writer.write-space)
           (writer.format v env)
           (writer.write-rparen)
           (set! wr-body (fx+ wr-body wr)))))
      wr-body)
    (writer.write-rparen)
    (writer.format-object-end env)
    wr))

;; builtin objects
(defobject-writer :t (format-t writer writer obj env)
  (using (klass (class-of obj) :- :class)
    (do-write (wr 0)
      (writer.format-object-begin klass env)
      (writer.format-object-end env)
      wr)))

(defobject-writer :char (format-char writer char env)
  (do-format-style format-char env.opt
    (do-write (wr 0)
      (writer.write-sharp)
      (writer.write-backslash)
      XXX
      wr)
    (writer.write-char char)))

(defobject-writer :void (format-void writer atom env)
  (do-format-style format-void env.opt
    (writer.write (@string->utf8 "#!void"))
    0))

(defobject-writer :eof (format-eof atom env)
  (writer.write-write (@string->utf8 "#!eof")))

(defobject-writer :true (format-true atom env)
  (writer.write-write (@string->utf8 "#t"))

(defobject-writer :false (format-false atom env)
  (writer.write (@string->utf8 "#f")))

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

(defobject-writer :cpxnum (format-cpxnum writer obj env)
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

(defobject-writer :list (format-pair writer lst env)
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

(defformatter :procedue (format-procedure writer proc env)
  XXX
  )

(defformatter :continuation (format-continuation writer v env)
  XXX
  )

(defformatter :foreign (format-foreign writer v env)
  XXX
  )

(defformatter :structure (format-builtin-structure writer v env)
  XXX
  )

(defformatter :time (format-builtin-time writer v env)
  XXX
  )

(defformatter :thread (format-builtin-thread writer v env)
  XXX
  )

(defformatter :thread-group (format-builtin-thread-group writer v env)
  XXX
  )

(defformatter :mutex (format-builtin-mutex writer v env)
  XXX
  )

(defformatter :condvar (format-builtin-condvar writer v env)
  XXX
  )

(defformatter :port (format-builtin-port writer v env)
  XXX
  )
