;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: "../prelude/core"
package: gerbil/compiler
namespace: gxc

(import "../expander"
        "base"
        "compile"
        "optimize-base"
        "optimize-xform")
(export #t)

(defcompile-method apply-optimize-call (&optimize-call &basic-xform)
  (%#call optimize-call%))

;;; apply-optimize-call
(def (optimize-call% stx)
  (ast-case stx (%#ref)
    ((_ (%#ref rator) . rands)
     (let* ((rator-id (identifier-symbol #'rator))
            (rator-type (optimizer-resolve-type rator-id)))
       (cond
        ((!procedure? rator-type)
         (verbose "optimize-call " rator-id  " => " rator-type " " (!type-id rator-type))
         (let (optimized {optimize-call rator-type stx #'rands})
           (if (!primitive? rator-type)
             optimized        ; %#call-unchecked unsafe for primitives
             (ast-case optimized (%#call)
               ((%#call . body)
                (xform-wrap-source
                 (cons '%#call-unchecked #'body)
                 stx))
               (_ optimized)))))
        ((not rator-type)
         (xform-call% stx))
        (else
         (raise-compile-error "illegal application; not a procedure" stx rator-type)))))
    (_ (xform-call% stx))))

(defmethod {optimize-call !predicate}
  (lambda (self stx args)
    (ast-case args ()
      ((expr)
       (let* ((klass (optimizer-resolve-class stx (!type-id self)))
              (object (compile-e #'expr)))
         (cond
          ((!class-final? klass)
           (xform-wrap-source
            ['%#struct-direct-instance? ['%#quote (!type-id klass)] object]
            stx))
          ((!class-struct? klass)
           (xform-wrap-source
            ['%#struct-instance? ['%#quote (!type-id klass)] object]
            stx))
          (else ;; generic class instance check
           (xform-wrap-source
            ['%#call ['%#ref 'class-instance?] ['%#ref (!type-id self)] object]
            stx))))))))

(defmethod {optimize-call !constructor}
  (lambda (self stx args)
    (let* ((klass (optimizer-resolve-class stx (!type-id self)))
           (fields (fx1+ (length (!class-fields klass))))
           (args (map compile-e args)))
      (cond
       ((!class-constructor klass)
        => (lambda (ctor)
             (let (($obj (make-symbol (gensym '__obj)))
                   (ctor-impl (!class-lookup-method klass ctor)))
               (xform-wrap-source
                ['%#let-values [[[$obj]
                                 ['%#call ['%#ref 'make-object*]
                                          ['%#ref (!type-id self)]
                                          ['%#quote fields]]]]
                               ['%#begin
                                (if ctor-impl
                                  ['%#call ['%#ref ctor-impl] ['%#ref $obj] args ...]
                                  (let ($ctor (make-symbol (gensym '__constructor)))
                                    ['%#let-values [[[$ctor]
                                                     ['%#call ['%#ref 'find-method] ['%#ref (!type-id self)] ['%#quote ctor]]]]
                                                   ['%#if ['%#ref $ctor]
                                                          ['%#call ['%#ref $ctor] ['%#ref $obj] args ...]
                                                          ['%#call ['%#ref 'error] ['%#quote "missing constructor method implementation"] ['%#quote 'class:] ['%#ref (!type-id self)] ['%#quote 'method:] ['%#quote ctor]]]]))
                                ['%#ref $obj]]]
                stx))))
       ((!class-struct? klass)
        (if (fx= (length args) (fx1- fields))
          (xform-wrap-source
           ['%#call ['%#ref '##structure]
                    ['%#ref (!type-id self)]
                    args ...]
           stx)
          (raise-compile-error "illegal struct constructor application; arity mismatch"
                               stx (!type-id self) (length (!class-fields klass)))))
       (else
        (let ($obj (make-symbol (gensym '__obj)))
          (let lp ((rest args) (initializers []))
            (ast-case rest (%#quote)
              (((%#quote kw) expr . rest)
               (stx-keyword? #'kw)
               (let* ((slot (keyword->symbol (stx-e #'kw)))
                      (off  (!class-slot->field-offset klass slot)))
                 (if off
                   (lp #'rest (cons (cons off #'expr) initializers))
                   (raise-compile-error "unknown slot" stx (!type-id self) slot))))
              (()
               (xform-wrap-source
                ['%#let-values [[[$obj]
                                 ['%#call ['%#ref 'make-object*]
                                          ['%#ref (!type-id self)]
                                          ['%#quote fields]]]]
                               ['%#begin
                                (foldl (lambda (i r)
                                         (cons ['%#struct-unchecked-set!
                                                ['%#ref (!type-id self)]
                                                ['%#quote (car i)]
                                                ['%#ref $obj]
                                                (cdr i)]
                                               r))
                                       [] initializers)
                                ...
                               ['%#ref $obj]]]
                stx))
              (_
               ;; not canonical static keyword -> value initialization list
               ;; redirect to class-instance-init!
               (xform-wrap-source
                ['%#let-values [[[$obj]
                                 ['%#call ['%#ref 'make-object*]
                                          ['%#ref (!type-id self)]
                                          ['%#quote fields]]]]
                               ['%#begin
                                ['%#call ['%#ref 'class-instance-init!]
                                         ['%#ref $obj]
                                         args ...]
                                ['%#ref $obj]]]
                stx))))))))))

(defmethod {optimize-call !accessor}
  (lambda (self stx args)
    (ast-case args ()
      ((object)
       (let* ((klass (optimizer-resolve-class stx (!type-id self)))
              (field (!class-slot->field-offset klass (!accessor-slot self)))
              (object (compile-e #'object)))
         (cond
          ((!class-final? klass)
           (xform-wrap-source
            [(if (!accessor-checked? self)
               '%#struct-direct-ref
               '%#struct-unchecked-ref)
             ['%#ref (!type-id self)]
             ['%#quote field]
             object]
            stx))
          ((!class-struct? klass)
           (xform-wrap-source
            [(if (!accessor-checked? self)
               '%#struct-ref
               '%#struct-unchecked-ref)
             ['%#ref (!type-id self)]
             ['%#quote field]
             object]
            stx))
          ((!class-slot-find-struct klass (!accessor-slot self))
           => (lambda (klass)
                (xform-wrap-source
                 [(if (!accessor-checked? self)
                    '%#struct-ref
                    '%#struct-unchecked-ref)
                  ['%#ref (!type-id self)]
                  ['%#quote field]
                  object]
                 stx)))
          ((!accessor-checked? self)
           (xform-wrap-source
            (let ($obj (make-symbol (gensym '__obj)))
              ['%#let-values [[[$obj] object]]
                             ['%#if ['%#struct-direct-instance?
                                     ['%#quote (!type-id klass)]
                                     ['%#ref $obj]]
                                    ['%#struct-unchecked-ref
                                     ['%#ref (!type-id self)]
                                     ['%#quote field]
                                     ['%#ref $obj]]
                                    ['%#call
                                     ['%#ref 'class-slot-ref]
                                     ['%#ref (!type-id self)]
                                     ['%#ref $obj]
                                     ['%#quote (!accessor-slot self)]]]])
            stx))
          (else
           (xform-wrap-source
            ['%#call ['%#ref 'unchecked-slot-ref]
                     object
                     ['%#quote (!accessor-slot self)]]
            stx))))))))

(defmethod {optimize-call !mutator}
  (lambda (self stx args)
    (ast-case args ()
      ((object value)
       (let* ((klass (optimizer-resolve-class stx (!type-id self)))
              (field (!class-slot->field-offset klass (!mutator-slot self)))
              (object (compile-e #'object))
              (value (compile-e #'value)))
         (cond
          ((!class-final? klass)
           (xform-wrap-source
            [(if (!mutator-checked? self)
               '%#struct-direct-set!
               '%#struct-unchecked-set!)
             ['%#ref (!type-id self)]
             ['%#quote field]
             object
             value]
            stx))
          ((!class-struct? klass)
           (xform-wrap-source
            [(if (!mutator-checked? self)
               '%#struct-set!
               '%#struct-unchecked-set!)
             ['%#ref (!type-id self)]
             ['%#quote field]
             object
             value]
            stx))
          ((!class-slot-find-struct klass (!mutator-slot self))
           => (lambda (klass)
                (xform-wrap-source
                 [(if (!mutator-checked? self)
                    '%#struct-set!
                    '%#struct-unchecked-set!)
                  ['%#ref (!type-id self)]
                  ['%#quote field]
                  object
                  value]
                 stx)))
          ((!mutator-checked? self)
           (xform-wrap-source
            (let ($obj (make-symbol (gensym '__obj)))
              ['%#let-values [[[$obj] object]]
                             ['%#if ['%#struct-direct-instance?
                                     ['%#quote (!type-id klass)]
                                     ['%#ref $obj]]
                                    ['%#struct-unchecked-set!
                                     ['%#ref (!type-id self)]
                                     ['%#quote field]
                                     ['%#ref $obj]
                                     value]
                                    ['%#call
                                     ['%#ref 'class-slot-set!]
                                     ['%#ref (!type-id self)]
                                     ['%#ref $obj]
                                     ['%#quote (!mutator-slot self)]
                                     value]]])
            stx))
          (else
           (xform-wrap-source
            ['%#call ['%#ref 'unchecked-slot-set!]
                     object
                     ['%#quote (!mutator-slot self)]
                     value]
            stx))))))))

(defmethod {optimize-call !lambda}
  (lambda (self stx args)
    (with ((!lambda _ arity dispatch inline) self)
      (unless (!lambda-arity-match? self args)
        (raise-compile-error "Illegal lambda application; arity mismatch"
                             stx arity))
      (cond
       (inline
        (verbose "inline lambda")
        (compile-e
         (xform-wrap-source
          (inline stx)
          stx)))
       (dispatch
        (verbose "dispatch lambda => " dispatch)
        (compile-e
         (xform-wrap-source
          ['%#call ['%#ref dispatch] args ...]
          stx)))
       (else
        (xform-call% stx))))))

(defmethod {optimize-call !case-lambda}
  (lambda (self stx args)
    (with ((!case-lambda _ clauses) self)
      (cond
       ((find (cut !lambda-arity-match? <> args) clauses)
        => (lambda (clause) {optimize-call clause stx args}))
       (else
        (raise-compile-error "Illegal case-lambda application; arity mismatch"
                             stx (map !lambda-arity clauses)))))))

(def (!lambda-arity-match? self args)
  (with ((!lambda _ arity) self)
    (match arity
      ((? fixnum?)
       (fx= (length args) arity))
      ([arity]
       (fx>= (length args) arity)))))

(defmethod {optimize-call !kw-lambda}
  (lambda (self stx args)
    (with ((!kw-lambda _ table dispatch) self)
      (match (optimizer-lookup-type dispatch)
        ((!kw-lambda-primary _ keys main)
         (let ((values pargs kwargs)
               (!kw-lambda-split-args stx args))
           (verbose "dispatch kw-lambda => " main)
           (if table
             (let (xargs
                   (map (lambda (key)
                          (cond
                           ((assgetq key kwargs) => values)
                           (else '(%#ref absent-value))))
                        keys))
               (for-each
                 (lambda (kw)
                   (unless (memq (car kw) keys)
                     (raise-compile-error "Illegal keyword lambda application; unexpected keyword"
                                          stx keys kw)))
                 kwargs)
               (compile-e
                (xform-wrap-source
                 ['%#call ['%#ref main] ['%#quote #f] xargs ... pargs ...]
                 stx)))
             (let* ((kwt (make-symbol (gensym '__kwt)))
                    (kwvars
                     (map (lambda (_) (make-symbol (gensym '__kw)))
                          kwargs))
                    (kwbind
                     (map (lambda (kw kwvar) [[kwvar] (cdr kw)])
                          kwargs kwvars))
                    (kwset
                     (map (lambda (kw kwvar)
                            ['%#call '(%#ref hash-put!) ['%#ref kwt]
                                     ['%#quote (car kw)]
                                     ['%#ref kwvar]])
                          kwargs kwvars))
                    (xkwargs
                     (map (lambda (kw kwvar)
                            (cons (car kw) ['%#ref kwvar]))
                          kwargs kwvars))
                    (xargs
                     (map (lambda (key)
                            (cond
                             ((assgetq key xkwargs) => values)
                             (else '(%#ref absent-value))))
                          keys)))
               (compile-e
                (xform-wrap-source
                 ['%#let-values kwbind
                   ['%#let-values [[[kwt]
                                    (xform-wrap-source
                                     ['%#call '(%#ref make-hash-table-eq)
                                             '(%#quote size:)
                                             ['%#quote (length kwargs)]]
                                     stx)]]
                     ['%#begin
                      kwset ...
                      (xform-wrap-source
                       ['%#call ['%#ref main] ['%#ref kwt] xargs ... pargs ...]
                       stx)]]]
                 stx))))))
          (else
           (verbose "unknown keyword dispatch lambda " dispatch)
           (xform-call% stx))))))

(def (!kw-lambda-split-args stx args)
  (let lp ((rest args) (pargs []) (kwargs []))
    (ast-case rest (%#quote)
      (((%#quote #!key) key . rest)
       (lp #'rest (cons #'key pargs) kwargs))
      (((%#quote #!rest) . rest)
       (values (foldl cons #'rest pargs) (reverse kwargs)))
      (((%#quote kw) val . rest)
       (stx-keyword? #'kw)
       (let (kw (stx-e #'kw))
         (if (assq kw kwargs)
           (raise-compile-error "Illegal keyword lambda application; duplicate keyword" stx kw)
           (lp #'rest pargs (cons (cons kw #'val) kwargs)))))
      ((val . rest)
       (lp #'rest (cons #'val pargs) kwargs))
      (()
       (values (reverse pargs) (reverse kwargs))))))

(defmethod {optimize-call !kw-lambda-primary}
  (lambda (self stx args)
    (xform-call% stx)))
