;;; -*- Gerbil -*-
;;; © vyzo
;;; json writer
(import :gerbil/runtime/mop
        :gerbil/runtime/interface
        :gerbil/runtime/hash
        :std/interface
        :std/io/interface
        :std/io/bio/api
        :std/serde/scan
        :std/serde/serialize
        :std/format/env
        :std/format/ioutil
        :std/format/writer
        :std/format/string
        ./env
        ./io)
(export #t)

;;; util
(def (sort-symbol-alist lst)
  XXX
  )

(def (slot-list->spec lst)
  XXX
  )

;;; base
(defwriter-ext (write-json-object-begin writer (klass : :class) (env : JSONEnv))
  (do-write (wr 0)
    (writer.write-lbrace)
    (writer.write-json-object-type klass env)
    wr))

(defwriter-ext (write-json-object-end writer (env : JSONEnv))
  (writer.write-rbrace))

(defwriter-ext (write-json-object-type writer (klass : :class) (env : JSONEnv))
  (if env.untyped
    0
    (do-write (wr 0)
      (writer.write-lbrace)
      (writer.write-string/quote "@class")
      (writer.write-colon)
      (do-format-style write-json-object-type env.format.opt
        (do-write (wr wr)
          (writer.write-json-field "name" klass.name env)
          (writer.write-coma)
          (writer.write-json-field "id" klass.id env)
          wr)
        (writer.write-json-field "name" klass.name env))
      (writer.write-rbrance)
      wr)))

;; standard classes
(defjson-writer :class (write-json-class klass env)
  (do-write (wr 0)
    (writer.write-json-object-begin (class-type klass) env)
    (writer.write-coma)
    (writer.write-json-object-type klass env)
    (writer.write-json-object-end env)
    wr))

(defjson-writer :object (write-json-object obj env)
  (do-write (wr 0)
    (writer.write-json-object-begin (object-class obj) env)
    (writer.write-json-object-slots obj env)
    (writer.write-json-object-end)
    wr))

(defwriter-ext (write-json-object-slots writer (obj : :object) (env : JSONEnv))
  (let (len (##structue-length obj))
    (if (fx> len 1)
      (let* ((klass (object-class obj))
             (coma? (not env.untyped)))
        (def (write-slot-spec slots) => :fixnum
          (let (slots
                (if env.sort-keys
                  (sort-symbol-alist slots)
                  slots))
            (let loop ((rest slots) (wr 0) (coma? coma?))
              (match rest
                ([print-spec . rest]
                 (using ((spec   print-spec :- :pair)
                         (slot   (car spec) :- :symbol)
                         (offset (cdr spec) :- :fixnum))
                   (do-write (wr wr)
                     (if coma? (writer.write-coma) 0)
                     (wrier.write-json-slot obj slot offset env)
                     (loop rest wr #t))))
                (else wr)))))
        (cond
         ((fx= env.format.opt.style FORMAT-DEBUG)
          (let (slots (vector->list (class-type-slot-vector klass) 1))
            (if env.sort-keys
              (write-slot-spec (slot-list->spec slots))
              (let loop ((rest slots) (offset 1) (wr 0) (coma? coma?))
                (match rest
                  ([slot . rest]
                   (using (slot :- :symbol)
                     (do-write (wr wr)
                       (if coma? (writer.write-coma) 0)
                       (writer.write-json-slot obj slot offset env)
                       (loop rest (fx+ offset 1) wr #t))))
                  (else wr))))))
         ((class-type-printable-slots klass)
          ;; print spec: [[slot . offset] ...]
          => write-slot-spec)
         (else 0)))
      0)))

(defwriter-ext (write-json-field writer (field : :string) obj (env : JSONEnv))
  (do-write (wr 0)
    (writer.write-string/quote field)
    (writer.write-colon)
    (writer.write-json obj env)
    wr))

(defwriter-ext (write-json-key-value writer k v (env : JSOEnv))
  (do-write (wr 0)
    (writer.format-to-string/quote k)
    (writer.write-colon)
    (writer.write-json v env)
    wr))

(defwriter-ext (write-json-slot writer obj (slot : :symbol) (offset : :fixnum) (env : JSONEnv))
  (writer.write-json-field (symbol->string slot)
                           (unchecked-field-ref obj offset)
                           env))

(defjson-writer interface-instance (write-json-interface-instance writer inst env)
  (do-write (wr 0)
    (writer.write-json-object-begin (object-class inst) env)
    (writer.write-json-field "instance" inst.object env)
    (writer.write-json-object-end env)))

(defjson-writer HashTable (write-json-hash-table writer ht env)
  (do-write (wr 0)
    (writer.write-json-object-begin (object-class ht) env)
    (let (wr-body 0)
      (ht.for-each
       (lambda (k v)
         (do-write (wr 0)
           (writer.write-coma)
           (writer.write-json-key-value k v env)
           (set! wr-body (fx+ wr-body wr)))))
      wr-body)
    (writer.write-json-object-end env)
    wr))

;; builtin objects
(defjson-writer :t (write-json-t writer obj env)
  (using (klass (class-of obj) :- :class)
    (do-write (wr 0)
      (writer.write-json-object-begin klass env)
      (writer.write-json-object-end env)
      wr)))
