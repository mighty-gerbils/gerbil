;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander"
        "base"
        "method"
        "compile"
        "optimize-base"
        "optimize-xform"
        "optimize-top")
(export #t)

;; method to optimize direct procedure calls
(defcompile-method (apply-optimize-call) (::optimize-call ::basic-xform) ()
  final:
  (%#call optimize-call%))

;;; apply-optimize-call
(def (optimize-call% self stx)
  (ast-case stx (%#ref)
    ((_ (%#ref rator) rand ...)
     (let* ((rator-id (identifier-symbol #'rator))
            (rator-type (optimizer-resolve-type rator-id)))
       (cond
        ((or (not rator-type)
             (eq? (!type-id rator-type) 't))
         (xform-call% self stx))
        ((!procedure? rator-type)
         (verbose "optimize-call " rator-id  " => " rator-type " " (!type-id rator-type))
         (let (optimized {rator-type.optimize-call self stx #'(rand ...)})
           (ast-case optimized (%#call %#ref)
             ((%#call (%#ref optimized-rator) arg ...)
              (let (optimized-rator-id (identifier-symbol #'optimized-rator))
                (if (or (and (!primitive? rator-type)
                             (eq? optimized-rator-id rator-id))
                        (memq optimized-rator-id checked-primitives))
                  ;; %#call-unchecked unsafe in this case
                  optimized
                  ;; %#call-unchecked to known procedure
                  (xform-wrap-source
                   (cons* '%#call-unchecked #'(%#ref optimized-rator) #'(arg ...))
                   stx))))
             (_ optimized))))
        ((and (!class? rator-type) (eq? (&!type-id rator-type) 'procedure))
         ;; known to be procedure, %#call-unchecked
         (xform-wrap-source
          (cons* '%#call-unchecked
                 #'(%#ref rator)
                 (map (cut compile-e self <>) #'(rand ...)))
          stx))
        (else
         (raise-compile-error "illegal application; not a procedure" stx rator-type)))))
    ((_ rator rand ...)
     (let (rator-type (apply-basic-expression-type #'rator))
       (if (and rator-type
                (eq? (!type-id rator-type) 'procedure)
                (not (!primitive? rator-type)))
           ;; known to be procedure, %#call-unchecked
           (xform-wrap-source
            (cons* '%#call-unchecked
                   (compile-e self #'rator)
                   (map (cut compile-e self <>) #'(rand ...)))
            stx)
         (xform-call% self stx))))))

(defmethod {optimize-call !procedure}
  (lambda (self ctx stx args)
    (if {self.check-arguments ctx stx args}
      (let (signature (&!procedure-signature self))
        (cond
         ((!signature-unchecked signature)
          => (lambda (unchecked)
               (if (symbol-in-local-scope? unchecked)
                 (xform-wrap-source
                  (cons* '%#call ['%#ref unchecked] (map (cut compile-e ctx <>) args))
                  stx)
                 (xform-call% ctx stx))))
         (else
          (xform-call% ctx stx))))
      (xform-call% ctx stx))))

(defmethod {check-arguments !procedure}
  (lambda (self ctx stx args)
    (alet* ((signature (&!procedure-signature self))
            (argument-types (!signature-arguments signature)))
      (let (argument-types
            (map* (lambda (t) (and t (optimizer-resolve-class stx t)))
                  argument-types))
        (let loop ((rest-args args) (rest-types argument-types) (result #t))
          (match rest-args
            ([arg . rest-args]
             (match rest-types
               ([type . rest-types]
                (loop rest-args rest-types
                      (and (check-expression-type! stx arg type)
                           result)))
               ([] (raise-compile-error "signature arity mismatch" stx argument-types))
               (tail-type
                (and (andmap (cut check-expression-type! stx <> tail-type) rest-args)
                     result))))
            (else result)))))))

(defmethod {optimize-call !primitive-predicate}
  (lambda (self ctx stx args)
    (ast-case args ()
      ((expr)
       (let* ((klass (optimizer-resolve-class stx (&!type-id self)))
              (object (compile-e ctx #'expr))
              (instance? (or (expression-type? object klass)
                             (expression-type? #'expr klass))))
         (if instance?
           (xform-wrap-source
            (if (or (expression-no-side-effects? object)
                    (expression-no-side-effects? #'expr))
              ['%#quote #t]
              ['%#begin object #t])
            stx)
           (xform-call% ctx stx)))))))

(defmethod {optimize-call !predicate}
  (lambda (self ctx stx args)
    (ast-case args ()
      ((expr)
       (let* ((klass (optimizer-resolve-class stx (!type-id self)))
              (object (compile-e ctx #'expr))
              (instance? (or (expression-type? object klass)
                             (expression-type? #'expr klass))))
         (cond
          (instance?
           (xform-wrap-source
            (if (or (expression-no-side-effects? object)
                    (expression-no-side-effects? #'expr))
              ['%#quote #t]
              ['%#begin object #t])
            stx))
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

(def (expression-no-side-effects? stx)
  ;; TODO this should be a compile method for more accuracy
  (ast-case stx (%#quote %#ref %#call %#set!)
    ((%#quote _) #t)
    ((%#ref _) #t)
    ((%#call (%#ref rator) rand ...)
     (alet* ((rator-type (optimizer-resolve-type (identifier-symbol #'rator)))
             (rator-signature (and (!procedure? rator-type) (&!procedure-signature rator-type)))
             (rator-effect (and rator-signature (!signature-effect rator-signature))))
       (and (or (equal? '(pure) rator-effect)
                (equal? '(alloc) rator-effect))
            (andmap expression-no-side-effects? #'(rand ...)))))
    (_ #f)))

(def (expression-type? stx klass)
  (let (expr-type (apply-basic-expression-type stx))
    (and expr-type (!type-subtype? expr-type klass))))

(def (check-expression-type! stx expr type)
  (cond
   ((not type)
    ;; forced contract check
    #f)

   ((eq? (!type-id type) 't))           ; happy!

   (else
    (let (expr-type (apply-basic-expression-type expr))
      (cond
       ((not expr-type)
        ;; no type information, let the runtime contract check it
        #f)
       ((eq? 't (!type-id expr-type))
        ;; unspecific type, let the runtime contract check it
        #f)

       ((!type-subtype? expr-type type)) ; happy!

       ;; fuzzy rules for types that might be compatible and should be checked
       ;; at runtime -- we have incomplete type info in general, and runtime
       ;; contract checks, so we should not fail to compile when the type
       ;; is not definitely wrong.
       ((!interface-instance? type)
        ;; let the runtime contract cast it
        #f)

       ((!type-subtype? type expr-type)
        ;; wider type than what we have; let the runtime contract check it
        ;; most notable this catches unspecific object instances, which are
        ;; abundant.
        #f)

       (else
        ;; not happy; type is incompatible
        (raise-compile-error "signature type mismatch" stx expr expr-type type)))))))

(defmethod {optimize-call !constructor}
  (lambda (self ctx stx args)
    (let* ((klass (optimizer-resolve-class stx (!type-id self)))
           (fields (length (!class-fields klass)))
           (args (map (cut compile-e ctx <>) args))
           (inline-make-object
            ['%#begin-annotation ['@type (!type-id self)]
                                 ['%#call ['%#ref '##structure]
                                          ['%#ref (!type-id self)]
                                          (make-list fields '(%#quote #f))
                                          ...]]))
      (cond
       ((!class-constructor klass)
        => (lambda (ctor)
             (let (($obj (make-symbol (gensym '__obj)))
                   (ctor-impl (!class-lookup-method klass ctor)))
               (xform-wrap-source
                ['%#let-values [[[$obj] inline-make-object]]
                               ['%#begin
                                (if ctor-impl
                                  ['%#call ['%#ref ctor-impl] ['%#ref $obj] args ...]
                                  (let ($ctor (make-symbol (gensym '__constructor)))
                                    ['%#let-values [[[$ctor]
                                                     ['%#call ['%#ref 'direct-method-ref] ['%#ref (!type-id self)] ['%#ref $obj] ['%#quote ctor]]]]
                                                   ['%#if ['%#ref $ctor]
                                                          ['%#call ['%#ref $ctor] ['%#ref $obj] args ...]
                                                          ['%#call ['%#ref 'error] ['%#quote "missing constructor method implementation"] ['%#quote 'class:] ['%#ref (!type-id self)] ['%#quote 'method:] ['%#quote ctor]]]]))
                                ['%#ref $obj]]]
                stx))))
       ((!class-metaclass klass)
        => (lambda (metaclass)
             (let* (($obj (make-symbol (gensym '__obj)))
                    (metakons
                     (!class-lookup-method (optimizer-resolve-class stx metaclass)
                                           'instance-init!)))
               (xform-wrap-source
                ['%#let-values [[[$obj] inline-make-object]]
                               ['%#begin
                                (if metakons
                                  ['%#call ['%#ref metakons] ['%#ref (!type-id self)] ['%#ref $obj] args ...]
                                  ['%#call ['%#ref 'call-method] ['%#ref (!type-id self)] ['%#quote 'instance-init!] ['%#ref $obj] args ...])
                                ['%#ref $obj]]]
                stx))))
       ((!class-struct? klass)
        (if (fx= (length args) fields)
          (xform-wrap-source
           ['%#begin-annotation ['@type (!type-id self)]
                                ['%#call ['%#ref '##structure]
                                         ['%#ref (!type-id self)]
                                         args ...]]
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
                ['%#let-values [[[$obj] inline-make-object]]
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
                ['%#let-values [[[$obj] inline-make-object]]
                               ['%#begin
                                ['%#call ['%#ref 'class-instance-init!]
                                         ['%#ref $obj]
                                         args ...]
                                ['%#ref $obj]]]
                stx))))))))))

(defmethod {optimize-call !accessor}
  (lambda (self ctx stx args)
    (let (arguments-ok? {self.check-arguments ctx stx args})
      (ast-case args ()
        ((object)
         (let* ((klass (optimizer-resolve-class stx (!type-id self)))
                (field (!class-slot->field-offset klass (!accessor-slot self)))
                (object (compile-e ctx #'object)))
           (cond
            ((!class-final? klass)
             (xform-wrap-source
              [(if (or arguments-ok? (not (!accessor-checked? self)))
                 '%#struct-unchecked-ref
                 '%#struct-direct-ref)
               ['%#ref (!type-id self)]
               ['%#quote field]
               object]
              stx))
            ((!class-struct? klass)
             (xform-wrap-source
              [(if (or arguments-ok? (not (!accessor-checked? self)))
                 '%#struct-unchecked-ref
                 '%#struct-ref)
               ['%#ref (!type-id self)]
               ['%#quote field]
               object]
              stx))
            ((!class-slot-find-struct klass (!accessor-slot self))
             => (lambda (klass)
                  (xform-wrap-source
                   [(if (or arguments-ok? (not (!accessor-checked? self)))
                      '%#struct-unchecked-ref
                      '%#struct-ref)
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
                                      (if arguments-ok?
                                        ['%#call ['%#ref 'unchecked-slot-ref]
                                                 ['%#ref $obj]
                                                 ['%#quote (!accessor-slot self)]]
                                        ['%#call
                                         ['%#ref 'class-slot-ref]
                                         ['%#ref (!type-id self)]
                                         ['%#ref $obj]
                                         ['%#quote (!accessor-slot self)]])]])
              stx))
            (else
             (xform-wrap-source
              ['%#call ['%#ref 'unchecked-slot-ref]
                       object
                       ['%#quote (!accessor-slot self)]]
              stx)))))))))

(defmethod {optimize-call !mutator}
  (lambda (self ctx stx args)
    (let (arguments-ok? {self.check-arguments ctx stx args})
      (ast-case args ()
        ((object value)
         (let* ((klass (optimizer-resolve-class stx (!type-id self)))
                (field (!class-slot->field-offset klass (!mutator-slot self)))
                (object (compile-e ctx #'object))
                (value (compile-e ctx #'value)))
           (cond
            ((!class-final? klass)
             (xform-wrap-source
              [(if (or arguments-ok? (not (!mutator-checked? self)))
                 '%#struct-unchecked-set!
                 '%#struct-direct-set!)
               ['%#ref (!type-id self)]
               ['%#quote field]
               object
               value]
              stx))
            ((!class-struct? klass)
             (xform-wrap-source
              [(if (or arguments-ok? (not (!mutator-checked? self)))
                 '%#struct-unchecked-set!
                 '%#struct-set!)
               ['%#ref (!type-id self)]
               ['%#quote field]
               object
               value]
              stx))
            ((!class-slot-find-struct klass (!mutator-slot self))
             => (lambda (klass)
                  (xform-wrap-source
                   [(if (or arguments-ok? (not (!mutator-checked? self)))
                      '%#struct-unchecked-set!
                      '%#struct-set!)
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
                                      (if arguments-ok?
                                        ['%#call ['%#ref 'unchecked-slot-set!]
                                                 ['%#ref $obj]
                                                 ['%#quote (!mutator-slot self)]
                                                 value]
                                        ['%#call
                                         ['%#ref 'class-slot-set!]
                                         ['%#ref (!type-id self)]
                                         ['%#ref $obj]
                                         ['%#quote (!mutator-slot self)]
                                         value])]])
              stx))
            (else
             (xform-wrap-source
              ['%#call ['%#ref 'unchecked-slot-set!]
                       object
                       ['%#quote (!mutator-slot self)]
                       value]
              stx)))))))))

(defmethod {optimize-call !lambda}
  (lambda (self ctx stx args)
    (with ((!lambda _ _ arity dispatch inline) self)
      (unless (!lambda-arity-match? self args)
        (raise-compile-error "Illegal lambda application; arity mismatch"
                             stx arity))
      (cond
       (inline
        (verbose "inline lambda")
        (compile-e
         ctx
         (xform-wrap-source
          (inline stx)
          stx)))
       ((and dispatch (symbol-in-local-scope? dispatch))
        (verbose "dispatch lambda => " dispatch)
        (compile-e
         ctx
         (xform-wrap-source
          ['%#call ['%#ref dispatch] args ...]
          stx)))
       (else
        (!procedure::optimize-call self ctx stx args))))))

(defmethod {optimize-call !case-lambda}
  (lambda (self ctx stx args)
    (let (clauses (&!case-lambda-clauses self))
      (cond
       ((find (cut !lambda-arity-match? <> args) clauses)
        => (lambda (clause) {clause.optimize-call ctx stx args}))
       (else
        (raise-compile-error "Illegal case-lambda application; arity mismatch"
                             stx (map !lambda-arity clauses)))))))

(def (!lambda-arity-match? self args)
  (with ((!lambda _ _ arity) self)
    (match arity
      ((? fixnum?)
       (fx= (length args) arity))
      ([arity]
       (fx>= (length args) arity)))))

(defmethod {optimize-call !kw-lambda}
  (lambda (self ctx stx args)
    (with ((!kw-lambda _ _ table dispatch) self)
      (if (symbol-in-local-scope? dispatch)
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
                  ctx
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
                              ['%#call '(%#ref symbolic-table-set!) ['%#ref kwt]
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
                  ctx
                  (xform-wrap-source
                   ['%#let-values kwbind
                                  ['%#let-values [[[kwt]
                                                   (xform-wrap-source
                                                    ['%#call '(%#ref make-symbolic-table)
                                                             ['%#quote (length kwargs)]
                                                             '(%#quote 0)]
                                                    stx)]]
                                                 ['%#begin
                                                  kwset ...
                                                  (xform-wrap-source
                                                   ['%#call ['%#ref main] ['%#ref kwt] xargs ... pargs ...]
                                                   stx)]]]
                   stx))))))
          (else
           (verbose "unknown keyword dispatch lambda " dispatch)
           (xform-call% ctx stx)))
        (xform-call% ctx stx)))))

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
      (_
       (values (reverse pargs) (reverse kwargs))))))

(defmethod {optimize-call !kw-lambda-primary}
  (lambda (self ctx stx args)
    (xform-call% ctx stx)))
