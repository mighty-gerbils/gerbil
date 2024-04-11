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
  (%#call optimize-call%)
  (%#if   optimize-if%))

;; method to verify the procedure declared return type
(defcompile-method (apply-check-return-type) (::check-return-type ::void) ()
  final:
  (%#begin            apply-begin%)
  (%#begin-syntax     apply-begin-syntax%)
  (%#begin-annotation apply-check-return-type-begin-annotation%)
  (%#module           apply-module%)
  (%#define-values    apply-define-values%)
  (%#define-syntax    apply-define-syntax%)
  (%#lambda                apply-body-lambda%)
  (%#case-lambda           apply-body-case-lambda%)
  (%#let-values       apply-body-let-values%)
  (%#letrec-values    apply-body-let-values%)
  (%#letrec*-values   apply-body-let-values%)
  (%#call             apply-operands)
  (%#if               apply-path-type-if%)
  (%#set!             apply-body-setq%))

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
              (let* ((optimized-rator-id (identifier-symbol #'optimized-rator))
                     (rator-type (or (optimizer-lookup-type optimized-rator-id)
                                     rator-type)))
                (if (or
                      ;; may be unsafe or unecessary to %#call-unchecked
                      (!primitive? rator-type)
                      ;; definitely unsafe, can't #%call-unchecked
                      (memq optimized-rator-id checked-primitives)
                      ;; in the current module, no need for %#call-unchecked
                      ;; because of module block semantics
                      (and (!procedure? rator-type)
                           (eq? (!procedure-origin rator-type)
                                (expander-context-id (current-expander-context)))))
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
       (cond
        ((and rator-type
              (eq? (!type-id rator-type) 'procedure)
              (not (!primitive? rator-type))
              (not (and (!procedure? rator-type)
                        (eq? (!procedure-origin rator-type)
                             (expander-context-id (current-expander-context))))))
         ;; known to be procedure, %#call-unchecked
         (xform-wrap-source
          (cons* '%#call-unchecked
                 (compile-e self #'rator)
                 (map (cut compile-e self <>) #'(rand ...)))
          stx))
        ((or (not rator-type) (memq (!type-id rator-type) '(t procedure)))
         (xform-call% self stx))
        (else
         (raise-compile-error "illegal application; not a procedure" stx rator-type)))))))

(defmethod {optimize-call !procedure}
  (lambda (self ctx stx args)
    (if {self.check-arguments ctx stx args}
      (using (signature self.signature :- !signature)
        (cond
         ((and signature signature.unchecked)
          => (lambda (unchecked)
               (if (symbol-in-local-scope? unchecked)
                 (xform-wrap-apply
                  (cons* '%#call ['%#ref unchecked] (map (cut compile-e ctx <>) args))
                  stx ctx)
                 (xform-call% ctx stx))))
         (else
          (xform-call% ctx stx))))
      (xform-call% ctx stx))))

(defmethod {check-arguments !procedure}
  (lambda (self ctx stx args)
    (alet* ((signature self.signature)
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
       (let* ((klass (optimizer-resolve-class stx self.id))
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
       (let* ((klass (optimizer-resolve-class stx self.id))
              (object (compile-e ctx #'expr))
              (instance? (or (expression-type? object klass)
                             (expression-type? #'expr klass))))
         (using (klass :- !class)
           (cond
            (instance?
             (xform-wrap-source
              (if (or (expression-no-side-effects? object)
                      (expression-no-side-effects? #'expr))
                ['%#quote #t]
                ['%#begin object #t])
              stx))
            (klass.final?
             (xform-wrap-source
              ['%#struct-direct-instance? ['%#quote klass.id] object]
              stx))
            (klass.struct?
             (xform-wrap-source
              ['%#struct-instance? ['%#quote klass.id] object]
              stx))
            (else ;; generic class instance check
             (xform-wrap-source
              ['%#call ['%#ref 'class-instance?] ['%#ref self.id] object]
              stx)))))))))

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

       ((!abort? expr-type)) ; runtime error, type is satisfied because there is no value

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
    (let* ((klass (optimizer-resolve-class stx self.id))
           (fields (length (!class-fields klass)))
           (args (map (cut compile-e ctx <>) args))
           (inline-make-object
            ['%#begin-annotation ['@type self.id]
                                 ['%#call ['%#ref '##structure]
                                          ['%#ref self.id]
                                          (make-list fields '(%#quote #f))
                                          ...]]))
      (using (klass :- !class)
        (cond
         (klass.constructor
          => (lambda (ctor)
               (let (($obj (make-symbol (gensym '__obj)))
                     (ctor-impl (!class-lookup-method klass ctor)))
                 (xform-wrap-source
                  ['%#let-values [[[$obj] inline-make-object]]
                                 ['%#begin
                                  (if ctor-impl
                                    (xform-wrap-apply
                                     ['%#call ['%#ref ctor-impl] ['%#ref $obj] args ...]
                                     stx ctx)
                                    (let ($ctor (make-symbol (gensym '__constructor)))
                                      ['%#let-values [[[$ctor]
                                                       ['%#call ['%#ref 'direct-method-ref] ['%#ref self.id] ['%#ref $obj] ['%#quote ctor]]]]
                                                     ['%#if ['%#ref $ctor]
                                                            ['%#call ['%#ref $ctor] ['%#ref $obj] args ...]
                                                            ['%#call ['%#ref 'error] ['%#quote "missing constructor method implementation"] ['%#quote 'class:] ['%#ref self.id] ['%#quote 'method:] ['%#quote ctor]]]]))
                                  ['%#ref $obj]]]
                  stx))))
         (klass.metaclass
          => (lambda (metaclass)
               (let* (($obj (make-symbol (gensym '__obj)))
                      (metakons
                       (!class-lookup-method (optimizer-resolve-class stx metaclass)
                                             'instance-init!)))
                 (xform-wrap-source
                  ['%#let-values [[[$obj] inline-make-object]]
                                 ['%#begin
                                  (if metakons
                                    (xform-wrap-apply
                                     ['%#call ['%#ref metakons] ['%#ref self.id] ['%#ref $obj] args ...]
                                     stx ctx)
                                    ['%#call ['%#ref 'call-method] ['%#ref self.id] ['%#quote 'instance-init!] ['%#ref $obj] args ...])
                                  ['%#ref $obj]]]
                  stx))))
         (klass.struct?
          (if (fx= (length args) fields)
            (xform-wrap-source
             ['%#begin-annotation ['@type self.id]
                                  ['%#call ['%#ref '##structure]
                                           ['%#ref self.id]
                                           args ...]]
             stx)
            (raise-compile-error "illegal struct constructor application; arity mismatch"
                                 stx self.id klass.fields)))
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
                     (raise-compile-error "unknown slot" stx self.id slot))))
                (()
                 (xform-wrap-source
                  ['%#let-values [[[$obj] inline-make-object]]
                                 ['%#begin
                                  (foldl (lambda (i r)
                                           (cons ['%#struct-unchecked-set!
                                                  ['%#ref self.id]
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
                  stx)))))))))))

(defmethod {optimize-call !accessor}
  (lambda (self ctx stx args)
    (let (arguments-ok? {self.check-arguments ctx stx args})
      (ast-case args ()
        ((object)
         (let* ((klass (optimizer-resolve-class stx self.id))
                (field (!class-slot->field-offset klass self.slot))
                (object (compile-e ctx #'object)))
           (using (klass :- !class)
             (cond
              (klass.final?
               (xform-wrap-source
                [(if (or arguments-ok? (not self.checked?))
                   '%#struct-unchecked-ref
                   '%#struct-direct-ref)
                 ['%#ref self.id]
                 ['%#quote field]
                 object]
                stx))
              (klass.struct?
               (xform-wrap-source
                [(if (or arguments-ok? (not self.checked?))
                   '%#struct-unchecked-ref
                   '%#struct-ref)
                 ['%#ref self.id]
                 ['%#quote field]
                 object]
                stx))
              ((!class-slot-find-struct klass self.slot)
               => (lambda (klass)
                    (xform-wrap-source
                     [(if (or arguments-ok? (not self.checked?))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                      ['%#ref self.id]
                      ['%#quote field]
                      object]
                     stx)))
              (self.checked?
               (xform-wrap-source
                (let ($obj (make-symbol (gensym '__obj)))
                  ['%#let-values [[[$obj] object]]
                                 ['%#if ['%#struct-direct-instance?
                                         ['%#quote klass.id]
                                         ['%#ref $obj]]
                                        ['%#struct-unchecked-ref
                                         ['%#ref self.id]
                                         ['%#quote field]
                                         ['%#ref $obj]]
                                        (if arguments-ok?
                                          ['%#call ['%#ref 'unchecked-slot-ref]
                                                   ['%#ref $obj]
                                                   ['%#quote (!accessor-slot self)]]
                                          ['%#call
                                           ['%#ref 'class-slot-ref]
                                           ['%#ref self.id]
                                           ['%#ref $obj]
                                           ['%#quote self.slot]])]])
                stx))
              (else
               (xform-wrap-source
                ['%#call ['%#ref 'unchecked-slot-ref]
                         object
                         ['%#quote self.slot]]
                stx))))))))))

(defmethod {optimize-call !mutator}
  (lambda (self ctx stx args)
    (let (arguments-ok? {self.check-arguments ctx stx args})
      (ast-case args ()
        ((object value)
         (let* ((klass (optimizer-resolve-class stx self.id))
                (field (!class-slot->field-offset klass self.slot))
                (object (compile-e ctx #'object))
                (value (compile-e ctx #'value)))
           (using (klass :- !class)
             (cond
              (klass.final?
               (xform-wrap-source
                [(if (or arguments-ok? (not self.checked?))
                   '%#struct-unchecked-set!
                   '%#struct-direct-set!)
                 ['%#ref self.id]
                 ['%#quote field]
                 object
                 value]
                stx))
              (klass.struct?
               (xform-wrap-source
                [(if (or arguments-ok? (not self.checked?))
                   '%#struct-unchecked-set!
                   '%#struct-set!)
                 ['%#ref self.id]
                 ['%#quote field]
                 object
                 value]
                stx))
              ((!class-slot-find-struct klass self.slot)
               => (lambda (klass)
                    (xform-wrap-source
                     [(if (or arguments-ok? (not self.slot))
                        '%#struct-unchecked-set!
                        '%#struct-set!)
                      ['%#ref self.id]
                      ['%#quote field]
                      object
                      value]
                     stx)))
              (self.checked?
               (xform-wrap-source
                (let ($obj (make-symbol (gensym '__obj)))
                  ['%#let-values [[[$obj] object]]
                                 ['%#if ['%#struct-direct-instance?
                                         ['%#quote klass.id]
                                         ['%#ref $obj]]
                                        ['%#struct-unchecked-set!
                                         ['%#ref self.id]
                                         ['%#quote field]
                                         ['%#ref $obj]
                                         value]
                                        (if arguments-ok?
                                          ['%#call ['%#ref 'unchecked-slot-set!]
                                                   ['%#ref $obj]
                                                   ['%#quote self.slot]
                                                   value]
                                          ['%#call
                                           ['%#ref 'class-slot-set!]
                                           ['%#ref self.id]
                                           ['%#ref $obj]
                                           ['%#quote self.slot]
                                           value])]])
                stx))
              (else
               (xform-wrap-source
                ['%#call ['%#ref 'unchecked-slot-set!]
                         object
                         ['%#quote self.slot]
                         value]
                stx))))))))))

(defmethod {optimize-call !lambda}
  (lambda (self ctx stx args)
    (with ((!lambda _ _ arity dispatch inline) self)
      (unless (!lambda-arity-match? self args)
        (raise-compile-error "Illegal lambda application; arity mismatch"
                             stx arity))
      (cond
       (inline
        (verbose "inline lambda")
        (xform-wrap-apply
          (inline stx)
          stx ctx))
       ((and dispatch (symbol-in-local-scope? dispatch))
        (verbose "dispatch lambda => " dispatch)
        (xform-wrap-apply
         ['%#call ['%#ref dispatch] args ...]
         stx ctx))
       (else
        (!procedure::optimize-call self ctx stx args))))))

(defmethod {optimize-call !case-lambda}
  (lambda (self ctx stx args)
    (cond
     ((find (cut !lambda-arity-match? <> args) self.clauses)
      => (lambda (clause) {clause.optimize-call ctx stx args}))
     (else
      (raise-compile-error "Illegal case-lambda application; arity mismatch"
                           stx (map !lambda-arity self.clauses))))))

(defmethod {optimize-call !kw-lambda}
  (lambda (self ctx stx args)
    (with ((!kw-lambda _ _ table dispatch) self)
      (if (symbol-in-local-scope? dispatch)
        (match (optimizer-lookup-type dispatch)
          ((!kw-lambda-primary _ _ keys main)
           (let ((values pargs kwargs)
                 (!kw-lambda-split-args stx args))
             (verbose "dispatch kw-lambda => " main)
             (if table
               (let (xargs
                     (map (lambda (key)
                            (cond
                             ((assgetq key kwargs))
                             (else '(%#ref absent-value))))
                          keys))
                 (for-each
                   (lambda (kw)
                     (unless (memq (car kw) keys)
                       (raise-compile-error "Illegal keyword lambda application; unexpected keyword"
                                            stx keys kw)))
                   kwargs)
                 (xform-wrap-apply
                  ['%#call ['%#ref main] ['%#quote #f] xargs ... pargs ...]
                  stx ctx))
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
                               ((assgetq key xkwargs))
                               (else '(%#ref absent-value))))
                            keys)))
                 (xform-wrap-apply
                  ['%#let-values kwbind
                                 ['%#let-values [[[kwt]
                                                  (xform-wrap-source
                                                   ['%#call '(%#ref make-symbolic-table)
                                                            ['%#quote (length kwargs)]
                                                            '(%#quote (length kwvars))]
                                                   stx)]]
                                                ['%#begin
                                                 kwset ...
                                                 (xform-wrap-source
                                                  ['%#call ['%#ref main] ['%#ref kwt] xargs ... pargs ...]
                                                  stx)]]]
                  stx ctx)))))
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

(def (apply-check-return-type-begin-annotation% self stx)
  (ast-case stx (@type.signature)
    ((_ (@type.signature signature ...) body)
     (cond
      ((member return: #'(signature ...) stx-eq?)
       => (lambda (tail)
            (let (type (optimizer-resolve-class stx (identifier-symbol (cadr tail))))
              (check-return-type! stx #'body type)
              (compile-e self #'body))))
      (else
       (compile-e self #'body))))
    ((_ ann body)
     (compile-e self #'body))))

(def (check-return-type! stx expr type)
  (cond
   ;; nothing declared as return type
   ((not type))

   ((eq? (!type-id type) 't))           ; happy!

   (else
    (let (expr-type (apply-basic-expression-type expr))
      (cond
       ((not expr-type)
        ;; no type information, we can't verify declaration
        (raise-compile-error "cannot verify procedure return type; no type information" stx type))
       ((eq? 't (!type-id expr-type))
        ;; unspecific type, we can't verity declaration
        (raise-compile-error "cannot verify procedure return type; unspecific type" stx type expr-type))


       ((!abort? expr-type)) ; runtime error, type is axiomatically satisfied

       ((!type-subtype? expr-type type)) ; happy!

       (else
        ;; not happy; we can't verify type
        (raise-compile-error "procedure return type does not match signature" stx type expr-type)))))))

(def (optimize-if% self stx)
  (ast-case stx (%#call %#ref %#quote)
    ((_ (%#quote val) K E)
     (if (stx-e #'val)
       (compile-e self #'K)
       (compile-e self #'E)))
    ((_ (%#call (%#ref pred) (%#ref obj)) K E)
     (cond
      ((optimizer-lookup-type (identifier-symbol #'pred))
       => (lambda (pred-type)
            (if (or (!predicate? pred-type)
                    (!primitive-predicate? pred-type))
              (let* ((test
                      (xform-wrap-apply #'(%#call (%#ref pred) (%#ref obj))
                                        stx self))
                     (K
                      (delay
                        (parameterize ((current-compile-path-type
                                        (cons (cons (identifier-symbol #'obj)
                                                    (optimizer-resolve-class stx (!type-id pred-type)))
                                              (current-compile-path-type))))
                          (compile-e self #'K))))
                     (E (delay (compile-e self #'E))))
                (ast-case test (#%quote)
                  ((%#quote val)
                   (if (stx-e #'val)
                     (force K)
                     (force E)))
                  (_ (xform-wrap-source
                      ['%#if test (force K) (force E)]
                      stx))))
              (xform-operands self stx))))
      (else
       (xform-operands self stx))))
    ((_ (%#call (%#ref -not) expr) K E)
     (runtime-identifier=? #'-not 'not)
     (optimize-if%
      self
      (xform-wrap-source
       #'(%#if expr E K)
       stx)))
    ((_ test K E)
     (xform-operands self stx))))
