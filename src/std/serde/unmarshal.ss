;;; -*- Gerbil -*-
;;; © vyzo
;;; binary serialization marshaller
(import :std/error
        :std/interface
        :std/io/interface
        :std/io/bio/api
        ./interface
        ./deserialize
        ./binary
        ./util)
(export #t)

(defclass UnmarshalEnv
  ((ctx              :- ReadContext)
   (max-integer-bits :- :fixnum)
   (max-elements     :- :fixnum))
  final: #t)

(def (unmarshal-environment max-integer-bits: (max-integer-bits : :fixnum := 65536)
                            max-element:      (max-elements     : :fixnum := 65536)
                            allow-class:      (allow-class?     : :procedure := (lambda (x) #t))
                            allow-procedure:  (allow-procedure? : :procedure := (lambda (x) #f))
                            intern-symbol:    (intern-symbol    : :procedure := weak-string->symbol)
                            intern-keyword:   (intern-keyword   : :procedure := weak-string->keyword)
                            dag:              (dag?             : :boolean := #f))
  (UnmarshalEnv
   ctx: (ReadContext allow-class:     allow-class?
                     allow-procedure: allow-procedure?
                     intern-symbol:   intern-symbol
                     intern-keyword:  intern-keyword
                     dag:             dag?)
   max-integer-bits: max-integer-bits
   max-elements:     max-elements))

(def (unmarshal (bytes : :u8vector) (env (unmarshal-environment) : UnmarshalEnv))
  (using (reader (open-buffered-reader bytes #f) : BufferedReader)
    (reader.deserialize env)))

(defreader-ext (deserialize reader (env : UnmarshalEnv))
  (using (top (top-anchor) : Anchor)
    (parse reader env top)
    (top.resolve! env.ctx)))

(def (parse (reader : BufferedReader)
            (env    : UnmarshalEnv)
            (anchor : Anchor))
  (let (next (reader.read-u8))
    (cond
     ((eof-object? next)
      (raise-premature-end-of-input parse))
     ((vector-ref __tag-parsers next)
      => (lambda ((parsef :- :procedure))
           (parsef reader env anchor)))
     (else
      (raise-parse-error parse "unparsable tag" tag: next)))))

(def (parse-anchor (reader : BufferedReader)
                   (env    : UnmarshalEnv)
                   (anchor : Anchor))
  (let* ((index (reader.read-varuint))
         (ranchor (env.ctx.methods.anchor! index env.ctx)))
    (anchor.set! (parse reader env ranchor))))

(def (parse-reference (reader : BufferedReader)
                      (env    : UnmarshalEnv)
                      (anchor : Anchor))
  (let (index (reader.read-varuint))
    (anchor.set! (env.ctx.methods.reference index env.ctx))))

(def (parse-class (reader : BufferedReader)
                  (env    : UnmarshalEnv)
                  (anchor : Anchor))
  (let (klass (parse reader env (anchor.temporary)))
    (anchor.set!
     (env.ctx.methods.resolve-class!
      (: klass :string)
      env.ctx))))

(def (parse-object (reader : BufferedReader)
                   (env    : UnmarshalEnv)
                   (anchor : Anchor))
  (let (klass (: (parse reader env (anchor.temporary)) class))
    (using (kons (anchor.cons! klass #f) : ObjectBuilder)
      (let loop ()
        (if (eq? (reader.peek-u8) object-end-tag)
          (begin
            (reader.read-u8)
            (kons.finish!))
          (let* ((slot  (parse reader env (anchor.temporary)))
                 (value (parse reader env (anchor.temporary))))
            (kons.push! value slot env.ctx)
            (loop)))))))

(def (parse-hash-table (reader : BufferedReader)
                       (env    : UnmarshalEnv)
                       (anchor : Anchor))
  (let* ((klass (: (parse reader env (anchor.temporary)) class))
         (size (: (reader.read-varuint) :fixnum)))
    (when (fx> size env.max-elements)
      (runtime-contract-violation! "hash table too large"
                                   (<= size env.max-elements)
                                   size))
    (using (kons (anchor.cons! klass size) : ObjectBuilder)
      (let loop ((i 0 :- :fixnum))
        (if (fx< i size)
          (let* ((key   (parse reader env (anchor.temporary)))
                 (value (parse reader env (anchor.temporary))))
            (kons.push! value key env.ctx)
            (loop (fx+ i 1)))
          (kons.finish!))))))

(def (parse-uint (reader : BufferedReader)
                 (env    : UnmarshalEnv)
                 (anchor : Anchor))
  (anchor.set! (reader.read-varuint)))

(def (parse-sint (reader : BufferedReader)
                 (env    : UnmarshalEnv)
                 (anchor : Anchor))
  (anchor.set! (reader.read-varint)))

(def (parse-float32 (reader : BufferedReader)
                    (env    : UnmarshalEnv)
                    (anchor : Anchor))
  (anchor.set! (reader.read-f32)))

(def (parse-float64 (reader : BufferedReader)
                    (env    : UnmarshalEnv)
                    (anchor : Anchor))
  (anchor.set! (reader.read-f64)))

(def (parse-char (reader : BufferedReader)
                 (env    : UnmarshalEnv)
                 (anchor : Anchor))
  (anchor.set! (reader.read-char-utf8)))

(defrule (defatom-parsers (parsef atom) ...)
  (begin (defparse-atom parsef atom) ...))

(defsyntax-case defparse-atom ()
  ((_ parsef atom)
   (with-identifiers ((reader '$reader)
                      (env    '$env)
                      (anchor '$anchor)
                      (anchor.set!
                       #'anchor #'anchor ".set!"))
     #'(def (parsef (reader : BufferedReader)
                    (env    : UnmarshalEnv)
                    (anchor : Anchor))
         (anchor.set! atom)))))

(defsyntax-case defparse-vector ()
  ((_ parsef make setf)
   (with-identifiers ((reader '$reader)
                      (reader.read-varuint
                       #'reader #'reader ".read-varuint")
                      (env    '$env)
                      (env.max-elements
                       #'env #'env ".max-elements")
                      (anchor '$anchor)
                      (anchor.set!
                       #'anchor #'anchor ".set!")
                      (anchor.temporary
                       #'anchor #'anchor ".temporary"))
     #'(def (parsef (reader : BufferedReader)
                    (env    : UnmarshalEnv)
                    (anchor : Anchor))
         (let (size (: (reader.read-varuint) :fixnum))
           (when (fx> size env.max-elements)
             (runtime-contract-violation! "hunk too large"
                                          (<= size env.max-elements)
                                          size))
           (let (vec (make size))
             (let loop ((i 0 :- :fixnum))
               (if (fx< i size)
                 (let (next (parse reader env (anchor.temporary)))
                   (setf vec i next)
                   (loop (fx+ i 1)))
                 (anchor.set! vec)))))))))

(defsyntax-case defparse-hvector ()
  ((_ parsef make setf method)
   (with-identifiers ((reader '$reader)
                      (reader.read-varuint
                       #'reader #'reader ".read-varuint")
                      (reader.method
                       #'reader #'reader "." #'method)
                      (env    '$env)
                      (env.max-elements
                       #'env #'env ".max-elements")
                      (anchor '$anchor)
                      (anchor.set!
                       #'anchor #'anchor ".set!"))
     #'(def (parsef (reader : BufferedReader)
                    (env    : UnmarshalEnv)
                    (anchor : Anchor))
         (let (size (: (reader.read-varuint) :fixnum))
           (when (fx> size env.max-elements)
             (runtime-contract-violation! "hunk too large"
                                          (<= size env.max-elements)
                                          size))
           (let (vec (make size))
             (let loop ((i 0 :- :fixnum))
               (if (fx< i size)
                 (let (next (reader.method))
                   (setf vec i next)
                   (loop (fx+ i 1)))
                 (anchor.set! vec)))))))))

(defsyntax-case defparse-string ()
  ((_ parsef wrap)
   (with-identifiers ((reader '$reader)
                      (reader.read-varuint
                       #'reader #'reader ".read-varuint")
                      (reader.read-string-utf8
                       #'reader #'reader ".read-string-utf8")
                      (env    '$env)
                      (env.max-elements
                       #'env #'env ".max-elements")
                      (anchor '$anchor)
                      (anchor.set!
                       #'anchor #'anchor ".set!"))
     #'(def (parsef (reader : BufferedReader)
                    (env    : UnmarshalEnv)
                    (anchor : Anchor))
         (let (size (: (reader.read-varuint) :fixnum))
           (when (fx> size env.max-elements)
             (runtime-contract-violation! "hunk too large"
                                          (<= size env.max-elements)
                                          size))
           (let (str (make-string size))
             (reader.read-string-utf8 str 0 size)
             (anchor.set! (wrap str env))))))))

(defparse-vector parse-vector ##make-vector ##vector-set!)
(defparse-vector parse-values ##make-values ##values-set!)

(defparse-hvector parse-s8vector ##make-s8vector ##s8vector-set!
  read-s8)
(defparse-hvector parse-u8vector ##make-u8vector ##u8vector-set!
  read-u8)
(defparse-hvector parse-s16vector ##make-s16vector ##s16vector-set!
  read-s16)
(defparse-hvector parse-u16vector ##make-u16vector ##u16vector-set!
  read-u16)
(defparse-hvector parse-s32vector ##make-s32vector ##s32vector-set!
  read-s32)
(defparse-hvector parse-u32vector ##make-u32vector ##u32vector-set!
  read-u32)
(defparse-hvector parse-f32vector ##make-f32vector ##f32vector-set!
  read-f32)
(defparse-hvector parse-s64vector ##make-s64vector ##s64vector-set!
  read-s64)
(defparse-hvector parse-u64vector ##make-u64vector ##u64vector-set!
  read-u64)
(defparse-hvector parse-f64vector ##make-f64vector ##f64vector-set!
  read-f64)

(defparse-string parse-string (lambda (str env) str))
(defparse-string parse-symbol
  (lambda (str env)
    (using (env : UnmarshalEnv)
      (env.ctx.intern-symbol str))))
(defparse-string parse-keyword
  (lambda (str env)
    (using (env : UnmarshalEnv)
      (env.ctx.intern-keyword str))))

(def (parse-box (reader : BufferedReader)
                (env    : UnmarshalEnv)
                (anchor : Anchor))
  (let (val (parse reader env (anchor.temporary)))
    (anchor.set! (box val))))

(def (parse-ratnum (reader : BufferedReader)
                   (env    : UnmarshalEnv)
                   (anchor : Anchor))
  (let* ((numerator   (: (parse reader env (anchor.temporary))
                       :integer))
         (denominator (: (parse reader env (anchor.temporary))
                         :integer))
         (ratnum      (/ numerator denominator)))
    (anchor.set! ratnum)))

(def (parse-cpxnum (reader : BufferedReader)
                   (env    : UnmarshalEnv)
                   (anchor : Anchor))
  (let* ((real   (: (parse reader env (anchor.temporary))
                    :number))
         (imag (: (parse reader env (anchor.temporary))
                  :number))
         (cpxnum (make-rectangular real imag)))
  (anchor.set! cpxnum)))

(def (parse-list (reader : BufferedReader)
                 (env    : UnmarshalEnv)
                 (anchor : Anchor))
  (let (next (reader.peek-u8))
    (cond
     ((eq? next list-end-tag)
      (reader.read-u8)
      (anchor.set! []))
     ((eq? next list-tail-tag)
      (reader.read-u8)
      (raise-parse-error parse-list "unexpected list tail"))
     (else
      (let* ((first (parse reader env (anchor.temporary)))
             (head  [first]))
        (let loop ((prev head))
          (let (next (reader.peek-u8))
            (cond
             ((eq? next list-end-tag)
              (reader.read-u8)
              (anchor.set! head))
             ((eq? next list-tail-tag)
              (reader.read-u8)
              (let (tail (parse reader env (anchor.temporary)))
                (set! (cdr prev) tail)
                (anchor.set! head)))
             (else
              (let* ((obj (parse reader env (anchor.temporary)))
                     (tail [obj]))
                (set! (cdr prev) tail)
                (loop tail)))))))))))

(extern namespace: #f
  macro-unused-obj
  macro-deleted-obj
  macro-absent-obj)

(defatom-parsers
  (parse-null     [])
  (parse-false    #f)
  (parse-true     #t)
  (parse-void     #!void)
  (parse-eof      #!eof)
  (parse-unbound  #!unbound)
  (parse-unbound2 #!unbound2)
  (parse-unused   (macro-unused-obj))
  (parse-deleted  (macro-deleted-obj))
  (parse-absent   (macro-absent-obj))
  (parse-optional #!optional)
  (parse-key      #!key)
  (parse-rest     #!rest))

(def __tag-parsers
  (make-vector 256 #f))

(defrule (deftag-parsers (tag parsef) ...)
  (begin (vector-set! __tag-parsers tag parsef) ...))

(deftag-parsers
  (anchor-tag parse-anchor)
  (reference-tag parse-reference)
  (class-tag parse-class)
  (object-begin-tag parse-object)
  (hash-table-tag parse-hash-table)
  (uint-tag parse-uint)
  (sint-tag parse-sint)
  (float32-tag parse-float32)
  (float64-tag parse-float64)
  (char-tag parse-char)
  (null-tag parse-null)
  (false-tag parse-false)
  (true-tag parse-true)
  (void-tag parse-void)
  (eof-tag parse-eof)
  (unbound-tag parse-unbound)
  (unbound2-tag parse-unbound2)
  (unused-tag parse-unused)
  (deleted-tag parse-deleted)
  (absent-tag parse-absent)
  (optional-tag parse-optional)
  (key-tag parse-key)
  (rest-tag parse-rest)
  (vector-tag parse-vector)
  (box-tag parse-box)
  (s8vector-tag parse-s8vector)
  (u8vector-tag parse-u8vector)
  (s16vector-tag parse-s16vector)
  (u16vector-tag parse-u16vector)
  (s32vector-tag parse-s32vector)
  (u32vector-tag parse-u32vector)
  (s64vector-tag parse-s64vector)
  (u64vector-tag parse-u64vector)
  (f32vector-tag parse-f32vector)
  (f64vector-tag parse-f64vector)
  (string-tag parse-string)
  (symbol-tag parse-symbol)
  (keyword-tag parse-keyword)
  (ratnum-tag parse-ratnum)
  (cpxnum-tag parse-cpxnum)
  (values-tag parse-values)
  (list-begin-tag parse-list)
  )
