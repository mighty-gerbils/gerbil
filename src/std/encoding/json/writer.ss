;;; -*- Gerbil -*-
;;; © vyzo
;;; json writer
(import :gerbil/runtime/mop
        :std/interface
        :std/io
        :std/io/bio/api
        :std/serde/scan
        :std/serde/serialize
        :std/format/env
        :std/format/ioutil
        :std/format/writer
        ./env)
(export #t)

(interface JSONWriter
  (write-json (writer : BufferedWriter) (env : JSONEnv)) => :fixnum)

(defsyntax (defjson-writer stx)
  (syntax-case stx ()
    ((_ klass (write-it writer obj env)
        body ...)
     (with-syntax ((write-json (syntax-local-introduce 'write-json))
                   (writer.write-it
                    (stx-identifier #'write-it #'writer "." #'write-it)))
       #'(begin
           (defwriter-ext (write-it writer (obj : klass) (env : JSONEnv))
             body ...)
           (defmethod {write-json klass}
             (lambda (self writer env)
               (writer.write-it self env))
             interface: JSONWriter))))))

(defwriter-ext (write-json writer obj (env : JSONEnv))
  (defrule (do-object obj)
    (writer.write-json-raw obj env))
  (defrule (do-anchor obj id)
    (writer.write-jso-anchor obj id env))
  (defrule (do-reference id)
    (writer.write-json-reference id env))

  (@serialize obj env.format.scan do-object do-anchor do-reference))

(defwriter-ext (write-json-raw writer obj (env : JSONEnv))
  (apply-object-json-writer obj writer env))

(defwriter-ext (write-json-anchor writer obj (id : :fixnum) (env : JSONENV))
  XXX)

(defwriter-ext (write-json-reference write (id : :fixnum) (env : JSONEnv))
  XXX)

(def (apply-object-json-writer obj (env : JSONEnv)) => :fixnum
  (__object-write-json obj env))

(defcall-interface-method JSONWriter write-json
  (__object-write-json obj env)
  :- :fixnum)

;;; util
(def (sort-symbol-alist lst)
  XXX
  )

(def (slot-list->spec lst)
  XXX
  )

;;; base
(defwriter-ext (write-json-begin-object writer (klass : :class) (env : JSONEnv))
  (do-write (wr 0)
    (writer.write-lbrace)
    (writer.write-json-class-type klass env)
    wr))

(defwriter-ext (write-json-end-object writer (env : JSONEnv))
  (writer.write-rbrace))

(defwriter-ext (write-json-class-type writer (klass : :class) (env : JSONEnv))
  (if env.untyped
    0
    (do-write (wr 0)
      (writer.write-lbrace)
      (writer.write-string/quote "@class")
      (writer.write-colon)
      (do-format-style write-json-class-type env.format.opt
        (writer.write-json-field "id" klass.id env)
        (writer.write-json-field "name" klass.name env)
        (do-write (wr wr)
          (writer.write-json-field "id" klass.id env)
          (writer.write-coma)
          (writer.write-json-field "name" klass.name env)
          wr))
      (writer.write-rbrance)
      wr)))

;; standard classes
(defjson-writer :class (write-json-class klass env)
  XXX)

(defjson-writer :object (write-json-object obj env)
  (do-write (wr 0)
    (writer.write-json-begin-object (object-class obj) env)
    (writer.write-json-object-slots obj env)
    (writer.write-json-end-object)
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

(defwriter-ext (write-json-slot writer obj (slot : :symbol) (offset : :fixnum) (env : JSONEnv))
  (writer.write-json-field (symbol->string slot)
                           (unchecked-field-ref obj offset env)
                           env))


;; builtin objects
(defjson-writer :t (write-json-t writer obj env)
  (using (klass (class-of obj) :- :class)
    (do-write (wr 0)
      (writer.write-json-begin-object klass env)
      (writer.write-json-end-object env)
      wr)))
