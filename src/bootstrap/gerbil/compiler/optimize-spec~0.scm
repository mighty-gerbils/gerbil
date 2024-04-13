(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1713000281)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp177373 (list gxc#::identity::t))
            (__tmp177372 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp177373
         '()
         __tmp177372
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args176170%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args176170%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp177374
             (lambda ()
               (force gxc#::identity-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#begin-syntax
                  gxc#xform-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#module
                  gxc#xform-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#define-values
                  gxc#generate-method-specializers-define-values%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-method-specializers::t)))))
        (declare (not safe))
        (__make-promise __tmp177374)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx176162%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self176165%_
                (let ((__obj177365
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj177365))
               (__tmp177375
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176165%_ _%stx176162%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp177375
           gxc#current-compile-method
           _%self176165%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp177377 (list gxc#::false::t))
            (__tmp177376 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp177377
         '()
         __tmp177376
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args176159%_
        (apply make-instance gxc#::extract-receiver::t _%$args176159%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp177378
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#begin
                  gxc#apply-last-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#begin-annotation
                  gxc#extract-receiver-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#let-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#letrec-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#letrec*-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#if
                  gxc#extract-receiver-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::extract-receiver::t)))))
        (declare (not safe))
        (__make-promise __tmp177378)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx176151%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self176154%_
                (let ((__obj177367
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj177367))
               (__tmp177379
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176154%_ _%stx176151%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp177379
           gxc#current-compile-method
           _%self176154%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp177381 (list gxc#::void::t))
            (__tmp177380 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp177381
         '(receiver methods slots)
         __tmp177380
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args176148%_
        (apply make-instance gxc#::collect-object-refs::t _%$args176148%_)))
    (define gxc#::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'slots)))
    (define gxc#::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'slots)))
    (define gxc#&::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#&::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#::collect-object-refs-bind-methods!
      (let ((__tmp177382
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#call
                  gxc#collect-object-refs-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-object-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp177382)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords176114%_
               _%receiver176109176115%_
               _%methods176110176117%_
               _%slots176111176119%_
               _%stx176121%_)
        (let* ((_%receiver176124%_
                (if (eq? _%receiver176109176115%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176109176115%_))
               (_%methods176126%_
                (if (eq? _%methods176110176117%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176110176117%_))
               (_%slots176128%_
                (if (eq? _%slots176111176119%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176111176119%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self176130%_
                  (let ((__obj177369
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-object-refs::t
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177369
                       _%receiver176124%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177369
                       _%methods176126%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177369
                       _%slots176128%_
                       '3
                       '#f
                       '#f))
                    __obj177369))
                 (__tmp177383
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176130%_ _%stx176121%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp177383
             gxc#current-compile-method
             _%self176130%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords176137%_ . _%args176138%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords176137%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176137%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176137%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176137%_
                  'slots:
                  absent-value))
               _%args176138%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args176112176144%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args176112176144%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp177385 (list gxc#::basic-xform-expression::t))
            (__tmp177384 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp177385
         '(receiver klass methods slots)
         __tmp177384
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args176105%_
        (apply make-instance gxc#::subst-object-refs::t _%$args176105%_)))
    (define gxc#::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'slots)))
    (define gxc#::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'slots)))
    (define gxc#&::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'klass)))
    (define gxc#&::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'slots)))
    (define gxc#&::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'klass)))
    (define gxc#&::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'slots)))
    (define gxc#::subst-object-refs-bind-methods!
      (let ((__tmp177386
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::subst-object-refs::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::subst-object-refs::t
                  '%#call
                  gxc#subst-object-refs-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::subst-object-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp177386)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords176067%_
               _%receiver176061176068%_
               _%klass176062176070%_
               _%methods176063176072%_
               _%slots176064176074%_
               _%stx176076%_)
        (let* ((_%receiver176079%_
                (if (eq? _%receiver176061176068%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176061176068%_))
               (_%klass176081%_
                (if (eq? _%klass176062176070%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass176062176070%_))
               (_%methods176083%_
                (if (eq? _%methods176063176072%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176063176072%_))
               (_%slots176085%_
                (if (eq? _%slots176064176074%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176064176074%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self176087%_
                  (let ((__obj177371
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::subst-object-refs::t
                            '#f
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177371
                       _%receiver176079%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177371
                       _%klass176081%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177371
                       _%methods176083%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177371
                       _%slots176085%_
                       '4
                       '#f
                       '#f))
                    __obj177371))
                 (__tmp177387
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176087%_ _%stx176076%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp177387
             gxc#current-compile-method
             _%self176087%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords176094%_ . _%args176095%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords176094%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176094%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176094%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176094%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176094%_
                  'slots:
                  absent-value))
               _%args176095%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args176065176101%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args176065176101%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self173176%_ _%stx173177%_)
        (letrec ((_%generate-method-bind173179%_
                  (lambda (_%$klass176053%_
                           _%$method-table176054%_
                           _%id176055%_
                           _%$id176056%_)
                    (let ((_%$tmp176058%_
                           (let ((__tmp177388
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp177388))))
                      (cons (cons _%$id176056%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp176058%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table176054%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id176055%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp176058%_ '()))
                    (cons (cons '%#ref (cons _%$tmp176058%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id176055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-slot-bind173180%_
                  (lambda (_%$klass176047%_ _%id176048%_ _%$id176049%_)
                    (let ((_%$tmp176051%_
                           (let ((__tmp177389
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp177389))))
                      (cons (cons _%$id176049%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp176051%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass176047%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id176048%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp176051%_ '()))
                        (cons (cons '%#ref (cons _%$tmp176051%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id176048%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl173181%_
                  (lambda (_%$klass176041%_
                           _%$method-table176042%_
                           _%methods-bind176043%_
                           _%slots-bind176044%_
                           _%specializer-impl176045%_)
                    (let ((__tmp177390
                           (cons '%#lambda
                                 (cons (cons _%$klass176041%_
                                             (cons _%$method-table176042%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind176044%_
                                                            _%methods-bind176043%_))
                                                         (cons _%specializer-impl176045%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp177390 _%stx173177%_))))
                 (_%generate-specializer-def173182%_
                  (lambda (_%id176037%_
                           _%specializer-id176038%_
                           _%specializer-impl176039%_)
                    (let ((__tmp177391
                           (cons '%#begin
                                 (cons _%stx173177%_
                                       (cons (let ((__tmp177392
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id176038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl176039%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177392
                                                _%stx173177%_))
                                             (cons (let ((__tmp177393
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id176037%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id176038%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177393
                                                      _%stx173177%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp177391 _%stx173177%_)))))
          (let* ((_%__stx176259176260%_ _%stx173177%_)
                 (_%g173185173205%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx176259176260%_)))))
            (let ((_%__kont176261176262%_
                   (lambda (_%L173249%_ _%L173250%_)
                     (let ((_%method-calls173269%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs173270%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty173271%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?173273%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls173269%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs173270%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L173249%_))
                             (let* ((_%__stx176173176174%_ _%L173249%_)
                                    (_%g173661173679%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx176173176174%_)))))
                               (let ((_%__kont176175176176%_
                                      (lambda (_%L173715%_
                                               _%L173716%_
                                               _%L173717%_)
                                        (let ((_%receiver173737%_
                                               (let ((_%$e173734%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L173715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e173734%_
                                                     _%$e173734%_
                                                     _%L173717%_))))
                                          (for-each
                                           (lambda (_%g173738173740%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver173737%_
                                              _%method-calls173269%_
                                              _%slot-refs173270%_
                                              _%g173738173740%_))
                                           _%L173715%_)
                                          (if (_%no-specializer?173273%_)
                                              _%stx173177%_
                                              (let* ((_%specializer-id173749%_
                                                      (let* ((_%id173743%_
                                                              (let ((__tmp177394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L173250%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp177394 '"::specialize")))
                     (_%specializer-id173746%_
                      (let ((__tmp177395
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx173177%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id173743%_ __tmp177395))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id173746%_))
                _%specializer-id173746%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass173751%_
                                                      (let ((__tmp177396
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp177396)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table173753%_
                                                      (let ((__tmp177397
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp177397)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods173755%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls173269%_)))
                                                     (_%$methods173759%_
                                                      (map (lambda (_%id173757%_)
                                                             (let ((__tmp177398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173757%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp177398)))
                   _%methods173755%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173768%_
                                                      (for-each
                                                       (lambda (_%g173760173763%_
                                                                _%g173761173765%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls173269%_
                                                            _%g173760173763%_
                                                            _%g173761173765%_)))
                                                       _%methods173755%_
                                                       _%$methods173759%_))
                                                     (_%methods-bind173778%_
                                                      (map (lambda (_%g173770173773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173771173775%_)
                     (_%generate-method-bind173179%_
                      _%$klass173751%_
                      _%$method-table173753%_
                      _%g173770173773%_
                      _%g173771173775%_))
                   _%methods173755%_
                   _%$methods173759%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots173780%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs173270%_)))
                                                     (_%$slots173784%_
                                                      (map (lambda (_%id173782%_)
                                                             (let ((__tmp177399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173782%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp177399)))
                   _%slots173780%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173793%_
                                                      (for-each
                                                       (lambda (_%g173785173788%_
                                                                _%g173786173790%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs173270%_
                                                            _%g173785173788%_
                                                            _%g173786173790%_)))
                                                       _%slots173780%_
                                                       _%$slots173784%_))
                                                     (_%slots-bind173802%_
                                                      (map (lambda (_%g173794173797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173795173799%_)
                     (_%generate-slot-bind173180%_
                      _%$klass173751%_
                      _%g173794173797%_
                      _%g173795173799%_))
                   _%slots173780%_
                   _%$slots173784%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body173808%_
                                                      (map (lambda (_%g173803173805%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver173737%_
                                                              _%$klass173751%_
                                                              _%method-calls173269%_
                                                              _%slot-refs173270%_
                                                              _%g173803173805%_))
                                                           _%L173715%_))
                                                     (_%specializer-impl173810%_
                                                      (let ((__tmp177400
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L173717%_ _%L173716%_)
                                 _%specializer-body173808%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp177400 _%stx173177%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173812%_
                                                      (_%generate-specializer-impl173181%_
                                                       _%$klass173751%_
                                                       _%$method-table173753%_
                                                       _%methods-bind173778%_
                                                       _%slots-bind173802%_
                                                       _%specializer-impl173810%_)))
                                                (let ((__tmp177402
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173250%_)))
                                                      (__tmp177401
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id173749%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp177402
                                                   '" => "
                                                   __tmp177401))
                                                (_%generate-specializer-def173182%_
                                                 _%L173250%_
                                                 _%specializer-id173749%_
                                                 _%specializer-impl173812%_))))))
                                     (_%__kont176177176178%_
                                      (lambda () _%stx173177%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx176173176174%_))
                                     (let ((_%e173666173691%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx176173176174%_))))
                                       (let ((_%tl173668173696%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e173666173691%_)))
                                             (_%hd173667173694%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e173666173691%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl173668173696%_))
                                             (let ((_%e173669173699%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl173668173696%_))))
                                               (let ((_%tl173671173704%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e173669173699%_)))
                                                     (_%hd173670173702%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e173669173699%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd173670173702%_))
                                                     (let ((_%e173672173707%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd173670173702%_))))
                                                       (let ((_%tl173674173712%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e173672173707%_)))
                     (_%hd173673173710%_
                      (let () (declare (not safe)) (##car _%e173672173707%_))))
                 (_%__kont176175176176%_
                  _%tl173671173704%_
                  _%tl173674173712%_
                  _%hd173673173710%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont176177176178%_))))
                                             (_%__kont176177176178%_))))
                                     (_%__kont176177176178%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L173249%_))
                                 (let* ((_%g173819173838%_
                                         (lambda (_%g173820173835%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g173820173835%_))))
                                        (_%g173818174136%_
                                         (lambda (_%g173820173841%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g173820173841%_))
                                               (let ((_%e173822173843%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g173820173841%_))))
                                                 (let ((_%hd173823173846%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173822173843%_)))
                                                       (_%tl173824173848%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173822173843%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl173824173848%_))
                                                       (let ((_g177403_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl173824173848%_ '0))))
                 (begin
                   (let ((_g177404_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g177403_)
                                (##vector-length _g177403_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g177404_ 2)))
                         (error "Context expects 2 values" _g177404_)))
                   (let ((_%target173825173851%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g177403_ 0)))
                         (_%tl173827173853%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g177403_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl173827173853%_))
                         (letrec ((_%loop173828173856%_
                                   (lambda (_%hd173826173859%_
                                            _%clause173832173861%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd173826173859%_))
                                         (let ((_%e173829173864%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd173826173859%_))))
                                           (let ((_%lp-hd173830173867%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173829173864%_)))
                                                 (_%lp-tl173831173869%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173829173864%_))))
                                             (_%loop173828173856%_
                                              _%lp-tl173831173869%_
                                              (cons _%lp-hd173830173867%_
                                                    _%clause173832173861%_))))
                                         (let ((_%clause173833173872%_
                                                (reverse _%clause173832173861%_)))
                                           ((lambda (_%L173875%_)
                                              (for-each
                                               (lambda (_%clause173889%_)
                                                 (let* ((_%__stx176199176200%_
                                                         _%clause173889%_)
                                                        (_%g173892173907%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx176199176200%_)))))
                                                   (let ((_%__kont176201176202%_
                                                          (lambda (_%L173935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L173936%_
                           _%L173937%_)
                    (let ((_%receiver173956%_
                           (let ((_%$e173953%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L173935%_))))
                             (if _%$e173953%_ _%$e173953%_ _%L173937%_))))
                      (for-each
                       (lambda (_%g173957173959%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver173956%_
                          _%method-calls173269%_
                          _%slot-refs173270%_
                          _%g173957173959%_))
                       _%L173935%_))))
                 (_%__kont176203176204%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx176199176200%_))
                                                         (let ((_%e173897173919%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx176199176200%_))))
                   (let ((_%tl173899173924%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e173897173919%_)))
                         (_%hd173898173922%_
                          (let ()
                            (declare (not safe))
                            (##car _%e173897173919%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd173898173922%_))
                         (let ((_%e173900173927%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd173898173922%_))))
                           (let ((_%tl173902173932%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e173900173927%_)))
                                 (_%hd173901173930%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e173900173927%_))))
                             (_%__kont176201176202%_
                              _%tl173899173924%_
                              _%tl173902173932%_
                              _%hd173901173930%_)))
                         (_%__kont176203176204%_))))
                 (_%__kont176203176204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp177405
                                                      (lambda (_%g173964173967%_
                                                               _%g173965173969%_)
                                                        (cons _%g173964173967%_
                                                              _%g173965173969%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp177405
                                                  '()
                                                  _%L173875%_)))
                                              (if (_%no-specializer?173273%_)
                                                  _%stx173177%_
                                                  (let* ((_%specializer-id173978%_
                                                          (let* ((_%id173972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp177406
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L173250%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp177406 '"::specialize")))
                         (_%specializer-id173975%_
                          (let ((__tmp177407
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx173177%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id173972%_
                             __tmp177407))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id173975%_))
                    _%specializer-id173975%_))
                 (_%$klass173980%_
                  (let ((__tmp177408
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp177408)))
                 (_%$method-table173982%_
                  (let ((__tmp177409
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp177409)))
                 (_%methods173984%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls173269%_)))
                 (_%$methods173988%_
                  (map (lambda (_%id173986%_)
                         (let ((__tmp177410 (gensym _%id173986%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp177410)))
                       _%methods173984%_))
                 (_%_173997%_
                  (for-each
                   (lambda (_%g173989173992%_ _%g173990173994%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls173269%_
                        _%g173989173992%_
                        _%g173990173994%_)))
                   _%methods173984%_
                   _%$methods173988%_))
                 (_%methods-bind174007%_
                  (map (lambda (_%g173999174002%_ _%g174000174004%_)
                         (_%generate-method-bind173179%_
                          _%$klass173980%_
                          _%$method-table173982%_
                          _%g173999174002%_
                          _%g174000174004%_))
                       _%methods173984%_
                       _%$methods173988%_))
                 (_%slots174009%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs173270%_)))
                 (_%$slots174013%_
                  (map (lambda (_%id174011%_)
                         (let ((__tmp177411 (gensym _%id174011%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp177411)))
                       _%slots174009%_))
                 (_%_174022%_
                  (for-each
                   (lambda (_%g174014174017%_ _%g174015174019%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs173270%_
                        _%g174014174017%_
                        _%g174015174019%_)))
                   _%slots174009%_
                   _%$slots174013%_))
                 (_%slots-bind174031%_
                  (map (lambda (_%g174023174026%_ _%g174024174028%_)
                         (_%generate-slot-bind173180%_
                          _%$klass173980%_
                          _%g174023174026%_
                          _%g174024174028%_))
                       _%slots174009%_
                       _%$slots174013%_))
                 (_%specializer-clauses174129%_
                  (map (lambda (_%clause174033%_)
                         (let* ((_%__stx176219176220%_ _%clause174033%_)
                                (_%g174036174051%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx176219176220%_)))))
                           (let ((_%__kont176221176222%_
                                  (lambda (_%L174079%_ _%L174080%_ _%L174081%_)
                                    (let* ((_%receiver174110%_
                                            (let ((_%$e174107%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L174079%_))))
                                              (if _%$e174107%_
                                                  _%$e174107%_
                                                  _%L174081%_)))
                                           (_%body174116%_
                                            (map (lambda (_%g174111174113%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver174110%_
                                                    _%$klass173980%_
                                                    _%method-calls173269%_
                                                    _%slot-refs173270%_
                                                    _%g174111174113%_))
                                                 _%L174079%_)))
                                      (cons (cons _%L174081%_ _%L174080%_)
                                            _%body174116%_))))
                                 (_%__kont176223176224%_
                                  (lambda () _%clause174033%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx176219176220%_))
                                 (let ((_%e174041174063%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx176219176220%_))))
                                   (let ((_%tl174043174068%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e174041174063%_)))
                                         (_%hd174042174066%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e174041174063%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd174042174066%_))
                                         (let ((_%e174044174071%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd174042174066%_))))
                                           (let ((_%tl174046174076%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e174044174071%_)))
                                                 (_%hd174045174074%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e174044174071%_))))
                                             (_%__kont176221176222%_
                                              _%tl174043174068%_
                                              _%tl174046174076%_
                                              _%hd174045174074%_)))
                                         (_%__kont176223176224%_))))
                                 (_%__kont176223176224%_)))))
                       (let ((__tmp177412
                              (lambda (_%g174121174124%_ _%g174122174126%_)
                                (cons _%g174121174124%_ _%g174122174126%_))))
                         (declare (not safe))
                         (__foldr1 __tmp177412 '() _%L173875%_))))
                 (_%specializer-impl174131%_
                  (let ((__tmp177413
                         (cons '%#case-lambda _%specializer-clauses174129%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp177413 _%stx173177%_)))
                 (_%specializer-impl174133%_
                  (_%generate-specializer-impl173181%_
                   _%$klass173980%_
                   _%$method-table173982%_
                   _%methods-bind174007%_
                   _%slots-bind174031%_
                   _%specializer-impl174131%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp177415
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L173250%_)))
                                                          (__tmp177414
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id173978%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp177415
                                                       '" => "
                                                       __tmp177414))
                                                    (_%generate-specializer-def173182%_
                                                     _%L173250%_
                                                     _%specializer-id173978%_
                                                     _%specializer-impl174133%_))))
                                            _%clause173833173872%_))))))
                           (_%loop173828173856%_ _%target173825173851%_ '()))
                         (_%g173819173838%_ _%g173820173841%_)))))
               (_%g173819173838%_ _%g173820173841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173819173838%_
                                                _%g173820173841%_)))))
                                   (_%g173818174136%_ _%L173249%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L173249%_))
                                     (let* ((_%g174140174170%_
                                             (lambda (_%g174141174167%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g174141174167%_))))
                                            (_%g174139174801%_
                                             (lambda (_%g174141174173%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g174141174173%_))
                                                   (let ((_%e174145174175%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g174141174173%_))))
                                                     (let ((_%hd174146174178%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174145174175%_)))
                                                           (_%tl174147174180%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174145174175%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174147174180%_))
                                                           (let ((_%e174148174183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174147174180%_))))
                     (let ((_%hd174149174186%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174148174183%_)))
                           (_%tl174150174188%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174148174183%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd174149174186%_))
                           (let ((_%e174151174191%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd174149174186%_))))
                             (let ((_%hd174152174194%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e174151174191%_)))
                                   (_%tl174153174196%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e174151174191%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd174152174194%_))
                                   (let ((_%e174154174199%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd174152174194%_))))
                                     (let ((_%hd174155174202%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174154174199%_)))
                                           (_%tl174156174204%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174154174199%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd174155174202%_))
                                           (let ((_%e174157174207%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd174155174202%_))))
                                             (let ((_%hd174158174210%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e174157174207%_)))
                                                   (_%tl174159174212%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e174157174207%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl174159174212%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl174156174204%_))
                                                       (let ((_%e174160174215%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl174156174204%_))))
                 (let ((_%hd174161174218%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174160174215%_)))
                       (_%tl174162174220%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174160174215%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl174162174220%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174153174196%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl174150174188%_))
                               (let ((_%e174163174223%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl174150174188%_))))
                                 (let ((_%hd174164174226%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174163174223%_)))
                                       (_%tl174165174228%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174163174223%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl174165174228%_))
                                       ((lambda (_%L174231%_
                                                 _%L174232%_
                                                 _%L174233%_)
                                          (let* ((_%g174257174275%_
                                                  (lambda (_%g174258174272%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g174258174272%_))))
                                                 (_%g174256174331%_
                                                  (lambda (_%g174258174278%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g174258174278%_))
                                                        (let ((_%e174262174280%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g174258174278%_))))
                  (let ((_%hd174263174283%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174262174280%_)))
                        (_%tl174264174285%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174262174280%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl174264174285%_))
                        (let ((_%e174265174288%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl174264174285%_))))
                          (let ((_%hd174266174291%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e174265174288%_)))
                                (_%tl174267174293%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e174265174288%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd174266174291%_))
                                (let ((_%e174268174296%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd174266174291%_))))
                                  (let ((_%hd174269174299%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174268174296%_)))
                                        (_%tl174270174301%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174268174296%_))))
                                    ((lambda (_%L174304%_
                                              _%L174305%_
                                              _%L174306%_)
                                       (let ((_%receiver174325%_
                                              (let ((_%$e174322%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L174304%_))))
                                                (if _%$e174322%_
                                                    _%$e174322%_
                                                    _%L174306%_))))
                                         (for-each
                                          (lambda (_%g174326174328%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver174325%_
                                             _%method-calls173269%_
                                             _%slot-refs173270%_
                                             _%g174326174328%_))
                                          _%L174304%_)))
                                     _%tl174267174293%_
                                     _%tl174270174301%_
                                     _%hd174269174299%_)))
                                (_%g174257174275%_ _%g174258174278%_))))
                        (_%g174257174275%_ _%g174258174278%_))))
                (_%g174257174275%_ _%g174258174278%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g174256174331%_ _%L174232%_))
                                          (let* ((_%g174334174353%_
                                                  (lambda (_%g174335174350%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g174335174350%_))))
                                                 (_%g174333174477%_
                                                  (lambda (_%g174335174356%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g174335174356%_))
                                                        (let ((_%e174337174358%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g174335174356%_))))
                  (let ((_%hd174338174361%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174337174358%_)))
                        (_%tl174339174363%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174337174358%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl174339174363%_))
                        (let ((_g177416_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl174339174363%_
                                  '0))))
                          (begin
                            (let ((_g177417_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g177416_)
                                         (##vector-length _g177416_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g177417_ 2)))
                                  (error "Context expects 2 values"
                                         _g177417_)))
                            (let ((_%target174340174366%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g177416_ 0)))
                                  (_%tl174342174368%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g177416_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl174342174368%_))
                                  (letrec ((_%loop174343174371%_
                                            (lambda (_%hd174341174374%_
                                                     _%clause174347174376%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd174341174374%_))
                                                  (let ((_%e174344174379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd174341174374%_))))
                                                    (let ((_%lp-hd174345174382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e174344174379%_)))
                                                          (_%lp-tl174346174384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e174344174379%_))))
                                                      (_%loop174343174371%_
                                                       _%lp-tl174346174384%_
                                                       (cons _%lp-hd174345174382%_
                                                             _%clause174347174376%_))))
                                                  (let ((_%clause174348174387%_
                                                         (reverse _%clause174347174376%_)))
                                                    ((lambda (_%L174390%_)
                                                       (for-each
                                                        (lambda (_%clause174403%_)
                                                          (let* ((_%g174405174420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g174406174417%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174406174417%_))))
                         (_%g174404174467%_
                          (lambda (_%g174406174423%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174406174423%_))
                                (let ((_%e174410174425%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174406174423%_))))
                                  (let ((_%hd174411174428%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174410174425%_)))
                                        (_%tl174412174430%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174410174425%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd174411174428%_))
                                        (let ((_%e174413174433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd174411174428%_))))
                                          (let ((_%hd174414174436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174413174433%_)))
                                                (_%tl174415174438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174413174433%_))))
                                            ((lambda (_%L174441%_
                                                      _%L174442%_
                                                      _%L174443%_)
                                               (let ((_%receiver174461%_
                                                      (let ((_%$e174458%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L174441%_))))
                (if _%$e174458%_ _%$e174458%_ _%L174443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g174462174464%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver174461%_
                                                     _%method-calls173269%_
                                                     _%slot-refs173270%_
                                                     _%g174462174464%_))
                                                  _%L174441%_)))
                                             _%tl174412174430%_
                                             _%tl174415174438%_
                                             _%hd174414174436%_)))
                                        (_%g174405174420%_
                                         _%g174406174423%_))))
                                (_%g174405174420%_ _%g174406174423%_)))))
                    (_%g174404174467%_ _%clause174403%_)))
                (let ((__tmp177418
                       (lambda (_%g174469174472%_ _%g174470174474%_)
                         (cons _%g174469174472%_ _%g174470174474%_))))
                  (declare (not safe))
                  (__foldr1 __tmp177418 '() _%L174390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause174348174387%_))))))
                                    (_%loop174343174371%_
                                     _%target174340174366%_
                                     '()))
                                  (_%g174334174353%_ _%g174335174356%_)))))
                        (_%g174334174353%_ _%g174335174356%_))))
                (_%g174334174353%_ _%g174335174356%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g174333174477%_ _%L174231%_))
                                          (if (_%no-specializer?173273%_)
                                              _%stx173177%_
                                              (let* ((_%specializer-id174486%_
                                                      (let* ((_%id174480%_
                                                              (let ((__tmp177419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L173250%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp177419 '"::specialize")))
                     (_%specializer-id174483%_
                      (let ((__tmp177420
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx173177%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id174480%_ __tmp177420))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id174483%_))
                _%specializer-id174483%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass174488%_
                                                      (let ((__tmp177421
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp177421)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table174490%_
                                                      (let ((__tmp177422
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp177422)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods174492%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls173269%_)))
                                                     (_%$methods174496%_
                                                      (map (lambda (_%id174494%_)
                                                             (let ((__tmp177423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174494%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp177423)))
                   _%methods174492%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174505%_
                                                      (for-each
                                                       (lambda (_%g174497174500%_
                                                                _%g174498174502%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls173269%_
                                                            _%g174497174500%_
                                                            _%g174498174502%_)))
                                                       _%methods174492%_
                                                       _%$methods174496%_))
                                                     (_%methods-bind174515%_
                                                      (map (lambda (_%g174507174510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174508174512%_)
                     (_%generate-method-bind173179%_
                      _%$klass174488%_
                      _%$method-table174490%_
                      _%g174507174510%_
                      _%g174508174512%_))
                   _%methods174492%_
                   _%$methods174496%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots174517%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs173270%_)))
                                                     (_%$slots174521%_
                                                      (map (lambda (_%id174519%_)
                                                             (let ((__tmp177424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174519%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp177424)))
                   _%slots174517%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174530%_
                                                      (for-each
                                                       (lambda (_%g174522174525%_
                                                                _%g174523174527%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs173270%_
                                                            _%g174522174525%_
                                                            _%g174523174527%_)))
                                                       _%slots174517%_
                                                       _%$slots174521%_))
                                                     (_%slots-bind174539%_
                                                      (map (lambda (_%g174531174534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174532174536%_)
                     (_%generate-slot-bind173180%_
                      _%$klass174488%_
                      _%g174531174534%_
                      _%g174532174536%_))
                   _%slots174517%_
                   _%$slots174521%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr174631%_
                                                      (let* ((_%g174541174559%_
                                                              (lambda (_%g174542174556%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g174542174556%_))))
                     (_%g174540174628%_
                      (lambda (_%g174542174562%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g174542174562%_))
                            (let ((_%e174546174564%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g174542174562%_))))
                              (let ((_%hd174547174567%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174546174564%_)))
                                    (_%tl174548174569%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174546174564%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174548174569%_))
                                    (let ((_%e174549174572%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174548174569%_))))
                                      (let ((_%hd174550174575%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174549174572%_)))
                                            (_%tl174551174577%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174549174572%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd174550174575%_))
                                            (let ((_%e174552174580%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd174550174575%_))))
                                              (let ((_%hd174553174583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174552174580%_)))
                                                    (_%tl174554174585%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174552174580%_))))
                                                ((lambda (_%L174588%_
                                                          _%L174589%_
                                                          _%L174590%_)
                                                   (let* ((_%receiver174619%_
                                                           (let ((_%$e174616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L174588%_))))
                     (if _%$e174616%_ _%$e174616%_ _%L174590%_)))
                  (_%body174625%_
                   (map (lambda (_%g174620174622%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver174619%_
                           _%$klass174488%_
                           _%method-calls173269%_
                           _%slot-refs173270%_
                           _%g174620174622%_))
                        _%L174588%_))
                  (__tmp177425
                   (cons '%#lambda
                         (cons (cons _%L174590%_ _%L174589%_)
                               _%body174625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177425
                                                      _%L174232%_)))
                                                 _%tl174551174577%_
                                                 _%tl174554174585%_
                                                 _%hd174553174583%_)))
                                            (_%g174541174559%_
                                             _%g174542174562%_))))
                                    (_%g174541174559%_ _%g174542174562%_))))
                            (_%g174541174559%_ _%g174542174562%_)))))
                (_%g174540174628%_ _%L174232%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr174794%_
                                                      (let* ((_%g174633174652%_
                                                              (lambda (_%g174634174649%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g174634174649%_))))
                     (_%g174632174791%_
                      (lambda (_%g174634174655%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g174634174655%_))
                            (let ((_%e174636174657%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g174634174655%_))))
                              (let ((_%hd174637174660%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174636174657%_)))
                                    (_%tl174638174662%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174636174657%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl174638174662%_))
                                    (let ((_g177426_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl174638174662%_
                                              '0))))
                                      (begin
                                        (let ((_g177427_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g177426_)
                                                     (##vector-length
                                                      _g177426_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g177427_ 2)))
                                              (error "Context expects 2 values"
                                                     _g177427_)))
                                        (let ((_%target174639174665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g177426_ 0)))
                                              (_%tl174641174667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g177426_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl174641174667%_))
                                              (letrec ((_%loop174642174670%_
                                                        (lambda (_%hd174640174673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause174646174675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd174640174673%_))
                      (let ((_%e174643174678%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd174640174673%_))))
                        (let ((_%lp-hd174644174681%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174643174678%_)))
                              (_%lp-tl174645174683%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174643174678%_))))
                          (_%loop174642174670%_
                           _%lp-tl174645174683%_
                           (cons _%lp-hd174644174681%_
                                 _%clause174646174675%_))))
                      (let ((_%clause174647174686%_
                             (reverse _%clause174646174675%_)))
                        ((lambda (_%L174689%_)
                           (let* ((_%clauses174789%_
                                   (map (lambda (_%clause174703%_)
                                          (let* ((_%__stx176239176240%_
                                                  _%clause174703%_)
                                                 (_%g174706174721%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx176239176240%_)))))
                                            (let ((_%__kont176241176242%_
                                                   (lambda (_%L174749%_
                                                            _%L174750%_
                                                            _%L174751%_)
                                                     (let* ((_%receiver174770%_
                                                             (let ((_%$e174767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L174749%_))))
                       (if _%$e174767%_ _%$e174767%_ _%L174751%_)))
                    (_%body174776%_
                     (map (lambda (_%g174771174773%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver174770%_
                             _%$klass174488%_
                             _%method-calls173269%_
                             _%slot-refs173270%_
                             _%g174771174773%_))
                          _%L174749%_)))
               (cons (cons _%L174751%_ _%L174750%_) _%body174776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176243176244%_
                                                   (lambda ()
                                                     _%clause174703%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx176239176240%_))
                                                  (let ((_%e174711174733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx176239176240%_))))
                                                    (let ((_%tl174713174738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e174711174733%_)))
                                                          (_%hd174712174736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e174711174733%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd174712174736%_))
                                                          (let ((_%e174714174741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd174712174736%_))))
                    (let ((_%tl174716174746%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e174714174741%_)))
                          (_%hd174715174744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e174714174741%_))))
                      (_%__kont176241176242%_
                       _%tl174713174738%_
                       _%tl174716174746%_
                       _%hd174715174744%_)))
                  (_%__kont176243176244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176243176244%_)))))
                                        (let ((__tmp177428
                                               (lambda (_%g174781174784%_
                                                        _%g174782174786%_)
                                                 (cons _%g174781174784%_
                                                       _%g174782174786%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp177428
                                           '()
                                           _%L174689%_))))
                                  (__tmp177429
                                   (cons '%#case-lambda _%clauses174789%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp177429 _%L174231%_)))
                         _%clause174647174686%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop174642174670%_
                                                 _%target174639174665%_
                                                 '()))
                                              (_%g174633174652%_
                                               _%g174634174655%_)))))
                                    (_%g174633174652%_ _%g174634174655%_))))
                            (_%g174633174652%_ _%g174634174655%_)))))
                (_%g174632174791%_ _%L174231%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl174796%_
                                                      (let ((__tmp177430
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L174233%_ '())
                                             (cons _%specializer-lambda-expr174631%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr174794%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp177430 _%stx173177%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl174798%_
                                                      (_%generate-specializer-impl173181%_
                                                       _%$klass174488%_
                                                       _%$method-table174490%_
                                                       _%methods-bind174515%_
                                                       _%slots-bind174539%_
                                                       _%specializer-impl174796%_)))
                                                (let ((__tmp177432
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173250%_)))
                                                      (__tmp177431
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id174486%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp177432
                                                   '" => "
                                                   __tmp177431))
                                                (_%generate-specializer-def173182%_
                                                 _%L173250%_
                                                 _%specializer-id174486%_
                                                 _%specializer-impl174798%_))))
                                        _%hd174164174226%_
                                        _%hd174161174218%_
                                        _%hd174158174210%_)
                                       (_%g174140174170%_ _%g174141174173%_))))
                               (_%g174140174170%_ _%g174141174173%_))
                           (_%g174140174170%_ _%g174141174173%_))
                       (_%g174140174170%_ _%g174141174173%_))))
               (_%g174140174170%_ _%g174141174173%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174140174170%_
                                                    _%g174141174173%_))))
                                           (_%g174140174170%_
                                            _%g174141174173%_))))
                                   (_%g174140174170%_ _%g174141174173%_))))
                           (_%g174140174170%_ _%g174141174173%_))))
                   (_%g174140174170%_ _%g174141174173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174140174170%_
                                                    _%g174141174173%_)))))
                                       (_%g174139174801%_ _%L173249%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L173249%_))
                                         (let* ((_%g174805174858%_
                                                 (lambda (_%g174806174855%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g174806174855%_))))
                                                (_%g174804176029%_
                                                 (lambda (_%g174806174861%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g174806174861%_))
                                                       (let ((_%e174812174863%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g174806174861%_))))
                 (let ((_%hd174813174866%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174812174863%_)))
                       (_%tl174814174868%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174812174863%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd174813174866%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd174813174866%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl174814174868%_))
                               (let ((_%e174815174871%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl174814174868%_))))
                                 (let ((_%hd174816174874%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174815174871%_)))
                                       (_%tl174817174876%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174815174871%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd174816174874%_))
                                       (let ((_%e174818174879%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd174816174874%_))))
                                         (let ((_%hd174819174882%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e174818174879%_)))
                                               (_%tl174820174884%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e174818174879%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd174819174882%_))
                                               (let ((_%e174821174887%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd174819174882%_))))
                                                 (let ((_%hd174822174890%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174821174887%_)))
                                                       (_%tl174823174892%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174821174887%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd174822174890%_))
                                                       (let ((_%e174824174895%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd174822174890%_))))
                 (let ((_%hd174825174898%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174824174895%_)))
                       (_%tl174826174900%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174824174895%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl174826174900%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl174823174892%_))
                           (let ((_%e174827174903%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl174823174892%_))))
                             (let ((_%hd174828174906%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e174827174903%_)))
                                   (_%tl174829174908%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e174827174903%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd174828174906%_))
                                   (let ((_%e174830174911%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd174828174906%_))))
                                     (let ((_%hd174831174914%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174830174911%_)))
                                           (_%tl174832174916%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174830174911%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd174831174914%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd174831174914%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl174832174916%_))
                                                   (let ((_%e174833174919%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl174832174916%_))))
                                                     (let ((_%hd174834174922%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174833174919%_)))
                                                           (_%tl174835174924%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174833174919%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd174834174922%_))
                                                           (let ((_%e174836174927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd174834174922%_))))
                     (let ((_%hd174837174930%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174836174927%_)))
                           (_%tl174838174932%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174836174927%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd174837174930%_))
                           (let ((_%e174839174935%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd174837174930%_))))
                             (let ((_%hd174840174938%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e174839174935%_)))
                                   (_%tl174841174940%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e174839174935%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd174840174938%_))
                                   (let ((_%e174842174943%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd174840174938%_))))
                                     (let ((_%hd174843174946%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174842174943%_)))
                                           (_%tl174844174948%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174842174943%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl174844174948%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl174841174940%_))
                                               (let ((_%e174845174951%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl174841174940%_))))
                                                 (let ((_%hd174846174954%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174845174951%_)))
                                                       (_%tl174847174956%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174845174951%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl174847174956%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl174838174932%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl174835174924%_))
                       (let ((_%e174848174959%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl174835174924%_))))
                         (let ((_%hd174849174962%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e174848174959%_)))
                               (_%tl174850174964%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e174848174959%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl174850174964%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl174829174908%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl174820174884%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl174817174876%_))
                                           (let ((_%e174851174967%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl174817174876%_))))
                                             (let ((_%hd174852174970%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e174851174967%_)))
                                                   (_%tl174853174972%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e174851174967%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl174853174972%_))
                                                   ((lambda (_%L174975%_
                                                             _%L174976%_
                                                             _%L174977%_
                                                             _%L174978%_
                                                             _%L174979%_)
                                                      (let* ((_%g175019175081%_
                                                              (lambda (_%g175020175078%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175020175078%_))))
                     (_%g175018176026%_
                      (lambda (_%g175020175084%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175020175084%_))
                            (let ((_%e175026175086%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175020175084%_))))
                              (let ((_%hd175027175089%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175026175086%_)))
                                    (_%tl175028175091%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175026175086%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd175027175089%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd175027175089%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl175028175091%_))
                                            (let ((_%e175029175094%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl175028175091%_))))
                                              (let ((_%hd175030175097%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175029175094%_)))
                                                    (_%tl175031175099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175029175094%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175031175099%_))
                                                    (let ((_%e175032175102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175031175099%_))))
                                                      (let ((_%hd175033175105%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175032175102%_)))
                    (_%tl175034175107%_
                     (let () (declare (not safe)) (##cdr _%e175032175102%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd175033175105%_))
                    (let ((_%e175035175110%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd175033175105%_))))
                      (let ((_%hd175036175113%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175035175110%_)))
                            (_%tl175037175115%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175035175110%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd175036175113%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd175036175113%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl175037175115%_))
                                    (let ((_%e175038175118%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl175037175115%_))))
                                      (let ((_%hd175039175121%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175038175118%_)))
                                            (_%tl175040175123%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175038175118%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd175039175121%_))
                                            (let ((_%e175041175126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd175039175121%_))))
                                              (let ((_%hd175042175129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175041175126%_)))
                                                    (_%tl175043175131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175041175126%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd175042175129%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd175042175129%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl175043175131%_))
                                                            (let ((_%e175044175134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl175043175131%_))))
                      (let ((_%hd175045175137%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175044175134%_)))
                            (_%tl175046175139%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175044175134%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175046175139%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl175040175123%_))
                                (let ((_%e175047175142%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl175040175123%_))))
                                  (let ((_%hd175048175145%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175047175142%_)))
                                        (_%tl175049175147%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175047175142%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd175048175145%_))
                                        (let ((_%e175050175150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd175048175145%_))))
                                          (let ((_%hd175051175153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175050175150%_)))
                                                (_%tl175052175155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175050175150%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd175051175153%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd175051175153%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl175052175155%_))
                                                        (let ((_%e175053175158%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl175052175155%_))))
                  (let ((_%hd175054175161%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175053175158%_)))
                        (_%tl175055175163%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175053175158%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl175055175163%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl175049175147%_))
                            (let ((_%e175056175166%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl175049175147%_))))
                              (let ((_%hd175057175169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175056175166%_)))
                                    (_%tl175058175171%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175056175166%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd175057175169%_))
                                    (let ((_%e175059175174%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd175057175169%_))))
                                      (let ((_%hd175060175177%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175059175174%_)))
                                            (_%tl175061175179%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175059175174%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd175060175177%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd175060175177%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175061175179%_))
                                                    (let ((_%e175062175182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175061175179%_))))
                                                      (let ((_%hd175063175185%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175062175182%_)))
                    (_%tl175064175187%_
                     (let () (declare (not safe)) (##cdr _%e175062175182%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl175064175187%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl175058175171%_))
                        (if (let ((__tmp177433
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl175058175171%_))))
                              (declare (not safe))
                              (##fx>= __tmp177433 '1))
                            (let ((_g177434_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl175058175171%_
                                      '1))))
                              (begin
                                (let ((_g177435_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g177434_)
                                             (##vector-length _g177434_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g177435_ 2)))
                                      (error "Context expects 2 values"
                                             _g177435_)))
                                (let ((_%target175065175190%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g177434_ 0)))
                                      (_%tl175067175192%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g177434_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl175067175192%_))
                                      (let ((_%e175074175195%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl175067175192%_))))
                                        (let ((_%hd175075175198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e175074175195%_)))
                                              (_%tl175076175200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e175074175195%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175076175200%_))
                                              (letrec ((_%loop175068175203%_
                                                        (lambda (_%hd175066175206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref175072175208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd175066175206%_))
                      (let ((_%e175069175211%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd175066175206%_))))
                        (let ((_%lp-hd175070175214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175069175211%_)))
                              (_%lp-tl175071175216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175069175211%_))))
                          (_%loop175068175203%_
                           _%lp-tl175071175216%_
                           (cons _%lp-hd175070175214%_
                                 _%kw-ref175072175208%_))))
                      (let ((_%kw-ref175073175219%_
                             (reverse _%kw-ref175072175208%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175034175107%_))
                            ((lambda (_%L175222%_
                                      _%L175223%_
                                      _%L175224%_
                                      _%L175225%_
                                      _%L175226%_)
                               (let* ((_%kw-count175277%_
                                       (length (let ((__tmp177436
                                                      (lambda (_%g175269175272%_
                                                               _%g175270175274%_)
                                                        (cons _%g175269175272%_
                                                              _%g175270175274%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp177436
                                                  '()
                                                  _%L175223%_))))
                                      (_%self-index175279%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count175277%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L174977%_))
                                     (let* ((_%g175283175297%_
                                             (lambda (_%g175284175294%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g175284175294%_))))
                                            (_%g175282175420%_
                                             (lambda (_%g175284175300%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g175284175300%_))
                                                   (let ((_%e175287175302%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g175284175300%_))))
                                                     (let ((_%hd175288175305%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175287175302%_)))
                                                           (_%tl175289175307%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175287175302%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175289175307%_))
                                                           (let ((_%e175290175310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175289175307%_))))
                     (let ((_%hd175291175313%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175290175310%_)))
                           (_%tl175292175315%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175290175310%_))))
                       ((lambda (_%L175318%_ _%L175319%_)
                          (let* ((_%self175336%_
                                  (list-ref _%L175319%_ _%self-index175279%_))
                                 (_%receiver175341%_
                                  (let ((_%$e175338%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L175318%_))))
                                    (if _%$e175338%_
                                        _%$e175338%_
                                        _%self175336%_))))
                            (for-each
                             (lambda (_%g175343175345%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver175341%_
                                _%method-calls173269%_
                                _%slot-refs173270%_
                                _%g175343175345%_))
                             _%L175318%_)
                            (if (_%no-specializer?173273%_)
                                _%stx173177%_
                                (let* ((_%specializer-id175354%_
                                        (let* ((_%id175348%_
                                                (let ((__tmp177437
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173250%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp177437
                                                   '"::specialize")))
                                               (_%specializer-id175351%_
                                                (let ((__tmp177438
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx173177%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id175348%_
                                                   __tmp177438))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id175351%_))
                                          _%specializer-id175351%_))
                                       (_%$klass175356%_
                                        (let ((__tmp177439
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp177439)))
                                       (_%$method-table175358%_
                                        (let ((__tmp177440
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp177440)))
                                       (_%methods175360%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls173269%_)))
                                       (_%$methods175364%_
                                        (map (lambda (_%id175362%_)
                                               (let ((__tmp177441
                                                      (gensym _%id175362%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp177441)))
                                             _%methods175360%_))
                                       (_%_175373%_
                                        (for-each
                                         (lambda (_%g175365175368%_
                                                  _%g175366175370%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls173269%_
                                              _%g175365175368%_
                                              _%g175366175370%_)))
                                         _%methods175360%_
                                         _%$methods175364%_))
                                       (_%methods-bind175383%_
                                        (map (lambda (_%g175375175378%_
                                                      _%g175376175380%_)
                                               (_%generate-method-bind173179%_
                                                _%$klass175356%_
                                                _%$method-table175358%_
                                                _%g175375175378%_
                                                _%g175376175380%_))
                                             _%methods175360%_
                                             _%$methods175364%_))
                                       (_%slots175385%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs173270%_)))
                                       (_%$slots175389%_
                                        (map (lambda (_%id175387%_)
                                               (let ((__tmp177442
                                                      (gensym _%id175387%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp177442)))
                                             _%slots175385%_))
                                       (_%_175398%_
                                        (for-each
                                         (lambda (_%g175390175393%_
                                                  _%g175391175395%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs173270%_
                                              _%g175390175393%_
                                              _%g175391175395%_)))
                                         _%slots175385%_
                                         _%$slots175389%_))
                                       (_%slots-bind175407%_
                                        (map (lambda (_%g175399175402%_
                                                      _%g175400175404%_)
                                               (_%generate-slot-bind173180%_
                                                _%$klass175356%_
                                                _%g175399175402%_
                                                _%g175400175404%_))
                                             _%slots175385%_
                                             _%$slots175389%_))
                                       (_%specializer-impl175415%_
                                        (let* ((_%specializer-body175413%_
                                                (map (lambda (_%g175408175410%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver175341%_
                                                        _%$klass175356%_
                                                        _%method-calls173269%_
                                                        _%slot-refs173270%_
                                                        _%g175408175410%_))
                                                     _%L175318%_))
                                               (__tmp177443
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L174979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L174978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp177444
                                   (cons '%#lambda
                                         (cons _%L175319%_
                                               _%specializer-body175413%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp177444 _%L174977%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L174976%_ '())))
                                      '()))
                          '())
                    (cons _%L174975%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp177443
                                           _%stx173177%_)))
                                       (_%specializer-impl175417%_
                                        (_%generate-specializer-impl173181%_
                                         _%$klass175356%_
                                         _%$method-table175358%_
                                         _%methods-bind175383%_
                                         _%slots-bind175407%_
                                         _%specializer-impl175415%_)))
                                  (let ((__tmp177446
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L173250%_)))
                                        (__tmp177445
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id175354%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp177446
                                     '" => "
                                     __tmp177445))
                                  (_%generate-specializer-def173182%_
                                   _%L173250%_
                                   _%specializer-id175354%_
                                   _%specializer-impl175417%_)))))
                        _%tl175292175315%_
                        _%hd175291175313%_)))
                   (_%g175283175297%_ _%g175284175300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175283175297%_
                                                    _%g175284175300%_)))))
                                       (_%g175282175420%_ _%L174977%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L174977%_))
                                         (let* ((_%g175424175454%_
                                                 (lambda (_%g175425175451%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g175425175451%_))))
                                                (_%g175423176022%_
                                                 (lambda (_%g175425175457%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g175425175457%_))
                                                       (let ((_%e175429175459%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g175425175457%_))))
                 (let ((_%hd175430175462%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175429175459%_)))
                       (_%tl175431175464%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175429175459%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl175431175464%_))
                       (let ((_%e175432175467%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl175431175464%_))))
                         (let ((_%hd175433175470%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e175432175467%_)))
                               (_%tl175434175472%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e175432175467%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd175433175470%_))
                               (let ((_%e175435175475%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd175433175470%_))))
                                 (let ((_%hd175436175478%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175435175475%_)))
                                       (_%tl175437175480%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175435175475%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd175436175478%_))
                                       (let ((_%e175438175483%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd175436175478%_))))
                                         (let ((_%hd175439175486%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e175438175483%_)))
                                               (_%tl175440175488%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e175438175483%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd175439175486%_))
                                               (let ((_%e175441175491%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd175439175486%_))))
                                                 (let ((_%hd175442175494%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175441175491%_)))
                                                       (_%tl175443175496%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175441175491%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl175443175496%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175440175488%_))
                                                           (let ((_%e175444175499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175440175488%_))))
                     (let ((_%hd175445175502%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175444175499%_)))
                           (_%tl175446175504%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175444175499%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl175446175504%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl175437175480%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl175434175472%_))
                                   (let ((_%e175447175507%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl175434175472%_))))
                                     (let ((_%hd175448175510%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175447175507%_)))
                                           (_%tl175449175512%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175447175507%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl175449175512%_))
                                           ((lambda (_%L175515%_
                                                     _%L175516%_
                                                     _%L175517%_)
                                              (let* ((_%g175541175555%_
                                                      (lambda (_%g175542175552%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g175542175552%_))))
                                                     (_%g175540175602%_
                                                      (lambda (_%g175542175558%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g175542175558%_))
                                                            (let ((_%e175545175560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g175542175558%_))))
                      (let ((_%hd175546175563%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175545175560%_)))
                            (_%tl175547175565%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175545175560%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl175547175565%_))
                            (let ((_%e175548175568%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl175547175565%_))))
                              (let ((_%hd175549175571%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175548175568%_)))
                                    (_%tl175550175573%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175548175568%_))))
                                ((lambda (_%L175576%_ _%L175577%_)
                                   (let* ((_%self175590%_
                                           (list-ref
                                            _%L175577%_
                                            _%self-index175279%_))
                                          (_%receiver175595%_
                                           (let ((_%$e175592%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L175576%_))))
                                             (if _%$e175592%_
                                                 _%$e175592%_
                                                 _%self175590%_))))
                                     (for-each
                                      (lambda (_%g175597175599%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver175595%_
                                         _%method-calls173269%_
                                         _%slot-refs173270%_
                                         _%g175597175599%_))
                                      _%L175576%_)))
                                 _%tl175550175573%_
                                 _%hd175549175571%_)))
                            (_%g175541175555%_ _%g175542175558%_))))
                    (_%g175541175555%_ _%g175542175558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g175540175602%_
                                                 _%L175516%_))
                                              (let* ((_%g175605175624%_
                                                      (lambda (_%g175606175621%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g175606175621%_))))
                                                     (_%g175604175735%_
                                                      (lambda (_%g175606175627%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g175606175627%_))
                                                            (let ((_%e175608175629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g175606175627%_))))
                      (let ((_%hd175609175632%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175608175629%_)))
                            (_%tl175610175634%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175608175629%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl175610175634%_))
                            (let ((_g177447_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl175610175634%_
                                      '0))))
                              (begin
                                (let ((_g177448_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g177447_)
                                             (##vector-length _g177447_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g177448_ 2)))
                                      (error "Context expects 2 values"
                                             _g177448_)))
                                (let ((_%target175611175637%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g177447_ 0)))
                                      (_%tl175613175639%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g177447_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl175613175639%_))
                                      (letrec ((_%loop175614175642%_
                                                (lambda (_%hd175612175645%_
                                                         _%clause175618175647%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd175612175645%_))
                                                      (let ((_%e175615175650%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd175612175645%_))))
                (let ((_%lp-hd175616175653%_
                       (let () (declare (not safe)) (##car _%e175615175650%_)))
                      (_%lp-tl175617175655%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e175615175650%_))))
                  (_%loop175614175642%_
                   _%lp-tl175617175655%_
                   (cons _%lp-hd175616175653%_ _%clause175618175647%_))))
              (let ((_%clause175619175658%_ (reverse _%clause175618175647%_)))
                ((lambda (_%L175661%_)
                   (for-each
                    (lambda (_%clause175674%_)
                      (let* ((_%g175676175687%_
                              (lambda (_%g175677175684%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g175677175684%_))))
                             (_%g175675175725%_
                              (lambda (_%g175677175690%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g175677175690%_))
                                    (let ((_%e175680175692%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g175677175690%_))))
                                      (let ((_%hd175681175695%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175680175692%_)))
                                            (_%tl175682175697%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175680175692%_))))
                                        ((lambda (_%L175700%_ _%L175701%_)
                                           (let* ((_%self175713%_
                                                   (list-ref
                                                    _%L175701%_
                                                    _%self-index175279%_))
                                                  (_%receiver175718%_
                                                   (let ((_%$e175715%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L175700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e175715%_
                                                         _%$e175715%_
                                                         _%self175713%_))))
                                             (for-each
                                              (lambda (_%g175720175722%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver175718%_
                                                 _%method-calls173269%_
                                                 _%slot-refs173270%_
                                                 _%g175720175722%_))
                                              _%L175700%_)))
                                         _%tl175682175697%_
                                         _%hd175681175695%_)))
                                    (_%g175676175687%_ _%g175677175690%_)))))
                        (_%g175675175725%_ _%clause175674%_)))
                    (let ((__tmp177449
                           (lambda (_%g175727175730%_ _%g175728175732%_)
                             (cons _%g175727175730%_ _%g175728175732%_))))
                      (declare (not safe))
                      (__foldr1 __tmp177449 '() _%L175661%_))))
                 _%clause175619175658%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop175614175642%_
                                         _%target175611175637%_
                                         '()))
                                      (_%g175605175624%_ _%g175606175627%_)))))
                            (_%g175605175624%_ _%g175606175627%_))))
                    (_%g175605175624%_ _%g175606175627%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g175604175735%_
                                                 _%L175515%_))
                                              (if (_%no-specializer?173273%_)
                                                  _%stx173177%_
                                                  (let* ((_%specializer-id175744%_
                                                          (let* ((_%id175738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp177450
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L173250%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp177450 '"::specialize")))
                         (_%specializer-id175741%_
                          (let ((__tmp177451
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx173177%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id175738%_
                             __tmp177451))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id175741%_))
                    _%specializer-id175741%_))
                 (_%$klass175746%_
                  (let ((__tmp177452
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp177452)))
                 (_%$method-table175748%_
                  (let ((__tmp177453
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp177453)))
                 (_%methods175750%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls173269%_)))
                 (_%$methods175754%_
                  (map (lambda (_%id175752%_)
                         (let ((__tmp177454 (gensym _%id175752%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp177454)))
                       _%methods175750%_))
                 (_%_175763%_
                  (for-each
                   (lambda (_%g175755175758%_ _%g175756175760%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls173269%_
                        _%g175755175758%_
                        _%g175756175760%_)))
                   _%methods175750%_
                   _%$methods175754%_))
                 (_%methods-bind175773%_
                  (map (lambda (_%g175765175768%_ _%g175766175770%_)
                         (_%generate-method-bind173179%_
                          _%$klass175746%_
                          _%$method-table175748%_
                          _%g175765175768%_
                          _%g175766175770%_))
                       _%methods175750%_
                       _%$methods175754%_))
                 (_%slots175775%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs173270%_)))
                 (_%$slots175779%_
                  (map (lambda (_%id175777%_)
                         (let ((__tmp177455 (gensym _%id175777%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp177455)))
                       _%slots175775%_))
                 (_%_175788%_
                  (for-each
                   (lambda (_%g175780175783%_ _%g175781175785%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs173270%_
                        _%g175780175783%_
                        _%g175781175785%_)))
                   _%slots175775%_
                   _%$slots175779%_))
                 (_%slots-bind175797%_
                  (map (lambda (_%g175789175792%_ _%g175790175794%_)
                         (_%generate-slot-bind173180%_
                          _%$klass175746%_
                          _%g175789175792%_
                          _%g175790175794%_))
                       _%slots175775%_
                       _%$slots175779%_))
                 (_%specializer-lambda-expr175875%_
                  (let* ((_%g175799175813%_
                          (lambda (_%g175800175810%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g175800175810%_))))
                         (_%g175798175872%_
                          (lambda (_%g175800175816%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g175800175816%_))
                                (let ((_%e175803175818%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g175800175816%_))))
                                  (let ((_%hd175804175821%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175803175818%_)))
                                        (_%tl175805175823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175803175818%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl175805175823%_))
                                        (let ((_%e175806175826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl175805175823%_))))
                                          (let ((_%hd175807175829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175806175826%_)))
                                                (_%tl175808175831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175806175826%_))))
                                            ((lambda (_%L175834%_ _%L175835%_)
                                               (let* ((_%self175858%_
                                                       (list-ref
                                                        _%L175835%_
                                                        _%self-index175279%_))
                                                      (_%receiver175863%_
                                                       (let ((_%$e175860%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L175834%_))))
                 (if _%$e175860%_ _%$e175860%_ _%self175858%_)))
              (_%body175869%_
               (map (lambda (_%g175864175866%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver175863%_
                       _%$klass175746%_
                       _%method-calls173269%_
                       _%slot-refs173270%_
                       _%g175864175866%_))
                    _%L175834%_))
              (__tmp177456 (cons '%#lambda (cons _%L175835%_ _%body175869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp177456
                                                  _%L175516%_)))
                                             _%tl175808175831%_
                                             _%hd175807175829%_)))
                                        (_%g175799175813%_
                                         _%g175800175816%_))))
                                (_%g175799175813%_ _%g175800175816%_)))))
                    (_%g175798175872%_ _%L175516%_)))
                 (_%specializer-case-lambda-expr176015%_
                  (let* ((_%g175877175896%_
                          (lambda (_%g175878175893%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g175878175893%_))))
                         (_%g175876176012%_
                          (lambda (_%g175878175899%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g175878175899%_))
                                (let ((_%e175880175901%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g175878175899%_))))
                                  (let ((_%hd175881175904%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175880175901%_)))
                                        (_%tl175882175906%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175880175901%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl175882175906%_))
                                        (let ((_g177457_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl175882175906%_
                                                  '0))))
                                          (begin
                                            (let ((_g177458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g177457_)
                                                         (##vector-length
                                                          _g177457_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g177458_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g177458_)))
                                            (let ((_%target175883175909%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g177457_
                                                      0)))
                                                  (_%tl175885175911%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g177457_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl175885175911%_))
                                                  (letrec ((_%loop175886175914%_
                                                            (lambda (_%hd175884175917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause175890175919%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd175884175917%_))
                          (let ((_%e175887175922%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd175884175917%_))))
                            (let ((_%lp-hd175888175925%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e175887175922%_)))
                                  (_%lp-tl175889175927%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e175887175922%_))))
                              (_%loop175886175914%_
                               _%lp-tl175889175927%_
                               (cons _%lp-hd175888175925%_
                                     _%clause175890175919%_))))
                          (let ((_%clause175891175930%_
                                 (reverse _%clause175890175919%_)))
                            ((lambda (_%L175933%_)
                               (let* ((_%clauses176010%_
                                       (map (lambda (_%clause175947%_)
                                              (let* ((_%g175949175960%_
                                                      (lambda (_%g175950175957%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g175950175957%_))))
                                                     (_%g175948176000%_
                                                      (lambda (_%g175950175963%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g175950175963%_))
                                                            (let ((_%e175953175965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g175950175963%_))))
                      (let ((_%hd175954175968%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175953175965%_)))
                            (_%tl175955175970%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175953175965%_))))
                        ((lambda (_%L175973%_ _%L175974%_)
                           (let* ((_%self175986%_
                                   (list-ref _%L175974%_ _%self-index175279%_))
                                  (_%receiver175991%_
                                   (let ((_%$e175988%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L175973%_))))
                                     (if _%$e175988%_
                                         _%$e175988%_
                                         _%self175986%_)))
                                  (_%body175997%_
                                   (map (lambda (_%g175992175994%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver175991%_
                                           _%$klass175746%_
                                           _%method-calls173269%_
                                           _%slot-refs173270%_
                                           _%g175992175994%_))
                                        _%L175973%_)))
                             (cons _%L175974%_ _%body175997%_)))
                         _%tl175955175970%_
                         _%hd175954175968%_)))
                    (_%g175949175960%_ _%g175950175963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g175948176000%_
                                                 _%clause175947%_)))
                                            (let ((__tmp177459
                                                   (lambda (_%g176002176005%_
                                                            _%g176003176007%_)
                                                     (cons _%g176002176005%_
                                                           _%g176003176007%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp177459
                                               '()
                                               _%L175933%_))))
                                      (__tmp177460
                                       (cons '%#case-lambda
                                             _%clauses176010%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp177460
                                  _%L175515%_)))
                             _%clause175891175930%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop175886175914%_
                                                     _%target175883175909%_
                                                     '()))
                                                  (_%g175877175896%_
                                                   _%g175878175899%_)))))
                                        (_%g175877175896%_
                                         _%g175878175899%_))))
                                (_%g175877175896%_ _%g175878175899%_)))))
                    (_%g175876176012%_ _%L175515%_)))
                 (_%specializer-impl176017%_
                  (let ((__tmp177461
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L174979%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L174978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp177462
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L175517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr175875%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr176015%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177462
                                                _%stx173177%_))
                                             '()))
                                 '())
                           (cons _%L174976%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L174975%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp177461 _%stx173177%_)))
                 (_%specializer-impl176019%_
                  (_%generate-specializer-impl173181%_
                   _%$klass175746%_
                   _%$method-table175748%_
                   _%methods-bind175773%_
                   _%slots-bind175797%_
                   _%specializer-impl176017%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp177464
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L173250%_)))
                                                          (__tmp177463
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id175744%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp177464
                                                       '" => "
                                                       __tmp177463))
                                                    (_%generate-specializer-def173182%_
                                                     _%L173250%_
                                                     _%specializer-id175744%_
                                                     _%specializer-impl176019%_))))
                                            _%hd175448175510%_
                                            _%hd175445175502%_
                                            _%hd175442175494%_)
                                           (_%g175424175454%_
                                            _%g175425175457%_))))
                                   (_%g175424175454%_ _%g175425175457%_))
                               (_%g175424175454%_ _%g175425175457%_))
                           (_%g175424175454%_ _%g175425175457%_))))
                   (_%g175424175454%_ _%g175425175457%_))
               (_%g175424175454%_ _%g175425175457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175424175454%_
                                                _%g175425175457%_))))
                                       (_%g175424175454%_ _%g175425175457%_))))
                               (_%g175424175454%_ _%g175425175457%_))))
                       (_%g175424175454%_ _%g175425175457%_))))
               (_%g175424175454%_ _%g175425175457%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g175423176022%_ _%L174977%_))
                                         _%stx173177%_))))
                             _%hd175075175198%_
                             _%kw-ref175073175219%_
                             _%hd175063175185%_
                             _%hd175054175161%_
                             _%hd175045175137%_)
                            (_%g175019175081%_ _%g175020175084%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop175068175203%_
                                                 _%target175065175190%_
                                                 '()))
                                              (_%g175019175081%_
                                               _%g175020175084%_))))
                                      (_%g175019175081%_ _%g175020175084%_)))))
                            (_%g175019175081%_ _%g175020175084%_))
                        (_%g175019175081%_ _%g175020175084%_))
                    (_%g175019175081%_ _%g175020175084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175019175081%_
                                                     _%g175020175084%_))
                                                (_%g175019175081%_
                                                 _%g175020175084%_))
                                            (_%g175019175081%_
                                             _%g175020175084%_))))
                                    (_%g175019175081%_ _%g175020175084%_))))
                            (_%g175019175081%_ _%g175020175084%_))
                        (_%g175019175081%_ _%g175020175084%_))))
                (_%g175019175081%_ _%g175020175084%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175019175081%_
                                                     _%g175020175084%_))
                                                (_%g175019175081%_
                                                 _%g175020175084%_))))
                                        (_%g175019175081%_
                                         _%g175020175084%_))))
                                (_%g175019175081%_ _%g175020175084%_))
                            (_%g175019175081%_ _%g175020175084%_))))
                    (_%g175019175081%_ _%g175020175084%_))
                (_%g175019175081%_ _%g175020175084%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175019175081%_
                                                     _%g175020175084%_))))
                                            (_%g175019175081%_
                                             _%g175020175084%_))))
                                    (_%g175019175081%_ _%g175020175084%_))
                                (_%g175019175081%_ _%g175020175084%_))
                            (_%g175019175081%_ _%g175020175084%_))))
                    (_%g175019175081%_ _%g175020175084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175019175081%_
                                                     _%g175020175084%_))))
                                            (_%g175019175081%_
                                             _%g175020175084%_))
                                        (_%g175019175081%_ _%g175020175084%_))
                                    (_%g175019175081%_ _%g175020175084%_))))
                            (_%g175019175081%_ _%g175020175084%_)))))
                (_%g175018176026%_ _%L174976%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd174852174970%_
                                                    _%hd174849174962%_
                                                    _%hd174846174954%_
                                                    _%hd174843174946%_
                                                    _%hd174825174898%_)
                                                   (_%g174805174858%_
                                                    _%g174806174861%_))))
                                           (_%g174805174858%_
                                            _%g174806174861%_))
                                       (_%g174805174858%_ _%g174806174861%_))
                                   (_%g174805174858%_ _%g174806174861%_))
                               (_%g174805174858%_ _%g174806174861%_))))
                       (_%g174805174858%_ _%g174806174861%_))
                   (_%g174805174858%_ _%g174806174861%_))
               (_%g174805174858%_ _%g174806174861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174805174858%_
                                                _%g174806174861%_))
                                           (_%g174805174858%_
                                            _%g174806174861%_))))
                                   (_%g174805174858%_ _%g174806174861%_))))
                           (_%g174805174858%_ _%g174806174861%_))))
                   (_%g174805174858%_ _%g174806174861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174805174858%_
                                                    _%g174806174861%_))
                                               (_%g174805174858%_
                                                _%g174806174861%_))
                                           (_%g174805174858%_
                                            _%g174806174861%_))))
                                   (_%g174805174858%_ _%g174806174861%_))))
                           (_%g174805174858%_ _%g174806174861%_))
                       (_%g174805174858%_ _%g174806174861%_))))
               (_%g174805174858%_ _%g174806174861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174805174858%_
                                                _%g174806174861%_))))
                                       (_%g174805174858%_ _%g174806174861%_))))
                               (_%g174805174858%_ _%g174806174861%_))
                           (_%g174805174858%_ _%g174806174861%_))
                       (_%g174805174858%_ _%g174806174861%_))))
               (_%g174805174858%_ _%g174806174861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g174804176029%_ _%L173249%_))
                                         _%stx173177%_))))))))
                  (_%__kont176263176264%_ (lambda () _%stx173177%_)))
              (let ((_%__match176292176293%_
                     (lambda (_%e173189173217%_
                              _%hd173190173220%_
                              _%tl173191173222%_
                              _%e173192173225%_
                              _%hd173193173228%_
                              _%tl173194173230%_
                              _%e173195173233%_
                              _%hd173196173236%_
                              _%tl173197173238%_
                              _%e173198173241%_
                              _%hd173199173244%_
                              _%tl173200173246%_)
                       (let ((_%L173249%_ _%hd173199173244%_)
                             (_%L173250%_ _%hd173196173236%_))
                         (if (let ((__tmp177465
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L173250%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp177465))
                             (_%__kont176261176262%_ _%L173249%_ _%L173250%_)
                             (_%__kont176263176264%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx176259176260%_))
                    (let ((_%e173189173217%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx176259176260%_))))
                      (let ((_%tl173191173222%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173189173217%_)))
                            (_%hd173190173220%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173189173217%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl173191173222%_))
                            (let ((_%e173192173225%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl173191173222%_))))
                              (let ((_%tl173194173230%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173192173225%_)))
                                    (_%hd173193173228%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173192173225%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd173193173228%_))
                                    (let ((_%e173195173233%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd173193173228%_))))
                                      (let ((_%tl173197173238%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173195173233%_)))
                                            (_%hd173196173236%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173195173233%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl173197173238%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173194173230%_))
                                                (let ((_%e173198173241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173194173230%_))))
                                                  (let ((_%tl173200173246%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173198173241%_)))
                                                        (_%hd173199173244%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173198173241%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173200173246%_))
                                                        (_%__match176292176293%_
                                                         _%e173189173217%_
                                                         _%hd173190173220%_
                                                         _%tl173191173222%_
                                                         _%e173192173225%_
                                                         _%hd173193173228%_
                                                         _%tl173194173230%_
                                                         _%e173195173233%_
                                                         _%hd173196173236%_
                                                         _%tl173197173238%_
                                                         _%e173198173241%_
                                                         _%hd173199173244%_
                                                         _%tl173200173246%_)
                                                        (_%__kont176263176264%_))))
                                                (_%__kont176263176264%_))
                                            (_%__kont176263176264%_))))
                                    (_%__kont176263176264%_))))
                            (_%__kont176263176264%_))))
                    (_%__kont176263176264%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self173029%_ _%stx173030%_)
        (let* ((_%__stx176295176296%_ _%stx173030%_)
               (_%g173033173066%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx176295176296%_)))))
          (let ((_%__kont176297176298%_ (lambda (_%L173156%_) _%L173156%_))
                (_%__kont176299176300%_
                 (lambda (_%L173095%_ _%L173096%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173029%_ _%L173095%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx176295176296%_))
                (let ((_%e173036173116%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx176295176296%_))))
                  (let ((_%tl173038173121%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173036173116%_)))
                        (_%hd173037173119%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173036173116%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl173038173121%_))
                        (let ((_%e173039173124%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl173038173121%_))))
                          (let ((_%tl173041173129%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e173039173124%_)))
                                (_%hd173040173127%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e173039173124%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd173040173127%_))
                                (let ((_%e173042173132%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd173040173127%_))))
                                  (let ((_%tl173044173137%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173042173132%_)))
                                        (_%hd173043173135%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173042173132%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd173043173135%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd173043173135%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173044173137%_))
                                                (let ((_%e173045173140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173044173137%_))))
                                                  (let ((_%tl173047173145%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173045173140%_)))
                                                        (_%hd173046173143%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173045173140%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173047173145%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl173041173129%_))
                                                            (let ((_%e173048173148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173041173129%_))))
                      (let ((_%tl173050173153%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173048173148%_)))
                            (_%hd173049173151%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173048173148%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173050173153%_))
                            (_%__kont176297176298%_ _%hd173046173143%_)
                            (let ()
                              (declare (not safe))
                              (_%g173033173066%_)))))
                    (let () (declare (not safe)) (_%g173033173066%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl173041173129%_))
                    (let ((_%e173059173087%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173041173129%_))))
                      (let ((_%tl173061173092%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173059173087%_)))
                            (_%hd173060173090%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173059173087%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173061173092%_))
                            (_%__kont176299176300%_
                             _%hd173060173090%_
                             _%hd173040173127%_)
                            (let ()
                              (declare (not safe))
                              (_%g173033173066%_)))))
                    (let () (declare (not safe)) (_%g173033173066%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173041173129%_))
                                                    (let ((_%e173059173087%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173041173129%_))))
                                                      (let ((_%tl173061173092%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e173059173087%_)))
                    (_%hd173060173090%_
                     (let () (declare (not safe)) (##car _%e173059173087%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl173061173092%_))
                    (_%__kont176299176300%_
                     _%hd173060173090%_
                     _%hd173040173127%_)
                    (let () (declare (not safe)) (_%g173033173066%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173033173066%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173041173129%_))
                                                (let ((_%e173059173087%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173041173129%_))))
                                                  (let ((_%tl173061173092%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173059173087%_)))
                                                        (_%hd173060173090%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173059173087%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173061173092%_))
                                                        (_%__kont176299176300%_
                                                         _%hd173060173090%_
                                                         _%hd173040173127%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g173033173066%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g173033173066%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl173041173129%_))
                                            (let ((_%e173059173087%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl173041173129%_))))
                                              (let ((_%tl173061173092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173059173087%_)))
                                                    (_%hd173060173090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173059173087%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl173061173092%_))
                                                    (_%__kont176299176300%_
                                                     _%hd173060173090%_
                                                     _%hd173040173127%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173033173066%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g173033173066%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173041173129%_))
                                    (let ((_%e173059173087%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173041173129%_))))
                                      (let ((_%tl173061173092%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173059173087%_)))
                                            (_%hd173060173090%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173059173087%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl173061173092%_))
                                            (_%__kont176299176300%_
                                             _%hd173060173090%_
                                             _%hd173040173127%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g173033173066%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g173033173066%_))))))
                        (let () (declare (not safe)) (_%g173033173066%_)))))
                (let () (declare (not safe)) (_%g173033173066%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self172945%_ _%stx172946%_)
        (let* ((_%g172948172969%_
                (lambda (_%g172949172966%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g172949172966%_))))
               (_%g172947173026%_
                (lambda (_%g172949172972%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g172949172972%_))
                      (let ((_%e172953172974%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g172949172972%_))))
                        (let ((_%hd172954172977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172953172974%_)))
                              (_%tl172955172979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172953172974%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172955172979%_))
                              (let ((_%e172956172982%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172955172979%_))))
                                (let ((_%hd172957172985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172956172982%_)))
                                      (_%tl172958172987%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172956172982%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl172958172987%_))
                                      (let ((_%e172959172990%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl172958172987%_))))
                                        (let ((_%hd172960172993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172959172990%_)))
                                              (_%tl172961172995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172959172990%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl172961172995%_))
                                              (let ((_%e172962172998%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl172961172995%_))))
                                                (let ((_%hd172963173001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e172962172998%_)))
                                                      (_%tl172964173003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e172962172998%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl172964173003%_))
                                                      ((lambda (_%L173006%_
                                                                _%L173007%_
                                                                _%L173008%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self172945%_
                                                            _%L173007%_)))
                                                       _%hd172963173001%_
                                                       _%hd172960172993%_
                                                       _%hd172957172985%_)
                                                      (_%g172948172969%_
                                                       _%g172949172972%_))))
                                              (_%g172948172969%_
                                               _%g172949172972%_))))
                                      (_%g172948172969%_ _%g172949172972%_))))
                              (_%g172948172969%_ _%g172949172972%_))))
                      (_%g172948172969%_ _%g172949172972%_)))))
          (_%g172947173026%_ _%stx172946%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self171906%_ _%stx171907%_)
        (let* ((_%__stx176361176362%_ _%stx171907%_)
               (_%g171915172137%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx176361176362%_)))))
          (let ((_%__kont176363176364%_
                 (lambda (_%L172894%_ _%L172895%_ _%L172896%_ _%L172897%_)
                   (let ((__tmp177467
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self171906%_ 'methods)))
                         (__tmp177466
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L172895%_))))
                     (declare (not safe))
                     (hash-put! __tmp177467 __tmp177466 '#t))
                   (for-each
                    (lambda (_%g172930172932%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self171906%_ _%g172930172932%_)))
                    (let ((__tmp177468
                           (lambda (_%g172934172937%_ _%g172935172939%_)
                             (cons _%g172934172937%_ _%g172935172939%_))))
                      (declare (not safe))
                      (__foldr1 __tmp177468 '() _%L172894%_)))))
                (_%__kont176367176368%_
                 (lambda (_%L172729%_
                          _%L172730%_
                          _%L172731%_
                          _%L172732%_
                          _%L172733%_)
                   (let ((__tmp177470
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self171906%_ 'methods)))
                         (__tmp177469
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L172730%_))))
                     (declare (not safe))
                     (hash-put! __tmp177470 __tmp177469 '#t))
                   (for-each
                    (lambda (_%g172773172775%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self171906%_ _%g172773172775%_)))
                    (let ((__tmp177471
                           (lambda (_%g172777172780%_ _%g172778172782%_)
                             (cons _%g172777172780%_ _%g172778172782%_))))
                      (declare (not safe))
                      (__foldr1 __tmp177471 '() _%L172729%_)))))
                (_%__kont176371176372%_
                 (lambda (_%L172562%_ _%L172563%_ _%L172564%_)
                   (let ((__tmp177473
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self171906%_ 'slots)))
                         (__tmp177472
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L172562%_))))
                     (declare (not safe))
                     (hash-put! __tmp177473 __tmp177472 '#t))))
                (_%__kont176373176374%_
                 (lambda (_%L172439%_ _%L172440%_ _%L172441%_ _%L172442%_)
                   (let ((__tmp177475
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self171906%_ 'slots)))
                         (__tmp177474
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L172440%_))))
                     (declare (not safe))
                     (hash-put! __tmp177475 __tmp177474 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self171906%_ _%L172439%_))))
                (_%__kont176375176376%_
                 (lambda (_%L172313%_ _%L172314%_)
                   (let* ((_%accessor172336%_
                           (let ((__tmp177476
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L172314%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp177476)))
                          (_%klass172338%_
                           (let ((__tmp177477
                                  (##structure-ref
                                   _%accessor172336%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx171907%_
                              __tmp177477)))
                          (_%slot172340%_
                           (##structure-ref
                            _%accessor172336%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor172336%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass172338%_
                                    _%slot172340%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass172338%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp177479
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self171906%_ 'slots)))
                               (__tmp177478
                                (##structure-ref
                                 _%accessor172336%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp177479 __tmp177478 '#t))))))
                (_%__kont176377176378%_
                 (lambda (_%L172213%_ _%L172214%_ _%L172215%_)
                   (let* ((_%mutator172242%_
                           (let ((__tmp177480
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L172215%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp177480)))
                          (_%klass172244%_
                           (let ((__tmp177481
                                  (##structure-ref
                                   _%mutator172242%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx171907%_
                              __tmp177481)))
                          (_%slot172246%_
                           (##structure-ref
                            _%mutator172242%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator172242%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass172244%_
                                    _%slot172246%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass172244%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp177482
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self171906%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp177482 _%slot172246%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self171906%_ _%L172213%_)))))
                (_%__kont176379176380%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self171906%_ _%stx171907%_)))))
            (let* ((_%__match176860176861%_
                    (lambda (_%e172109172149%_
                             _%hd172110172152%_
                             _%tl172111172154%_
                             _%e172112172157%_
                             _%hd172113172160%_
                             _%tl172114172162%_
                             _%e172115172165%_
                             _%hd172116172168%_
                             _%tl172117172170%_
                             _%e172118172173%_
                             _%hd172119172176%_
                             _%tl172120172178%_
                             _%e172121172181%_
                             _%hd172122172184%_
                             _%tl172123172186%_
                             _%e172124172189%_
                             _%hd172125172192%_
                             _%tl172126172194%_
                             _%e172127172197%_
                             _%hd172128172200%_
                             _%tl172129172202%_
                             _%e172130172205%_
                             _%hd172131172208%_
                             _%tl172132172210%_)
                      (let ((_%L172213%_ _%hd172131172208%_)
                            (_%L172214%_ _%hd172128172200%_)
                            (_%L172215%_ _%hd172119172176%_))
                        (if (and (let ((__tmp177483
                                        (let ((__tmp177484
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L172215%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp177484))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp177483
                                    'gxc#!mutator::t))
                                 (let ((__tmp177485
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171906%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172214%_
                                    __tmp177485)))
                            (_%__kont176377176378%_
                             _%L172213%_
                             _%L172214%_
                             _%L172215%_)
                            (_%__kont176379176380%_)))))
                   (_%__match176858176859%_
                    (lambda (_%e172109172149%_
                             _%hd172110172152%_
                             _%tl172111172154%_
                             _%e172112172157%_
                             _%hd172113172160%_
                             _%tl172114172162%_
                             _%e172115172165%_
                             _%hd172116172168%_
                             _%tl172117172170%_
                             _%e172118172173%_
                             _%hd172119172176%_
                             _%tl172120172178%_
                             _%e172121172181%_
                             _%hd172122172184%_
                             _%tl172123172186%_
                             _%e172124172189%_
                             _%hd172125172192%_
                             _%tl172126172194%_
                             _%e172127172197%_
                             _%hd172128172200%_
                             _%tl172129172202%_
                             _%e172130172205%_
                             _%hd172131172208%_
                             _%tl172132172210%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172132172210%_))
                          (_%__match176860176861%_
                           _%e172109172149%_
                           _%hd172110172152%_
                           _%tl172111172154%_
                           _%e172112172157%_
                           _%hd172113172160%_
                           _%tl172114172162%_
                           _%e172115172165%_
                           _%hd172116172168%_
                           _%tl172117172170%_
                           _%e172118172173%_
                           _%hd172119172176%_
                           _%tl172120172178%_
                           _%e172121172181%_
                           _%hd172122172184%_
                           _%tl172123172186%_
                           _%e172124172189%_
                           _%hd172125172192%_
                           _%tl172126172194%_
                           _%e172127172197%_
                           _%hd172128172200%_
                           _%tl172129172202%_
                           _%e172130172205%_
                           _%hd172131172208%_
                           _%tl172132172210%_)
                          (_%__kont176379176380%_))))
                   (_%__match176852176853%_
                    (lambda (_%e172109172149%_
                             _%hd172110172152%_
                             _%tl172111172154%_
                             _%e172112172157%_
                             _%hd172113172160%_
                             _%tl172114172162%_
                             _%e172115172165%_
                             _%hd172116172168%_
                             _%tl172117172170%_
                             _%e172118172173%_
                             _%hd172119172176%_
                             _%tl172120172178%_
                             _%e172121172181%_
                             _%hd172122172184%_
                             _%tl172123172186%_
                             _%e172124172189%_
                             _%hd172125172192%_
                             _%tl172126172194%_
                             _%e172127172197%_
                             _%hd172128172200%_
                             _%tl172129172202%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172123172186%_))
                          (let ((_%e172130172205%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172123172186%_))))
                            (let ((_%tl172132172210%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172130172205%_)))
                                  (_%hd172131172208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172130172205%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172132172210%_))
                                  (_%__match176860176861%_
                                   _%e172109172149%_
                                   _%hd172110172152%_
                                   _%tl172111172154%_
                                   _%e172112172157%_
                                   _%hd172113172160%_
                                   _%tl172114172162%_
                                   _%e172115172165%_
                                   _%hd172116172168%_
                                   _%tl172117172170%_
                                   _%e172118172173%_
                                   _%hd172119172176%_
                                   _%tl172120172178%_
                                   _%e172121172181%_
                                   _%hd172122172184%_
                                   _%tl172123172186%_
                                   _%e172124172189%_
                                   _%hd172125172192%_
                                   _%tl172126172194%_
                                   _%e172127172197%_
                                   _%hd172128172200%_
                                   _%tl172129172202%_
                                   _%e172130172205%_
                                   _%hd172131172208%_
                                   _%tl172132172210%_)
                                  (_%__kont176379176380%_))))
                          (_%__kont176379176380%_))))
                   (_%__match176798176799%_
                    (lambda (_%e172085172257%_
                             _%hd172086172260%_
                             _%tl172087172262%_
                             _%e172088172265%_
                             _%hd172089172268%_
                             _%tl172090172270%_
                             _%e172091172273%_
                             _%hd172092172276%_
                             _%tl172093172278%_
                             _%e172094172281%_
                             _%hd172095172284%_
                             _%tl172096172286%_
                             _%e172097172289%_
                             _%hd172098172292%_
                             _%tl172099172294%_
                             _%e172100172297%_
                             _%hd172101172300%_
                             _%tl172102172302%_
                             _%e172103172305%_
                             _%hd172104172308%_
                             _%tl172105172310%_)
                      (let ((_%L172313%_ _%hd172104172308%_)
                            (_%L172314%_ _%hd172095172284%_))
                        (if (and (let ((__tmp177486
                                        (let ((__tmp177487
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L172314%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp177487))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp177486
                                    'gxc#!accessor::t))
                                 (let ((__tmp177488
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171906%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172313%_
                                    __tmp177488)))
                            (_%__kont176375176376%_ _%L172313%_ _%L172314%_)
                            (_%__kont176379176380%_)))))
                   (_%__match176796176797%_
                    (lambda (_%e172085172257%_
                             _%hd172086172260%_
                             _%tl172087172262%_
                             _%e172088172265%_
                             _%hd172089172268%_
                             _%tl172090172270%_
                             _%e172091172273%_
                             _%hd172092172276%_
                             _%tl172093172278%_
                             _%e172094172281%_
                             _%hd172095172284%_
                             _%tl172096172286%_
                             _%e172097172289%_
                             _%hd172098172292%_
                             _%tl172099172294%_
                             _%e172100172297%_
                             _%hd172101172300%_
                             _%tl172102172302%_
                             _%e172103172305%_
                             _%hd172104172308%_
                             _%tl172105172310%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172099172294%_))
                          (_%__match176798176799%_
                           _%e172085172257%_
                           _%hd172086172260%_
                           _%tl172087172262%_
                           _%e172088172265%_
                           _%hd172089172268%_
                           _%tl172090172270%_
                           _%e172091172273%_
                           _%hd172092172276%_
                           _%tl172093172278%_
                           _%e172094172281%_
                           _%hd172095172284%_
                           _%tl172096172286%_
                           _%e172097172289%_
                           _%hd172098172292%_
                           _%tl172099172294%_
                           _%e172100172297%_
                           _%hd172101172300%_
                           _%tl172102172302%_
                           _%e172103172305%_
                           _%hd172104172308%_
                           _%tl172105172310%_)
                          (_%__match176852176853%_
                           _%e172085172257%_
                           _%hd172086172260%_
                           _%tl172087172262%_
                           _%e172088172265%_
                           _%hd172089172268%_
                           _%tl172090172270%_
                           _%e172091172273%_
                           _%hd172092172276%_
                           _%tl172093172278%_
                           _%e172094172281%_
                           _%hd172095172284%_
                           _%tl172096172286%_
                           _%e172097172289%_
                           _%hd172098172292%_
                           _%tl172099172294%_
                           _%e172100172297%_
                           _%hd172101172300%_
                           _%tl172102172302%_
                           _%e172103172305%_
                           _%hd172104172308%_
                           _%tl172105172310%_))))
                   (_%__match176742176743%_
                    (lambda (_%e172050172351%_
                             _%hd172051172354%_
                             _%tl172052172356%_
                             _%e172053172359%_
                             _%hd172054172362%_
                             _%tl172055172364%_
                             _%e172056172367%_
                             _%hd172057172370%_
                             _%tl172058172372%_
                             _%e172059172375%_
                             _%hd172060172378%_
                             _%tl172061172380%_
                             _%e172062172383%_
                             _%hd172063172386%_
                             _%tl172064172388%_
                             _%e172065172391%_
                             _%hd172066172394%_
                             _%tl172067172396%_
                             _%e172068172399%_
                             _%hd172069172402%_
                             _%tl172070172404%_
                             _%e172071172407%_
                             _%hd172072172410%_
                             _%tl172073172412%_
                             _%e172074172415%_
                             _%hd172075172418%_
                             _%tl172076172420%_
                             _%e172077172423%_
                             _%hd172078172426%_
                             _%tl172079172428%_
                             _%e172080172431%_
                             _%hd172081172434%_
                             _%tl172082172436%_)
                      (let ((_%L172439%_ _%hd172081172434%_)
                            (_%L172440%_ _%hd172078172426%_)
                            (_%L172441%_ _%hd172069172402%_)
                            (_%L172442%_ _%hd172060172378%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L172442%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L172442%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp177489
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171906%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172441%_
                                    __tmp177489)))
                            (_%__kont176373176374%_
                             _%L172439%_
                             _%L172440%_
                             _%L172441%_
                             _%L172442%_)
                            (_%__kont176379176380%_)))))
                   (_%__match176734176735%_
                    (lambda (_%e172050172351%_
                             _%hd172051172354%_
                             _%tl172052172356%_
                             _%e172053172359%_
                             _%hd172054172362%_
                             _%tl172055172364%_
                             _%e172056172367%_
                             _%hd172057172370%_
                             _%tl172058172372%_
                             _%e172059172375%_
                             _%hd172060172378%_
                             _%tl172061172380%_
                             _%e172062172383%_
                             _%hd172063172386%_
                             _%tl172064172388%_
                             _%e172065172391%_
                             _%hd172066172394%_
                             _%tl172067172396%_
                             _%e172068172399%_
                             _%hd172069172402%_
                             _%tl172070172404%_
                             _%e172071172407%_
                             _%hd172072172410%_
                             _%tl172073172412%_
                             _%e172074172415%_
                             _%hd172075172418%_
                             _%tl172076172420%_
                             _%e172077172423%_
                             _%hd172078172426%_
                             _%tl172079172428%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172073172412%_))
                          (let ((_%e172080172431%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172073172412%_))))
                            (let ((_%tl172082172436%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172080172431%_)))
                                  (_%hd172081172434%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172080172431%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172082172436%_))
                                  (_%__match176742176743%_
                                   _%e172050172351%_
                                   _%hd172051172354%_
                                   _%tl172052172356%_
                                   _%e172053172359%_
                                   _%hd172054172362%_
                                   _%tl172055172364%_
                                   _%e172056172367%_
                                   _%hd172057172370%_
                                   _%tl172058172372%_
                                   _%e172059172375%_
                                   _%hd172060172378%_
                                   _%tl172061172380%_
                                   _%e172062172383%_
                                   _%hd172063172386%_
                                   _%tl172064172388%_
                                   _%e172065172391%_
                                   _%hd172066172394%_
                                   _%tl172067172396%_
                                   _%e172068172399%_
                                   _%hd172069172402%_
                                   _%tl172070172404%_
                                   _%e172071172407%_
                                   _%hd172072172410%_
                                   _%tl172073172412%_
                                   _%e172074172415%_
                                   _%hd172075172418%_
                                   _%tl172076172420%_
                                   _%e172077172423%_
                                   _%hd172078172426%_
                                   _%tl172079172428%_
                                   _%e172080172431%_
                                   _%hd172081172434%_
                                   _%tl172082172436%_)
                                  (_%__kont176379176380%_))))
                          (_%__match176858176859%_
                           _%e172050172351%_
                           _%hd172051172354%_
                           _%tl172052172356%_
                           _%e172053172359%_
                           _%hd172054172362%_
                           _%tl172055172364%_
                           _%e172056172367%_
                           _%hd172057172370%_
                           _%tl172058172372%_
                           _%e172059172375%_
                           _%hd172060172378%_
                           _%tl172061172380%_
                           _%e172062172383%_
                           _%hd172063172386%_
                           _%tl172064172388%_
                           _%e172065172391%_
                           _%hd172066172394%_
                           _%tl172067172396%_
                           _%e172068172399%_
                           _%hd172069172402%_
                           _%tl172070172404%_
                           _%e172071172407%_
                           _%hd172072172410%_
                           _%tl172073172412%_))))
                   (_%__match176656176657%_
                    (lambda (_%e172016172482%_
                             _%hd172017172485%_
                             _%tl172018172487%_
                             _%e172019172490%_
                             _%hd172020172493%_
                             _%tl172021172495%_
                             _%e172022172498%_
                             _%hd172023172501%_
                             _%tl172024172503%_
                             _%e172025172506%_
                             _%hd172026172509%_
                             _%tl172027172511%_
                             _%e172028172514%_
                             _%hd172029172517%_
                             _%tl172030172519%_
                             _%e172031172522%_
                             _%hd172032172525%_
                             _%tl172033172527%_
                             _%e172034172530%_
                             _%hd172035172533%_
                             _%tl172036172535%_
                             _%e172037172538%_
                             _%hd172038172541%_
                             _%tl172039172543%_
                             _%e172040172546%_
                             _%hd172041172549%_
                             _%tl172042172551%_
                             _%e172043172554%_
                             _%hd172044172557%_
                             _%tl172045172559%_)
                      (let ((_%L172562%_ _%hd172044172557%_)
                            (_%L172563%_ _%hd172035172533%_)
                            (_%L172564%_ _%hd172026172509%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L172564%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L172564%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp177490
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171906%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172563%_
                                    __tmp177490)))
                            (_%__kont176371176372%_
                             _%L172562%_
                             _%L172563%_
                             _%L172564%_)
                            (_%__match176860176861%_
                             _%e172016172482%_
                             _%hd172017172485%_
                             _%tl172018172487%_
                             _%e172019172490%_
                             _%hd172020172493%_
                             _%tl172021172495%_
                             _%e172022172498%_
                             _%hd172023172501%_
                             _%tl172024172503%_
                             _%e172025172506%_
                             _%hd172026172509%_
                             _%tl172027172511%_
                             _%e172028172514%_
                             _%hd172029172517%_
                             _%tl172030172519%_
                             _%e172031172522%_
                             _%hd172032172525%_
                             _%tl172033172527%_
                             _%e172034172530%_
                             _%hd172035172533%_
                             _%tl172036172535%_
                             _%e172037172538%_
                             _%hd172038172541%_
                             _%tl172039172543%_)))))
                   (_%__match176654176655%_
                    (lambda (_%e172016172482%_
                             _%hd172017172485%_
                             _%tl172018172487%_
                             _%e172019172490%_
                             _%hd172020172493%_
                             _%tl172021172495%_
                             _%e172022172498%_
                             _%hd172023172501%_
                             _%tl172024172503%_
                             _%e172025172506%_
                             _%hd172026172509%_
                             _%tl172027172511%_
                             _%e172028172514%_
                             _%hd172029172517%_
                             _%tl172030172519%_
                             _%e172031172522%_
                             _%hd172032172525%_
                             _%tl172033172527%_
                             _%e172034172530%_
                             _%hd172035172533%_
                             _%tl172036172535%_
                             _%e172037172538%_
                             _%hd172038172541%_
                             _%tl172039172543%_
                             _%e172040172546%_
                             _%hd172041172549%_
                             _%tl172042172551%_
                             _%e172043172554%_
                             _%hd172044172557%_
                             _%tl172045172559%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172039172543%_))
                          (_%__match176656176657%_
                           _%e172016172482%_
                           _%hd172017172485%_
                           _%tl172018172487%_
                           _%e172019172490%_
                           _%hd172020172493%_
                           _%tl172021172495%_
                           _%e172022172498%_
                           _%hd172023172501%_
                           _%tl172024172503%_
                           _%e172025172506%_
                           _%hd172026172509%_
                           _%tl172027172511%_
                           _%e172028172514%_
                           _%hd172029172517%_
                           _%tl172030172519%_
                           _%e172031172522%_
                           _%hd172032172525%_
                           _%tl172033172527%_
                           _%e172034172530%_
                           _%hd172035172533%_
                           _%tl172036172535%_
                           _%e172037172538%_
                           _%hd172038172541%_
                           _%tl172039172543%_
                           _%e172040172546%_
                           _%hd172041172549%_
                           _%tl172042172551%_
                           _%e172043172554%_
                           _%hd172044172557%_
                           _%tl172045172559%_)
                          (_%__match176734176735%_
                           _%e172016172482%_
                           _%hd172017172485%_
                           _%tl172018172487%_
                           _%e172019172490%_
                           _%hd172020172493%_
                           _%tl172021172495%_
                           _%e172022172498%_
                           _%hd172023172501%_
                           _%tl172024172503%_
                           _%e172025172506%_
                           _%hd172026172509%_
                           _%tl172027172511%_
                           _%e172028172514%_
                           _%hd172029172517%_
                           _%tl172030172519%_
                           _%e172031172522%_
                           _%hd172032172525%_
                           _%tl172033172527%_
                           _%e172034172530%_
                           _%hd172035172533%_
                           _%tl172036172535%_
                           _%e172037172538%_
                           _%hd172038172541%_
                           _%tl172039172543%_
                           _%e172040172546%_
                           _%hd172041172549%_
                           _%tl172042172551%_
                           _%e172043172554%_
                           _%hd172044172557%_
                           _%tl172045172559%_))))
                   (_%__match176644176645%_
                    (lambda (_%e172016172482%_
                             _%hd172017172485%_
                             _%tl172018172487%_
                             _%e172019172490%_
                             _%hd172020172493%_
                             _%tl172021172495%_
                             _%e172022172498%_
                             _%hd172023172501%_
                             _%tl172024172503%_
                             _%e172025172506%_
                             _%hd172026172509%_
                             _%tl172027172511%_
                             _%e172028172514%_
                             _%hd172029172517%_
                             _%tl172030172519%_
                             _%e172031172522%_
                             _%hd172032172525%_
                             _%tl172033172527%_
                             _%e172034172530%_
                             _%hd172035172533%_
                             _%tl172036172535%_
                             _%e172037172538%_
                             _%hd172038172541%_
                             _%tl172039172543%_
                             _%e172040172546%_
                             _%hd172041172549%_
                             _%tl172042172551%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd172041172549%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172042172551%_))
                              (let ((_%e172043172554%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172042172551%_))))
                                (let ((_%tl172045172559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172043172554%_)))
                                      (_%hd172044172557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172043172554%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172045172559%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl172039172543%_))
                                          (_%__match176656176657%_
                                           _%e172016172482%_
                                           _%hd172017172485%_
                                           _%tl172018172487%_
                                           _%e172019172490%_
                                           _%hd172020172493%_
                                           _%tl172021172495%_
                                           _%e172022172498%_
                                           _%hd172023172501%_
                                           _%tl172024172503%_
                                           _%e172025172506%_
                                           _%hd172026172509%_
                                           _%tl172027172511%_
                                           _%e172028172514%_
                                           _%hd172029172517%_
                                           _%tl172030172519%_
                                           _%e172031172522%_
                                           _%hd172032172525%_
                                           _%tl172033172527%_
                                           _%e172034172530%_
                                           _%hd172035172533%_
                                           _%tl172036172535%_
                                           _%e172037172538%_
                                           _%hd172038172541%_
                                           _%tl172039172543%_
                                           _%e172040172546%_
                                           _%hd172041172549%_
                                           _%tl172042172551%_
                                           _%e172043172554%_
                                           _%hd172044172557%_
                                           _%tl172045172559%_)
                                          (_%__match176734176735%_
                                           _%e172016172482%_
                                           _%hd172017172485%_
                                           _%tl172018172487%_
                                           _%e172019172490%_
                                           _%hd172020172493%_
                                           _%tl172021172495%_
                                           _%e172022172498%_
                                           _%hd172023172501%_
                                           _%tl172024172503%_
                                           _%e172025172506%_
                                           _%hd172026172509%_
                                           _%tl172027172511%_
                                           _%e172028172514%_
                                           _%hd172029172517%_
                                           _%tl172030172519%_
                                           _%e172031172522%_
                                           _%hd172032172525%_
                                           _%tl172033172527%_
                                           _%e172034172530%_
                                           _%hd172035172533%_
                                           _%tl172036172535%_
                                           _%e172037172538%_
                                           _%hd172038172541%_
                                           _%tl172039172543%_
                                           _%e172040172546%_
                                           _%hd172041172549%_
                                           _%tl172042172551%_
                                           _%e172043172554%_
                                           _%hd172044172557%_
                                           _%tl172045172559%_))
                                      (_%__match176858176859%_
                                       _%e172016172482%_
                                       _%hd172017172485%_
                                       _%tl172018172487%_
                                       _%e172019172490%_
                                       _%hd172020172493%_
                                       _%tl172021172495%_
                                       _%e172022172498%_
                                       _%hd172023172501%_
                                       _%tl172024172503%_
                                       _%e172025172506%_
                                       _%hd172026172509%_
                                       _%tl172027172511%_
                                       _%e172028172514%_
                                       _%hd172029172517%_
                                       _%tl172030172519%_
                                       _%e172031172522%_
                                       _%hd172032172525%_
                                       _%tl172033172527%_
                                       _%e172034172530%_
                                       _%hd172035172533%_
                                       _%tl172036172535%_
                                       _%e172037172538%_
                                       _%hd172038172541%_
                                       _%tl172039172543%_))))
                              (_%__match176858176859%_
                               _%e172016172482%_
                               _%hd172017172485%_
                               _%tl172018172487%_
                               _%e172019172490%_
                               _%hd172020172493%_
                               _%tl172021172495%_
                               _%e172022172498%_
                               _%hd172023172501%_
                               _%tl172024172503%_
                               _%e172025172506%_
                               _%hd172026172509%_
                               _%tl172027172511%_
                               _%e172028172514%_
                               _%hd172029172517%_
                               _%tl172030172519%_
                               _%e172031172522%_
                               _%hd172032172525%_
                               _%tl172033172527%_
                               _%e172034172530%_
                               _%hd172035172533%_
                               _%tl172036172535%_
                               _%e172037172538%_
                               _%hd172038172541%_
                               _%tl172039172543%_))
                          (_%__match176858176859%_
                           _%e172016172482%_
                           _%hd172017172485%_
                           _%tl172018172487%_
                           _%e172019172490%_
                           _%hd172020172493%_
                           _%tl172021172495%_
                           _%e172022172498%_
                           _%hd172023172501%_
                           _%tl172024172503%_
                           _%e172025172506%_
                           _%hd172026172509%_
                           _%tl172027172511%_
                           _%e172028172514%_
                           _%hd172029172517%_
                           _%tl172030172519%_
                           _%e172031172522%_
                           _%hd172032172525%_
                           _%tl172033172527%_
                           _%e172034172530%_
                           _%hd172035172533%_
                           _%tl172036172535%_
                           _%e172037172538%_
                           _%hd172038172541%_
                           _%tl172039172543%_))))
                   (_%__match176576176577%_
                    (lambda (_%e171965172601%_
                             _%hd171966172604%_
                             _%tl171967172606%_
                             _%e171968172609%_
                             _%hd171969172612%_
                             _%tl171970172614%_
                             _%e171971172617%_
                             _%hd171972172620%_
                             _%tl171973172622%_
                             _%e171974172625%_
                             _%hd171975172628%_
                             _%tl171976172630%_
                             _%e171977172633%_
                             _%hd171978172636%_
                             _%tl171979172638%_
                             _%e171980172641%_
                             _%hd171981172644%_
                             _%tl171982172646%_
                             _%e171983172649%_
                             _%hd171984172652%_
                             _%tl171985172654%_
                             _%e171986172657%_
                             _%hd171987172660%_
                             _%tl171988172662%_
                             _%e171989172665%_
                             _%hd171990172668%_
                             _%tl171991172670%_
                             _%e171992172673%_
                             _%hd171993172676%_
                             _%tl171994172678%_
                             _%e171995172681%_
                             _%hd171996172684%_
                             _%tl171997172686%_
                             _%e171998172689%_
                             _%hd171999172692%_
                             _%tl172000172694%_
                             _%e172001172697%_
                             _%hd172002172700%_
                             _%tl172003172702%_
                             _%__splice176369176370%_
                             _%target172004172705%_
                             _%tl172006172707%_)
                      (letrec ((_%loop172007172710%_
                                (lambda (_%hd172005172713%_
                                         _%args172011172715%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd172005172713%_))
                                      (let ((_%e172008172718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd172005172713%_))))
                                        (let ((_%lp-tl172010172723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172008172718%_)))
                                              (_%lp-hd172009172721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172008172718%_))))
                                          (_%loop172007172710%_
                                           _%lp-tl172010172723%_
                                           (cons _%lp-hd172009172721%_
                                                 _%args172011172715%_))))
                                      (let ((_%args172012172726%_
                                             (reverse _%args172011172715%_)))
                                        (let ((_%L172729%_
                                               _%args172012172726%_)
                                              (_%L172730%_ _%hd172002172700%_)
                                              (_%L172731%_ _%hd171993172676%_)
                                              (_%L172732%_ _%hd171984172652%_)
                                              (_%L172733%_ _%hd171975172628%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L172733%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L172732%_
                                                      'call-method))
                                                   (let ((__tmp177491
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self171906%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L172731%_
                                                      __tmp177491)))
                                              (_%__kont176367176368%_
                                               _%L172729%_
                                               _%L172730%_
                                               _%L172731%_
                                               _%L172732%_
                                               _%L172733%_)
                                              (_%__kont176379176380%_))))))))
                        (_%loop172007172710%_ _%target172004172705%_ '()))))
                   (_%__match176534176535%_
                    (lambda (_%e171965172601%_
                             _%hd171966172604%_
                             _%tl171967172606%_
                             _%e171968172609%_
                             _%hd171969172612%_
                             _%tl171970172614%_
                             _%e171971172617%_
                             _%hd171972172620%_
                             _%tl171973172622%_
                             _%e171974172625%_
                             _%hd171975172628%_
                             _%tl171976172630%_
                             _%e171977172633%_
                             _%hd171978172636%_
                             _%tl171979172638%_
                             _%e171980172641%_
                             _%hd171981172644%_
                             _%tl171982172646%_
                             _%e171983172649%_
                             _%hd171984172652%_
                             _%tl171985172654%_
                             _%e171986172657%_
                             _%hd171987172660%_
                             _%tl171988172662%_
                             _%e171989172665%_
                             _%hd171990172668%_
                             _%tl171991172670%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd171990172668%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171991172670%_))
                              (let ((_%e171992172673%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171991172670%_))))
                                (let ((_%tl171994172678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171992172673%_)))
                                      (_%hd171993172676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171992172673%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl171994172678%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl171988172662%_))
                                          (let ((_%e171995172681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl171988172662%_))))
                                            (let ((_%tl171997172686%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e171995172681%_)))
                                                  (_%hd171996172684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e171995172681%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd171996172684%_))
                                                  (let ((_%e171998172689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd171996172684%_))))
                                                    (let ((_%tl172000172694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e171998172689%_)))
                                                          (_%hd171999172692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e171998172689%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd171999172692%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd171999172692%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172000172694%_))
                          (let ((_%e172001172697%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172000172694%_))))
                            (let ((_%tl172003172702%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172001172697%_)))
                                  (_%hd172002172700%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172001172697%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172003172702%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl171997172686%_))
                                      (let ((_%__splice176369176370%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl171997172686%_
                                                '0))))
                                        (let ((_%tl172006172707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice176369176370%_
                                                  '1)))
                                              (_%target172004172705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice176369176370%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl172006172707%_))
                                              (_%__match176576176577%_
                                               _%e171965172601%_
                                               _%hd171966172604%_
                                               _%tl171967172606%_
                                               _%e171968172609%_
                                               _%hd171969172612%_
                                               _%tl171970172614%_
                                               _%e171971172617%_
                                               _%hd171972172620%_
                                               _%tl171973172622%_
                                               _%e171974172625%_
                                               _%hd171975172628%_
                                               _%tl171976172630%_
                                               _%e171977172633%_
                                               _%hd171978172636%_
                                               _%tl171979172638%_
                                               _%e171980172641%_
                                               _%hd171981172644%_
                                               _%tl171982172646%_
                                               _%e171983172649%_
                                               _%hd171984172652%_
                                               _%tl171985172654%_
                                               _%e171986172657%_
                                               _%hd171987172660%_
                                               _%tl171988172662%_
                                               _%e171989172665%_
                                               _%hd171990172668%_
                                               _%tl171991172670%_
                                               _%e171992172673%_
                                               _%hd171993172676%_
                                               _%tl171994172678%_
                                               _%e171995172681%_
                                               _%hd171996172684%_
                                               _%tl171997172686%_
                                               _%e171998172689%_
                                               _%hd171999172692%_
                                               _%tl172000172694%_
                                               _%e172001172697%_
                                               _%hd172002172700%_
                                               _%tl172003172702%_
                                               _%__splice176369176370%_
                                               _%target172004172705%_
                                               _%tl172006172707%_)
                                              (_%__kont176379176380%_))))
                                      (_%__kont176379176380%_))
                                  (_%__kont176379176380%_))))
                          (_%__kont176379176380%_))
                      (_%__kont176379176380%_))
                  (_%__kont176379176380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176379176380%_))))
                                          (_%__match176858176859%_
                                           _%e171965172601%_
                                           _%hd171966172604%_
                                           _%tl171967172606%_
                                           _%e171968172609%_
                                           _%hd171969172612%_
                                           _%tl171970172614%_
                                           _%e171971172617%_
                                           _%hd171972172620%_
                                           _%tl171973172622%_
                                           _%e171974172625%_
                                           _%hd171975172628%_
                                           _%tl171976172630%_
                                           _%e171977172633%_
                                           _%hd171978172636%_
                                           _%tl171979172638%_
                                           _%e171980172641%_
                                           _%hd171981172644%_
                                           _%tl171982172646%_
                                           _%e171983172649%_
                                           _%hd171984172652%_
                                           _%tl171985172654%_
                                           _%e171986172657%_
                                           _%hd171987172660%_
                                           _%tl171988172662%_))
                                      (_%__match176858176859%_
                                       _%e171965172601%_
                                       _%hd171966172604%_
                                       _%tl171967172606%_
                                       _%e171968172609%_
                                       _%hd171969172612%_
                                       _%tl171970172614%_
                                       _%e171971172617%_
                                       _%hd171972172620%_
                                       _%tl171973172622%_
                                       _%e171974172625%_
                                       _%hd171975172628%_
                                       _%tl171976172630%_
                                       _%e171977172633%_
                                       _%hd171978172636%_
                                       _%tl171979172638%_
                                       _%e171980172641%_
                                       _%hd171981172644%_
                                       _%tl171982172646%_
                                       _%e171983172649%_
                                       _%hd171984172652%_
                                       _%tl171985172654%_
                                       _%e171986172657%_
                                       _%hd171987172660%_
                                       _%tl171988172662%_))))
                              (_%__match176858176859%_
                               _%e171965172601%_
                               _%hd171966172604%_
                               _%tl171967172606%_
                               _%e171968172609%_
                               _%hd171969172612%_
                               _%tl171970172614%_
                               _%e171971172617%_
                               _%hd171972172620%_
                               _%tl171973172622%_
                               _%e171974172625%_
                               _%hd171975172628%_
                               _%tl171976172630%_
                               _%e171977172633%_
                               _%hd171978172636%_
                               _%tl171979172638%_
                               _%e171980172641%_
                               _%hd171981172644%_
                               _%tl171982172646%_
                               _%e171983172649%_
                               _%hd171984172652%_
                               _%tl171985172654%_
                               _%e171986172657%_
                               _%hd171987172660%_
                               _%tl171988172662%_))
                          (_%__match176644176645%_
                           _%e171965172601%_
                           _%hd171966172604%_
                           _%tl171967172606%_
                           _%e171968172609%_
                           _%hd171969172612%_
                           _%tl171970172614%_
                           _%e171971172617%_
                           _%hd171972172620%_
                           _%tl171973172622%_
                           _%e171974172625%_
                           _%hd171975172628%_
                           _%tl171976172630%_
                           _%e171977172633%_
                           _%hd171978172636%_
                           _%tl171979172638%_
                           _%e171980172641%_
                           _%hd171981172644%_
                           _%tl171982172646%_
                           _%e171983172649%_
                           _%hd171984172652%_
                           _%tl171985172654%_
                           _%e171986172657%_
                           _%hd171987172660%_
                           _%tl171988172662%_
                           _%e171989172665%_
                           _%hd171990172668%_
                           _%tl171991172670%_))))
                   (_%__match176466176467%_
                    (lambda (_%e171921172790%_
                             _%hd171922172793%_
                             _%tl171923172795%_
                             _%e171924172798%_
                             _%hd171925172801%_
                             _%tl171926172803%_
                             _%e171927172806%_
                             _%hd171928172809%_
                             _%tl171929172811%_
                             _%e171930172814%_
                             _%hd171931172817%_
                             _%tl171932172819%_
                             _%e171933172822%_
                             _%hd171934172825%_
                             _%tl171935172827%_
                             _%e171936172830%_
                             _%hd171937172833%_
                             _%tl171938172835%_
                             _%e171939172838%_
                             _%hd171940172841%_
                             _%tl171941172843%_
                             _%e171942172846%_
                             _%hd171943172849%_
                             _%tl171944172851%_
                             _%e171945172854%_
                             _%hd171946172857%_
                             _%tl171947172859%_
                             _%e171948172862%_
                             _%hd171949172865%_
                             _%tl171950172867%_
                             _%__splice176365176366%_
                             _%target171951172870%_
                             _%tl171953172872%_)
                      (letrec ((_%loop171954172875%_
                                (lambda (_%hd171952172878%_
                                         _%args171958172880%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd171952172878%_))
                                      (let ((_%e171955172883%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd171952172878%_))))
                                        (let ((_%lp-tl171957172888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171955172883%_)))
                                              (_%lp-hd171956172886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171955172883%_))))
                                          (_%loop171954172875%_
                                           _%lp-tl171957172888%_
                                           (cons _%lp-hd171956172886%_
                                                 _%args171958172880%_))))
                                      (let ((_%args171959172891%_
                                             (reverse _%args171958172880%_)))
                                        (let ((_%L172894%_
                                               _%args171959172891%_)
                                              (_%L172895%_ _%hd171949172865%_)
                                              (_%L172896%_ _%hd171940172841%_)
                                              (_%L172897%_ _%hd171931172817%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L172897%_
                                                      'call-method))
                                                   (let ((__tmp177492
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self171906%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L172896%_
                                                      __tmp177492)))
                                              (_%__kont176363176364%_
                                               _%L172894%_
                                               _%L172895%_
                                               _%L172896%_
                                               _%L172897%_)
                                              (_%__match176654176655%_
                                               _%e171921172790%_
                                               _%hd171922172793%_
                                               _%tl171923172795%_
                                               _%e171924172798%_
                                               _%hd171925172801%_
                                               _%tl171926172803%_
                                               _%e171927172806%_
                                               _%hd171928172809%_
                                               _%tl171929172811%_
                                               _%e171930172814%_
                                               _%hd171931172817%_
                                               _%tl171932172819%_
                                               _%e171933172822%_
                                               _%hd171934172825%_
                                               _%tl171935172827%_
                                               _%e171936172830%_
                                               _%hd171937172833%_
                                               _%tl171938172835%_
                                               _%e171939172838%_
                                               _%hd171940172841%_
                                               _%tl171941172843%_
                                               _%e171942172846%_
                                               _%hd171943172849%_
                                               _%tl171944172851%_
                                               _%e171945172854%_
                                               _%hd171946172857%_
                                               _%tl171947172859%_
                                               _%e171948172862%_
                                               _%hd171949172865%_
                                               _%tl171950172867%_))))))))
                        (_%loop171954172875%_ _%target171951172870%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx176361176362%_))
                  (let ((_%e171921172790%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx176361176362%_))))
                    (let ((_%tl171923172795%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171921172790%_)))
                          (_%hd171922172793%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171921172790%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171923172795%_))
                          (let ((_%e171924172798%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171923172795%_))))
                            (let ((_%tl171926172803%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171924172798%_)))
                                  (_%hd171925172801%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171924172798%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd171925172801%_))
                                  (let ((_%e171927172806%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd171925172801%_))))
                                    (let ((_%tl171929172811%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e171927172806%_)))
                                          (_%hd171928172809%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e171927172806%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd171928172809%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd171928172809%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl171929172811%_))
                                                  (let ((_%e171930172814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl171929172811%_))))
                                                    (let ((_%tl171932172819%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e171930172814%_)))
                                                          (_%hd171931172817%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e171930172814%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl171932172819%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl171926172803%_))
                      (let ((_%e171933172822%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl171926172803%_))))
                        (let ((_%tl171935172827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171933172822%_)))
                              (_%hd171934172825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171933172822%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd171934172825%_))
                              (let ((_%e171936172830%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd171934172825%_))))
                                (let ((_%tl171938172835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171936172830%_)))
                                      (_%hd171937172833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171936172830%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd171937172833%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd171937172833%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl171938172835%_))
                                              (let ((_%e171939172838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl171938172835%_))))
                                                (let ((_%tl171941172843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e171939172838%_)))
                                                      (_%hd171940172841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e171939172838%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171941172843%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl171935172827%_))
                                                          (let ((_%e171942172846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl171935172827%_))))
                    (let ((_%tl171944172851%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171942172846%_)))
                          (_%hd171943172849%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171942172846%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd171943172849%_))
                          (let ((_%e171945172854%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd171943172849%_))))
                            (let ((_%tl171947172859%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171945172854%_)))
                                  (_%hd171946172857%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171945172854%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd171946172857%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd171946172857%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl171947172859%_))
                                          (let ((_%e171948172862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl171947172859%_))))
                                            (let ((_%tl171950172867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e171948172862%_)))
                                                  (_%hd171949172865%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e171948172862%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl171950172867%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl171944172851%_))
                                                      (let ((_%__splice176365176366%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl171944172851%_ '0))))
                (let ((_%tl171953172872%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice176365176366%_ '1)))
                      (_%target171951172870%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice176365176366%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl171953172872%_))
                      (_%__match176466176467%_
                       _%e171921172790%_
                       _%hd171922172793%_
                       _%tl171923172795%_
                       _%e171924172798%_
                       _%hd171925172801%_
                       _%tl171926172803%_
                       _%e171927172806%_
                       _%hd171928172809%_
                       _%tl171929172811%_
                       _%e171930172814%_
                       _%hd171931172817%_
                       _%tl171932172819%_
                       _%e171933172822%_
                       _%hd171934172825%_
                       _%tl171935172827%_
                       _%e171936172830%_
                       _%hd171937172833%_
                       _%tl171938172835%_
                       _%e171939172838%_
                       _%hd171940172841%_
                       _%tl171941172843%_
                       _%e171942172846%_
                       _%hd171943172849%_
                       _%tl171944172851%_
                       _%e171945172854%_
                       _%hd171946172857%_
                       _%tl171947172859%_
                       _%e171948172862%_
                       _%hd171949172865%_
                       _%tl171950172867%_
                       _%__splice176365176366%_
                       _%target171951172870%_
                       _%tl171953172872%_)
                      (_%__match176654176655%_
                       _%e171921172790%_
                       _%hd171922172793%_
                       _%tl171923172795%_
                       _%e171924172798%_
                       _%hd171925172801%_
                       _%tl171926172803%_
                       _%e171927172806%_
                       _%hd171928172809%_
                       _%tl171929172811%_
                       _%e171930172814%_
                       _%hd171931172817%_
                       _%tl171932172819%_
                       _%e171933172822%_
                       _%hd171934172825%_
                       _%tl171935172827%_
                       _%e171936172830%_
                       _%hd171937172833%_
                       _%tl171938172835%_
                       _%e171939172838%_
                       _%hd171940172841%_
                       _%tl171941172843%_
                       _%e171942172846%_
                       _%hd171943172849%_
                       _%tl171944172851%_
                       _%e171945172854%_
                       _%hd171946172857%_
                       _%tl171947172859%_
                       _%e171948172862%_
                       _%hd171949172865%_
                       _%tl171950172867%_))))
              (_%__match176654176655%_
               _%e171921172790%_
               _%hd171922172793%_
               _%tl171923172795%_
               _%e171924172798%_
               _%hd171925172801%_
               _%tl171926172803%_
               _%e171927172806%_
               _%hd171928172809%_
               _%tl171929172811%_
               _%e171930172814%_
               _%hd171931172817%_
               _%tl171932172819%_
               _%e171933172822%_
               _%hd171934172825%_
               _%tl171935172827%_
               _%e171936172830%_
               _%hd171937172833%_
               _%tl171938172835%_
               _%e171939172838%_
               _%hd171940172841%_
               _%tl171941172843%_
               _%e171942172846%_
               _%hd171943172849%_
               _%tl171944172851%_
               _%e171945172854%_
               _%hd171946172857%_
               _%tl171947172859%_
               _%e171948172862%_
               _%hd171949172865%_
               _%tl171950172867%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match176858176859%_
                                                   _%e171921172790%_
                                                   _%hd171922172793%_
                                                   _%tl171923172795%_
                                                   _%e171924172798%_
                                                   _%hd171925172801%_
                                                   _%tl171926172803%_
                                                   _%e171927172806%_
                                                   _%hd171928172809%_
                                                   _%tl171929172811%_
                                                   _%e171930172814%_
                                                   _%hd171931172817%_
                                                   _%tl171932172819%_
                                                   _%e171933172822%_
                                                   _%hd171934172825%_
                                                   _%tl171935172827%_
                                                   _%e171936172830%_
                                                   _%hd171937172833%_
                                                   _%tl171938172835%_
                                                   _%e171939172838%_
                                                   _%hd171940172841%_
                                                   _%tl171941172843%_
                                                   _%e171942172846%_
                                                   _%hd171943172849%_
                                                   _%tl171944172851%_))))
                                          (_%__match176858176859%_
                                           _%e171921172790%_
                                           _%hd171922172793%_
                                           _%tl171923172795%_
                                           _%e171924172798%_
                                           _%hd171925172801%_
                                           _%tl171926172803%_
                                           _%e171927172806%_
                                           _%hd171928172809%_
                                           _%tl171929172811%_
                                           _%e171930172814%_
                                           _%hd171931172817%_
                                           _%tl171932172819%_
                                           _%e171933172822%_
                                           _%hd171934172825%_
                                           _%tl171935172827%_
                                           _%e171936172830%_
                                           _%hd171937172833%_
                                           _%tl171938172835%_
                                           _%e171939172838%_
                                           _%hd171940172841%_
                                           _%tl171941172843%_
                                           _%e171942172846%_
                                           _%hd171943172849%_
                                           _%tl171944172851%_))
                                      (_%__match176534176535%_
                                       _%e171921172790%_
                                       _%hd171922172793%_
                                       _%tl171923172795%_
                                       _%e171924172798%_
                                       _%hd171925172801%_
                                       _%tl171926172803%_
                                       _%e171927172806%_
                                       _%hd171928172809%_
                                       _%tl171929172811%_
                                       _%e171930172814%_
                                       _%hd171931172817%_
                                       _%tl171932172819%_
                                       _%e171933172822%_
                                       _%hd171934172825%_
                                       _%tl171935172827%_
                                       _%e171936172830%_
                                       _%hd171937172833%_
                                       _%tl171938172835%_
                                       _%e171939172838%_
                                       _%hd171940172841%_
                                       _%tl171941172843%_
                                       _%e171942172846%_
                                       _%hd171943172849%_
                                       _%tl171944172851%_
                                       _%e171945172854%_
                                       _%hd171946172857%_
                                       _%tl171947172859%_))
                                  (_%__match176858176859%_
                                   _%e171921172790%_
                                   _%hd171922172793%_
                                   _%tl171923172795%_
                                   _%e171924172798%_
                                   _%hd171925172801%_
                                   _%tl171926172803%_
                                   _%e171927172806%_
                                   _%hd171928172809%_
                                   _%tl171929172811%_
                                   _%e171930172814%_
                                   _%hd171931172817%_
                                   _%tl171932172819%_
                                   _%e171933172822%_
                                   _%hd171934172825%_
                                   _%tl171935172827%_
                                   _%e171936172830%_
                                   _%hd171937172833%_
                                   _%tl171938172835%_
                                   _%e171939172838%_
                                   _%hd171940172841%_
                                   _%tl171941172843%_
                                   _%e171942172846%_
                                   _%hd171943172849%_
                                   _%tl171944172851%_))))
                          (_%__match176858176859%_
                           _%e171921172790%_
                           _%hd171922172793%_
                           _%tl171923172795%_
                           _%e171924172798%_
                           _%hd171925172801%_
                           _%tl171926172803%_
                           _%e171927172806%_
                           _%hd171928172809%_
                           _%tl171929172811%_
                           _%e171930172814%_
                           _%hd171931172817%_
                           _%tl171932172819%_
                           _%e171933172822%_
                           _%hd171934172825%_
                           _%tl171935172827%_
                           _%e171936172830%_
                           _%hd171937172833%_
                           _%tl171938172835%_
                           _%e171939172838%_
                           _%hd171940172841%_
                           _%tl171941172843%_
                           _%e171942172846%_
                           _%hd171943172849%_
                           _%tl171944172851%_))))
                  (_%__match176796176797%_
                   _%e171921172790%_
                   _%hd171922172793%_
                   _%tl171923172795%_
                   _%e171924172798%_
                   _%hd171925172801%_
                   _%tl171926172803%_
                   _%e171927172806%_
                   _%hd171928172809%_
                   _%tl171929172811%_
                   _%e171930172814%_
                   _%hd171931172817%_
                   _%tl171932172819%_
                   _%e171933172822%_
                   _%hd171934172825%_
                   _%tl171935172827%_
                   _%e171936172830%_
                   _%hd171937172833%_
                   _%tl171938172835%_
                   _%e171939172838%_
                   _%hd171940172841%_
                   _%tl171941172843%_))
              (_%__kont176379176380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont176379176380%_))
                                          (_%__kont176379176380%_))
                                      (_%__kont176379176380%_))))
                              (_%__kont176379176380%_))))
                      (_%__kont176379176380%_))
                  (_%__kont176379176380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176379176380%_))
                                              (_%__kont176379176380%_))
                                          (_%__kont176379176380%_))))
                                  (_%__kont176379176380%_))))
                          (_%__kont176379176380%_))))
                  (_%__kont176379176380%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self170845%_ _%stx170846%_)
        (letrec ((_%force-e170848%_
                  (lambda (_%target171904%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target171904%_ '()))
                                      '()))))))
          (let* ((_%__stx176863176864%_ _%stx170846%_)
                 (_%g170856171078%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx176863176864%_)))))
            (let ((_%__kont176865176866%_
                   (lambda (_%L171850%_ _%L171851%_ _%L171852%_ _%L171853%_)
                     (let ((_%$method171898%_
                            (let ((__tmp177494
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self170845%_ 'methods)))
                                  (__tmp177493
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L171851%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp177494 __tmp177493)))
                           (_%args171899%_
                            (map (lambda (_%g171886171888%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self170845%_
                                      _%g171886171888%_)))
                                 (let ((__tmp177495
                                        (lambda (_%g171890171893%_
                                                 _%g171891171895%_)
                                          (cons _%g171890171893%_
                                                _%g171891171895%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp177495 '() _%L171850%_)))))
                       (let ((__tmp177496
                              (cons '%#call
                                    (cons (_%force-e170848%_ _%$method171898%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self170845%_
                                                               'receiver))
                                                            '()))
                                                _%args171899%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp177496 _%stx170846%_)))))
                  (_%__kont176869176870%_
                   (lambda (_%L171682%_
                            _%L171683%_
                            _%L171684%_
                            _%L171685%_
                            _%L171686%_)
                     (let ((_%$method171738%_
                            (let ((__tmp177498
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self170845%_ 'methods)))
                                  (__tmp177497
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L171683%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp177498 __tmp177497)))
                           (_%args171739%_
                            (map (lambda (_%g171726171728%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self170845%_
                                      _%g171726171728%_)))
                                 (let ((__tmp177499
                                        (lambda (_%g171730171733%_
                                                 _%g171731171735%_)
                                          (cons _%g171730171733%_
                                                _%g171731171735%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp177499 '() _%L171682%_)))))
                       (let ((__tmp177500
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e170848%_
                                                 _%$method171738%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self170845%_ 'receiver))
                          '()))
              _%args171739%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp177500 _%stx170846%_)))))
                  (_%__kont176873176874%_
                   (lambda (_%L171513%_ _%L171514%_ _%L171515%_)
                     (let* ((_%$field171547%_
                             (let ((__tmp177502
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self170845%_ 'slots)))
                                   (__tmp177501
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L171513%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp177502 __tmp177501)))
                            (__tmp177503
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self170845%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field171547%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self170845%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp177503 _%stx170846%_))))
                  (_%__kont176875176876%_
                   (lambda (_%L171387%_ _%L171388%_ _%L171389%_ _%L171390%_)
                     (let ((_%$field171425%_
                            (let ((__tmp177505
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self170845%_ 'slots)))
                                  (__tmp177504
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L171388%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp177505 __tmp177504)))
                           (_%expr171426%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self170845%_ _%L171387%_))))
                       (let ((__tmp177506
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self170845%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field171425%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self170845%_ 'receiver))
                          '()))
              (cons _%expr171426%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp177506 _%stx170846%_)))))
                  (_%__kont176877176878%_
                   (lambda (_%L171259%_ _%L171260%_)
                     (let* ((_%accessor171282%_
                             (let ((__tmp177507
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171260%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp177507)))
                            (_%klass171284%_
                             (let ((__tmp177508
                                    (##structure-ref
                                     _%accessor171282%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx170846%_
                                __tmp177508)))
                            (_%slot171286%_
                             (##structure-ref
                              _%accessor171282%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor171282%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass171284%_
                                      _%slot171286%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass171284%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx170846%_
                           (let* ((_%$field171292%_
                                   (let ((__tmp177509
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170845%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp177509 _%slot171286%_)))
                                  (__tmp177510
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self170845%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field171292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self170845%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp177510
                              _%stx170846%_))))))
                  (_%__kont176879176880%_
                   (lambda (_%L171154%_ _%L171155%_ _%L171156%_)
                     (let* ((_%mutator171184%_
                             (let ((__tmp177511
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171156%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp177511)))
                            (_%klass171186%_
                             (let ((__tmp177512
                                    (##structure-ref
                                     _%mutator171184%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx170846%_
                                __tmp177512)))
                            (_%slot171188%_
                             (##structure-ref
                              _%mutator171184%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr171190%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self170845%_ _%L171154%_))))
                       (if (if (##structure-ref
                                _%mutator171184%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass171186%_
                                      _%slot171188%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass171186%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp177513
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L171156%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L171155%_
                                                                '()))
                                                    (cons _%expr171190%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp177513 _%stx170846%_))
                           (let* ((_%$field171196%_
                                   (let ((__tmp177514
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170845%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp177514 _%slot171188%_)))
                                  (__tmp177515
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self170845%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field171196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self170845%_ 'receiver))
                               '()))
                   (cons _%expr171190%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp177515
                              _%stx170846%_))))))
                  (_%__kont176881176882%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self170845%_ _%stx170846%_)))))
              (let* ((_%__match177362177363%_
                      (lambda (_%e171050171090%_
                               _%hd171051171093%_
                               _%tl171052171095%_
                               _%e171053171098%_
                               _%hd171054171101%_
                               _%tl171055171103%_
                               _%e171056171106%_
                               _%hd171057171109%_
                               _%tl171058171111%_
                               _%e171059171114%_
                               _%hd171060171117%_
                               _%tl171061171119%_
                               _%e171062171122%_
                               _%hd171063171125%_
                               _%tl171064171127%_
                               _%e171065171130%_
                               _%hd171066171133%_
                               _%tl171067171135%_
                               _%e171068171138%_
                               _%hd171069171141%_
                               _%tl171070171143%_
                               _%e171071171146%_
                               _%hd171072171149%_
                               _%tl171073171151%_)
                        (let ((_%L171154%_ _%hd171072171149%_)
                              (_%L171155%_ _%hd171069171141%_)
                              (_%L171156%_ _%hd171060171117%_))
                          (if (and (let ((__tmp177516
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170845%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171155%_
                                      __tmp177516))
                                   (let ((__tmp177517
                                          (let ((__tmp177518
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L171156%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp177518))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp177517
                                      'gxc#!mutator::t)))
                              (_%__kont176879176880%_
                               _%L171154%_
                               _%L171155%_
                               _%L171156%_)
                              (_%__kont176881176882%_)))))
                     (_%__match177360177361%_
                      (lambda (_%e171050171090%_
                               _%hd171051171093%_
                               _%tl171052171095%_
                               _%e171053171098%_
                               _%hd171054171101%_
                               _%tl171055171103%_
                               _%e171056171106%_
                               _%hd171057171109%_
                               _%tl171058171111%_
                               _%e171059171114%_
                               _%hd171060171117%_
                               _%tl171061171119%_
                               _%e171062171122%_
                               _%hd171063171125%_
                               _%tl171064171127%_
                               _%e171065171130%_
                               _%hd171066171133%_
                               _%tl171067171135%_
                               _%e171068171138%_
                               _%hd171069171141%_
                               _%tl171070171143%_
                               _%e171071171146%_
                               _%hd171072171149%_
                               _%tl171073171151%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171073171151%_))
                            (_%__match177362177363%_
                             _%e171050171090%_
                             _%hd171051171093%_
                             _%tl171052171095%_
                             _%e171053171098%_
                             _%hd171054171101%_
                             _%tl171055171103%_
                             _%e171056171106%_
                             _%hd171057171109%_
                             _%tl171058171111%_
                             _%e171059171114%_
                             _%hd171060171117%_
                             _%tl171061171119%_
                             _%e171062171122%_
                             _%hd171063171125%_
                             _%tl171064171127%_
                             _%e171065171130%_
                             _%hd171066171133%_
                             _%tl171067171135%_
                             _%e171068171138%_
                             _%hd171069171141%_
                             _%tl171070171143%_
                             _%e171071171146%_
                             _%hd171072171149%_
                             _%tl171073171151%_)
                            (_%__kont176881176882%_))))
                     (_%__match177354177355%_
                      (lambda (_%e171050171090%_
                               _%hd171051171093%_
                               _%tl171052171095%_
                               _%e171053171098%_
                               _%hd171054171101%_
                               _%tl171055171103%_
                               _%e171056171106%_
                               _%hd171057171109%_
                               _%tl171058171111%_
                               _%e171059171114%_
                               _%hd171060171117%_
                               _%tl171061171119%_
                               _%e171062171122%_
                               _%hd171063171125%_
                               _%tl171064171127%_
                               _%e171065171130%_
                               _%hd171066171133%_
                               _%tl171067171135%_
                               _%e171068171138%_
                               _%hd171069171141%_
                               _%tl171070171143%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171064171127%_))
                            (let ((_%e171071171146%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171064171127%_))))
                              (let ((_%tl171073171151%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171071171146%_)))
                                    (_%hd171072171149%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171071171146%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171073171151%_))
                                    (_%__match177362177363%_
                                     _%e171050171090%_
                                     _%hd171051171093%_
                                     _%tl171052171095%_
                                     _%e171053171098%_
                                     _%hd171054171101%_
                                     _%tl171055171103%_
                                     _%e171056171106%_
                                     _%hd171057171109%_
                                     _%tl171058171111%_
                                     _%e171059171114%_
                                     _%hd171060171117%_
                                     _%tl171061171119%_
                                     _%e171062171122%_
                                     _%hd171063171125%_
                                     _%tl171064171127%_
                                     _%e171065171130%_
                                     _%hd171066171133%_
                                     _%tl171067171135%_
                                     _%e171068171138%_
                                     _%hd171069171141%_
                                     _%tl171070171143%_
                                     _%e171071171146%_
                                     _%hd171072171149%_
                                     _%tl171073171151%_)
                                    (_%__kont176881176882%_))))
                            (_%__kont176881176882%_))))
                     (_%__match177300177301%_
                      (lambda (_%e171026171203%_
                               _%hd171027171206%_
                               _%tl171028171208%_
                               _%e171029171211%_
                               _%hd171030171214%_
                               _%tl171031171216%_
                               _%e171032171219%_
                               _%hd171033171222%_
                               _%tl171034171224%_
                               _%e171035171227%_
                               _%hd171036171230%_
                               _%tl171037171232%_
                               _%e171038171235%_
                               _%hd171039171238%_
                               _%tl171040171240%_
                               _%e171041171243%_
                               _%hd171042171246%_
                               _%tl171043171248%_
                               _%e171044171251%_
                               _%hd171045171254%_
                               _%tl171046171256%_)
                        (let ((_%L171259%_ _%hd171045171254%_)
                              (_%L171260%_ _%hd171036171230%_))
                          (if (and (let ((__tmp177519
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170845%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171259%_
                                      __tmp177519))
                                   (let ((__tmp177520
                                          (let ((__tmp177521
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L171260%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp177521))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp177520
                                      'gxc#!accessor::t)))
                              (_%__kont176877176878%_ _%L171259%_ _%L171260%_)
                              (_%__kont176881176882%_)))))
                     (_%__match177298177299%_
                      (lambda (_%e171026171203%_
                               _%hd171027171206%_
                               _%tl171028171208%_
                               _%e171029171211%_
                               _%hd171030171214%_
                               _%tl171031171216%_
                               _%e171032171219%_
                               _%hd171033171222%_
                               _%tl171034171224%_
                               _%e171035171227%_
                               _%hd171036171230%_
                               _%tl171037171232%_
                               _%e171038171235%_
                               _%hd171039171238%_
                               _%tl171040171240%_
                               _%e171041171243%_
                               _%hd171042171246%_
                               _%tl171043171248%_
                               _%e171044171251%_
                               _%hd171045171254%_
                               _%tl171046171256%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171040171240%_))
                            (_%__match177300177301%_
                             _%e171026171203%_
                             _%hd171027171206%_
                             _%tl171028171208%_
                             _%e171029171211%_
                             _%hd171030171214%_
                             _%tl171031171216%_
                             _%e171032171219%_
                             _%hd171033171222%_
                             _%tl171034171224%_
                             _%e171035171227%_
                             _%hd171036171230%_
                             _%tl171037171232%_
                             _%e171038171235%_
                             _%hd171039171238%_
                             _%tl171040171240%_
                             _%e171041171243%_
                             _%hd171042171246%_
                             _%tl171043171248%_
                             _%e171044171251%_
                             _%hd171045171254%_
                             _%tl171046171256%_)
                            (_%__match177354177355%_
                             _%e171026171203%_
                             _%hd171027171206%_
                             _%tl171028171208%_
                             _%e171029171211%_
                             _%hd171030171214%_
                             _%tl171031171216%_
                             _%e171032171219%_
                             _%hd171033171222%_
                             _%tl171034171224%_
                             _%e171035171227%_
                             _%hd171036171230%_
                             _%tl171037171232%_
                             _%e171038171235%_
                             _%hd171039171238%_
                             _%tl171040171240%_
                             _%e171041171243%_
                             _%hd171042171246%_
                             _%tl171043171248%_
                             _%e171044171251%_
                             _%hd171045171254%_
                             _%tl171046171256%_))))
                     (_%__match177244177245%_
                      (lambda (_%e170991171299%_
                               _%hd170992171302%_
                               _%tl170993171304%_
                               _%e170994171307%_
                               _%hd170995171310%_
                               _%tl170996171312%_
                               _%e170997171315%_
                               _%hd170998171318%_
                               _%tl170999171320%_
                               _%e171000171323%_
                               _%hd171001171326%_
                               _%tl171002171328%_
                               _%e171003171331%_
                               _%hd171004171334%_
                               _%tl171005171336%_
                               _%e171006171339%_
                               _%hd171007171342%_
                               _%tl171008171344%_
                               _%e171009171347%_
                               _%hd171010171350%_
                               _%tl171011171352%_
                               _%e171012171355%_
                               _%hd171013171358%_
                               _%tl171014171360%_
                               _%e171015171363%_
                               _%hd171016171366%_
                               _%tl171017171368%_
                               _%e171018171371%_
                               _%hd171019171374%_
                               _%tl171020171376%_
                               _%e171021171379%_
                               _%hd171022171382%_
                               _%tl171023171384%_)
                        (let ((_%L171387%_ _%hd171022171382%_)
                              (_%L171388%_ _%hd171019171374%_)
                              (_%L171389%_ _%hd171010171350%_)
                              (_%L171390%_ _%hd171001171326%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L171390%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L171390%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp177522
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170845%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171389%_
                                      __tmp177522)))
                              (_%__kont176875176876%_
                               _%L171387%_
                               _%L171388%_
                               _%L171389%_
                               _%L171390%_)
                              (_%__kont176881176882%_)))))
                     (_%__match177236177237%_
                      (lambda (_%e170991171299%_
                               _%hd170992171302%_
                               _%tl170993171304%_
                               _%e170994171307%_
                               _%hd170995171310%_
                               _%tl170996171312%_
                               _%e170997171315%_
                               _%hd170998171318%_
                               _%tl170999171320%_
                               _%e171000171323%_
                               _%hd171001171326%_
                               _%tl171002171328%_
                               _%e171003171331%_
                               _%hd171004171334%_
                               _%tl171005171336%_
                               _%e171006171339%_
                               _%hd171007171342%_
                               _%tl171008171344%_
                               _%e171009171347%_
                               _%hd171010171350%_
                               _%tl171011171352%_
                               _%e171012171355%_
                               _%hd171013171358%_
                               _%tl171014171360%_
                               _%e171015171363%_
                               _%hd171016171366%_
                               _%tl171017171368%_
                               _%e171018171371%_
                               _%hd171019171374%_
                               _%tl171020171376%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171014171360%_))
                            (let ((_%e171021171379%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171014171360%_))))
                              (let ((_%tl171023171384%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171021171379%_)))
                                    (_%hd171022171382%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171021171379%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171023171384%_))
                                    (_%__match177244177245%_
                                     _%e170991171299%_
                                     _%hd170992171302%_
                                     _%tl170993171304%_
                                     _%e170994171307%_
                                     _%hd170995171310%_
                                     _%tl170996171312%_
                                     _%e170997171315%_
                                     _%hd170998171318%_
                                     _%tl170999171320%_
                                     _%e171000171323%_
                                     _%hd171001171326%_
                                     _%tl171002171328%_
                                     _%e171003171331%_
                                     _%hd171004171334%_
                                     _%tl171005171336%_
                                     _%e171006171339%_
                                     _%hd171007171342%_
                                     _%tl171008171344%_
                                     _%e171009171347%_
                                     _%hd171010171350%_
                                     _%tl171011171352%_
                                     _%e171012171355%_
                                     _%hd171013171358%_
                                     _%tl171014171360%_
                                     _%e171015171363%_
                                     _%hd171016171366%_
                                     _%tl171017171368%_
                                     _%e171018171371%_
                                     _%hd171019171374%_
                                     _%tl171020171376%_
                                     _%e171021171379%_
                                     _%hd171022171382%_
                                     _%tl171023171384%_)
                                    (_%__kont176881176882%_))))
                            (_%__match177360177361%_
                             _%e170991171299%_
                             _%hd170992171302%_
                             _%tl170993171304%_
                             _%e170994171307%_
                             _%hd170995171310%_
                             _%tl170996171312%_
                             _%e170997171315%_
                             _%hd170998171318%_
                             _%tl170999171320%_
                             _%e171000171323%_
                             _%hd171001171326%_
                             _%tl171002171328%_
                             _%e171003171331%_
                             _%hd171004171334%_
                             _%tl171005171336%_
                             _%e171006171339%_
                             _%hd171007171342%_
                             _%tl171008171344%_
                             _%e171009171347%_
                             _%hd171010171350%_
                             _%tl171011171352%_
                             _%e171012171355%_
                             _%hd171013171358%_
                             _%tl171014171360%_))))
                     (_%__match177158177159%_
                      (lambda (_%e170957171433%_
                               _%hd170958171436%_
                               _%tl170959171438%_
                               _%e170960171441%_
                               _%hd170961171444%_
                               _%tl170962171446%_
                               _%e170963171449%_
                               _%hd170964171452%_
                               _%tl170965171454%_
                               _%e170966171457%_
                               _%hd170967171460%_
                               _%tl170968171462%_
                               _%e170969171465%_
                               _%hd170970171468%_
                               _%tl170971171470%_
                               _%e170972171473%_
                               _%hd170973171476%_
                               _%tl170974171478%_
                               _%e170975171481%_
                               _%hd170976171484%_
                               _%tl170977171486%_
                               _%e170978171489%_
                               _%hd170979171492%_
                               _%tl170980171494%_
                               _%e170981171497%_
                               _%hd170982171500%_
                               _%tl170983171502%_
                               _%e170984171505%_
                               _%hd170985171508%_
                               _%tl170986171510%_)
                        (let ((_%L171513%_ _%hd170985171508%_)
                              (_%L171514%_ _%hd170976171484%_)
                              (_%L171515%_ _%hd170967171460%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L171515%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L171515%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp177523
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170845%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171514%_
                                      __tmp177523)))
                              (_%__kont176873176874%_
                               _%L171513%_
                               _%L171514%_
                               _%L171515%_)
                              (_%__match177362177363%_
                               _%e170957171433%_
                               _%hd170958171436%_
                               _%tl170959171438%_
                               _%e170960171441%_
                               _%hd170961171444%_
                               _%tl170962171446%_
                               _%e170963171449%_
                               _%hd170964171452%_
                               _%tl170965171454%_
                               _%e170966171457%_
                               _%hd170967171460%_
                               _%tl170968171462%_
                               _%e170969171465%_
                               _%hd170970171468%_
                               _%tl170971171470%_
                               _%e170972171473%_
                               _%hd170973171476%_
                               _%tl170974171478%_
                               _%e170975171481%_
                               _%hd170976171484%_
                               _%tl170977171486%_
                               _%e170978171489%_
                               _%hd170979171492%_
                               _%tl170980171494%_)))))
                     (_%__match177156177157%_
                      (lambda (_%e170957171433%_
                               _%hd170958171436%_
                               _%tl170959171438%_
                               _%e170960171441%_
                               _%hd170961171444%_
                               _%tl170962171446%_
                               _%e170963171449%_
                               _%hd170964171452%_
                               _%tl170965171454%_
                               _%e170966171457%_
                               _%hd170967171460%_
                               _%tl170968171462%_
                               _%e170969171465%_
                               _%hd170970171468%_
                               _%tl170971171470%_
                               _%e170972171473%_
                               _%hd170973171476%_
                               _%tl170974171478%_
                               _%e170975171481%_
                               _%hd170976171484%_
                               _%tl170977171486%_
                               _%e170978171489%_
                               _%hd170979171492%_
                               _%tl170980171494%_
                               _%e170981171497%_
                               _%hd170982171500%_
                               _%tl170983171502%_
                               _%e170984171505%_
                               _%hd170985171508%_
                               _%tl170986171510%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170980171494%_))
                            (_%__match177158177159%_
                             _%e170957171433%_
                             _%hd170958171436%_
                             _%tl170959171438%_
                             _%e170960171441%_
                             _%hd170961171444%_
                             _%tl170962171446%_
                             _%e170963171449%_
                             _%hd170964171452%_
                             _%tl170965171454%_
                             _%e170966171457%_
                             _%hd170967171460%_
                             _%tl170968171462%_
                             _%e170969171465%_
                             _%hd170970171468%_
                             _%tl170971171470%_
                             _%e170972171473%_
                             _%hd170973171476%_
                             _%tl170974171478%_
                             _%e170975171481%_
                             _%hd170976171484%_
                             _%tl170977171486%_
                             _%e170978171489%_
                             _%hd170979171492%_
                             _%tl170980171494%_
                             _%e170981171497%_
                             _%hd170982171500%_
                             _%tl170983171502%_
                             _%e170984171505%_
                             _%hd170985171508%_
                             _%tl170986171510%_)
                            (_%__match177236177237%_
                             _%e170957171433%_
                             _%hd170958171436%_
                             _%tl170959171438%_
                             _%e170960171441%_
                             _%hd170961171444%_
                             _%tl170962171446%_
                             _%e170963171449%_
                             _%hd170964171452%_
                             _%tl170965171454%_
                             _%e170966171457%_
                             _%hd170967171460%_
                             _%tl170968171462%_
                             _%e170969171465%_
                             _%hd170970171468%_
                             _%tl170971171470%_
                             _%e170972171473%_
                             _%hd170973171476%_
                             _%tl170974171478%_
                             _%e170975171481%_
                             _%hd170976171484%_
                             _%tl170977171486%_
                             _%e170978171489%_
                             _%hd170979171492%_
                             _%tl170980171494%_
                             _%e170981171497%_
                             _%hd170982171500%_
                             _%tl170983171502%_
                             _%e170984171505%_
                             _%hd170985171508%_
                             _%tl170986171510%_))))
                     (_%__match177146177147%_
                      (lambda (_%e170957171433%_
                               _%hd170958171436%_
                               _%tl170959171438%_
                               _%e170960171441%_
                               _%hd170961171444%_
                               _%tl170962171446%_
                               _%e170963171449%_
                               _%hd170964171452%_
                               _%tl170965171454%_
                               _%e170966171457%_
                               _%hd170967171460%_
                               _%tl170968171462%_
                               _%e170969171465%_
                               _%hd170970171468%_
                               _%tl170971171470%_
                               _%e170972171473%_
                               _%hd170973171476%_
                               _%tl170974171478%_
                               _%e170975171481%_
                               _%hd170976171484%_
                               _%tl170977171486%_
                               _%e170978171489%_
                               _%hd170979171492%_
                               _%tl170980171494%_
                               _%e170981171497%_
                               _%hd170982171500%_
                               _%tl170983171502%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd170982171500%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170983171502%_))
                                (let ((_%e170984171505%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170983171502%_))))
                                  (let ((_%tl170986171510%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170984171505%_)))
                                        (_%hd170985171508%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170984171505%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl170986171510%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl170980171494%_))
                                            (_%__match177158177159%_
                                             _%e170957171433%_
                                             _%hd170958171436%_
                                             _%tl170959171438%_
                                             _%e170960171441%_
                                             _%hd170961171444%_
                                             _%tl170962171446%_
                                             _%e170963171449%_
                                             _%hd170964171452%_
                                             _%tl170965171454%_
                                             _%e170966171457%_
                                             _%hd170967171460%_
                                             _%tl170968171462%_
                                             _%e170969171465%_
                                             _%hd170970171468%_
                                             _%tl170971171470%_
                                             _%e170972171473%_
                                             _%hd170973171476%_
                                             _%tl170974171478%_
                                             _%e170975171481%_
                                             _%hd170976171484%_
                                             _%tl170977171486%_
                                             _%e170978171489%_
                                             _%hd170979171492%_
                                             _%tl170980171494%_
                                             _%e170981171497%_
                                             _%hd170982171500%_
                                             _%tl170983171502%_
                                             _%e170984171505%_
                                             _%hd170985171508%_
                                             _%tl170986171510%_)
                                            (_%__match177236177237%_
                                             _%e170957171433%_
                                             _%hd170958171436%_
                                             _%tl170959171438%_
                                             _%e170960171441%_
                                             _%hd170961171444%_
                                             _%tl170962171446%_
                                             _%e170963171449%_
                                             _%hd170964171452%_
                                             _%tl170965171454%_
                                             _%e170966171457%_
                                             _%hd170967171460%_
                                             _%tl170968171462%_
                                             _%e170969171465%_
                                             _%hd170970171468%_
                                             _%tl170971171470%_
                                             _%e170972171473%_
                                             _%hd170973171476%_
                                             _%tl170974171478%_
                                             _%e170975171481%_
                                             _%hd170976171484%_
                                             _%tl170977171486%_
                                             _%e170978171489%_
                                             _%hd170979171492%_
                                             _%tl170980171494%_
                                             _%e170981171497%_
                                             _%hd170982171500%_
                                             _%tl170983171502%_
                                             _%e170984171505%_
                                             _%hd170985171508%_
                                             _%tl170986171510%_))
                                        (_%__match177360177361%_
                                         _%e170957171433%_
                                         _%hd170958171436%_
                                         _%tl170959171438%_
                                         _%e170960171441%_
                                         _%hd170961171444%_
                                         _%tl170962171446%_
                                         _%e170963171449%_
                                         _%hd170964171452%_
                                         _%tl170965171454%_
                                         _%e170966171457%_
                                         _%hd170967171460%_
                                         _%tl170968171462%_
                                         _%e170969171465%_
                                         _%hd170970171468%_
                                         _%tl170971171470%_
                                         _%e170972171473%_
                                         _%hd170973171476%_
                                         _%tl170974171478%_
                                         _%e170975171481%_
                                         _%hd170976171484%_
                                         _%tl170977171486%_
                                         _%e170978171489%_
                                         _%hd170979171492%_
                                         _%tl170980171494%_))))
                                (_%__match177360177361%_
                                 _%e170957171433%_
                                 _%hd170958171436%_
                                 _%tl170959171438%_
                                 _%e170960171441%_
                                 _%hd170961171444%_
                                 _%tl170962171446%_
                                 _%e170963171449%_
                                 _%hd170964171452%_
                                 _%tl170965171454%_
                                 _%e170966171457%_
                                 _%hd170967171460%_
                                 _%tl170968171462%_
                                 _%e170969171465%_
                                 _%hd170970171468%_
                                 _%tl170971171470%_
                                 _%e170972171473%_
                                 _%hd170973171476%_
                                 _%tl170974171478%_
                                 _%e170975171481%_
                                 _%hd170976171484%_
                                 _%tl170977171486%_
                                 _%e170978171489%_
                                 _%hd170979171492%_
                                 _%tl170980171494%_))
                            (_%__match177360177361%_
                             _%e170957171433%_
                             _%hd170958171436%_
                             _%tl170959171438%_
                             _%e170960171441%_
                             _%hd170961171444%_
                             _%tl170962171446%_
                             _%e170963171449%_
                             _%hd170964171452%_
                             _%tl170965171454%_
                             _%e170966171457%_
                             _%hd170967171460%_
                             _%tl170968171462%_
                             _%e170969171465%_
                             _%hd170970171468%_
                             _%tl170971171470%_
                             _%e170972171473%_
                             _%hd170973171476%_
                             _%tl170974171478%_
                             _%e170975171481%_
                             _%hd170976171484%_
                             _%tl170977171486%_
                             _%e170978171489%_
                             _%hd170979171492%_
                             _%tl170980171494%_))))
                     (_%__match177078177079%_
                      (lambda (_%e170906171554%_
                               _%hd170907171557%_
                               _%tl170908171559%_
                               _%e170909171562%_
                               _%hd170910171565%_
                               _%tl170911171567%_
                               _%e170912171570%_
                               _%hd170913171573%_
                               _%tl170914171575%_
                               _%e170915171578%_
                               _%hd170916171581%_
                               _%tl170917171583%_
                               _%e170918171586%_
                               _%hd170919171589%_
                               _%tl170920171591%_
                               _%e170921171594%_
                               _%hd170922171597%_
                               _%tl170923171599%_
                               _%e170924171602%_
                               _%hd170925171605%_
                               _%tl170926171607%_
                               _%e170927171610%_
                               _%hd170928171613%_
                               _%tl170929171615%_
                               _%e170930171618%_
                               _%hd170931171621%_
                               _%tl170932171623%_
                               _%e170933171626%_
                               _%hd170934171629%_
                               _%tl170935171631%_
                               _%e170936171634%_
                               _%hd170937171637%_
                               _%tl170938171639%_
                               _%e170939171642%_
                               _%hd170940171645%_
                               _%tl170941171647%_
                               _%e170942171650%_
                               _%hd170943171653%_
                               _%tl170944171655%_
                               _%__splice176871176872%_
                               _%target170945171658%_
                               _%tl170947171660%_)
                        (letrec ((_%loop170948171663%_
                                  (lambda (_%hd170946171666%_
                                           _%args170952171668%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd170946171666%_))
                                        (let ((_%e170949171671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd170946171666%_))))
                                          (let ((_%lp-tl170951171676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170949171671%_)))
                                                (_%lp-hd170950171674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170949171671%_))))
                                            (_%loop170948171663%_
                                             _%lp-tl170951171676%_
                                             (cons _%lp-hd170950171674%_
                                                   _%args170952171668%_))))
                                        (let ((_%args170953171679%_
                                               (reverse _%args170952171668%_)))
                                          (let ((_%L171682%_
                                                 _%args170953171679%_)
                                                (_%L171683%_
                                                 _%hd170943171653%_)
                                                (_%L171684%_
                                                 _%hd170934171629%_)
                                                (_%L171685%_
                                                 _%hd170925171605%_)
                                                (_%L171686%_
                                                 _%hd170916171581%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L171686%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L171685%_
                                                        'call-method))
                                                     (let ((__tmp177524
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self170845%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L171684%_
                                                        __tmp177524)))
                                                (_%__kont176869176870%_
                                                 _%L171682%_
                                                 _%L171683%_
                                                 _%L171684%_
                                                 _%L171685%_
                                                 _%L171686%_)
                                                (_%__kont176881176882%_))))))))
                          (_%loop170948171663%_ _%target170945171658%_ '()))))
                     (_%__match177036177037%_
                      (lambda (_%e170906171554%_
                               _%hd170907171557%_
                               _%tl170908171559%_
                               _%e170909171562%_
                               _%hd170910171565%_
                               _%tl170911171567%_
                               _%e170912171570%_
                               _%hd170913171573%_
                               _%tl170914171575%_
                               _%e170915171578%_
                               _%hd170916171581%_
                               _%tl170917171583%_
                               _%e170918171586%_
                               _%hd170919171589%_
                               _%tl170920171591%_
                               _%e170921171594%_
                               _%hd170922171597%_
                               _%tl170923171599%_
                               _%e170924171602%_
                               _%hd170925171605%_
                               _%tl170926171607%_
                               _%e170927171610%_
                               _%hd170928171613%_
                               _%tl170929171615%_
                               _%e170930171618%_
                               _%hd170931171621%_
                               _%tl170932171623%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd170931171621%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170932171623%_))
                                (let ((_%e170933171626%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170932171623%_))))
                                  (let ((_%tl170935171631%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170933171626%_)))
                                        (_%hd170934171629%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170933171626%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl170935171631%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170929171615%_))
                                            (let ((_%e170936171634%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170929171615%_))))
                                              (let ((_%tl170938171639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170936171634%_)))
                                                    (_%hd170937171637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170936171634%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd170937171637%_))
                                                    (let ((_%e170939171642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd170937171637%_))))
                                                      (let ((_%tl170941171647%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170939171642%_)))
                    (_%hd170940171645%_
                     (let () (declare (not safe)) (##car _%e170939171642%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd170940171645%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd170940171645%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170941171647%_))
                            (let ((_%e170942171650%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170941171647%_))))
                              (let ((_%tl170944171655%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170942171650%_)))
                                    (_%hd170943171653%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170942171650%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl170944171655%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170938171639%_))
                                        (let ((_%__splice176871176872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl170938171639%_
                                                  '0))))
                                          (let ((_%tl170947171660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice176871176872%_
                                                    '1)))
                                                (_%target170945171658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice176871176872%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170947171660%_))
                                                (_%__match177078177079%_
                                                 _%e170906171554%_
                                                 _%hd170907171557%_
                                                 _%tl170908171559%_
                                                 _%e170909171562%_
                                                 _%hd170910171565%_
                                                 _%tl170911171567%_
                                                 _%e170912171570%_
                                                 _%hd170913171573%_
                                                 _%tl170914171575%_
                                                 _%e170915171578%_
                                                 _%hd170916171581%_
                                                 _%tl170917171583%_
                                                 _%e170918171586%_
                                                 _%hd170919171589%_
                                                 _%tl170920171591%_
                                                 _%e170921171594%_
                                                 _%hd170922171597%_
                                                 _%tl170923171599%_
                                                 _%e170924171602%_
                                                 _%hd170925171605%_
                                                 _%tl170926171607%_
                                                 _%e170927171610%_
                                                 _%hd170928171613%_
                                                 _%tl170929171615%_
                                                 _%e170930171618%_
                                                 _%hd170931171621%_
                                                 _%tl170932171623%_
                                                 _%e170933171626%_
                                                 _%hd170934171629%_
                                                 _%tl170935171631%_
                                                 _%e170936171634%_
                                                 _%hd170937171637%_
                                                 _%tl170938171639%_
                                                 _%e170939171642%_
                                                 _%hd170940171645%_
                                                 _%tl170941171647%_
                                                 _%e170942171650%_
                                                 _%hd170943171653%_
                                                 _%tl170944171655%_
                                                 _%__splice176871176872%_
                                                 _%target170945171658%_
                                                 _%tl170947171660%_)
                                                (_%__kont176881176882%_))))
                                        (_%__kont176881176882%_))
                                    (_%__kont176881176882%_))))
                            (_%__kont176881176882%_))
                        (_%__kont176881176882%_))
                    (_%__kont176881176882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont176881176882%_))))
                                            (_%__match177360177361%_
                                             _%e170906171554%_
                                             _%hd170907171557%_
                                             _%tl170908171559%_
                                             _%e170909171562%_
                                             _%hd170910171565%_
                                             _%tl170911171567%_
                                             _%e170912171570%_
                                             _%hd170913171573%_
                                             _%tl170914171575%_
                                             _%e170915171578%_
                                             _%hd170916171581%_
                                             _%tl170917171583%_
                                             _%e170918171586%_
                                             _%hd170919171589%_
                                             _%tl170920171591%_
                                             _%e170921171594%_
                                             _%hd170922171597%_
                                             _%tl170923171599%_
                                             _%e170924171602%_
                                             _%hd170925171605%_
                                             _%tl170926171607%_
                                             _%e170927171610%_
                                             _%hd170928171613%_
                                             _%tl170929171615%_))
                                        (_%__match177360177361%_
                                         _%e170906171554%_
                                         _%hd170907171557%_
                                         _%tl170908171559%_
                                         _%e170909171562%_
                                         _%hd170910171565%_
                                         _%tl170911171567%_
                                         _%e170912171570%_
                                         _%hd170913171573%_
                                         _%tl170914171575%_
                                         _%e170915171578%_
                                         _%hd170916171581%_
                                         _%tl170917171583%_
                                         _%e170918171586%_
                                         _%hd170919171589%_
                                         _%tl170920171591%_
                                         _%e170921171594%_
                                         _%hd170922171597%_
                                         _%tl170923171599%_
                                         _%e170924171602%_
                                         _%hd170925171605%_
                                         _%tl170926171607%_
                                         _%e170927171610%_
                                         _%hd170928171613%_
                                         _%tl170929171615%_))))
                                (_%__match177360177361%_
                                 _%e170906171554%_
                                 _%hd170907171557%_
                                 _%tl170908171559%_
                                 _%e170909171562%_
                                 _%hd170910171565%_
                                 _%tl170911171567%_
                                 _%e170912171570%_
                                 _%hd170913171573%_
                                 _%tl170914171575%_
                                 _%e170915171578%_
                                 _%hd170916171581%_
                                 _%tl170917171583%_
                                 _%e170918171586%_
                                 _%hd170919171589%_
                                 _%tl170920171591%_
                                 _%e170921171594%_
                                 _%hd170922171597%_
                                 _%tl170923171599%_
                                 _%e170924171602%_
                                 _%hd170925171605%_
                                 _%tl170926171607%_
                                 _%e170927171610%_
                                 _%hd170928171613%_
                                 _%tl170929171615%_))
                            (_%__match177146177147%_
                             _%e170906171554%_
                             _%hd170907171557%_
                             _%tl170908171559%_
                             _%e170909171562%_
                             _%hd170910171565%_
                             _%tl170911171567%_
                             _%e170912171570%_
                             _%hd170913171573%_
                             _%tl170914171575%_
                             _%e170915171578%_
                             _%hd170916171581%_
                             _%tl170917171583%_
                             _%e170918171586%_
                             _%hd170919171589%_
                             _%tl170920171591%_
                             _%e170921171594%_
                             _%hd170922171597%_
                             _%tl170923171599%_
                             _%e170924171602%_
                             _%hd170925171605%_
                             _%tl170926171607%_
                             _%e170927171610%_
                             _%hd170928171613%_
                             _%tl170929171615%_
                             _%e170930171618%_
                             _%hd170931171621%_
                             _%tl170932171623%_))))
                     (_%__match176968176969%_
                      (lambda (_%e170862171746%_
                               _%hd170863171749%_
                               _%tl170864171751%_
                               _%e170865171754%_
                               _%hd170866171757%_
                               _%tl170867171759%_
                               _%e170868171762%_
                               _%hd170869171765%_
                               _%tl170870171767%_
                               _%e170871171770%_
                               _%hd170872171773%_
                               _%tl170873171775%_
                               _%e170874171778%_
                               _%hd170875171781%_
                               _%tl170876171783%_
                               _%e170877171786%_
                               _%hd170878171789%_
                               _%tl170879171791%_
                               _%e170880171794%_
                               _%hd170881171797%_
                               _%tl170882171799%_
                               _%e170883171802%_
                               _%hd170884171805%_
                               _%tl170885171807%_
                               _%e170886171810%_
                               _%hd170887171813%_
                               _%tl170888171815%_
                               _%e170889171818%_
                               _%hd170890171821%_
                               _%tl170891171823%_
                               _%__splice176867176868%_
                               _%target170892171826%_
                               _%tl170894171828%_)
                        (letrec ((_%loop170895171831%_
                                  (lambda (_%hd170893171834%_
                                           _%args170899171836%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd170893171834%_))
                                        (let ((_%e170896171839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd170893171834%_))))
                                          (let ((_%lp-tl170898171844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170896171839%_)))
                                                (_%lp-hd170897171842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170896171839%_))))
                                            (_%loop170895171831%_
                                             _%lp-tl170898171844%_
                                             (cons _%lp-hd170897171842%_
                                                   _%args170899171836%_))))
                                        (let ((_%args170900171847%_
                                               (reverse _%args170899171836%_)))
                                          (let ((_%L171850%_
                                                 _%args170900171847%_)
                                                (_%L171851%_
                                                 _%hd170890171821%_)
                                                (_%L171852%_
                                                 _%hd170881171797%_)
                                                (_%L171853%_
                                                 _%hd170872171773%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L171853%_
                                                        'call-method))
                                                     (let ((__tmp177525
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self170845%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L171852%_
                                                        __tmp177525)))
                                                (_%__kont176865176866%_
                                                 _%L171850%_
                                                 _%L171851%_
                                                 _%L171852%_
                                                 _%L171853%_)
                                                (_%__match177156177157%_
                                                 _%e170862171746%_
                                                 _%hd170863171749%_
                                                 _%tl170864171751%_
                                                 _%e170865171754%_
                                                 _%hd170866171757%_
                                                 _%tl170867171759%_
                                                 _%e170868171762%_
                                                 _%hd170869171765%_
                                                 _%tl170870171767%_
                                                 _%e170871171770%_
                                                 _%hd170872171773%_
                                                 _%tl170873171775%_
                                                 _%e170874171778%_
                                                 _%hd170875171781%_
                                                 _%tl170876171783%_
                                                 _%e170877171786%_
                                                 _%hd170878171789%_
                                                 _%tl170879171791%_
                                                 _%e170880171794%_
                                                 _%hd170881171797%_
                                                 _%tl170882171799%_
                                                 _%e170883171802%_
                                                 _%hd170884171805%_
                                                 _%tl170885171807%_
                                                 _%e170886171810%_
                                                 _%hd170887171813%_
                                                 _%tl170888171815%_
                                                 _%e170889171818%_
                                                 _%hd170890171821%_
                                                 _%tl170891171823%_))))))))
                          (_%loop170895171831%_ _%target170892171826%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx176863176864%_))
                    (let ((_%e170862171746%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx176863176864%_))))
                      (let ((_%tl170864171751%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170862171746%_)))
                            (_%hd170863171749%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170862171746%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170864171751%_))
                            (let ((_%e170865171754%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170864171751%_))))
                              (let ((_%tl170867171759%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170865171754%_)))
                                    (_%hd170866171757%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170865171754%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd170866171757%_))
                                    (let ((_%e170868171762%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd170866171757%_))))
                                      (let ((_%tl170870171767%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170868171762%_)))
                                            (_%hd170869171765%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170868171762%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd170869171765%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd170869171765%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl170870171767%_))
                                                    (let ((_%e170871171770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl170870171767%_))))
                                                      (let ((_%tl170873171775%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170871171770%_)))
                    (_%hd170872171773%_
                     (let () (declare (not safe)) (##car _%e170871171770%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl170873171775%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl170867171759%_))
                        (let ((_%e170874171778%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl170867171759%_))))
                          (let ((_%tl170876171783%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170874171778%_)))
                                (_%hd170875171781%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170874171778%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170875171781%_))
                                (let ((_%e170877171786%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170875171781%_))))
                                  (let ((_%tl170879171791%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170877171786%_)))
                                        (_%hd170878171789%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170877171786%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd170878171789%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd170878171789%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl170879171791%_))
                                                (let ((_%e170880171794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl170879171791%_))))
                                                  (let ((_%tl170882171799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e170880171794%_)))
                                                        (_%hd170881171797%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e170880171794%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl170882171799%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl170876171783%_))
                                                            (let ((_%e170883171802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl170876171783%_))))
                      (let ((_%tl170885171807%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170883171802%_)))
                            (_%hd170884171805%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170883171802%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd170884171805%_))
                            (let ((_%e170886171810%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd170884171805%_))))
                              (let ((_%tl170888171815%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170886171810%_)))
                                    (_%hd170887171813%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170886171810%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd170887171813%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd170887171813%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170888171815%_))
                                            (let ((_%e170889171818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170888171815%_))))
                                              (let ((_%tl170891171823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170889171818%_)))
                                                    (_%hd170890171821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170889171818%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl170891171823%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl170885171807%_))
                                                        (let ((_%__splice176867176868%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl170885171807%_ '0))))
                  (let ((_%tl170894171828%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice176867176868%_ '1)))
                        (_%target170892171826%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice176867176868%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl170894171828%_))
                        (_%__match176968176969%_
                         _%e170862171746%_
                         _%hd170863171749%_
                         _%tl170864171751%_
                         _%e170865171754%_
                         _%hd170866171757%_
                         _%tl170867171759%_
                         _%e170868171762%_
                         _%hd170869171765%_
                         _%tl170870171767%_
                         _%e170871171770%_
                         _%hd170872171773%_
                         _%tl170873171775%_
                         _%e170874171778%_
                         _%hd170875171781%_
                         _%tl170876171783%_
                         _%e170877171786%_
                         _%hd170878171789%_
                         _%tl170879171791%_
                         _%e170880171794%_
                         _%hd170881171797%_
                         _%tl170882171799%_
                         _%e170883171802%_
                         _%hd170884171805%_
                         _%tl170885171807%_
                         _%e170886171810%_
                         _%hd170887171813%_
                         _%tl170888171815%_
                         _%e170889171818%_
                         _%hd170890171821%_
                         _%tl170891171823%_
                         _%__splice176867176868%_
                         _%target170892171826%_
                         _%tl170894171828%_)
                        (_%__match177156177157%_
                         _%e170862171746%_
                         _%hd170863171749%_
                         _%tl170864171751%_
                         _%e170865171754%_
                         _%hd170866171757%_
                         _%tl170867171759%_
                         _%e170868171762%_
                         _%hd170869171765%_
                         _%tl170870171767%_
                         _%e170871171770%_
                         _%hd170872171773%_
                         _%tl170873171775%_
                         _%e170874171778%_
                         _%hd170875171781%_
                         _%tl170876171783%_
                         _%e170877171786%_
                         _%hd170878171789%_
                         _%tl170879171791%_
                         _%e170880171794%_
                         _%hd170881171797%_
                         _%tl170882171799%_
                         _%e170883171802%_
                         _%hd170884171805%_
                         _%tl170885171807%_
                         _%e170886171810%_
                         _%hd170887171813%_
                         _%tl170888171815%_
                         _%e170889171818%_
                         _%hd170890171821%_
                         _%tl170891171823%_))))
                (_%__match177156177157%_
                 _%e170862171746%_
                 _%hd170863171749%_
                 _%tl170864171751%_
                 _%e170865171754%_
                 _%hd170866171757%_
                 _%tl170867171759%_
                 _%e170868171762%_
                 _%hd170869171765%_
                 _%tl170870171767%_
                 _%e170871171770%_
                 _%hd170872171773%_
                 _%tl170873171775%_
                 _%e170874171778%_
                 _%hd170875171781%_
                 _%tl170876171783%_
                 _%e170877171786%_
                 _%hd170878171789%_
                 _%tl170879171791%_
                 _%e170880171794%_
                 _%hd170881171797%_
                 _%tl170882171799%_
                 _%e170883171802%_
                 _%hd170884171805%_
                 _%tl170885171807%_
                 _%e170886171810%_
                 _%hd170887171813%_
                 _%tl170888171815%_
                 _%e170889171818%_
                 _%hd170890171821%_
                 _%tl170891171823%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match177360177361%_
                                                     _%e170862171746%_
                                                     _%hd170863171749%_
                                                     _%tl170864171751%_
                                                     _%e170865171754%_
                                                     _%hd170866171757%_
                                                     _%tl170867171759%_
                                                     _%e170868171762%_
                                                     _%hd170869171765%_
                                                     _%tl170870171767%_
                                                     _%e170871171770%_
                                                     _%hd170872171773%_
                                                     _%tl170873171775%_
                                                     _%e170874171778%_
                                                     _%hd170875171781%_
                                                     _%tl170876171783%_
                                                     _%e170877171786%_
                                                     _%hd170878171789%_
                                                     _%tl170879171791%_
                                                     _%e170880171794%_
                                                     _%hd170881171797%_
                                                     _%tl170882171799%_
                                                     _%e170883171802%_
                                                     _%hd170884171805%_
                                                     _%tl170885171807%_))))
                                            (_%__match177360177361%_
                                             _%e170862171746%_
                                             _%hd170863171749%_
                                             _%tl170864171751%_
                                             _%e170865171754%_
                                             _%hd170866171757%_
                                             _%tl170867171759%_
                                             _%e170868171762%_
                                             _%hd170869171765%_
                                             _%tl170870171767%_
                                             _%e170871171770%_
                                             _%hd170872171773%_
                                             _%tl170873171775%_
                                             _%e170874171778%_
                                             _%hd170875171781%_
                                             _%tl170876171783%_
                                             _%e170877171786%_
                                             _%hd170878171789%_
                                             _%tl170879171791%_
                                             _%e170880171794%_
                                             _%hd170881171797%_
                                             _%tl170882171799%_
                                             _%e170883171802%_
                                             _%hd170884171805%_
                                             _%tl170885171807%_))
                                        (_%__match177036177037%_
                                         _%e170862171746%_
                                         _%hd170863171749%_
                                         _%tl170864171751%_
                                         _%e170865171754%_
                                         _%hd170866171757%_
                                         _%tl170867171759%_
                                         _%e170868171762%_
                                         _%hd170869171765%_
                                         _%tl170870171767%_
                                         _%e170871171770%_
                                         _%hd170872171773%_
                                         _%tl170873171775%_
                                         _%e170874171778%_
                                         _%hd170875171781%_
                                         _%tl170876171783%_
                                         _%e170877171786%_
                                         _%hd170878171789%_
                                         _%tl170879171791%_
                                         _%e170880171794%_
                                         _%hd170881171797%_
                                         _%tl170882171799%_
                                         _%e170883171802%_
                                         _%hd170884171805%_
                                         _%tl170885171807%_
                                         _%e170886171810%_
                                         _%hd170887171813%_
                                         _%tl170888171815%_))
                                    (_%__match177360177361%_
                                     _%e170862171746%_
                                     _%hd170863171749%_
                                     _%tl170864171751%_
                                     _%e170865171754%_
                                     _%hd170866171757%_
                                     _%tl170867171759%_
                                     _%e170868171762%_
                                     _%hd170869171765%_
                                     _%tl170870171767%_
                                     _%e170871171770%_
                                     _%hd170872171773%_
                                     _%tl170873171775%_
                                     _%e170874171778%_
                                     _%hd170875171781%_
                                     _%tl170876171783%_
                                     _%e170877171786%_
                                     _%hd170878171789%_
                                     _%tl170879171791%_
                                     _%e170880171794%_
                                     _%hd170881171797%_
                                     _%tl170882171799%_
                                     _%e170883171802%_
                                     _%hd170884171805%_
                                     _%tl170885171807%_))))
                            (_%__match177360177361%_
                             _%e170862171746%_
                             _%hd170863171749%_
                             _%tl170864171751%_
                             _%e170865171754%_
                             _%hd170866171757%_
                             _%tl170867171759%_
                             _%e170868171762%_
                             _%hd170869171765%_
                             _%tl170870171767%_
                             _%e170871171770%_
                             _%hd170872171773%_
                             _%tl170873171775%_
                             _%e170874171778%_
                             _%hd170875171781%_
                             _%tl170876171783%_
                             _%e170877171786%_
                             _%hd170878171789%_
                             _%tl170879171791%_
                             _%e170880171794%_
                             _%hd170881171797%_
                             _%tl170882171799%_
                             _%e170883171802%_
                             _%hd170884171805%_
                             _%tl170885171807%_))))
                    (_%__match177298177299%_
                     _%e170862171746%_
                     _%hd170863171749%_
                     _%tl170864171751%_
                     _%e170865171754%_
                     _%hd170866171757%_
                     _%tl170867171759%_
                     _%e170868171762%_
                     _%hd170869171765%_
                     _%tl170870171767%_
                     _%e170871171770%_
                     _%hd170872171773%_
                     _%tl170873171775%_
                     _%e170874171778%_
                     _%hd170875171781%_
                     _%tl170876171783%_
                     _%e170877171786%_
                     _%hd170878171789%_
                     _%tl170879171791%_
                     _%e170880171794%_
                     _%hd170881171797%_
                     _%tl170882171799%_))
                (_%__kont176881176882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont176881176882%_))
                                            (_%__kont176881176882%_))
                                        (_%__kont176881176882%_))))
                                (_%__kont176881176882%_))))
                        (_%__kont176881176882%_))
                    (_%__kont176881176882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont176881176882%_))
                                                (_%__kont176881176882%_))
                                            (_%__kont176881176882%_))))
                                    (_%__kont176881176882%_))))
                            (_%__kont176881176882%_))))
                    (_%__kont176881176882%_))))))))))
