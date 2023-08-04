;;; -*- Gerbil -*-
;;; © vyzo
;;; Protobuf macros

(import :std/error
        :std/io
        (only-in :std/io/bio/util defreader-ext* defwriter-ext*)
        ./io
        (for-syntax :std/stxutil))
(export #t (for-syntax #t))

(begin-syntax
  (defclass type (name tag io-methods unchecked-io-methods))
  (defclass (scalar-type type) ())
  (defclass (enum-type type) ())
  (defclass (message-type type) ())
  (defclass (message-type-info message-type extended-struct-info) ())
  (defclass package (id types))

  (def (syntax-local-type id)
    (let (t (syntax-local-value id false))
      (unless (type? t)
        (raise-syntax-error #f "Not defined as a protobuf type" id))
      t))

  (def (check-duplicate-keys! keys where)
    (let lp ((rest keys))
      (match rest
        ([key . rest]
         (if (memq key rest)
           (raise-syntax-error #f "Duplicate key" where key)
           (lp rest)))
        (else (void))))))

(defsyntax (defenum stx)
  (def (make-bio-read bio-read keys vals)
    (with-syntax ((bio-read bio-read)
                  ((cases ...)
                   (map (lambda (key val)
                          (with-syntax ((key key) (val val))
                            #'((val) (quote key))))
                        keys vals)))
      #'(defreader-ext* (bio-read buf)
          (let (val (&BufferedReader-read-varint* buf))
            (case val
              cases ...
              (else val))))))

  (def (make-bio-write bio-write keys vals)
    (with-syntax ((bio-write bio-write)
                  ((cases ...)
                   (map (lambda (key val)
                          (with-syntax ((key key) (val val))
                            #'((key) (&BufferedWriter-write-varint* val buf))))
                        keys vals)))
      #'(defwriter-ext* (bio-write buf val)
          (case val
            cases ...
            (else
             (raise-io-error 'bio-write "Invalid value for enum" val))))))

  (syntax-case stx ()
    ((_ id (key val) ...)
     (and (identifier? #'id)
          (andmap identifier? #'(key ...))
          (andmap stx-fixnum? #'(val ...)))
     (with-syntax* ((_ (check-duplicate-identifiers #'(key ...) stx))
                    (_ (check-duplicate-keys! (map stx-e #'(val ...)) stx))
                    (bio-read  (format-id #'id "read-~a" #'id))
                    (bio-write (format-id #'id "write-~a" #'id))
                    (bio-read-fqn (format-id #'id "BufferedReader-~a" #'bio-read))
                    (bio-write-fqn (format-id #'id "BufferedWriter-~a" #'bio-write))
                    (&bio-read-fqn (format-id #'id "&~a" #'bio-read-fqn))
                    (&bio-write-fqn (format-id #'id "&~a" #'bio-write-fqn))
                    (defbio-read
                      (make-bio-read #'bio-read #'(key ...) #'(val ...)))
                    (defbio-write
                      (make-bio-write #'bio-write #'(key ...) #'(val ...))))
       #'(begin
           (defsyntax id
             (make-enum-type
              name: 'id
              tag: 'VARINT
              io-methods: [(quote-syntax bio-read-fqn) (quote-syntax bio-write-fqn)]
              unchecked-io-methods: [(quote-syntax &bio-read-fqn) (quote-syntax &bio-write-fqn)]))
           defbio-read
           defbio-write)))))

(defsyntax (defmessage stx)
  (def (check-duplicate-field! id key fields)
    (def (check-field field)
      (with ([specifier field-id . rest] field)
        (case specifier
          ((oneof:)
           (when (bound-identifier=? id field-id)
             (raise-syntax-error #f "Duplicate field id" stx id))
           (for-each
             (match <>
               ([subfield-id subfield-key . _]
                (when (bound-identifier=? id subfield-id)
                  (raise-syntax-error #f "Duplicate field id" stx id))
                (when (eq? key subfield-key)
                  (raise-syntax-error #f "Duplicate field key" stx key))))
             rest))
          (else
           (when (bound-identifier=? id field-id)
             (raise-syntax-error #f "Duplicate field id" stx id))
           (when (eq? key (car rest))
             (raise-syntax-error #f "Duplicate field key" stx key))))))

    (for-each check-field fields))

  (def (check-packed-type! type)
    (unless (and (scalar-type? type)
                 (not (memq (type-name type) '(string bytes))))
      (raise-syntax-error #f "Type cannot be packed" stx (type-name type))))

  (def (check-map-key-type! type)
    (unless (and (scalar-type? type)
                 (not (memq (type-name type) '(float double bytes))))
      (raise-syntax-error #f "Type cannot be a map key" stx (type-name type))))

  (def (parse-body body)
    (let lp ((rest body) (fields []))
      (syntax-case rest ()
        ((specifier field . rest)
         (stx-keyword? #'specifier)
         (case (stx-e #'specifier)
           ((required: optional: repeated: packed:)
            (syntax-case #'field ()
              ((id key type)
               (and (identifier? #'id) (stx-fixnum? #'key))
               (let ((key (stx-e #'key))
                     (type (syntax-local-type #'type)))
                 (check-duplicate-field! #'id key fields)
                 (when (eq? packed: (stx-e #'specifier))
                   (check-packed-type! type))
                 (lp #'rest
                     (cons [(stx-e #'specifier) #'id key type]
                           fields))))))
           ((map:)
            (syntax-case #'field ()
              ((id key key-type value-type)
               (and (identifier? #'id) (stx-fixnum? #'key))
               (let ((key (stx-e #'key))
                     (key-type (syntax-local-type #'key-type))
                     (value-type (syntax-local-type #'value-type)))
                 (check-map-key-type! key-type)
                 (check-duplicate-field! #'id key fields)
                 (lp #'rest
                     (cons [map: #'id key key-type value-type]
                           fields))))))
           ((oneof:)
            (syntax-case #'field ()
              ((id (union-id union-key union-type) ...)
               (and (identifier? #'id)
                    (andmap identifier? #'(union-id ...))
                    (andmap stx-fixnum? #'(union-key ...)))
               (let ((union-ids #'(union-id ...))
                     (union-keys (map stx-e #'(union-key ...)))
                     (union-types (map syntax-local-type #'(union-type ...))))
                 (check-duplicate-identifiers union-ids #'field)
                 (check-duplicate-keys! union-keys stx)
                 (for-each (cut check-duplicate-field! <> <> fields)
                           union-ids union-keys)
                 (lp #'rest
                     (cons [oneof: #'id (map list union-ids union-keys union-types) ...]
                           fields))))))
           (else
            (raise-syntax-error #f "Unexpected field specifier" stx #'specifier))))
        (() (reverse fields)))))

  (def (make-struct-def id fields)
    (with-syntax* ((id::t   (format-id id "~a::t" id))
                   (id?     (format-id id "~a?" id))
                   (make-id (format-id id "make-~a" id))
                   ((field-id ...)
                    (map cadr fields))
                   ((getf ...)
                    (map (cut format-id id "~a-~a" id <>)
                         #'(field-id ...)))
                   ((setf ...)
                    (map (cut format-id id "~a-~a-set!" id <>)
                         #'(field-id ...)))
                   (bio-read  (format-id id "read-~a" id))
                   (bio-write (format-id id "write-~a" id))
                   (bio-read-fqn (format-id id "BufferedReader-~a" #'bio-read))
                   (bio-write-fqn (format-id id "BufferedWriter-~a" #'bio-write))
                   (&bio-read-fqn (format-id id "&~a" #'bio-read-fqn))
                   (&bio-write-fqn (format-id id "&~a" #'bio-write-fqn))
                   (id id))
      #'(begin
          (defstruct-type id::t #f make-id id?
            fields: ((field-id getf setf) ...)
            name: id
            constructor: :init!
            unchecked: #t
            plist: '((final: . #t) (transparent: . #t)))
          (defsyntax id
            (make-message-type-info
             runtime-identifier: (quote-syntax id::t)
             expander-identifiers:
             [#f
              (quote-syntax id::t)
              (quote-syntax make-id)
              (quote-syntax id?)
              [(quote-syntax getf) ...]
              [(quote-syntax setf) ...]]
             type-exhibitor:
             (make-runtime-struct-exhibitor
              #f #f
              (quote id)
              (quote :init!)
              (quote ((final: . #t) (transparent: . #t)))
              (quote (field-id ...)))
             name: (quote id)
             tag: (quote VARLEN)
             io-methods: [(quote-syntax bio-read-fqn) (quote-syntax bio-write-fqn)]
             unchecked-io-methods: [(quote-syntax &bio-read-fqn) (quote-syntax &bio-write-fqn)])))))

  (def (keyword-e id)
    (symbol->keyword (stx-e id)))

  (def (make-constructor id fields)
    (def (constructor-args fields)
      (foldr
        (lambda (field r)
          (with ([specifier id . _] field)
            (case specifier
              ((required:)
               (cons* (keyword-e id) id r))
              ((optional: map: oneof:)
               (cons* (keyword-e id) [id #f] r))
              ((repeated: packed:)
               (cons* (keyword-e id) [id '(quote ())] r))
              (else
               (error "Unexpected specifier" specifier field)))))
        [] fields))
    (with-syntax ((id id)
                  ((arg ...) (constructor-args fields))
                  ((field ...) (map cadr fields))
                  (:init! (stx-identifier id ':init!)))
      #'(defmethod {:init! id}
          (lambda (self arg ...)
            (struct-instance-init! self field ...)))))

  (def (make-oneofs id fields)
    (let lp ((rest fields) (defs []))
      (match rest
        ([field . rest]
         (if (eq? (car field) oneof:)
           (with-syntax* (((values field-id)
                           (cadr field))
                          ((values subfields)
                           (cddr field))
                          ((values subfield-ids)
                           (map car subfields))
                          (field-getf (format-id id "~a-~a" id field-id))
                          (field-setf (format-id id "~a-~a-set!" id field-id))
                          ((subfield-kw ...)
                           (map keyword-e subfield-ids))
                          ((subfield-getf ...)
                           (map (cut format-id id "~a-~a" id <>)
                                subfield-ids))
                          ((subfield-setf ...)
                           (map (cut format-id id "~a-~a-set!" id <>)
                                subfield-ids)))
             (lp rest
                 (cons
                  #'(begin
                      (def (subfield-getf obj)
                        (match (field-getf obj)
                          ([kw . val]
                           (and (eq? kw subfield-kw) val))
                          (else #f)))
                      ...
                      (def (subfield-setf obj val)
                        (field-setf obj (cons subfield-kw val)))
                      ...)
                  defs)))
           (lp rest defs)))
        (else
         (cons 'begin (reverse defs))))))

  (def (make-bio-read id fields)
    (with-syntax ((bio-read  (format-id id "read-~a" id))
                  (bio-read! (format-id id "read-~a!" id))
                  (&bio-read! (format-id id "&BufferedReader-read-~a!" id))
                  (id::t     (format-id id "~a::t" id))
                  (field-count (length fields))
                  ((cases ...)
                   (make-read-cases id fields))
                  ((read-init ...)
                   (make-read-init id fields))
                  ((read-fini ...)
                   (make-read-fini id fields)))
      #'(begin
          (defreader-ext* (bio-read buf)
            (let (obj (make-object id::t field-count))
              (&bio-read! buf obj)
              obj))
          (defreader-ext* (bio-read! buf obj)
            read-init ...
            (let lp ()
              (unless (eof-object? (&BufferedReader-peek-u8 buf))
                (let ((values key tag) (&BufferedReader-read-field buf))
                  (case key
                    cases ...
                    (else
                     (&BufferedReader-skip-unknown buf tag)))
                  (lp))))
            read-fini ...))))

  (def (make-read-init id fields)
    (foldr (cut fold-read-init id <> <>)
           [] fields))

  (def (fold-read-init id field r)
    (with ([specifier field-id . rest] field)
      (with-syntax ((setf (format-id id "&~a-~a-set!" id field-id)))
        (case specifier
          ((repeated: packed:)
           (cons #'(setf obj [])
                 r))
          (else r)))))

  (def (make-read-fini id fields)
    (foldr (cut fold-read-fini id <> <>)
           [] fields))

  (def (fold-read-fini id field r)
    (with ([specifier field-id . rest] field)
      (with-syntax ((getf (format-id id "&~a-~a" id field-id))
                    (setf (format-id id "&~a-~a-set!" id field-id)))
        (case specifier
          ((repeated: packed:)
           (cons #'(setf obj (reverse (getf obj)))
                 r))
          ((map:)
           (cons #'(cond
                    ((getf obj)
                     => (lambda (items)
                          (setf obj (list->hash-table items)))))
                 r))
          (else r)))))

  (def (make-read-cases id fields)
    (foldr (cut fold-read-case id <> <>)
           [] fields))

  (def (fold-read-case id field r)
    (def (make-read-e type bio-read-e)
      (with-syntax ((bio-read-e bio-read-e))
        (if (or (scalar-type? type)
                (enum-type? type))
          #'(bio-read-e buf)
          #'(&BufferedReader-read-delimited* buf bio-read-e))))

    (with ([specifier field-id . rest] field)
      (with-syntax ((getf (format-id id "&~a-~a" id field-id))
                    (setf (format-id id "&~a-~a-set!" id field-id)))
        (case specifier
          ((required: optional:)
           (with ([key type] rest)
             (with-syntax* ((key key)
                            ((bio-read-e _) (type-unchecked-io-methods type))
                            (do-read (make-read-e type #'bio-read-e)))
               (cons #'((key)
                        (setf obj do-read))
                     r))))
          ((repeated: packed:)
           (with ([key type] rest)
             (with-syntax ((key key)
                           ((bio-read-e _) (type-unchecked-io-methods type)))
               (case (type-tag type)
                 ((VARLEN)
                  ;; it's a length-delimited object; cannot be packed.
                  (with-syntax ((do-read (make-read-e type #'bio-read-e)))
                    (cons #'((key)
                             (setf obj (cons do-read (getf obj))))
                          r)))
                 (else
                  ;; be prepared to accept packed or unpacked encoding
                  (with-syntax ((do-read (make-read-e type #'bio-read-e)))
                    (cons #'((key)
                             (if (eq? tag 'VARLEN)
                               (setf obj (foldl cons (getf obj) (&BufferedReader-read-packed buf bio-read-e)))
                               (setf obj (cons do-read (getf obj)))))
                          r)))))))
          ((map:)
           (with ([key key-type value-type] rest)
             (with-syntax* ((key key)
                            ((bio-read-key-e _) (type-unchecked-io-methods key-type))
                            ((bio-read-value-e _) (type-unchecked-io-methods value-type))
                            (read-value-e
                             (if (message-type? value-type)
                               #'(cut &BufferedReader-read-delimited* <> bio-read-value-e)
                               #'bio-read-value-e)))
               (cons #'((key)
                        (let (kv (&BufferedReader-read-key-value-pair buf bio-read-key-e read-value-e))
                          (setf obj (cons kv (or (getf obj) [])))))
                     r))))
          ((oneof:)
           (foldr
             (lambda (subfield r)
               (with ([subfield-id key type] subfield)
                 (with-syntax* ((key key)
                                (kw (keyword-e subfield-id))
                                ((bio-read-e _) (type-unchecked-io-methods type))
                                (do-read (make-read-e type #'bio-read-e)))
                   (cons #'((key)
                            (setf obj (cons kw do-read)))
                         r))))
             r rest))
          (else
           (error "Unexpected specifier" specifier field))))))

  (def (make-bio-write id fields)
    (with-syntax ((bio-write (format-id id "write-~a" id))
                  ((write-field ...)
                   (map (cut make-bio-write-field id <>)
                        fields))
                  (id? (format-id id "~a?" id))
                  (error-message
                   (string-append "Expected instance of " (symbol->string (stx-e id)))))
      #'(defwriter-ext* (bio-write buf obj)
          (unless (id? obj)
            (error error-message obj))
          write-field ...)))

  (def (make-bio-write-field id field)
    (def (make-write-e type bio-write-e)
      (with-syntax ((bio-write-e bio-write-e))
        (if (or (scalar-type? type)
                (enum-type? type))
          #'(bio-write-e buf val)
          #'(&BufferedWriter-write-delimited* buf val bio-write-e))))

    (with ([specifier field-id . rest] field)
      (with-syntax ((getf (format-id id "&~a-~a" id field-id)))
        (case specifier
          ((required:)
           (with ([key type] rest)
             (with-syntax* ((key key)
                            (tag (type-tag type))
                            ((_ bio-write-e) (type-unchecked-io-methods type))
                            (do-write (make-write-e type #'bio-write-e)))
               #'(let (val (getf obj))
                   (&BufferedWriter-write-field buf key (quote tag))
                   do-write))))
          ((optional:)
           (with ([key type] rest)
             (with-syntax* ((key key)
                            (tag (type-tag type))
                            ((_ bio-write-e) (type-unchecked-io-methods type))
                            (do-write (make-write-e type #'bio-write-e)))
               #'(cond
                  ((getf obj)
                   => (lambda (val)
                        (&BufferedWriter-write-field buf key (quote tag))
                        do-write))))))
          ((repeated:)
           (with ([key type] rest)
             (with-syntax* ((key key)
                            (tag (type-tag type))
                            ((_ bio-write-e) (type-unchecked-io-methods type))
                            (do-write (make-write-e type #'bio-write-e)))
               #'(let (vals (getf obj))
                   (for-each
                     (lambda (val)
                       (&BufferedWriter-write-field buf key (quote tag))
                       do-write)
                     vals)))))
          ((packed:)
           (with ([key type] rest)
             (with-syntax ((key key)
                           ((_ bio-write-e) (type-unchecked-io-methods type)))
               #'(let (vals (getf obj))
                   (&BufferedWriter-write-field buf key (quote VARLEN))
                   (&BufferedWriter-write-packed buf vals bio-write-e)))))
          ((map:)
           (with ([key key-type value-type] rest)
             (with-syntax* ((key key)
                           (key-tag (type-tag key-type))
                           (value-tag (type-tag value-type))
                           ((_ bio-write-key-e) (type-unchecked-io-methods key-type))
                           ((_ bio-write-value-e) (type-unchecked-io-methods value-type))
                           (write-value-e
                            (if (message-type? value-type)
                              #'(cut &BufferedWriter-write-delimited* <> <> bio-write-value-e)
                              #'bio-write-value-e)))
               #'(cond
                  ((getf obj)
                   => (lambda (hash)
                        (for-each
                          (lambda (kv)
                            (with ([k . v] kv)
                              (&BufferedWriter-write-field buf key (quote VARLEN))
                              (&BufferedWriter-write-key-value-pair buf k v
                                                                    (quote key-tag)
                                                                    bio-write-key-e
                                                                    (quote value-tag)
                                                                    write-value-e)))
                          (hash->list hash))))))))
          ((oneof:)
           (with-syntax (((cases ...)
                          (map (match <>
                                 ([subfield-id key type]
                                  (with-syntax* ((key key)
                                                 (kw (keyword-e subfield-id))
                                                 (tag (type-tag type))
                                                 ((_ bio-write-e) (type-unchecked-io-methods type))
                                                 (do-write
                                                  (make-write-e type #'bio-write-e)))
                                    #'((kw)
                                       (&BufferedWriter-write-field buf key (quote tag))
                                       do-write))))
                               rest)))
             #'(cond
                ((getf obj)
                 => (match <>
                      ([kw . val]
                       (case kw
                         cases ...
                         (else
                          (error "Unexpected oneof" kw val)))))))))
          (else
           (error "Unexpected specifier" specifier field))))))

  (syntax-case stx ()
    ((_ id . body)
     (identifier? #'id)
     (let (fields (parse-body #'body))
       (with-syntax ((deftype (make-struct-def #'id fields))
                     (defcons (make-constructor #'id fields))
                     (defoneofs (make-oneofs #'id fields))
                     (defread (make-bio-read #'id fields))
                     (defwrite (make-bio-write #'id fields)))
         #'(begin
             deftype
             defcons
             defoneofs
             defread
             defwrite))))))

(defsyntax (defscalar-type stx)
  (syntax-case stx ()
    ((_ id tag method)
     (with-syntax* ((bio-read-e (format-id #'id "BufferedReader-read-~a" #'method))
                    (bio-write-e (format-id #'id "BufferedWriter-write-~a" #'method))
                    (&bio-read-e (format-id #'id "&~a" #'bio-read-e))
                    (&bio-write-e (format-id #'id "&~a" #'bio-write-e)))
       #'(defsyntax id
           (make-scalar-type
            name: 'id
            tag:  'tag
            io-methods: [(quote-syntax bio-read-e) (quote-syntax bio-write-e)]
            unchecked-io-methods: [(quote-syntax &bio-read-e) (quote-syntax &bio-write-e)]))))))

(defscalar-type bool     VARINT  boolean)
(defscalar-type int32    VARINT  varint*)
(defscalar-type uint32   VARINT  varint*)
(defscalar-type sint32   VARINT  varint-zigzag*)
(defscalar-type int64    VARINT  varint*)
(defscalar-type uint64   VARINT  varint*)
(defscalar-type sint64   VARINT  varint-zigzag*)
(defscalar-type fixed32  FIXED32 fixed32)
(defscalar-type sfixed32 FIXED32 sfixed32)
(defscalar-type fixed64  FIXED64 fixed64)
(defscalar-type sfixed64 FIXED64 sfixed64)
(defscalar-type double   FIXED64 double)
(defscalar-type float    FIXED32 float)
(defscalar-type string   VARLEN  delimited-string*)
(defscalar-type bytes    VARLEN  delimited-bytes*)

(defrules defpackage ()
  ((_ id type-id ...)
   (defsyntax id
     (make-package id: 'id types: [(quote-syntax type-id) ...]))))

(defsyntax-for-import (protobuf-in stx)
  (def (expand-pkgs path imports)
    (let lp ((rest imports) (r []))
      (match rest
        ([in . rest]
         (cond
          ((module-import? in)
           (if (pkg-import? in)
             (lp rest (cons (expand-pkg-import path in) r))
             (lp rest r)))
          ((import-set? in)
           (lp (foldl cons rest (import-set-imports in)) r))
          (else
           (lp rest r))))
        (else
         (reverse r)))))

  (def (pkg-import? in)
    (let* ((out (module-import-source in))
           (bind (core-resolve-module-export out)))
      (and (syntax-binding? bind)
           (let (e (syntax-binding-e bind))
             (and (expander? e)
                  (package? (expander-e e)))))))

  (def (expand-pkg-import path in)
    (let* ((out (module-import-source in))
           (bind (core-resolve-module-export out))
           (pkg (expander-e (syntax-binding-e bind))))
      (with-syntax ((path path)
                    (prefix (make-symbol (package-id pkg) "."))
                    ((type ...) (package-types pkg)))
        #'(prefix-in (only-in path type ...) prefix))))

  (syntax-case stx ()
    ((_ path)
     (let* ((imports (core-expand-import-source #'path))
            (pkgs (expand-pkgs #'path imports)))
       (if (null? pkgs)
         #'path
         (cons 'begin: pkgs))))))
