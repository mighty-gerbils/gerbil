(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1773009276)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp236289 (list gxc#::identity::t))
            (__tmp236288 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp236289
         '()
         __tmp236288
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args235086%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args235086%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp236290
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
        (__make-atomic-promise __tmp236290)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx235078%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self235081%_
                (let ((__obj236281
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj236281))
               (__tmp236291
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self235081%_ _%stx235078%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp236291
           gxc#current-compile-method
           _%self235081%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp236293 (list gxc#::false::t))
            (__tmp236292 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp236293
         '()
         __tmp236292
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args235075%_
        (apply make-instance gxc#::extract-receiver::t _%$args235075%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp236294
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
        (__make-atomic-promise __tmp236294)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx235067%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self235070%_
                (let ((__obj236283
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj236283))
               (__tmp236295
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self235070%_ _%stx235067%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp236295
           gxc#current-compile-method
           _%self235070%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp236297 (list gxc#::void::t))
            (__tmp236296 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp236297
         '(receiver methods slots)
         __tmp236296
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args235064%_
        (apply make-instance gxc#::collect-object-refs::t _%$args235064%_)))
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
      (let ((__tmp236298
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
        (__make-atomic-promise __tmp236298)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords235033%_
               _%receiver235028235034%_
               _%methods235029235035%_
               _%slots235030235036%_
               _%stx235037%_)
        (let* ((_%receiver235040%_
                (if (eq? _%receiver235028235034%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver235028235034%_))
               (_%methods235042%_
                (if (eq? _%methods235029235035%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods235029235035%_))
               (_%slots235044%_
                (if (eq? _%slots235030235036%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots235030235036%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self235046%_
                  (let ((__obj236285
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
                       __obj236285
                       _%receiver235040%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236285
                       _%methods235042%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236285
                       _%slots235044%_
                       '3
                       '#f
                       '#f))
                    __obj236285))
                 (__tmp236299
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self235046%_ _%stx235037%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp236299
             gxc#current-compile-method
             _%self235046%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords235053%_ . _%args235054%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords235053%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235053%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235053%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235053%_
                  'slots:
                  absent-value))
               _%args235054%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args235031235060%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args235031235060%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp236301 (list gxc#::basic-xform-expression::t))
            (__tmp236300 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp236301
         '(receiver klass methods slots)
         __tmp236300
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args235024%_
        (apply make-instance gxc#::subst-object-refs::t _%$args235024%_)))
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
      (let ((__tmp236302
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
        (__make-atomic-promise __tmp236302)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords234990%_
               _%receiver234984234991%_
               _%klass234985234992%_
               _%methods234986234993%_
               _%slots234987234994%_
               _%stx234995%_)
        (let* ((_%receiver234998%_
                (if (eq? _%receiver234984234991%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver234984234991%_))
               (_%klass235000%_
                (if (eq? _%klass234985234992%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass234985234992%_))
               (_%methods235002%_
                (if (eq? _%methods234986234993%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods234986234993%_))
               (_%slots235004%_
                (if (eq? _%slots234987234994%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots234987234994%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self235006%_
                  (let ((__obj236287
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
                       __obj236287
                       _%receiver234998%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236287
                       _%klass235000%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236287
                       _%methods235002%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236287
                       _%slots235004%_
                       '4
                       '#f
                       '#f))
                    __obj236287))
                 (__tmp236303
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self235006%_ _%stx234995%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp236303
             gxc#current-compile-method
             _%self235006%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords235013%_ . _%args235014%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords235013%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235013%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235013%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235013%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235013%_
                  'slots:
                  absent-value))
               _%args235014%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args234988235020%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args234988235020%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self232115%_ _%stx232116%_)
        (letrec ((_%generate-method-bind232118%_
                  (lambda (_%$klass234976%_
                           _%$method-table234977%_
                           _%id234978%_
                           _%$id234979%_)
                    (let ((_%$tmp234981%_
                           (let ((__tmp236304
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp236304))))
                      (cons (cons _%$id234979%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp234981%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table234977%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id234978%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp234981%_ '()))
                    (cons (cons '%#ref (cons _%$tmp234981%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id234978%_
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
                 (_%generate-slot-bind232119%_
                  (lambda (_%$klass234970%_ _%id234971%_ _%$id234972%_)
                    (let ((_%$tmp234974%_
                           (let ((__tmp236305
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp236305))))
                      (cons (cons _%$id234972%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp234974%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass234970%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id234971%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp234974%_ '()))
                        (cons (cons '%#ref (cons _%$tmp234974%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id234971%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl232120%_
                  (lambda (_%$klass234964%_
                           _%$method-table234965%_
                           _%methods-bind234966%_
                           _%slots-bind234967%_
                           _%specializer-impl234968%_)
                    (let ((__tmp236306
                           (cons '%#lambda
                                 (cons (cons _%$klass234964%_
                                             (cons _%$method-table234965%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind234967%_
                                                            _%methods-bind234966%_))
                                                         (cons _%specializer-impl234968%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp236306 _%stx232116%_))))
                 (_%generate-specializer-def232121%_
                  (lambda (_%id234960%_
                           _%specializer-id234961%_
                           _%specializer-impl234962%_)
                    (let ((__tmp236307
                           (cons '%#begin
                                 (cons _%stx232116%_
                                       (cons (let ((__tmp236308
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id234961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl234962%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp236308
                                                _%stx232116%_))
                                             (cons (let ((__tmp236309
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id234960%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id234961%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236309
                                                      _%stx232116%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp236307 _%stx232116%_)))))
          (let* ((_%__stx235175235176%_ _%stx232116%_)
                 (_%g232124232144%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx235175235176%_)))))
            (let ((_%__kont235177235178%_
                   (lambda (_%g232126232188%_ _%g232127232189%_)
                     (let ((_%method-calls232208%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs232209%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty232210%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?232212%_
                                 (lambda ()
                                   (if (let ((__tmp236310
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls232208%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp236310))
                                       (let ((__tmp236311
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs232209%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp236311))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g232126232188%_))
                             (let* ((_%__stx235089235090%_ _%g232126232188%_)
                                    (_%g232596232614%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx235089235090%_)))))
                               (let ((_%__kont235091235092%_
                                      (lambda (_%g232598232650%_
                                               _%g232599232651%_
                                               _%g232600232652%_)
                                        (let ((_%receiver232672%_
                                               (let ((_%$e232669%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g232598232650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e232669%_
                                                     _%$e232669%_
                                                     _%g232600232652%_))))
                                          (for-each
                                           (lambda (_%g232673232675%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver232672%_
                                              _%method-calls232208%_
                                              _%slot-refs232209%_
                                              _%g232673232675%_))
                                           _%g232598232650%_)
                                          (if (_%no-specializer?232212%_)
                                              _%stx232116%_
                                              (let* ((_%specializer-id232684%_
                                                      (let* ((_%id232678%_
                                                              (let ((__tmp236312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g232127232189%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp236312 '"::specialize")))
                     (_%specializer-id232681%_
                      (let ((__tmp236313
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx232116%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id232678%_ __tmp236313))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id232681%_))
                _%specializer-id232681%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass232686%_
                                                      (let ((__tmp236314
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp236314)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table232688%_
                                                      (let ((__tmp236315
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp236315)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods232690%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls232208%_)))
                                                     (_%$methods232694%_
                                                      (let ((__tmp236316
                                                             (lambda (_%id232692%_)
                                                               (let ((__tmp236317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232692%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236317)))))
                (declare (not safe))
                (##map __tmp236316 _%methods232690%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232703%_
                                                      (let ((__tmp236318
                                                             (lambda (_%g232695232698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232696232700%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls232208%_
                          _%g232695232698%_
                          _%g232696232700%_)))))
                (declare (not safe))
                (##for-each __tmp236318 _%methods232690%_ _%$methods232694%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind232713%_
                                                      (let ((__tmp236319
                                                             (lambda (_%g232705232708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232706232710%_)
                       (_%generate-method-bind232118%_
                        _%$klass232686%_
                        _%$method-table232688%_
                        _%g232705232708%_
                        _%g232706232710%_))))
                (declare (not safe))
                (##map __tmp236319 _%methods232690%_ _%$methods232694%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots232715%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs232209%_)))
                                                     (_%$slots232719%_
                                                      (let ((__tmp236320
                                                             (lambda (_%id232717%_)
                                                               (let ((__tmp236321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232717%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236321)))))
                (declare (not safe))
                (##map __tmp236320 _%slots232715%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232728%_
                                                      (let ((__tmp236322
                                                             (lambda (_%g232720232723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232721232725%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs232209%_
                          _%g232720232723%_
                          _%g232721232725%_)))))
                (declare (not safe))
                (##for-each __tmp236322 _%slots232715%_ _%$slots232719%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind232737%_
                                                      (let ((__tmp236323
                                                             (lambda (_%g232729232732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232730232734%_)
                       (_%generate-slot-bind232119%_
                        _%$klass232686%_
                        _%g232729232732%_
                        _%g232730232734%_))))
                (declare (not safe))
                (##map __tmp236323 _%slots232715%_ _%$slots232719%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body232743%_
                                                      (map (lambda (_%g232738232740%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver232672%_
                                                              _%$klass232686%_
                                                              _%method-calls232208%_
                                                              _%slot-refs232209%_
                                                              _%g232738232740%_))
                                                           _%g232598232650%_))
                                                     (_%specializer-impl232745%_
                                                      (let ((__tmp236324
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g232600232652%_ _%g232599232651%_)
                                 _%specializer-body232743%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp236324 _%stx232116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl232747%_
                                                      (_%generate-specializer-impl232120%_
                                                       _%$klass232686%_
                                                       _%$method-table232688%_
                                                       _%methods-bind232713%_
                                                       _%slots-bind232737%_
                                                       _%specializer-impl232745%_)))
                                                (let ((__tmp236326
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g232127232189%_)))
                                                      (__tmp236325
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id232684%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp236326
                                                   '" => "
                                                   __tmp236325))
                                                (_%generate-specializer-def232121%_
                                                 _%g232127232189%_
                                                 _%specializer-id232684%_
                                                 _%specializer-impl232747%_))))))
                                     (_%__kont235093235094%_
                                      (lambda () _%stx232116%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx235089235090%_))
                                     (let ((_%e232601232626%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx235089235090%_))))
                                       (let ((_%tl232603232631%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e232601232626%_)))
                                             (_%hd232602232629%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e232601232626%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl232603232631%_))
                                             (let ((_%e232604232634%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl232603232631%_))))
                                               (let ((_%tl232606232639%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e232604232634%_)))
                                                     (_%hd232605232637%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e232604232634%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd232605232637%_))
                                                     (let ((_%e232607232642%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd232605232637%_))))
                                                       (let ((_%tl232609232647%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e232607232642%_)))
                     (_%hd232608232645%_
                      (let () (declare (not safe)) (##car _%e232607232642%_))))
                 (_%__kont235091235092%_
                  _%tl232606232639%_
                  _%tl232609232647%_
                  _%hd232608232645%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont235093235094%_))))
                                             (_%__kont235093235094%_))))
                                     (_%__kont235093235094%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g232126232188%_))
                                 (let* ((_%g232754232773%_
                                         (lambda (_%g232755232770%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g232755232770%_))))
                                        (_%g232753233069%_
                                         (lambda (_%g232755232776%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g232755232776%_))
                                               (let ((_%e232757232778%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g232755232776%_))))
                                                 (let ((_%hd232758232781%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232757232778%_)))
                                                       (_%tl232759232783%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232757232778%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl232759232783%_))
                                                       (let ((_g236327_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl232759232783%_ '0))))
                 (begin
                   (let ((_g236328_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g236327_)
                                (##values-length _g236327_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g236328_ 2)))
                         (error "Context expects 2 values" _g236328_)))
                   (let ((_%target232760232786%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g236327_ 0)))
                         (_%tl232762232788%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g236327_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl232762232788%_))
                         (letrec ((_%loop232763232791%_
                                   (lambda (_%hd232761232794%_
                                            _%clause232767232796%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd232761232794%_))
                                         (let ((_%e232764232798%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd232761232794%_))))
                                           (let ((_%lp-hd232765232801%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e232764232798%_)))
                                                 (_%lp-tl232766232803%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e232764232798%_))))
                                             (_%loop232763232791%_
                                              _%lp-tl232766232803%_
                                              (cons _%lp-hd232765232801%_
                                                    _%clause232767232796%_))))
                                         (let ((_%clause232768232806%_
                                                (reverse _%clause232767232796%_)))
                                           ((lambda (_%g232756232808%_)
                                              (for-each
                                               (lambda (_%clause232822%_)
                                                 (let* ((_%__stx235115235116%_
                                                         _%clause232822%_)
                                                        (_%g232825232840%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx235115235116%_)))))
                                                   (let ((_%__kont235117235118%_
                                                          (lambda (_%g232827232868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g232828232869%_
                           _%g232829232870%_)
                    (let ((_%receiver232889%_
                           (let ((_%$e232886%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g232827232868%_))))
                             (if _%$e232886%_
                                 _%$e232886%_
                                 _%g232829232870%_))))
                      (for-each
                       (lambda (_%g232890232892%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver232889%_
                          _%method-calls232208%_
                          _%slot-refs232209%_
                          _%g232890232892%_))
                       _%g232827232868%_))))
                 (_%__kont235119235120%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx235115235116%_))
                                                         (let ((_%e232830232852%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx235115235116%_))))
                   (let ((_%tl232832232857%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e232830232852%_)))
                         (_%hd232831232855%_
                          (let ()
                            (declare (not safe))
                            (##car _%e232830232852%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd232831232855%_))
                         (let ((_%e232833232860%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd232831232855%_))))
                           (let ((_%tl232835232865%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e232833232860%_)))
                                 (_%hd232834232863%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e232833232860%_))))
                             (_%__kont235117235118%_
                              _%tl232832232857%_
                              _%tl232835232865%_
                              _%hd232834232863%_)))
                         (_%__kont235119235120%_))))
                 (_%__kont235119235120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp236329
                                                      (lambda (_%g232897232900%_
                                                               _%g232898232902%_)
                                                        (cons _%g232897232900%_
                                                              _%g232898232902%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp236329
                                                  '()
                                                  _%g232756232808%_)))
                                              (if (_%no-specializer?232212%_)
                                                  _%stx232116%_
                                                  (let* ((_%specializer-id232911%_
                                                          (let* ((_%id232905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp236330
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g232127232189%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp236330 '"::specialize")))
                         (_%specializer-id232908%_
                          (let ((__tmp236331
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx232116%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id232905%_
                             __tmp236331))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id232908%_))
                    _%specializer-id232908%_))
                 (_%$klass232913%_
                  (let ((__tmp236332
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236332)))
                 (_%$method-table232915%_
                  (let ((__tmp236333
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236333)))
                 (_%methods232917%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls232208%_)))
                 (_%$methods232921%_
                  (let ((__tmp236334
                         (lambda (_%id232919%_)
                           (let ((__tmp236335 (gensym _%id232919%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236335)))))
                    (declare (not safe))
                    (##map __tmp236334 _%methods232917%_)))
                 (_%_232930%_
                  (let ((__tmp236336
                         (lambda (_%g232922232925%_ _%g232923232927%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls232208%_
                              _%g232922232925%_
                              _%g232923232927%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp236336
                     _%methods232917%_
                     _%$methods232921%_)))
                 (_%methods-bind232940%_
                  (let ((__tmp236337
                         (lambda (_%g232932232935%_ _%g232933232937%_)
                           (_%generate-method-bind232118%_
                            _%$klass232913%_
                            _%$method-table232915%_
                            _%g232932232935%_
                            _%g232933232937%_))))
                    (declare (not safe))
                    (##map __tmp236337 _%methods232917%_ _%$methods232921%_)))
                 (_%slots232942%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs232209%_)))
                 (_%$slots232946%_
                  (let ((__tmp236338
                         (lambda (_%id232944%_)
                           (let ((__tmp236339 (gensym _%id232944%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236339)))))
                    (declare (not safe))
                    (##map __tmp236338 _%slots232942%_)))
                 (_%_232955%_
                  (let ((__tmp236340
                         (lambda (_%g232947232950%_ _%g232948232952%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs232209%_
                              _%g232947232950%_
                              _%g232948232952%_)))))
                    (declare (not safe))
                    (##for-each __tmp236340 _%slots232942%_ _%$slots232946%_)))
                 (_%slots-bind232964%_
                  (let ((__tmp236341
                         (lambda (_%g232956232959%_ _%g232957232961%_)
                           (_%generate-slot-bind232119%_
                            _%$klass232913%_
                            _%g232956232959%_
                            _%g232957232961%_))))
                    (declare (not safe))
                    (##map __tmp236341 _%slots232942%_ _%$slots232946%_)))
                 (_%specializer-clauses233062%_
                  (map (lambda (_%clause232966%_)
                         (let* ((_%__stx235135235136%_ _%clause232966%_)
                                (_%g232969232984%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx235135235136%_)))))
                           (let ((_%__kont235137235138%_
                                  (lambda (_%g232971233012%_
                                           _%g232972233013%_
                                           _%g232973233014%_)
                                    (let* ((_%receiver233043%_
                                            (let ((_%$e233040%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g232971233012%_))))
                                              (if _%$e233040%_
                                                  _%$e233040%_
                                                  _%g232973233014%_)))
                                           (_%body233049%_
                                            (map (lambda (_%g233044233046%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver233043%_
                                                    _%$klass232913%_
                                                    _%method-calls232208%_
                                                    _%slot-refs232209%_
                                                    _%g233044233046%_))
                                                 _%g232971233012%_)))
                                      (cons (cons _%g232973233014%_
                                                  _%g232972233013%_)
                                            _%body233049%_))))
                                 (_%__kont235139235140%_
                                  (lambda () _%clause232966%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx235135235136%_))
                                 (let ((_%e232974232996%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx235135235136%_))))
                                   (let ((_%tl232976233001%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e232974232996%_)))
                                         (_%hd232975232999%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e232974232996%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd232975232999%_))
                                         (let ((_%e232977233004%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd232975232999%_))))
                                           (let ((_%tl232979233009%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e232977233004%_)))
                                                 (_%hd232978233007%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e232977233004%_))))
                                             (_%__kont235137235138%_
                                              _%tl232976233001%_
                                              _%tl232979233009%_
                                              _%hd232978233007%_)))
                                         (_%__kont235139235140%_))))
                                 (_%__kont235139235140%_)))))
                       (let ((__tmp236342
                              (lambda (_%g233054233057%_ _%g233055233059%_)
                                (cons _%g233054233057%_ _%g233055233059%_))))
                         (declare (not safe))
                         (foldr__0 __tmp236342 '() _%g232756232808%_))))
                 (_%specializer-impl233064%_
                  (let ((__tmp236343
                         (cons '%#case-lambda _%specializer-clauses233062%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp236343 _%stx232116%_)))
                 (_%specializer-impl233066%_
                  (_%generate-specializer-impl232120%_
                   _%$klass232913%_
                   _%$method-table232915%_
                   _%methods-bind232940%_
                   _%slots-bind232964%_
                   _%specializer-impl233064%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp236345
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g232127232189%_)))
                                                          (__tmp236344
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id232911%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp236345
                                                       '" => "
                                                       __tmp236344))
                                                    (_%generate-specializer-def232121%_
                                                     _%g232127232189%_
                                                     _%specializer-id232911%_
                                                     _%specializer-impl233066%_))))
                                            _%clause232768232806%_))))))
                           (_%loop232763232791%_ _%target232760232786%_ '()))
                         (_%g232754232773%_ _%g232755232776%_)))))
               (_%g232754232773%_ _%g232755232776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232754232773%_
                                                _%g232755232776%_)))))
                                   (_%g232753233069%_ _%g232126232188%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g232126232188%_))
                                     (let* ((_%g233073233103%_
                                             (lambda (_%g233074233100%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g233074233100%_))))
                                            (_%g233072233730%_
                                             (lambda (_%g233074233106%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g233074233106%_))
                                                   (let ((_%e233078233108%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g233074233106%_))))
                                                     (let ((_%hd233079233111%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233078233108%_)))
                                                           (_%tl233080233113%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233078233108%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233080233113%_))
                                                           (let ((_%e233081233116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233080233113%_))))
                     (let ((_%hd233082233119%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233081233116%_)))
                           (_%tl233083233121%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233081233116%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd233082233119%_))
                           (let ((_%e233084233124%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd233082233119%_))))
                             (let ((_%hd233085233127%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233084233124%_)))
                                   (_%tl233086233129%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233084233124%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233085233127%_))
                                   (let ((_%e233087233132%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233085233127%_))))
                                     (let ((_%hd233088233135%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233087233132%_)))
                                           (_%tl233089233137%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233087233132%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd233088233135%_))
                                           (let ((_%e233090233140%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd233088233135%_))))
                                             (let ((_%hd233091233143%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e233090233140%_)))
                                                   (_%tl233092233145%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e233090233140%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl233092233145%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl233089233137%_))
                                                       (let ((_%e233093233148%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl233089233137%_))))
                 (let ((_%hd233094233151%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233093233148%_)))
                       (_%tl233095233153%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233093233148%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl233095233153%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl233086233129%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl233083233121%_))
                               (let ((_%e233096233156%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl233083233121%_))))
                                 (let ((_%hd233097233159%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233096233156%_)))
                                       (_%tl233098233161%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233096233156%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl233098233161%_))
                                       ((lambda (_%g233075233164%_
                                                 _%g233076233165%_
                                                 _%g233077233166%_)
                                          (let* ((_%g233190233208%_
                                                  (lambda (_%g233191233205%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g233191233205%_))))
                                                 (_%g233189233264%_
                                                  (lambda (_%g233191233211%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g233191233211%_))
                                                        (let ((_%e233195233213%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g233191233211%_))))
                  (let ((_%hd233196233216%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233195233213%_)))
                        (_%tl233197233218%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233195233213%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl233197233218%_))
                        (let ((_%e233198233221%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl233197233218%_))))
                          (let ((_%hd233199233224%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e233198233221%_)))
                                (_%tl233200233226%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e233198233221%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd233199233224%_))
                                (let ((_%e233201233229%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd233199233224%_))))
                                  (let ((_%hd233202233232%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233201233229%_)))
                                        (_%tl233203233234%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233201233229%_))))
                                    ((lambda (_%g233192233237%_
                                              _%g233193233238%_
                                              _%g233194233239%_)
                                       (let ((_%receiver233258%_
                                              (let ((_%$e233255%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g233192233237%_))))
                                                (if _%$e233255%_
                                                    _%$e233255%_
                                                    _%g233194233239%_))))
                                         (for-each
                                          (lambda (_%g233259233261%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver233258%_
                                             _%method-calls232208%_
                                             _%slot-refs232209%_
                                             _%g233259233261%_))
                                          _%g233192233237%_)))
                                     _%tl233200233226%_
                                     _%tl233203233234%_
                                     _%hd233202233232%_)))
                                (_%g233190233208%_ _%g233191233211%_))))
                        (_%g233190233208%_ _%g233191233211%_))))
                (_%g233190233208%_ _%g233191233211%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g233189233264%_
                                             _%g233076233165%_))
                                          (let* ((_%g233267233286%_
                                                  (lambda (_%g233268233283%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g233268233283%_))))
                                                 (_%g233266233408%_
                                                  (lambda (_%g233268233289%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g233268233289%_))
                                                        (let ((_%e233270233291%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g233268233289%_))))
                  (let ((_%hd233271233294%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233270233291%_)))
                        (_%tl233272233296%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233270233291%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl233272233296%_))
                        (let ((_g236346_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl233272233296%_
                                  '0))))
                          (begin
                            (let ((_g236347_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g236346_)
                                         (##values-length _g236346_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g236347_ 2)))
                                  (error "Context expects 2 values"
                                         _g236347_)))
                            (let ((_%target233273233299%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g236346_ 0)))
                                  (_%tl233275233301%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g236346_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl233275233301%_))
                                  (letrec ((_%loop233276233304%_
                                            (lambda (_%hd233274233307%_
                                                     _%clause233280233309%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd233274233307%_))
                                                  (let ((_%e233277233311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd233274233307%_))))
                                                    (let ((_%lp-hd233278233314%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e233277233311%_)))
                                                          (_%lp-tl233279233316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e233277233311%_))))
                                                      (_%loop233276233304%_
                                                       _%lp-tl233279233316%_
                                                       (cons _%lp-hd233278233314%_
                                                             _%clause233280233309%_))))
                                                  (let ((_%clause233281233319%_
                                                         (reverse _%clause233280233309%_)))
                                                    ((lambda (_%g233269233321%_)
                                                       (for-each
                                                        (lambda (_%clause233334%_)
                                                          (let* ((_%g233336233351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g233337233348%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g233337233348%_))))
                         (_%g233335233398%_
                          (lambda (_%g233337233354%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g233337233354%_))
                                (let ((_%e233341233356%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g233337233354%_))))
                                  (let ((_%hd233342233359%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233341233356%_)))
                                        (_%tl233343233361%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233341233356%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd233342233359%_))
                                        (let ((_%e233344233364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd233342233359%_))))
                                          (let ((_%hd233345233367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e233344233364%_)))
                                                (_%tl233346233369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e233344233364%_))))
                                            ((lambda (_%g233338233372%_
                                                      _%g233339233373%_
                                                      _%g233340233374%_)
                                               (let ((_%receiver233392%_
                                                      (let ((_%$e233389%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g233338233372%_))))
                (if _%$e233389%_ _%$e233389%_ _%g233340233374%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g233393233395%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver233392%_
                                                     _%method-calls232208%_
                                                     _%slot-refs232209%_
                                                     _%g233393233395%_))
                                                  _%g233338233372%_)))
                                             _%tl233343233361%_
                                             _%tl233346233369%_
                                             _%hd233345233367%_)))
                                        (_%g233336233351%_
                                         _%g233337233354%_))))
                                (_%g233336233351%_ _%g233337233354%_)))))
                    (_%g233335233398%_ _%clause233334%_)))
                (let ((__tmp236348
                       (lambda (_%g233400233403%_ _%g233401233405%_)
                         (cons _%g233400233403%_ _%g233401233405%_))))
                  (declare (not safe))
                  (foldr__0 __tmp236348 '() _%g233269233321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause233281233319%_))))))
                                    (_%loop233276233304%_
                                     _%target233273233299%_
                                     '()))
                                  (_%g233267233286%_ _%g233268233289%_)))))
                        (_%g233267233286%_ _%g233268233289%_))))
                (_%g233267233286%_ _%g233268233289%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g233266233408%_
                                             _%g233075233164%_))
                                          (if (_%no-specializer?232212%_)
                                              _%stx232116%_
                                              (let* ((_%specializer-id233417%_
                                                      (let* ((_%id233411%_
                                                              (let ((__tmp236349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g232127232189%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp236349 '"::specialize")))
                     (_%specializer-id233414%_
                      (let ((__tmp236350
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx232116%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id233411%_ __tmp236350))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id233414%_))
                _%specializer-id233414%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass233419%_
                                                      (let ((__tmp236351
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp236351)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table233421%_
                                                      (let ((__tmp236352
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp236352)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods233423%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls232208%_)))
                                                     (_%$methods233427%_
                                                      (let ((__tmp236353
                                                             (lambda (_%id233425%_)
                                                               (let ((__tmp236354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id233425%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236354)))))
                (declare (not safe))
                (##map __tmp236353 _%methods233423%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_233436%_
                                                      (let ((__tmp236355
                                                             (lambda (_%g233428233431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233429233433%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls232208%_
                          _%g233428233431%_
                          _%g233429233433%_)))))
                (declare (not safe))
                (##for-each __tmp236355 _%methods233423%_ _%$methods233427%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind233446%_
                                                      (let ((__tmp236356
                                                             (lambda (_%g233438233441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233439233443%_)
                       (_%generate-method-bind232118%_
                        _%$klass233419%_
                        _%$method-table233421%_
                        _%g233438233441%_
                        _%g233439233443%_))))
                (declare (not safe))
                (##map __tmp236356 _%methods233423%_ _%$methods233427%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots233448%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs232209%_)))
                                                     (_%$slots233452%_
                                                      (let ((__tmp236357
                                                             (lambda (_%id233450%_)
                                                               (let ((__tmp236358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id233450%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236358)))))
                (declare (not safe))
                (##map __tmp236357 _%slots233448%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_233461%_
                                                      (let ((__tmp236359
                                                             (lambda (_%g233453233456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233454233458%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs232209%_
                          _%g233453233456%_
                          _%g233454233458%_)))))
                (declare (not safe))
                (##for-each __tmp236359 _%slots233448%_ _%$slots233452%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind233470%_
                                                      (let ((__tmp236360
                                                             (lambda (_%g233462233465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233463233467%_)
                       (_%generate-slot-bind232119%_
                        _%$klass233419%_
                        _%g233462233465%_
                        _%g233463233467%_))))
                (declare (not safe))
                (##map __tmp236360 _%slots233448%_ _%$slots233452%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr233562%_
                                                      (let* ((_%g233472233490%_
                                                              (lambda (_%g233473233487%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233473233487%_))))
                     (_%g233471233559%_
                      (lambda (_%g233473233493%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233473233493%_))
                            (let ((_%e233477233495%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233473233493%_))))
                              (let ((_%hd233478233498%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233477233495%_)))
                                    (_%tl233479233500%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233477233495%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl233479233500%_))
                                    (let ((_%e233480233503%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl233479233500%_))))
                                      (let ((_%hd233481233506%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233480233503%_)))
                                            (_%tl233482233508%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233480233503%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd233481233506%_))
                                            (let ((_%e233483233511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd233481233506%_))))
                                              (let ((_%hd233484233514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233483233511%_)))
                                                    (_%tl233485233516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233483233511%_))))
                                                ((lambda (_%g233474233519%_
                                                          _%g233475233520%_
                                                          _%g233476233521%_)
                                                   (let* ((_%receiver233550%_
                                                           (let ((_%$e233547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g233474233519%_))))
                     (if _%$e233547%_ _%$e233547%_ _%g233476233521%_)))
                  (_%body233556%_
                   (map (lambda (_%g233551233553%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver233550%_
                           _%$klass233419%_
                           _%method-calls232208%_
                           _%slot-refs232209%_
                           _%g233551233553%_))
                        _%g233474233519%_))
                  (__tmp236361
                   (cons '%#lambda
                         (cons (cons _%g233476233521%_ _%g233475233520%_)
                               _%body233556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236361
                                                      _%g233076233165%_)))
                                                 _%tl233482233508%_
                                                 _%tl233485233516%_
                                                 _%hd233484233514%_)))
                                            (_%g233472233490%_
                                             _%g233473233493%_))))
                                    (_%g233472233490%_ _%g233473233493%_))))
                            (_%g233472233490%_ _%g233473233493%_)))))
                (_%g233471233559%_ _%g233076233165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr233723%_
                                                      (let* ((_%g233564233583%_
                                                              (lambda (_%g233565233580%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233565233580%_))))
                     (_%g233563233720%_
                      (lambda (_%g233565233586%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233565233586%_))
                            (let ((_%e233567233588%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233565233586%_))))
                              (let ((_%hd233568233591%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233567233588%_)))
                                    (_%tl233569233593%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233567233588%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl233569233593%_))
                                    (let ((_g236362_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl233569233593%_
                                              '0))))
                                      (begin
                                        (let ((_g236363_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g236362_)
                                                     (##values-length
                                                      _g236362_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g236363_ 2)))
                                              (error "Context expects 2 values"
                                                     _g236363_)))
                                        (let ((_%target233570233596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g236362_ 0)))
                                              (_%tl233572233598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g236362_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl233572233598%_))
                                              (letrec ((_%loop233573233601%_
                                                        (lambda (_%hd233571233604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause233577233606%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd233571233604%_))
                      (let ((_%e233574233608%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd233571233604%_))))
                        (let ((_%lp-hd233575233611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233574233608%_)))
                              (_%lp-tl233576233613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233574233608%_))))
                          (_%loop233573233601%_
                           _%lp-tl233576233613%_
                           (cons _%lp-hd233575233611%_
                                 _%clause233577233606%_))))
                      (let ((_%clause233578233616%_
                             (reverse _%clause233577233606%_)))
                        ((lambda (_%g233566233618%_)
                           (let* ((_%clauses233718%_
                                   (map (lambda (_%clause233632%_)
                                          (let* ((_%__stx235155235156%_
                                                  _%clause233632%_)
                                                 (_%g233635233650%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx235155235156%_)))))
                                            (let ((_%__kont235157235158%_
                                                   (lambda (_%g233637233678%_
                                                            _%g233638233679%_
                                                            _%g233639233680%_)
                                                     (let* ((_%receiver233699%_
                                                             (let ((_%$e233696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g233637233678%_))))
                       (if _%$e233696%_ _%$e233696%_ _%g233639233680%_)))
                    (_%body233705%_
                     (map (lambda (_%g233700233702%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver233699%_
                             _%$klass233419%_
                             _%method-calls232208%_
                             _%slot-refs232209%_
                             _%g233700233702%_))
                          _%g233637233678%_)))
               (cons (cons _%g233639233680%_ _%g233638233679%_)
                     _%body233705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235159235160%_
                                                   (lambda ()
                                                     _%clause233632%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx235155235156%_))
                                                  (let ((_%e233640233662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx235155235156%_))))
                                                    (let ((_%tl233642233667%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e233640233662%_)))
                                                          (_%hd233641233665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e233640233662%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd233641233665%_))
                                                          (let ((_%e233643233670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd233641233665%_))))
                    (let ((_%tl233645233675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e233643233670%_)))
                          (_%hd233644233673%_
                           (let ()
                             (declare (not safe))
                             (##car _%e233643233670%_))))
                      (_%__kont235157235158%_
                       _%tl233642233667%_
                       _%tl233645233675%_
                       _%hd233644233673%_)))
                  (_%__kont235159235160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235159235160%_)))))
                                        (let ((__tmp236364
                                               (lambda (_%g233710233713%_
                                                        _%g233711233715%_)
                                                 (cons _%g233710233713%_
                                                       _%g233711233715%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp236364
                                           '()
                                           _%g233566233618%_))))
                                  (__tmp236365
                                   (cons '%#case-lambda _%clauses233718%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp236365
                              _%g233075233164%_)))
                         _%clause233578233616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop233573233601%_
                                                 _%target233570233596%_
                                                 '()))
                                              (_%g233564233583%_
                                               _%g233565233586%_)))))
                                    (_%g233564233583%_ _%g233565233586%_))))
                            (_%g233564233583%_ _%g233565233586%_)))))
                (_%g233563233720%_ _%g233075233164%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233725%_
                                                      (let ((__tmp236366
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g233077233166%_ '())
                                             (cons _%specializer-lambda-expr233562%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr233723%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp236366 _%stx232116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233727%_
                                                      (_%generate-specializer-impl232120%_
                                                       _%$klass233419%_
                                                       _%$method-table233421%_
                                                       _%methods-bind233446%_
                                                       _%slots-bind233470%_
                                                       _%specializer-impl233725%_)))
                                                (let ((__tmp236368
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g232127232189%_)))
                                                      (__tmp236367
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id233417%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp236368
                                                   '" => "
                                                   __tmp236367))
                                                (_%generate-specializer-def232121%_
                                                 _%g232127232189%_
                                                 _%specializer-id233417%_
                                                 _%specializer-impl233727%_))))
                                        _%hd233097233159%_
                                        _%hd233094233151%_
                                        _%hd233091233143%_)
                                       (_%g233073233103%_ _%g233074233106%_))))
                               (_%g233073233103%_ _%g233074233106%_))
                           (_%g233073233103%_ _%g233074233106%_))
                       (_%g233073233103%_ _%g233074233106%_))))
               (_%g233073233103%_ _%g233074233106%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233073233103%_
                                                    _%g233074233106%_))))
                                           (_%g233073233103%_
                                            _%g233074233106%_))))
                                   (_%g233073233103%_ _%g233074233106%_))))
                           (_%g233073233103%_ _%g233074233106%_))))
                   (_%g233073233103%_ _%g233074233106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233073233103%_
                                                    _%g233074233106%_)))))
                                       (_%g233072233730%_ _%g232126232188%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g232126232188%_))
                                         (let* ((_%g233734233787%_
                                                 (lambda (_%g233735233784%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g233735233784%_))))
                                                (_%g233733234952%_
                                                 (lambda (_%g233735233790%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g233735233790%_))
                                                       (let ((_%e233741233792%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g233735233790%_))))
                 (let ((_%hd233742233795%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233741233792%_)))
                       (_%tl233743233797%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233741233792%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd233742233795%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd233742233795%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl233743233797%_))
                               (let ((_%e233744233800%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl233743233797%_))))
                                 (let ((_%hd233745233803%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233744233800%_)))
                                       (_%tl233746233805%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233744233800%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd233745233803%_))
                                       (let ((_%e233747233808%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd233745233803%_))))
                                         (let ((_%hd233748233811%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e233747233808%_)))
                                               (_%tl233749233813%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e233747233808%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd233748233811%_))
                                               (let ((_%e233750233816%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd233748233811%_))))
                                                 (let ((_%hd233751233819%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233750233816%_)))
                                                       (_%tl233752233821%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233750233816%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd233751233819%_))
                                                       (let ((_%e233753233824%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd233751233819%_))))
                 (let ((_%hd233754233827%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233753233824%_)))
                       (_%tl233755233829%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233753233824%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl233755233829%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl233752233821%_))
                           (let ((_%e233756233832%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl233752233821%_))))
                             (let ((_%hd233757233835%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233756233832%_)))
                                   (_%tl233758233837%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233756233832%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233757233835%_))
                                   (let ((_%e233759233840%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233757233835%_))))
                                     (let ((_%hd233760233843%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233759233840%_)))
                                           (_%tl233761233845%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233759233840%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd233760233843%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd233760233843%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl233761233845%_))
                                                   (let ((_%e233762233848%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl233761233845%_))))
                                                     (let ((_%hd233763233851%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233762233848%_)))
                                                           (_%tl233764233853%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233762233848%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd233763233851%_))
                                                           (let ((_%e233765233856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd233763233851%_))))
                     (let ((_%hd233766233859%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233765233856%_)))
                           (_%tl233767233861%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233765233856%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd233766233859%_))
                           (let ((_%e233768233864%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd233766233859%_))))
                             (let ((_%hd233769233867%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233768233864%_)))
                                   (_%tl233770233869%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233768233864%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233769233867%_))
                                   (let ((_%e233771233872%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233769233867%_))))
                                     (let ((_%hd233772233875%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233771233872%_)))
                                           (_%tl233773233877%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233771233872%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl233773233877%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl233770233869%_))
                                               (let ((_%e233774233880%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl233770233869%_))))
                                                 (let ((_%hd233775233883%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233774233880%_)))
                                                       (_%tl233776233885%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233774233880%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl233776233885%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl233767233861%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl233764233853%_))
                       (let ((_%e233777233888%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl233764233853%_))))
                         (let ((_%hd233778233891%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e233777233888%_)))
                               (_%tl233779233893%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e233777233888%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl233779233893%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl233758233837%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl233749233813%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl233746233805%_))
                                           (let ((_%e233780233896%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl233746233805%_))))
                                             (let ((_%hd233781233899%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e233780233896%_)))
                                                   (_%tl233782233901%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e233780233896%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl233782233901%_))
                                                   ((lambda (_%g233736233904%_
                                                             _%g233737233905%_
                                                             _%g233738233906%_
                                                             _%g233739233907%_
                                                             _%g233740233908%_)
                                                      (let* ((_%g233948234010%_
                                                              (lambda (_%g233949234007%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233949234007%_))))
                     (_%g233947234949%_
                      (lambda (_%g233949234013%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233949234013%_))
                            (let ((_%e233955234015%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233949234013%_))))
                              (let ((_%hd233956234018%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233955234015%_)))
                                    (_%tl233957234020%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233955234015%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd233956234018%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd233956234018%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl233957234020%_))
                                            (let ((_%e233958234023%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl233957234020%_))))
                                              (let ((_%hd233959234026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233958234023%_)))
                                                    (_%tl233960234028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233958234023%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl233960234028%_))
                                                    (let ((_%e233961234031%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl233960234028%_))))
                                                      (let ((_%hd233962234034%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e233961234031%_)))
                    (_%tl233963234036%_
                     (let () (declare (not safe)) (##cdr _%e233961234031%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd233962234034%_))
                    (let ((_%e233964234039%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd233962234034%_))))
                      (let ((_%hd233965234042%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233964234039%_)))
                            (_%tl233966234044%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233964234039%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd233965234042%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd233965234042%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl233966234044%_))
                                    (let ((_%e233967234047%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl233966234044%_))))
                                      (let ((_%hd233968234050%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233967234047%_)))
                                            (_%tl233969234052%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233967234047%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd233968234050%_))
                                            (let ((_%e233970234055%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd233968234050%_))))
                                              (let ((_%hd233971234058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233970234055%_)))
                                                    (_%tl233972234060%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233970234055%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd233971234058%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd233971234058%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl233972234060%_))
                                                            (let ((_%e233973234063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl233972234060%_))))
                      (let ((_%hd233974234066%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233973234063%_)))
                            (_%tl233975234068%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233973234063%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233975234068%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl233969234052%_))
                                (let ((_%e233976234071%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl233969234052%_))))
                                  (let ((_%hd233977234074%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233976234071%_)))
                                        (_%tl233978234076%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233976234071%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd233977234074%_))
                                        (let ((_%e233979234079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd233977234074%_))))
                                          (let ((_%hd233980234082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e233979234079%_)))
                                                (_%tl233981234084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e233979234079%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd233980234082%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd233980234082%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl233981234084%_))
                                                        (let ((_%e233982234087%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl233981234084%_))))
                  (let ((_%hd233983234090%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233982234087%_)))
                        (_%tl233984234092%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233982234087%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl233984234092%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233978234076%_))
                            (let ((_%e233985234095%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233978234076%_))))
                              (let ((_%hd233986234098%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233985234095%_)))
                                    (_%tl233987234100%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233985234095%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd233986234098%_))
                                    (let ((_%e233988234103%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd233986234098%_))))
                                      (let ((_%hd233989234106%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233988234103%_)))
                                            (_%tl233990234108%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233988234103%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd233989234106%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd233989234106%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl233990234108%_))
                                                    (let ((_%e233991234111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl233990234108%_))))
                                                      (let ((_%hd233992234114%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e233991234111%_)))
                    (_%tl233993234116%_
                     (let () (declare (not safe)) (##cdr _%e233991234111%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl233993234116%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl233987234100%_))
                        (if (let ((__tmp236369
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl233987234100%_))))
                              (declare (not safe))
                              (##fx>= __tmp236369 '1))
                            (let ((_g236370_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl233987234100%_
                                      '1))))
                              (begin
                                (let ((_g236371_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g236370_)
                                             (##values-length _g236370_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g236371_ 2)))
                                      (error "Context expects 2 values"
                                             _g236371_)))
                                (let ((_%target233994234119%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236370_ 0)))
                                      (_%tl233996234121%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236370_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl233996234121%_))
                                      (let ((_%e234003234124%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl233996234121%_))))
                                        (let ((_%hd234004234127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234003234124%_)))
                                              (_%tl234005234129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234003234124%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl234005234129%_))
                                              (letrec ((_%loop233997234132%_
                                                        (lambda (_%hd233995234135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref234001234137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd233995234135%_))
                      (let ((_%e233998234139%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd233995234135%_))))
                        (let ((_%lp-hd233999234142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233998234139%_)))
                              (_%lp-tl234000234144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233998234139%_))))
                          (_%loop233997234132%_
                           _%lp-tl234000234144%_
                           (cons _%lp-hd233999234142%_
                                 _%kw-ref234001234137%_))))
                      (let ((_%kw-ref234002234147%_
                             (reverse _%kw-ref234001234137%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233963234036%_))
                            ((lambda (_%g233950234149%_
                                      _%g233951234150%_
                                      _%g233952234151%_
                                      _%g233953234152%_
                                      _%g233954234153%_)
                               (let* ((_%kw-count234204%_
                                       (length (let ((__tmp236372
                                                      (lambda (_%g234196234199%_
                                                               _%g234197234201%_)
                                                        (cons _%g234196234199%_
                                                              _%g234197234201%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp236372
                                                  '()
                                                  _%g233951234150%_))))
                                      (_%self-index234206%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count234204%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g233738233906%_))
                                     (let* ((_%g234210234224%_
                                             (lambda (_%g234211234221%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g234211234221%_))))
                                            (_%g234209234347%_
                                             (lambda (_%g234211234227%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g234211234227%_))
                                                   (let ((_%e234214234229%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g234211234227%_))))
                                                     (let ((_%hd234215234232%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e234214234229%_)))
                                                           (_%tl234216234234%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e234214234229%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl234216234234%_))
                                                           (let ((_%e234217234237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl234216234234%_))))
                     (let ((_%hd234218234240%_
                            (let ()
                              (declare (not safe))
                              (##car _%e234217234237%_)))
                           (_%tl234219234242%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e234217234237%_))))
                       ((lambda (_%g234212234245%_ _%g234213234246%_)
                          (let* ((_%self234263%_
                                  (list-ref
                                   _%g234213234246%_
                                   _%self-index234206%_))
                                 (_%receiver234268%_
                                  (let ((_%$e234265%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g234212234245%_))))
                                    (if _%$e234265%_
                                        _%$e234265%_
                                        _%self234263%_))))
                            (for-each
                             (lambda (_%g234270234272%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver234268%_
                                _%method-calls232208%_
                                _%slot-refs232209%_
                                _%g234270234272%_))
                             _%g234212234245%_)
                            (if (_%no-specializer?232212%_)
                                _%stx232116%_
                                (let* ((_%specializer-id234281%_
                                        (let* ((_%id234275%_
                                                (let ((__tmp236373
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g232127232189%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp236373
                                                   '"::specialize")))
                                               (_%specializer-id234278%_
                                                (let ((__tmp236374
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx232116%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id234275%_
                                                   __tmp236374))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id234278%_))
                                          _%specializer-id234278%_))
                                       (_%$klass234283%_
                                        (let ((__tmp236375
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp236375)))
                                       (_%$method-table234285%_
                                        (let ((__tmp236376
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp236376)))
                                       (_%methods234287%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls232208%_)))
                                       (_%$methods234291%_
                                        (let ((__tmp236377
                                               (lambda (_%id234289%_)
                                                 (let ((__tmp236378
                                                        (gensym _%id234289%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp236378)))))
                                          (declare (not safe))
                                          (##map __tmp236377
                                                 _%methods234287%_)))
                                       (_%_234300%_
                                        (let ((__tmp236379
                                               (lambda (_%g234292234295%_
                                                        _%g234293234297%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls232208%_
                                                    _%g234292234295%_
                                                    _%g234293234297%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp236379
                                           _%methods234287%_
                                           _%$methods234291%_)))
                                       (_%methods-bind234310%_
                                        (let ((__tmp236380
                                               (lambda (_%g234302234305%_
                                                        _%g234303234307%_)
                                                 (_%generate-method-bind232118%_
                                                  _%$klass234283%_
                                                  _%$method-table234285%_
                                                  _%g234302234305%_
                                                  _%g234303234307%_))))
                                          (declare (not safe))
                                          (##map __tmp236380
                                                 _%methods234287%_
                                                 _%$methods234291%_)))
                                       (_%slots234312%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs232209%_)))
                                       (_%$slots234316%_
                                        (let ((__tmp236381
                                               (lambda (_%id234314%_)
                                                 (let ((__tmp236382
                                                        (gensym _%id234314%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp236382)))))
                                          (declare (not safe))
                                          (##map __tmp236381 _%slots234312%_)))
                                       (_%_234325%_
                                        (let ((__tmp236383
                                               (lambda (_%g234317234320%_
                                                        _%g234318234322%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs232209%_
                                                    _%g234317234320%_
                                                    _%g234318234322%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp236383
                                           _%slots234312%_
                                           _%$slots234316%_)))
                                       (_%slots-bind234334%_
                                        (let ((__tmp236384
                                               (lambda (_%g234326234329%_
                                                        _%g234327234331%_)
                                                 (_%generate-slot-bind232119%_
                                                  _%$klass234283%_
                                                  _%g234326234329%_
                                                  _%g234327234331%_))))
                                          (declare (not safe))
                                          (##map __tmp236384
                                                 _%slots234312%_
                                                 _%$slots234316%_)))
                                       (_%specializer-impl234342%_
                                        (let* ((_%specializer-body234340%_
                                                (map (lambda (_%g234335234337%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver234268%_
                                                        _%$klass234283%_
                                                        _%method-calls232208%_
                                                        _%slot-refs232209%_
                                                        _%g234335234337%_))
                                                     _%g234212234245%_))
                                               (__tmp236385
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g233740233908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g233739233907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp236386
                                   (cons '%#lambda
                                         (cons _%g234213234246%_
                                               _%specializer-body234340%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp236386
                               _%g233738233906%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g233737233905%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g233736233904%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp236385
                                           _%stx232116%_)))
                                       (_%specializer-impl234344%_
                                        (_%generate-specializer-impl232120%_
                                         _%$klass234283%_
                                         _%$method-table234285%_
                                         _%methods-bind234310%_
                                         _%slots-bind234334%_
                                         _%specializer-impl234342%_)))
                                  (let ((__tmp236388
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g232127232189%_)))
                                        (__tmp236387
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id234281%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp236388
                                     '" => "
                                     __tmp236387))
                                  (_%generate-specializer-def232121%_
                                   _%g232127232189%_
                                   _%specializer-id234281%_
                                   _%specializer-impl234344%_)))))
                        _%tl234219234242%_
                        _%hd234218234240%_)))
                   (_%g234210234224%_ _%g234211234227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g234210234224%_
                                                    _%g234211234227%_)))))
                                       (_%g234209234347%_ _%g233738233906%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g233738233906%_))
                                         (let* ((_%g234351234381%_
                                                 (lambda (_%g234352234378%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g234352234378%_))))
                                                (_%g234350234945%_
                                                 (lambda (_%g234352234384%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g234352234384%_))
                                                       (let ((_%e234356234386%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g234352234384%_))))
                 (let ((_%hd234357234389%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234356234386%_)))
                       (_%tl234358234391%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234356234386%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl234358234391%_))
                       (let ((_%e234359234394%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl234358234391%_))))
                         (let ((_%hd234360234397%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e234359234394%_)))
                               (_%tl234361234399%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e234359234394%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd234360234397%_))
                               (let ((_%e234362234402%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd234360234397%_))))
                                 (let ((_%hd234363234405%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e234362234402%_)))
                                       (_%tl234364234407%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e234362234402%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd234363234405%_))
                                       (let ((_%e234365234410%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd234363234405%_))))
                                         (let ((_%hd234366234413%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e234365234410%_)))
                                               (_%tl234367234415%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e234365234410%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd234366234413%_))
                                               (let ((_%e234368234418%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd234366234413%_))))
                                                 (let ((_%hd234369234421%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e234368234418%_)))
                                                       (_%tl234370234423%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e234368234418%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl234370234423%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl234367234415%_))
                                                           (let ((_%e234371234426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl234367234415%_))))
                     (let ((_%hd234372234429%_
                            (let ()
                              (declare (not safe))
                              (##car _%e234371234426%_)))
                           (_%tl234373234431%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e234371234426%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl234373234431%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl234364234407%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl234361234399%_))
                                   (let ((_%e234374234434%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl234361234399%_))))
                                     (let ((_%hd234375234437%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234374234434%_)))
                                           (_%tl234376234439%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234374234434%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl234376234439%_))
                                           ((lambda (_%g234353234442%_
                                                     _%g234354234443%_
                                                     _%g234355234444%_)
                                              (let* ((_%g234468234482%_
                                                      (lambda (_%g234469234479%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234469234479%_))))
                                                     (_%g234467234529%_
                                                      (lambda (_%g234469234485%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234469234485%_))
                                                            (let ((_%e234472234487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234469234485%_))))
                      (let ((_%hd234473234490%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234472234487%_)))
                            (_%tl234474234492%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234472234487%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl234474234492%_))
                            (let ((_%e234475234495%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl234474234492%_))))
                              (let ((_%hd234476234498%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e234475234495%_)))
                                    (_%tl234477234500%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e234475234495%_))))
                                ((lambda (_%g234470234503%_ _%g234471234504%_)
                                   (let* ((_%self234517%_
                                           (list-ref
                                            _%g234471234504%_
                                            _%self-index234206%_))
                                          (_%receiver234522%_
                                           (let ((_%$e234519%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g234470234503%_))))
                                             (if _%$e234519%_
                                                 _%$e234519%_
                                                 _%self234517%_))))
                                     (for-each
                                      (lambda (_%g234524234526%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver234522%_
                                         _%method-calls232208%_
                                         _%slot-refs232209%_
                                         _%g234524234526%_))
                                      _%g234470234503%_)))
                                 _%tl234477234500%_
                                 _%hd234476234498%_)))
                            (_%g234468234482%_ _%g234469234485%_))))
                    (_%g234468234482%_ _%g234469234485%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234467234529%_
                                                 _%g234354234443%_))
                                              (let* ((_%g234532234551%_
                                                      (lambda (_%g234533234548%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234533234548%_))))
                                                     (_%g234531234660%_
                                                      (lambda (_%g234533234554%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234533234554%_))
                                                            (let ((_%e234535234556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234533234554%_))))
                      (let ((_%hd234536234559%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234535234556%_)))
                            (_%tl234537234561%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234535234556%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl234537234561%_))
                            (let ((_g236389_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl234537234561%_
                                      '0))))
                              (begin
                                (let ((_g236390_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g236389_)
                                             (##values-length _g236389_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g236390_ 2)))
                                      (error "Context expects 2 values"
                                             _g236390_)))
                                (let ((_%target234538234564%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236389_ 0)))
                                      (_%tl234540234566%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236389_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl234540234566%_))
                                      (letrec ((_%loop234541234569%_
                                                (lambda (_%hd234539234572%_
                                                         _%clause234545234574%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd234539234572%_))
                                                      (let ((_%e234542234576%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd234539234572%_))))
                (let ((_%lp-hd234543234579%_
                       (let () (declare (not safe)) (##car _%e234542234576%_)))
                      (_%lp-tl234544234581%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e234542234576%_))))
                  (_%loop234541234569%_
                   _%lp-tl234544234581%_
                   (cons _%lp-hd234543234579%_ _%clause234545234574%_))))
              (let ((_%clause234546234584%_ (reverse _%clause234545234574%_)))
                ((lambda (_%g234534234586%_)
                   (for-each
                    (lambda (_%clause234599%_)
                      (let* ((_%g234601234612%_
                              (lambda (_%g234602234609%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g234602234609%_))))
                             (_%g234600234650%_
                              (lambda (_%g234602234615%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g234602234615%_))
                                    (let ((_%e234605234617%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g234602234615%_))))
                                      (let ((_%hd234606234620%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e234605234617%_)))
                                            (_%tl234607234622%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e234605234617%_))))
                                        ((lambda (_%g234603234625%_
                                                  _%g234604234626%_)
                                           (let* ((_%self234638%_
                                                   (list-ref
                                                    _%g234604234626%_
                                                    _%self-index234206%_))
                                                  (_%receiver234643%_
                                                   (let ((_%$e234640%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g234603234625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e234640%_
                                                         _%$e234640%_
                                                         _%self234638%_))))
                                             (for-each
                                              (lambda (_%g234645234647%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver234643%_
                                                 _%method-calls232208%_
                                                 _%slot-refs232209%_
                                                 _%g234645234647%_))
                                              _%g234603234625%_)))
                                         _%tl234607234622%_
                                         _%hd234606234620%_)))
                                    (_%g234601234612%_ _%g234602234615%_)))))
                        (_%g234600234650%_ _%clause234599%_)))
                    (let ((__tmp236391
                           (lambda (_%g234652234655%_ _%g234653234657%_)
                             (cons _%g234652234655%_ _%g234653234657%_))))
                      (declare (not safe))
                      (foldr__0 __tmp236391 '() _%g234534234586%_))))
                 _%clause234546234584%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop234541234569%_
                                         _%target234538234564%_
                                         '()))
                                      (_%g234532234551%_ _%g234533234554%_)))))
                            (_%g234532234551%_ _%g234533234554%_))))
                    (_%g234532234551%_ _%g234533234554%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234531234660%_
                                                 _%g234353234442%_))
                                              (if (_%no-specializer?232212%_)
                                                  _%stx232116%_
                                                  (let* ((_%specializer-id234669%_
                                                          (let* ((_%id234663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp236392
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g232127232189%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp236392 '"::specialize")))
                         (_%specializer-id234666%_
                          (let ((__tmp236393
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx232116%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id234663%_
                             __tmp236393))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id234666%_))
                    _%specializer-id234666%_))
                 (_%$klass234671%_
                  (let ((__tmp236394
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236394)))
                 (_%$method-table234673%_
                  (let ((__tmp236395
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236395)))
                 (_%methods234675%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls232208%_)))
                 (_%$methods234679%_
                  (let ((__tmp236396
                         (lambda (_%id234677%_)
                           (let ((__tmp236397 (gensym _%id234677%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236397)))))
                    (declare (not safe))
                    (##map __tmp236396 _%methods234675%_)))
                 (_%_234688%_
                  (let ((__tmp236398
                         (lambda (_%g234680234683%_ _%g234681234685%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls232208%_
                              _%g234680234683%_
                              _%g234681234685%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp236398
                     _%methods234675%_
                     _%$methods234679%_)))
                 (_%methods-bind234698%_
                  (let ((__tmp236399
                         (lambda (_%g234690234693%_ _%g234691234695%_)
                           (_%generate-method-bind232118%_
                            _%$klass234671%_
                            _%$method-table234673%_
                            _%g234690234693%_
                            _%g234691234695%_))))
                    (declare (not safe))
                    (##map __tmp236399 _%methods234675%_ _%$methods234679%_)))
                 (_%slots234700%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs232209%_)))
                 (_%$slots234704%_
                  (let ((__tmp236400
                         (lambda (_%id234702%_)
                           (let ((__tmp236401 (gensym _%id234702%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236401)))))
                    (declare (not safe))
                    (##map __tmp236400 _%slots234700%_)))
                 (_%_234713%_
                  (let ((__tmp236402
                         (lambda (_%g234705234708%_ _%g234706234710%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs232209%_
                              _%g234705234708%_
                              _%g234706234710%_)))))
                    (declare (not safe))
                    (##for-each __tmp236402 _%slots234700%_ _%$slots234704%_)))
                 (_%slots-bind234722%_
                  (let ((__tmp236403
                         (lambda (_%g234714234717%_ _%g234715234719%_)
                           (_%generate-slot-bind232119%_
                            _%$klass234671%_
                            _%g234714234717%_
                            _%g234715234719%_))))
                    (declare (not safe))
                    (##map __tmp236403 _%slots234700%_ _%$slots234704%_)))
                 (_%specializer-lambda-expr234800%_
                  (let* ((_%g234724234738%_
                          (lambda (_%g234725234735%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g234725234735%_))))
                         (_%g234723234797%_
                          (lambda (_%g234725234741%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g234725234741%_))
                                (let ((_%e234728234743%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g234725234741%_))))
                                  (let ((_%hd234729234746%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e234728234743%_)))
                                        (_%tl234730234748%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e234728234743%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl234730234748%_))
                                        (let ((_%e234731234751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl234730234748%_))))
                                          (let ((_%hd234732234754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e234731234751%_)))
                                                (_%tl234733234756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e234731234751%_))))
                                            ((lambda (_%g234726234759%_
                                                      _%g234727234760%_)
                                               (let* ((_%self234783%_
                                                       (list-ref
                                                        _%g234727234760%_
                                                        _%self-index234206%_))
                                                      (_%receiver234788%_
                                                       (let ((_%$e234785%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g234726234759%_))))
                 (if _%$e234785%_ _%$e234785%_ _%self234783%_)))
              (_%body234794%_
               (map (lambda (_%g234789234791%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver234788%_
                       _%$klass234671%_
                       _%method-calls232208%_
                       _%slot-refs232209%_
                       _%g234789234791%_))
                    _%g234726234759%_))
              (__tmp236404
               (cons '%#lambda (cons _%g234727234760%_ _%body234794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp236404
                                                  _%g234354234443%_)))
                                             _%tl234733234756%_
                                             _%hd234732234754%_)))
                                        (_%g234724234738%_
                                         _%g234725234741%_))))
                                (_%g234724234738%_ _%g234725234741%_)))))
                    (_%g234723234797%_ _%g234354234443%_)))
                 (_%specializer-case-lambda-expr234938%_
                  (let* ((_%g234802234821%_
                          (lambda (_%g234803234818%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g234803234818%_))))
                         (_%g234801234935%_
                          (lambda (_%g234803234824%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g234803234824%_))
                                (let ((_%e234805234826%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g234803234824%_))))
                                  (let ((_%hd234806234829%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e234805234826%_)))
                                        (_%tl234807234831%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e234805234826%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl234807234831%_))
                                        (let ((_g236405_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl234807234831%_
                                                  '0))))
                                          (begin
                                            (let ((_g236406_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g236405_)
                                                         (##values-length
                                                          _g236405_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g236406_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g236406_)))
                                            (let ((_%target234808234834%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g236405_
                                                      0)))
                                                  (_%tl234810234836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g236405_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl234810234836%_))
                                                  (letrec ((_%loop234811234839%_
                                                            (lambda (_%hd234809234842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause234815234844%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd234809234842%_))
                          (let ((_%e234812234846%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd234809234842%_))))
                            (let ((_%lp-hd234813234849%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234812234846%_)))
                                  (_%lp-tl234814234851%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234812234846%_))))
                              (_%loop234811234839%_
                               _%lp-tl234814234851%_
                               (cons _%lp-hd234813234849%_
                                     _%clause234815234844%_))))
                          (let ((_%clause234816234854%_
                                 (reverse _%clause234815234844%_)))
                            ((lambda (_%g234804234856%_)
                               (let* ((_%clauses234933%_
                                       (map (lambda (_%clause234870%_)
                                              (let* ((_%g234872234883%_
                                                      (lambda (_%g234873234880%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234873234880%_))))
                                                     (_%g234871234923%_
                                                      (lambda (_%g234873234886%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234873234886%_))
                                                            (let ((_%e234876234888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234873234886%_))))
                      (let ((_%hd234877234891%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234876234888%_)))
                            (_%tl234878234893%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234876234888%_))))
                        ((lambda (_%g234874234896%_ _%g234875234897%_)
                           (let* ((_%self234909%_
                                   (list-ref
                                    _%g234875234897%_
                                    _%self-index234206%_))
                                  (_%receiver234914%_
                                   (let ((_%$e234911%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g234874234896%_))))
                                     (if _%$e234911%_
                                         _%$e234911%_
                                         _%self234909%_)))
                                  (_%body234920%_
                                   (map (lambda (_%g234915234917%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver234914%_
                                           _%$klass234671%_
                                           _%method-calls232208%_
                                           _%slot-refs232209%_
                                           _%g234915234917%_))
                                        _%g234874234896%_)))
                             (cons _%g234875234897%_ _%body234920%_)))
                         _%tl234878234893%_
                         _%hd234877234891%_)))
                    (_%g234872234883%_ _%g234873234886%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234871234923%_
                                                 _%clause234870%_)))
                                            (let ((__tmp236407
                                                   (lambda (_%g234925234928%_
                                                            _%g234926234930%_)
                                                     (cons _%g234925234928%_
                                                           _%g234926234930%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp236407
                                               '()
                                               _%g234804234856%_))))
                                      (__tmp236408
                                       (cons '%#case-lambda
                                             _%clauses234933%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp236408
                                  _%g234353234442%_)))
                             _%clause234816234854%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop234811234839%_
                                                     _%target234808234834%_
                                                     '()))
                                                  (_%g234802234821%_
                                                   _%g234803234824%_)))))
                                        (_%g234802234821%_
                                         _%g234803234824%_))))
                                (_%g234802234821%_ _%g234803234824%_)))))
                    (_%g234801234935%_ _%g234353234442%_)))
                 (_%specializer-impl234940%_
                  (let ((__tmp236409
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g233740233908%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g233739233907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp236410
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g234355234444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr234800%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr234938%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp236410
                                                _%stx232116%_))
                                             '()))
                                 '())
                           (cons _%g233737233905%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g233736233904%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp236409 _%stx232116%_)))
                 (_%specializer-impl234942%_
                  (_%generate-specializer-impl232120%_
                   _%$klass234671%_
                   _%$method-table234673%_
                   _%methods-bind234698%_
                   _%slots-bind234722%_
                   _%specializer-impl234940%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp236412
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g232127232189%_)))
                                                          (__tmp236411
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id234669%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp236412
                                                       '" => "
                                                       __tmp236411))
                                                    (_%generate-specializer-def232121%_
                                                     _%g232127232189%_
                                                     _%specializer-id234669%_
                                                     _%specializer-impl234942%_))))
                                            _%hd234375234437%_
                                            _%hd234372234429%_
                                            _%hd234369234421%_)
                                           (_%g234351234381%_
                                            _%g234352234384%_))))
                                   (_%g234351234381%_ _%g234352234384%_))
                               (_%g234351234381%_ _%g234352234384%_))
                           (_%g234351234381%_ _%g234352234384%_))))
                   (_%g234351234381%_ _%g234352234384%_))
               (_%g234351234381%_ _%g234352234384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g234351234381%_
                                                _%g234352234384%_))))
                                       (_%g234351234381%_ _%g234352234384%_))))
                               (_%g234351234381%_ _%g234352234384%_))))
                       (_%g234351234381%_ _%g234352234384%_))))
               (_%g234351234381%_ _%g234352234384%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g234350234945%_
                                            _%g233738233906%_))
                                         _%stx232116%_))))
                             _%hd234004234127%_
                             _%kw-ref234002234147%_
                             _%hd233992234114%_
                             _%hd233983234090%_
                             _%hd233974234066%_)
                            (_%g233948234010%_ _%g233949234013%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop233997234132%_
                                                 _%target233994234119%_
                                                 '()))
                                              (_%g233948234010%_
                                               _%g233949234013%_))))
                                      (_%g233948234010%_ _%g233949234013%_)))))
                            (_%g233948234010%_ _%g233949234013%_))
                        (_%g233948234010%_ _%g233949234013%_))
                    (_%g233948234010%_ _%g233949234013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233948234010%_
                                                     _%g233949234013%_))
                                                (_%g233948234010%_
                                                 _%g233949234013%_))
                                            (_%g233948234010%_
                                             _%g233949234013%_))))
                                    (_%g233948234010%_ _%g233949234013%_))))
                            (_%g233948234010%_ _%g233949234013%_))
                        (_%g233948234010%_ _%g233949234013%_))))
                (_%g233948234010%_ _%g233949234013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233948234010%_
                                                     _%g233949234013%_))
                                                (_%g233948234010%_
                                                 _%g233949234013%_))))
                                        (_%g233948234010%_
                                         _%g233949234013%_))))
                                (_%g233948234010%_ _%g233949234013%_))
                            (_%g233948234010%_ _%g233949234013%_))))
                    (_%g233948234010%_ _%g233949234013%_))
                (_%g233948234010%_ _%g233949234013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233948234010%_
                                                     _%g233949234013%_))))
                                            (_%g233948234010%_
                                             _%g233949234013%_))))
                                    (_%g233948234010%_ _%g233949234013%_))
                                (_%g233948234010%_ _%g233949234013%_))
                            (_%g233948234010%_ _%g233949234013%_))))
                    (_%g233948234010%_ _%g233949234013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233948234010%_
                                                     _%g233949234013%_))))
                                            (_%g233948234010%_
                                             _%g233949234013%_))
                                        (_%g233948234010%_ _%g233949234013%_))
                                    (_%g233948234010%_ _%g233949234013%_))))
                            (_%g233948234010%_ _%g233949234013%_)))))
                (_%g233947234949%_ _%g233737233905%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd233781233899%_
                                                    _%hd233778233891%_
                                                    _%hd233775233883%_
                                                    _%hd233772233875%_
                                                    _%hd233754233827%_)
                                                   (_%g233734233787%_
                                                    _%g233735233790%_))))
                                           (_%g233734233787%_
                                            _%g233735233790%_))
                                       (_%g233734233787%_ _%g233735233790%_))
                                   (_%g233734233787%_ _%g233735233790%_))
                               (_%g233734233787%_ _%g233735233790%_))))
                       (_%g233734233787%_ _%g233735233790%_))
                   (_%g233734233787%_ _%g233735233790%_))
               (_%g233734233787%_ _%g233735233790%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233734233787%_
                                                _%g233735233790%_))
                                           (_%g233734233787%_
                                            _%g233735233790%_))))
                                   (_%g233734233787%_ _%g233735233790%_))))
                           (_%g233734233787%_ _%g233735233790%_))))
                   (_%g233734233787%_ _%g233735233790%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233734233787%_
                                                    _%g233735233790%_))
                                               (_%g233734233787%_
                                                _%g233735233790%_))
                                           (_%g233734233787%_
                                            _%g233735233790%_))))
                                   (_%g233734233787%_ _%g233735233790%_))))
                           (_%g233734233787%_ _%g233735233790%_))
                       (_%g233734233787%_ _%g233735233790%_))))
               (_%g233734233787%_ _%g233735233790%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233734233787%_
                                                _%g233735233790%_))))
                                       (_%g233734233787%_ _%g233735233790%_))))
                               (_%g233734233787%_ _%g233735233790%_))
                           (_%g233734233787%_ _%g233735233790%_))
                       (_%g233734233787%_ _%g233735233790%_))))
               (_%g233734233787%_ _%g233735233790%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g233733234952%_
                                            _%g232126232188%_))
                                         _%stx232116%_))))))))
                  (_%__kont235179235180%_ (lambda () _%stx232116%_)))
              (let ((_%__match235208235209%_
                     (lambda (_%e232128232156%_
                              _%hd232129232159%_
                              _%tl232130232161%_
                              _%e232131232164%_
                              _%hd232132232167%_
                              _%tl232133232169%_
                              _%e232134232172%_
                              _%hd232135232175%_
                              _%tl232136232177%_
                              _%e232137232180%_
                              _%hd232138232183%_
                              _%tl232139232185%_)
                       (let ((_%g232126232188%_ _%hd232138232183%_)
                             (_%g232127232189%_ _%hd232135232175%_))
                         (if (let ((__tmp236413
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g232127232189%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp236413))
                             (_%__kont235177235178%_
                              _%g232126232188%_
                              _%g232127232189%_)
                             (_%__kont235179235180%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx235175235176%_))
                    (let ((_%e232128232156%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx235175235176%_))))
                      (let ((_%tl232130232161%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232128232156%_)))
                            (_%hd232129232159%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232128232156%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl232130232161%_))
                            (let ((_%e232131232164%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl232130232161%_))))
                              (let ((_%tl232133232169%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232131232164%_)))
                                    (_%hd232132232167%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232131232164%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd232132232167%_))
                                    (let ((_%e232134232172%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd232132232167%_))))
                                      (let ((_%tl232136232177%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232134232172%_)))
                                            (_%hd232135232175%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232134232172%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl232136232177%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl232133232169%_))
                                                (let ((_%e232137232180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl232133232169%_))))
                                                  (let ((_%tl232139232185%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e232137232180%_)))
                                                        (_%hd232138232183%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e232137232180%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl232139232185%_))
                                                        (_%__match235208235209%_
                                                         _%e232128232156%_
                                                         _%hd232129232159%_
                                                         _%tl232130232161%_
                                                         _%e232131232164%_
                                                         _%hd232132232167%_
                                                         _%tl232133232169%_
                                                         _%e232134232172%_
                                                         _%hd232135232175%_
                                                         _%tl232136232177%_
                                                         _%e232137232180%_
                                                         _%hd232138232183%_
                                                         _%tl232139232185%_)
                                                        (_%__kont235179235180%_))))
                                                (_%__kont235179235180%_))
                                            (_%__kont235179235180%_))))
                                    (_%__kont235179235180%_))))
                            (_%__kont235179235180%_))))
                    (_%__kont235179235180%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self231968%_ _%stx231969%_)
        (let* ((_%__stx235211235212%_ _%stx231969%_)
               (_%g231972232005%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx235211235212%_)))))
          (let ((_%__kont235213235214%_
                 (lambda (_%g231974232095%_) _%g231974232095%_))
                (_%__kont235215235216%_
                 (lambda (_%g231990232034%_ _%g231991232035%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self231968%_ _%g231990232034%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx235211235212%_))
                (let ((_%e231975232055%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx235211235212%_))))
                  (let ((_%tl231977232060%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231975232055%_)))
                        (_%hd231976232058%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231975232055%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231977232060%_))
                        (let ((_%e231978232063%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl231977232060%_))))
                          (let ((_%tl231980232068%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231978232063%_)))
                                (_%hd231979232066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231978232063%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd231979232066%_))
                                (let ((_%e231981232071%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231979232066%_))))
                                  (let ((_%tl231983232076%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231981232071%_)))
                                        (_%hd231982232074%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231981232071%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd231982232074%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd231982232074%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231983232076%_))
                                                (let ((_%e231984232079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231983232076%_))))
                                                  (let ((_%tl231986232084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231984232079%_)))
                                                        (_%hd231985232082%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231984232079%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231986232084%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl231980232068%_))
                                                            (let ((_%e231987232087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231980232068%_))))
                      (let ((_%tl231989232092%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231987232087%_)))
                            (_%hd231988232090%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231987232087%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231989232092%_))
                            (_%__kont235213235214%_ _%hd231985232082%_)
                            (let ()
                              (declare (not safe))
                              (_%g231972232005%_)))))
                    (let () (declare (not safe)) (_%g231972232005%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl231980232068%_))
                    (let ((_%e231998232026%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231980232068%_))))
                      (let ((_%tl232000232031%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231998232026%_)))
                            (_%hd231999232029%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231998232026%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232000232031%_))
                            (_%__kont235215235216%_
                             _%hd231999232029%_
                             _%hd231979232066%_)
                            (let ()
                              (declare (not safe))
                              (_%g231972232005%_)))))
                    (let () (declare (not safe)) (_%g231972232005%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl231980232068%_))
                                                    (let ((_%e231998232026%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl231980232068%_))))
                                                      (let ((_%tl232000232031%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e231998232026%_)))
                    (_%hd231999232029%_
                     (let () (declare (not safe)) (##car _%e231998232026%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl232000232031%_))
                    (_%__kont235215235216%_
                     _%hd231999232029%_
                     _%hd231979232066%_)
                    (let () (declare (not safe)) (_%g231972232005%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g231972232005%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231980232068%_))
                                                (let ((_%e231998232026%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231980232068%_))))
                                                  (let ((_%tl232000232031%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231998232026%_)))
                                                        (_%hd231999232029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231998232026%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl232000232031%_))
                                                        (_%__kont235215235216%_
                                                         _%hd231999232029%_
                                                         _%hd231979232066%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g231972232005%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g231972232005%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl231980232068%_))
                                            (let ((_%e231998232026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl231980232068%_))))
                                              (let ((_%tl232000232031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e231998232026%_)))
                                                    (_%hd231999232029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e231998232026%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl232000232031%_))
                                                    (_%__kont235215235216%_
                                                     _%hd231999232029%_
                                                     _%hd231979232066%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g231972232005%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g231972232005%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl231980232068%_))
                                    (let ((_%e231998232026%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl231980232068%_))))
                                      (let ((_%tl232000232031%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231998232026%_)))
                                            (_%hd231999232029%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231998232026%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl232000232031%_))
                                            (_%__kont235215235216%_
                                             _%hd231999232029%_
                                             _%hd231979232066%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g231972232005%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g231972232005%_))))))
                        (let () (declare (not safe)) (_%g231972232005%_)))))
                (let () (declare (not safe)) (_%g231972232005%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self231884%_ _%stx231885%_)
        (let* ((_%g231887231908%_
                (lambda (_%g231888231905%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g231888231905%_))))
               (_%g231886231965%_
                (lambda (_%g231888231911%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g231888231911%_))
                      (let ((_%e231892231913%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231888231911%_))))
                        (let ((_%hd231893231916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231892231913%_)))
                              (_%tl231894231918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231892231913%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl231894231918%_))
                              (let ((_%e231895231921%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl231894231918%_))))
                                (let ((_%hd231896231924%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e231895231921%_)))
                                      (_%tl231897231926%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e231895231921%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl231897231926%_))
                                      (let ((_%e231898231929%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl231897231926%_))))
                                        (let ((_%hd231899231932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231898231929%_)))
                                              (_%tl231900231934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231898231929%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231900231934%_))
                                              (let ((_%e231901231937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl231900231934%_))))
                                                (let ((_%hd231902231940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231901231937%_)))
                                                      (_%tl231903231942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231901231937%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl231903231942%_))
                                                      ((lambda (_%g231889231945%_
                                                                _%g231890231946%_
                                                                _%g231891231947%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self231884%_
                                                            _%g231890231946%_)))
                                                       _%hd231902231940%_
                                                       _%hd231899231932%_
                                                       _%hd231896231924%_)
                                                      (_%g231887231908%_
                                                       _%g231888231911%_))))
                                              (_%g231887231908%_
                                               _%g231888231911%_))))
                                      (_%g231887231908%_ _%g231888231911%_))))
                              (_%g231887231908%_ _%g231888231911%_))))
                      (_%g231887231908%_ _%g231888231911%_)))))
          (_%g231886231965%_ _%stx231885%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self230849%_ _%stx230850%_)
        (let* ((_%__stx235277235278%_ _%stx230850%_)
               (_%g230858231080%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx235277235278%_)))))
          (let ((_%__kont235279235280%_
                 (lambda (_%g230860231833%_
                          _%g230861231834%_
                          _%g230862231835%_
                          _%g230863231836%_)
                   (let ((__tmp236415
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230849%_ 'methods)))
                         (__tmp236414
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230861231834%_))))
                     (declare (not safe))
                     (hash-put! __tmp236415 __tmp236414 '#t))
                   (for-each
                    (lambda (_%g231869231871%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self230849%_ _%g231869231871%_)))
                    (let ((__tmp236416
                           (lambda (_%g231873231876%_ _%g231874231878%_)
                             (cons _%g231873231876%_ _%g231874231878%_))))
                      (declare (not safe))
                      (foldr__0 __tmp236416 '() _%g230860231833%_)))))
                (_%__kont235283235284%_
                 (lambda (_%g230903231670%_
                          _%g230904231671%_
                          _%g230905231672%_
                          _%g230906231673%_
                          _%g230907231674%_)
                   (let ((__tmp236418
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230849%_ 'methods)))
                         (__tmp236417
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230904231671%_))))
                     (declare (not safe))
                     (hash-put! __tmp236418 __tmp236417 '#t))
                   (for-each
                    (lambda (_%g231714231716%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self230849%_ _%g231714231716%_)))
                    (let ((__tmp236419
                           (lambda (_%g231718231721%_ _%g231719231723%_)
                             (cons _%g231718231721%_ _%g231719231723%_))))
                      (declare (not safe))
                      (foldr__0 __tmp236419 '() _%g230903231670%_)))))
                (_%__kont235287235288%_
                 (lambda (_%g230956231505%_
                          _%g230957231506%_
                          _%g230958231507%_)
                   (let ((__tmp236421
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230849%_ 'slots)))
                         (__tmp236420
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230956231505%_))))
                     (declare (not safe))
                     (hash-put! __tmp236421 __tmp236420 '#t))))
                (_%__kont235289235290%_
                 (lambda (_%g230989231382%_
                          _%g230990231383%_
                          _%g230991231384%_
                          _%g230992231385%_)
                   (let ((__tmp236423
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230849%_ 'slots)))
                         (__tmp236422
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230990231383%_))))
                     (declare (not safe))
                     (hash-put! __tmp236423 __tmp236422 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self230849%_ _%g230989231382%_))))
                (_%__kont235291235292%_
                 (lambda (_%g231026231256%_ _%g231027231257%_)
                   (let* ((_%accessor231279%_
                           (let ((__tmp236424
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g231027231257%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp236424)))
                          (_%klass231281%_
                           (let ((__tmp236425
                                  (##structure-ref
                                   _%accessor231279%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx230850%_
                              __tmp236425)))
                          (_%slot231283%_
                           (##structure-ref
                            _%accessor231279%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor231279%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass231281%_
                                    _%slot231283%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass231281%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp236427
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self230849%_ 'slots)))
                               (__tmp236426
                                (##structure-ref
                                 _%accessor231279%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp236427 __tmp236426 '#t))))))
                (_%__kont235293235294%_
                 (lambda (_%g231049231156%_
                          _%g231050231157%_
                          _%g231051231158%_)
                   (let* ((_%mutator231185%_
                           (let ((__tmp236428
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g231051231158%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp236428)))
                          (_%klass231187%_
                           (let ((__tmp236429
                                  (##structure-ref
                                   _%mutator231185%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx230850%_
                              __tmp236429)))
                          (_%slot231189%_
                           (##structure-ref
                            _%mutator231185%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator231185%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass231187%_
                                    _%slot231189%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass231187%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp236430
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self230849%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp236430 _%slot231189%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self230849%_ _%g231049231156%_)))))
                (_%__kont235295235296%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self230849%_ _%stx230850%_)))))
            (let* ((_%__match235776235777%_
                    (lambda (_%e231052231092%_
                             _%hd231053231095%_
                             _%tl231054231097%_
                             _%e231055231100%_
                             _%hd231056231103%_
                             _%tl231057231105%_
                             _%e231058231108%_
                             _%hd231059231111%_
                             _%tl231060231113%_
                             _%e231061231116%_
                             _%hd231062231119%_
                             _%tl231063231121%_
                             _%e231064231124%_
                             _%hd231065231127%_
                             _%tl231066231129%_
                             _%e231067231132%_
                             _%hd231068231135%_
                             _%tl231069231137%_
                             _%e231070231140%_
                             _%hd231071231143%_
                             _%tl231072231145%_
                             _%e231073231148%_
                             _%hd231074231151%_
                             _%tl231075231153%_)
                      (let ((_%g231049231156%_ _%hd231074231151%_)
                            (_%g231050231157%_ _%hd231071231143%_)
                            (_%g231051231158%_ _%hd231062231119%_))
                        (if (and (let ((__tmp236431
                                        (let ((__tmp236432
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g231051231158%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp236432))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp236431
                                    'gxc#!mutator::t))
                                 (let ((__tmp236433
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230849%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231050231157%_
                                    __tmp236433)))
                            (_%__kont235293235294%_
                             _%g231049231156%_
                             _%g231050231157%_
                             _%g231051231158%_)
                            (_%__kont235295235296%_)))))
                   (_%__match235774235775%_
                    (lambda (_%e231052231092%_
                             _%hd231053231095%_
                             _%tl231054231097%_
                             _%e231055231100%_
                             _%hd231056231103%_
                             _%tl231057231105%_
                             _%e231058231108%_
                             _%hd231059231111%_
                             _%tl231060231113%_
                             _%e231061231116%_
                             _%hd231062231119%_
                             _%tl231063231121%_
                             _%e231064231124%_
                             _%hd231065231127%_
                             _%tl231066231129%_
                             _%e231067231132%_
                             _%hd231068231135%_
                             _%tl231069231137%_
                             _%e231070231140%_
                             _%hd231071231143%_
                             _%tl231072231145%_
                             _%e231073231148%_
                             _%hd231074231151%_
                             _%tl231075231153%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl231075231153%_))
                          (_%__match235776235777%_
                           _%e231052231092%_
                           _%hd231053231095%_
                           _%tl231054231097%_
                           _%e231055231100%_
                           _%hd231056231103%_
                           _%tl231057231105%_
                           _%e231058231108%_
                           _%hd231059231111%_
                           _%tl231060231113%_
                           _%e231061231116%_
                           _%hd231062231119%_
                           _%tl231063231121%_
                           _%e231064231124%_
                           _%hd231065231127%_
                           _%tl231066231129%_
                           _%e231067231132%_
                           _%hd231068231135%_
                           _%tl231069231137%_
                           _%e231070231140%_
                           _%hd231071231143%_
                           _%tl231072231145%_
                           _%e231073231148%_
                           _%hd231074231151%_
                           _%tl231075231153%_)
                          (_%__kont235295235296%_))))
                   (_%__match235768235769%_
                    (lambda (_%e231052231092%_
                             _%hd231053231095%_
                             _%tl231054231097%_
                             _%e231055231100%_
                             _%hd231056231103%_
                             _%tl231057231105%_
                             _%e231058231108%_
                             _%hd231059231111%_
                             _%tl231060231113%_
                             _%e231061231116%_
                             _%hd231062231119%_
                             _%tl231063231121%_
                             _%e231064231124%_
                             _%hd231065231127%_
                             _%tl231066231129%_
                             _%e231067231132%_
                             _%hd231068231135%_
                             _%tl231069231137%_
                             _%e231070231140%_
                             _%hd231071231143%_
                             _%tl231072231145%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231066231129%_))
                          (let ((_%e231073231148%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231066231129%_))))
                            (let ((_%tl231075231153%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231073231148%_)))
                                  (_%hd231074231151%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231073231148%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231075231153%_))
                                  (_%__match235776235777%_
                                   _%e231052231092%_
                                   _%hd231053231095%_
                                   _%tl231054231097%_
                                   _%e231055231100%_
                                   _%hd231056231103%_
                                   _%tl231057231105%_
                                   _%e231058231108%_
                                   _%hd231059231111%_
                                   _%tl231060231113%_
                                   _%e231061231116%_
                                   _%hd231062231119%_
                                   _%tl231063231121%_
                                   _%e231064231124%_
                                   _%hd231065231127%_
                                   _%tl231066231129%_
                                   _%e231067231132%_
                                   _%hd231068231135%_
                                   _%tl231069231137%_
                                   _%e231070231140%_
                                   _%hd231071231143%_
                                   _%tl231072231145%_
                                   _%e231073231148%_
                                   _%hd231074231151%_
                                   _%tl231075231153%_)
                                  (_%__kont235295235296%_))))
                          (_%__kont235295235296%_))))
                   (_%__match235714235715%_
                    (lambda (_%e231028231200%_
                             _%hd231029231203%_
                             _%tl231030231205%_
                             _%e231031231208%_
                             _%hd231032231211%_
                             _%tl231033231213%_
                             _%e231034231216%_
                             _%hd231035231219%_
                             _%tl231036231221%_
                             _%e231037231224%_
                             _%hd231038231227%_
                             _%tl231039231229%_
                             _%e231040231232%_
                             _%hd231041231235%_
                             _%tl231042231237%_
                             _%e231043231240%_
                             _%hd231044231243%_
                             _%tl231045231245%_
                             _%e231046231248%_
                             _%hd231047231251%_
                             _%tl231048231253%_)
                      (let ((_%g231026231256%_ _%hd231047231251%_)
                            (_%g231027231257%_ _%hd231038231227%_))
                        (if (and (let ((__tmp236434
                                        (let ((__tmp236435
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g231027231257%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp236435))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp236434
                                    'gxc#!accessor::t))
                                 (let ((__tmp236436
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230849%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231026231256%_
                                    __tmp236436)))
                            (_%__kont235291235292%_
                             _%g231026231256%_
                             _%g231027231257%_)
                            (_%__kont235295235296%_)))))
                   (_%__match235712235713%_
                    (lambda (_%e231028231200%_
                             _%hd231029231203%_
                             _%tl231030231205%_
                             _%e231031231208%_
                             _%hd231032231211%_
                             _%tl231033231213%_
                             _%e231034231216%_
                             _%hd231035231219%_
                             _%tl231036231221%_
                             _%e231037231224%_
                             _%hd231038231227%_
                             _%tl231039231229%_
                             _%e231040231232%_
                             _%hd231041231235%_
                             _%tl231042231237%_
                             _%e231043231240%_
                             _%hd231044231243%_
                             _%tl231045231245%_
                             _%e231046231248%_
                             _%hd231047231251%_
                             _%tl231048231253%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl231042231237%_))
                          (_%__match235714235715%_
                           _%e231028231200%_
                           _%hd231029231203%_
                           _%tl231030231205%_
                           _%e231031231208%_
                           _%hd231032231211%_
                           _%tl231033231213%_
                           _%e231034231216%_
                           _%hd231035231219%_
                           _%tl231036231221%_
                           _%e231037231224%_
                           _%hd231038231227%_
                           _%tl231039231229%_
                           _%e231040231232%_
                           _%hd231041231235%_
                           _%tl231042231237%_
                           _%e231043231240%_
                           _%hd231044231243%_
                           _%tl231045231245%_
                           _%e231046231248%_
                           _%hd231047231251%_
                           _%tl231048231253%_)
                          (_%__match235768235769%_
                           _%e231028231200%_
                           _%hd231029231203%_
                           _%tl231030231205%_
                           _%e231031231208%_
                           _%hd231032231211%_
                           _%tl231033231213%_
                           _%e231034231216%_
                           _%hd231035231219%_
                           _%tl231036231221%_
                           _%e231037231224%_
                           _%hd231038231227%_
                           _%tl231039231229%_
                           _%e231040231232%_
                           _%hd231041231235%_
                           _%tl231042231237%_
                           _%e231043231240%_
                           _%hd231044231243%_
                           _%tl231045231245%_
                           _%e231046231248%_
                           _%hd231047231251%_
                           _%tl231048231253%_))))
                   (_%__match235658235659%_
                    (lambda (_%e230993231294%_
                             _%hd230994231297%_
                             _%tl230995231299%_
                             _%e230996231302%_
                             _%hd230997231305%_
                             _%tl230998231307%_
                             _%e230999231310%_
                             _%hd231000231313%_
                             _%tl231001231315%_
                             _%e231002231318%_
                             _%hd231003231321%_
                             _%tl231004231323%_
                             _%e231005231326%_
                             _%hd231006231329%_
                             _%tl231007231331%_
                             _%e231008231334%_
                             _%hd231009231337%_
                             _%tl231010231339%_
                             _%e231011231342%_
                             _%hd231012231345%_
                             _%tl231013231347%_
                             _%e231014231350%_
                             _%hd231015231353%_
                             _%tl231016231355%_
                             _%e231017231358%_
                             _%hd231018231361%_
                             _%tl231019231363%_
                             _%e231020231366%_
                             _%hd231021231369%_
                             _%tl231022231371%_
                             _%e231023231374%_
                             _%hd231024231377%_
                             _%tl231025231379%_)
                      (let ((_%g230989231382%_ _%hd231024231377%_)
                            (_%g230990231383%_ _%hd231021231369%_)
                            (_%g230991231384%_ _%hd231012231345%_)
                            (_%g230992231385%_ _%hd231003231321%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230992231385%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230992231385%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp236437
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230849%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230991231384%_
                                    __tmp236437)))
                            (_%__kont235289235290%_
                             _%g230989231382%_
                             _%g230990231383%_
                             _%g230991231384%_
                             _%g230992231385%_)
                            (_%__kont235295235296%_)))))
                   (_%__match235650235651%_
                    (lambda (_%e230993231294%_
                             _%hd230994231297%_
                             _%tl230995231299%_
                             _%e230996231302%_
                             _%hd230997231305%_
                             _%tl230998231307%_
                             _%e230999231310%_
                             _%hd231000231313%_
                             _%tl231001231315%_
                             _%e231002231318%_
                             _%hd231003231321%_
                             _%tl231004231323%_
                             _%e231005231326%_
                             _%hd231006231329%_
                             _%tl231007231331%_
                             _%e231008231334%_
                             _%hd231009231337%_
                             _%tl231010231339%_
                             _%e231011231342%_
                             _%hd231012231345%_
                             _%tl231013231347%_
                             _%e231014231350%_
                             _%hd231015231353%_
                             _%tl231016231355%_
                             _%e231017231358%_
                             _%hd231018231361%_
                             _%tl231019231363%_
                             _%e231020231366%_
                             _%hd231021231369%_
                             _%tl231022231371%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231016231355%_))
                          (let ((_%e231023231374%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231016231355%_))))
                            (let ((_%tl231025231379%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231023231374%_)))
                                  (_%hd231024231377%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231023231374%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231025231379%_))
                                  (_%__match235658235659%_
                                   _%e230993231294%_
                                   _%hd230994231297%_
                                   _%tl230995231299%_
                                   _%e230996231302%_
                                   _%hd230997231305%_
                                   _%tl230998231307%_
                                   _%e230999231310%_
                                   _%hd231000231313%_
                                   _%tl231001231315%_
                                   _%e231002231318%_
                                   _%hd231003231321%_
                                   _%tl231004231323%_
                                   _%e231005231326%_
                                   _%hd231006231329%_
                                   _%tl231007231331%_
                                   _%e231008231334%_
                                   _%hd231009231337%_
                                   _%tl231010231339%_
                                   _%e231011231342%_
                                   _%hd231012231345%_
                                   _%tl231013231347%_
                                   _%e231014231350%_
                                   _%hd231015231353%_
                                   _%tl231016231355%_
                                   _%e231017231358%_
                                   _%hd231018231361%_
                                   _%tl231019231363%_
                                   _%e231020231366%_
                                   _%hd231021231369%_
                                   _%tl231022231371%_
                                   _%e231023231374%_
                                   _%hd231024231377%_
                                   _%tl231025231379%_)
                                  (_%__kont235295235296%_))))
                          (_%__match235774235775%_
                           _%e230993231294%_
                           _%hd230994231297%_
                           _%tl230995231299%_
                           _%e230996231302%_
                           _%hd230997231305%_
                           _%tl230998231307%_
                           _%e230999231310%_
                           _%hd231000231313%_
                           _%tl231001231315%_
                           _%e231002231318%_
                           _%hd231003231321%_
                           _%tl231004231323%_
                           _%e231005231326%_
                           _%hd231006231329%_
                           _%tl231007231331%_
                           _%e231008231334%_
                           _%hd231009231337%_
                           _%tl231010231339%_
                           _%e231011231342%_
                           _%hd231012231345%_
                           _%tl231013231347%_
                           _%e231014231350%_
                           _%hd231015231353%_
                           _%tl231016231355%_))))
                   (_%__match235572235573%_
                    (lambda (_%e230959231425%_
                             _%hd230960231428%_
                             _%tl230961231430%_
                             _%e230962231433%_
                             _%hd230963231436%_
                             _%tl230964231438%_
                             _%e230965231441%_
                             _%hd230966231444%_
                             _%tl230967231446%_
                             _%e230968231449%_
                             _%hd230969231452%_
                             _%tl230970231454%_
                             _%e230971231457%_
                             _%hd230972231460%_
                             _%tl230973231462%_
                             _%e230974231465%_
                             _%hd230975231468%_
                             _%tl230976231470%_
                             _%e230977231473%_
                             _%hd230978231476%_
                             _%tl230979231478%_
                             _%e230980231481%_
                             _%hd230981231484%_
                             _%tl230982231486%_
                             _%e230983231489%_
                             _%hd230984231492%_
                             _%tl230985231494%_
                             _%e230986231497%_
                             _%hd230987231500%_
                             _%tl230988231502%_)
                      (let ((_%g230956231505%_ _%hd230987231500%_)
                            (_%g230957231506%_ _%hd230978231476%_)
                            (_%g230958231507%_ _%hd230969231452%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230958231507%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230958231507%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp236438
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230849%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230957231506%_
                                    __tmp236438)))
                            (_%__kont235287235288%_
                             _%g230956231505%_
                             _%g230957231506%_
                             _%g230958231507%_)
                            (_%__match235776235777%_
                             _%e230959231425%_
                             _%hd230960231428%_
                             _%tl230961231430%_
                             _%e230962231433%_
                             _%hd230963231436%_
                             _%tl230964231438%_
                             _%e230965231441%_
                             _%hd230966231444%_
                             _%tl230967231446%_
                             _%e230968231449%_
                             _%hd230969231452%_
                             _%tl230970231454%_
                             _%e230971231457%_
                             _%hd230972231460%_
                             _%tl230973231462%_
                             _%e230974231465%_
                             _%hd230975231468%_
                             _%tl230976231470%_
                             _%e230977231473%_
                             _%hd230978231476%_
                             _%tl230979231478%_
                             _%e230980231481%_
                             _%hd230981231484%_
                             _%tl230982231486%_)))))
                   (_%__match235570235571%_
                    (lambda (_%e230959231425%_
                             _%hd230960231428%_
                             _%tl230961231430%_
                             _%e230962231433%_
                             _%hd230963231436%_
                             _%tl230964231438%_
                             _%e230965231441%_
                             _%hd230966231444%_
                             _%tl230967231446%_
                             _%e230968231449%_
                             _%hd230969231452%_
                             _%tl230970231454%_
                             _%e230971231457%_
                             _%hd230972231460%_
                             _%tl230973231462%_
                             _%e230974231465%_
                             _%hd230975231468%_
                             _%tl230976231470%_
                             _%e230977231473%_
                             _%hd230978231476%_
                             _%tl230979231478%_
                             _%e230980231481%_
                             _%hd230981231484%_
                             _%tl230982231486%_
                             _%e230983231489%_
                             _%hd230984231492%_
                             _%tl230985231494%_
                             _%e230986231497%_
                             _%hd230987231500%_
                             _%tl230988231502%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230982231486%_))
                          (_%__match235572235573%_
                           _%e230959231425%_
                           _%hd230960231428%_
                           _%tl230961231430%_
                           _%e230962231433%_
                           _%hd230963231436%_
                           _%tl230964231438%_
                           _%e230965231441%_
                           _%hd230966231444%_
                           _%tl230967231446%_
                           _%e230968231449%_
                           _%hd230969231452%_
                           _%tl230970231454%_
                           _%e230971231457%_
                           _%hd230972231460%_
                           _%tl230973231462%_
                           _%e230974231465%_
                           _%hd230975231468%_
                           _%tl230976231470%_
                           _%e230977231473%_
                           _%hd230978231476%_
                           _%tl230979231478%_
                           _%e230980231481%_
                           _%hd230981231484%_
                           _%tl230982231486%_
                           _%e230983231489%_
                           _%hd230984231492%_
                           _%tl230985231494%_
                           _%e230986231497%_
                           _%hd230987231500%_
                           _%tl230988231502%_)
                          (_%__match235650235651%_
                           _%e230959231425%_
                           _%hd230960231428%_
                           _%tl230961231430%_
                           _%e230962231433%_
                           _%hd230963231436%_
                           _%tl230964231438%_
                           _%e230965231441%_
                           _%hd230966231444%_
                           _%tl230967231446%_
                           _%e230968231449%_
                           _%hd230969231452%_
                           _%tl230970231454%_
                           _%e230971231457%_
                           _%hd230972231460%_
                           _%tl230973231462%_
                           _%e230974231465%_
                           _%hd230975231468%_
                           _%tl230976231470%_
                           _%e230977231473%_
                           _%hd230978231476%_
                           _%tl230979231478%_
                           _%e230980231481%_
                           _%hd230981231484%_
                           _%tl230982231486%_
                           _%e230983231489%_
                           _%hd230984231492%_
                           _%tl230985231494%_
                           _%e230986231497%_
                           _%hd230987231500%_
                           _%tl230988231502%_))))
                   (_%__match235560235561%_
                    (lambda (_%e230959231425%_
                             _%hd230960231428%_
                             _%tl230961231430%_
                             _%e230962231433%_
                             _%hd230963231436%_
                             _%tl230964231438%_
                             _%e230965231441%_
                             _%hd230966231444%_
                             _%tl230967231446%_
                             _%e230968231449%_
                             _%hd230969231452%_
                             _%tl230970231454%_
                             _%e230971231457%_
                             _%hd230972231460%_
                             _%tl230973231462%_
                             _%e230974231465%_
                             _%hd230975231468%_
                             _%tl230976231470%_
                             _%e230977231473%_
                             _%hd230978231476%_
                             _%tl230979231478%_
                             _%e230980231481%_
                             _%hd230981231484%_
                             _%tl230982231486%_
                             _%e230983231489%_
                             _%hd230984231492%_
                             _%tl230985231494%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd230984231492%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230985231494%_))
                              (let ((_%e230986231497%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230985231494%_))))
                                (let ((_%tl230988231502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230986231497%_)))
                                      (_%hd230987231500%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230986231497%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230988231502%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl230982231486%_))
                                          (_%__match235572235573%_
                                           _%e230959231425%_
                                           _%hd230960231428%_
                                           _%tl230961231430%_
                                           _%e230962231433%_
                                           _%hd230963231436%_
                                           _%tl230964231438%_
                                           _%e230965231441%_
                                           _%hd230966231444%_
                                           _%tl230967231446%_
                                           _%e230968231449%_
                                           _%hd230969231452%_
                                           _%tl230970231454%_
                                           _%e230971231457%_
                                           _%hd230972231460%_
                                           _%tl230973231462%_
                                           _%e230974231465%_
                                           _%hd230975231468%_
                                           _%tl230976231470%_
                                           _%e230977231473%_
                                           _%hd230978231476%_
                                           _%tl230979231478%_
                                           _%e230980231481%_
                                           _%hd230981231484%_
                                           _%tl230982231486%_
                                           _%e230983231489%_
                                           _%hd230984231492%_
                                           _%tl230985231494%_
                                           _%e230986231497%_
                                           _%hd230987231500%_
                                           _%tl230988231502%_)
                                          (_%__match235650235651%_
                                           _%e230959231425%_
                                           _%hd230960231428%_
                                           _%tl230961231430%_
                                           _%e230962231433%_
                                           _%hd230963231436%_
                                           _%tl230964231438%_
                                           _%e230965231441%_
                                           _%hd230966231444%_
                                           _%tl230967231446%_
                                           _%e230968231449%_
                                           _%hd230969231452%_
                                           _%tl230970231454%_
                                           _%e230971231457%_
                                           _%hd230972231460%_
                                           _%tl230973231462%_
                                           _%e230974231465%_
                                           _%hd230975231468%_
                                           _%tl230976231470%_
                                           _%e230977231473%_
                                           _%hd230978231476%_
                                           _%tl230979231478%_
                                           _%e230980231481%_
                                           _%hd230981231484%_
                                           _%tl230982231486%_
                                           _%e230983231489%_
                                           _%hd230984231492%_
                                           _%tl230985231494%_
                                           _%e230986231497%_
                                           _%hd230987231500%_
                                           _%tl230988231502%_))
                                      (_%__match235774235775%_
                                       _%e230959231425%_
                                       _%hd230960231428%_
                                       _%tl230961231430%_
                                       _%e230962231433%_
                                       _%hd230963231436%_
                                       _%tl230964231438%_
                                       _%e230965231441%_
                                       _%hd230966231444%_
                                       _%tl230967231446%_
                                       _%e230968231449%_
                                       _%hd230969231452%_
                                       _%tl230970231454%_
                                       _%e230971231457%_
                                       _%hd230972231460%_
                                       _%tl230973231462%_
                                       _%e230974231465%_
                                       _%hd230975231468%_
                                       _%tl230976231470%_
                                       _%e230977231473%_
                                       _%hd230978231476%_
                                       _%tl230979231478%_
                                       _%e230980231481%_
                                       _%hd230981231484%_
                                       _%tl230982231486%_))))
                              (_%__match235774235775%_
                               _%e230959231425%_
                               _%hd230960231428%_
                               _%tl230961231430%_
                               _%e230962231433%_
                               _%hd230963231436%_
                               _%tl230964231438%_
                               _%e230965231441%_
                               _%hd230966231444%_
                               _%tl230967231446%_
                               _%e230968231449%_
                               _%hd230969231452%_
                               _%tl230970231454%_
                               _%e230971231457%_
                               _%hd230972231460%_
                               _%tl230973231462%_
                               _%e230974231465%_
                               _%hd230975231468%_
                               _%tl230976231470%_
                               _%e230977231473%_
                               _%hd230978231476%_
                               _%tl230979231478%_
                               _%e230980231481%_
                               _%hd230981231484%_
                               _%tl230982231486%_))
                          (_%__match235774235775%_
                           _%e230959231425%_
                           _%hd230960231428%_
                           _%tl230961231430%_
                           _%e230962231433%_
                           _%hd230963231436%_
                           _%tl230964231438%_
                           _%e230965231441%_
                           _%hd230966231444%_
                           _%tl230967231446%_
                           _%e230968231449%_
                           _%hd230969231452%_
                           _%tl230970231454%_
                           _%e230971231457%_
                           _%hd230972231460%_
                           _%tl230973231462%_
                           _%e230974231465%_
                           _%hd230975231468%_
                           _%tl230976231470%_
                           _%e230977231473%_
                           _%hd230978231476%_
                           _%tl230979231478%_
                           _%e230980231481%_
                           _%hd230981231484%_
                           _%tl230982231486%_))))
                   (_%__match235492235493%_
                    (lambda (_%e230908231544%_
                             _%hd230909231547%_
                             _%tl230910231549%_
                             _%e230911231552%_
                             _%hd230912231555%_
                             _%tl230913231557%_
                             _%e230914231560%_
                             _%hd230915231563%_
                             _%tl230916231565%_
                             _%e230917231568%_
                             _%hd230918231571%_
                             _%tl230919231573%_
                             _%e230920231576%_
                             _%hd230921231579%_
                             _%tl230922231581%_
                             _%e230923231584%_
                             _%hd230924231587%_
                             _%tl230925231589%_
                             _%e230926231592%_
                             _%hd230927231595%_
                             _%tl230928231597%_
                             _%e230929231600%_
                             _%hd230930231603%_
                             _%tl230931231605%_
                             _%e230932231608%_
                             _%hd230933231611%_
                             _%tl230934231613%_
                             _%e230935231616%_
                             _%hd230936231619%_
                             _%tl230937231621%_
                             _%e230938231624%_
                             _%hd230939231627%_
                             _%tl230940231629%_
                             _%e230941231632%_
                             _%hd230942231635%_
                             _%tl230943231637%_
                             _%e230944231640%_
                             _%hd230945231643%_
                             _%tl230946231645%_
                             _%__splice235285235286%_
                             _%target230947231648%_
                             _%tl230949231650%_)
                      (letrec ((_%loop230950231653%_
                                (lambda (_%hd230948231656%_
                                         _%args230954231658%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd230948231656%_))
                                      (let ((_%e230951231660%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd230948231656%_))))
                                        (let ((_%lp-tl230953231665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230951231660%_)))
                                              (_%lp-hd230952231663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230951231660%_))))
                                          (_%loop230950231653%_
                                           _%lp-tl230953231665%_
                                           (cons _%lp-hd230952231663%_
                                                 _%args230954231658%_))))
                                      (let ((_%args230955231668%_
                                             (reverse _%args230954231658%_)))
                                        (let ((_%g230903231670%_
                                               _%args230955231668%_)
                                              (_%g230904231671%_
                                               _%hd230945231643%_)
                                              (_%g230905231672%_
                                               _%hd230936231619%_)
                                              (_%g230906231673%_
                                               _%hd230927231595%_)
                                              (_%g230907231674%_
                                               _%hd230918231571%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230907231674%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230906231673%_
                                                      'call-method))
                                                   (let ((__tmp236439
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self230849%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g230905231672%_
                                                      __tmp236439)))
                                              (_%__kont235283235284%_
                                               _%g230903231670%_
                                               _%g230904231671%_
                                               _%g230905231672%_
                                               _%g230906231673%_
                                               _%g230907231674%_)
                                              (_%__kont235295235296%_))))))))
                        (_%loop230950231653%_ _%target230947231648%_ '()))))
                   (_%__match235450235451%_
                    (lambda (_%e230908231544%_
                             _%hd230909231547%_
                             _%tl230910231549%_
                             _%e230911231552%_
                             _%hd230912231555%_
                             _%tl230913231557%_
                             _%e230914231560%_
                             _%hd230915231563%_
                             _%tl230916231565%_
                             _%e230917231568%_
                             _%hd230918231571%_
                             _%tl230919231573%_
                             _%e230920231576%_
                             _%hd230921231579%_
                             _%tl230922231581%_
                             _%e230923231584%_
                             _%hd230924231587%_
                             _%tl230925231589%_
                             _%e230926231592%_
                             _%hd230927231595%_
                             _%tl230928231597%_
                             _%e230929231600%_
                             _%hd230930231603%_
                             _%tl230931231605%_
                             _%e230932231608%_
                             _%hd230933231611%_
                             _%tl230934231613%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd230933231611%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230934231613%_))
                              (let ((_%e230935231616%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230934231613%_))))
                                (let ((_%tl230937231621%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230935231616%_)))
                                      (_%hd230936231619%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230935231616%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230937231621%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl230931231605%_))
                                          (let ((_%e230938231624%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl230931231605%_))))
                                            (let ((_%tl230940231629%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e230938231624%_)))
                                                  (_%hd230939231627%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e230938231624%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd230939231627%_))
                                                  (let ((_%e230941231632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd230939231627%_))))
                                                    (let ((_%tl230943231637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230941231632%_)))
                                                          (_%hd230942231635%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230941231632%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd230942231635%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd230942231635%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230943231637%_))
                          (let ((_%e230944231640%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230943231637%_))))
                            (let ((_%tl230946231645%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230944231640%_)))
                                  (_%hd230945231643%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230944231640%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230946231645%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230940231629%_))
                                      (let ((_%__splice235285235286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl230940231629%_
                                                '0))))
                                        (let ((_%tl230949231650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice235285235286%_
                                                  '1)))
                                              (_%target230947231648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice235285235286%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230949231650%_))
                                              (_%__match235492235493%_
                                               _%e230908231544%_
                                               _%hd230909231547%_
                                               _%tl230910231549%_
                                               _%e230911231552%_
                                               _%hd230912231555%_
                                               _%tl230913231557%_
                                               _%e230914231560%_
                                               _%hd230915231563%_
                                               _%tl230916231565%_
                                               _%e230917231568%_
                                               _%hd230918231571%_
                                               _%tl230919231573%_
                                               _%e230920231576%_
                                               _%hd230921231579%_
                                               _%tl230922231581%_
                                               _%e230923231584%_
                                               _%hd230924231587%_
                                               _%tl230925231589%_
                                               _%e230926231592%_
                                               _%hd230927231595%_
                                               _%tl230928231597%_
                                               _%e230929231600%_
                                               _%hd230930231603%_
                                               _%tl230931231605%_
                                               _%e230932231608%_
                                               _%hd230933231611%_
                                               _%tl230934231613%_
                                               _%e230935231616%_
                                               _%hd230936231619%_
                                               _%tl230937231621%_
                                               _%e230938231624%_
                                               _%hd230939231627%_
                                               _%tl230940231629%_
                                               _%e230941231632%_
                                               _%hd230942231635%_
                                               _%tl230943231637%_
                                               _%e230944231640%_
                                               _%hd230945231643%_
                                               _%tl230946231645%_
                                               _%__splice235285235286%_
                                               _%target230947231648%_
                                               _%tl230949231650%_)
                                              (_%__kont235295235296%_))))
                                      (_%__kont235295235296%_))
                                  (_%__kont235295235296%_))))
                          (_%__kont235295235296%_))
                      (_%__kont235295235296%_))
                  (_%__kont235295235296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235295235296%_))))
                                          (_%__match235774235775%_
                                           _%e230908231544%_
                                           _%hd230909231547%_
                                           _%tl230910231549%_
                                           _%e230911231552%_
                                           _%hd230912231555%_
                                           _%tl230913231557%_
                                           _%e230914231560%_
                                           _%hd230915231563%_
                                           _%tl230916231565%_
                                           _%e230917231568%_
                                           _%hd230918231571%_
                                           _%tl230919231573%_
                                           _%e230920231576%_
                                           _%hd230921231579%_
                                           _%tl230922231581%_
                                           _%e230923231584%_
                                           _%hd230924231587%_
                                           _%tl230925231589%_
                                           _%e230926231592%_
                                           _%hd230927231595%_
                                           _%tl230928231597%_
                                           _%e230929231600%_
                                           _%hd230930231603%_
                                           _%tl230931231605%_))
                                      (_%__match235774235775%_
                                       _%e230908231544%_
                                       _%hd230909231547%_
                                       _%tl230910231549%_
                                       _%e230911231552%_
                                       _%hd230912231555%_
                                       _%tl230913231557%_
                                       _%e230914231560%_
                                       _%hd230915231563%_
                                       _%tl230916231565%_
                                       _%e230917231568%_
                                       _%hd230918231571%_
                                       _%tl230919231573%_
                                       _%e230920231576%_
                                       _%hd230921231579%_
                                       _%tl230922231581%_
                                       _%e230923231584%_
                                       _%hd230924231587%_
                                       _%tl230925231589%_
                                       _%e230926231592%_
                                       _%hd230927231595%_
                                       _%tl230928231597%_
                                       _%e230929231600%_
                                       _%hd230930231603%_
                                       _%tl230931231605%_))))
                              (_%__match235774235775%_
                               _%e230908231544%_
                               _%hd230909231547%_
                               _%tl230910231549%_
                               _%e230911231552%_
                               _%hd230912231555%_
                               _%tl230913231557%_
                               _%e230914231560%_
                               _%hd230915231563%_
                               _%tl230916231565%_
                               _%e230917231568%_
                               _%hd230918231571%_
                               _%tl230919231573%_
                               _%e230920231576%_
                               _%hd230921231579%_
                               _%tl230922231581%_
                               _%e230923231584%_
                               _%hd230924231587%_
                               _%tl230925231589%_
                               _%e230926231592%_
                               _%hd230927231595%_
                               _%tl230928231597%_
                               _%e230929231600%_
                               _%hd230930231603%_
                               _%tl230931231605%_))
                          (_%__match235560235561%_
                           _%e230908231544%_
                           _%hd230909231547%_
                           _%tl230910231549%_
                           _%e230911231552%_
                           _%hd230912231555%_
                           _%tl230913231557%_
                           _%e230914231560%_
                           _%hd230915231563%_
                           _%tl230916231565%_
                           _%e230917231568%_
                           _%hd230918231571%_
                           _%tl230919231573%_
                           _%e230920231576%_
                           _%hd230921231579%_
                           _%tl230922231581%_
                           _%e230923231584%_
                           _%hd230924231587%_
                           _%tl230925231589%_
                           _%e230926231592%_
                           _%hd230927231595%_
                           _%tl230928231597%_
                           _%e230929231600%_
                           _%hd230930231603%_
                           _%tl230931231605%_
                           _%e230932231608%_
                           _%hd230933231611%_
                           _%tl230934231613%_))))
                   (_%__match235382235383%_
                    (lambda (_%e230864231731%_
                             _%hd230865231734%_
                             _%tl230866231736%_
                             _%e230867231739%_
                             _%hd230868231742%_
                             _%tl230869231744%_
                             _%e230870231747%_
                             _%hd230871231750%_
                             _%tl230872231752%_
                             _%e230873231755%_
                             _%hd230874231758%_
                             _%tl230875231760%_
                             _%e230876231763%_
                             _%hd230877231766%_
                             _%tl230878231768%_
                             _%e230879231771%_
                             _%hd230880231774%_
                             _%tl230881231776%_
                             _%e230882231779%_
                             _%hd230883231782%_
                             _%tl230884231784%_
                             _%e230885231787%_
                             _%hd230886231790%_
                             _%tl230887231792%_
                             _%e230888231795%_
                             _%hd230889231798%_
                             _%tl230890231800%_
                             _%e230891231803%_
                             _%hd230892231806%_
                             _%tl230893231808%_
                             _%__splice235281235282%_
                             _%target230894231811%_
                             _%tl230896231813%_)
                      (letrec ((_%loop230897231816%_
                                (lambda (_%hd230895231819%_
                                         _%args230901231821%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd230895231819%_))
                                      (let ((_%e230898231823%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd230895231819%_))))
                                        (let ((_%lp-tl230900231828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230898231823%_)))
                                              (_%lp-hd230899231826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230898231823%_))))
                                          (_%loop230897231816%_
                                           _%lp-tl230900231828%_
                                           (cons _%lp-hd230899231826%_
                                                 _%args230901231821%_))))
                                      (let ((_%args230902231831%_
                                             (reverse _%args230901231821%_)))
                                        (let ((_%g230860231833%_
                                               _%args230902231831%_)
                                              (_%g230861231834%_
                                               _%hd230892231806%_)
                                              (_%g230862231835%_
                                               _%hd230883231782%_)
                                              (_%g230863231836%_
                                               _%hd230874231758%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230863231836%_
                                                      'call-method))
                                                   (let ((__tmp236440
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self230849%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g230862231835%_
                                                      __tmp236440)))
                                              (_%__kont235279235280%_
                                               _%g230860231833%_
                                               _%g230861231834%_
                                               _%g230862231835%_
                                               _%g230863231836%_)
                                              (_%__match235570235571%_
                                               _%e230864231731%_
                                               _%hd230865231734%_
                                               _%tl230866231736%_
                                               _%e230867231739%_
                                               _%hd230868231742%_
                                               _%tl230869231744%_
                                               _%e230870231747%_
                                               _%hd230871231750%_
                                               _%tl230872231752%_
                                               _%e230873231755%_
                                               _%hd230874231758%_
                                               _%tl230875231760%_
                                               _%e230876231763%_
                                               _%hd230877231766%_
                                               _%tl230878231768%_
                                               _%e230879231771%_
                                               _%hd230880231774%_
                                               _%tl230881231776%_
                                               _%e230882231779%_
                                               _%hd230883231782%_
                                               _%tl230884231784%_
                                               _%e230885231787%_
                                               _%hd230886231790%_
                                               _%tl230887231792%_
                                               _%e230888231795%_
                                               _%hd230889231798%_
                                               _%tl230890231800%_
                                               _%e230891231803%_
                                               _%hd230892231806%_
                                               _%tl230893231808%_))))))))
                        (_%loop230897231816%_ _%target230894231811%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx235277235278%_))
                  (let ((_%e230864231731%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx235277235278%_))))
                    (let ((_%tl230866231736%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230864231731%_)))
                          (_%hd230865231734%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230864231731%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230866231736%_))
                          (let ((_%e230867231739%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230866231736%_))))
                            (let ((_%tl230869231744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230867231739%_)))
                                  (_%hd230868231742%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230867231739%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd230868231742%_))
                                  (let ((_%e230870231747%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd230868231742%_))))
                                    (let ((_%tl230872231752%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e230870231747%_)))
                                          (_%hd230871231750%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e230870231747%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd230871231750%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd230871231750%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl230872231752%_))
                                                  (let ((_%e230873231755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl230872231752%_))))
                                                    (let ((_%tl230875231760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230873231755%_)))
                                                          (_%hd230874231758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230873231755%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl230875231760%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl230869231744%_))
                      (let ((_%e230876231763%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl230869231744%_))))
                        (let ((_%tl230878231768%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230876231763%_)))
                              (_%hd230877231766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230876231763%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd230877231766%_))
                              (let ((_%e230879231771%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd230877231766%_))))
                                (let ((_%tl230881231776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230879231771%_)))
                                      (_%hd230880231774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230879231771%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd230880231774%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd230880231774%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl230881231776%_))
                                              (let ((_%e230882231779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl230881231776%_))))
                                                (let ((_%tl230884231784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e230882231779%_)))
                                                      (_%hd230883231782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e230882231779%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl230884231784%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl230878231768%_))
                                                          (let ((_%e230885231787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl230878231768%_))))
                    (let ((_%tl230887231792%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230885231787%_)))
                          (_%hd230886231790%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230885231787%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd230886231790%_))
                          (let ((_%e230888231795%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd230886231790%_))))
                            (let ((_%tl230890231800%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230888231795%_)))
                                  (_%hd230889231798%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230888231795%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd230889231798%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd230889231798%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl230890231800%_))
                                          (let ((_%e230891231803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl230890231800%_))))
                                            (let ((_%tl230893231808%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e230891231803%_)))
                                                  (_%hd230892231806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e230891231803%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl230893231808%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl230887231792%_))
                                                      (let ((_%__splice235281235282%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl230887231792%_
                        '0))))
                (let ((_%tl230896231813%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice235281235282%_ '1)))
                      (_%target230894231811%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice235281235282%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl230896231813%_))
                      (_%__match235382235383%_
                       _%e230864231731%_
                       _%hd230865231734%_
                       _%tl230866231736%_
                       _%e230867231739%_
                       _%hd230868231742%_
                       _%tl230869231744%_
                       _%e230870231747%_
                       _%hd230871231750%_
                       _%tl230872231752%_
                       _%e230873231755%_
                       _%hd230874231758%_
                       _%tl230875231760%_
                       _%e230876231763%_
                       _%hd230877231766%_
                       _%tl230878231768%_
                       _%e230879231771%_
                       _%hd230880231774%_
                       _%tl230881231776%_
                       _%e230882231779%_
                       _%hd230883231782%_
                       _%tl230884231784%_
                       _%e230885231787%_
                       _%hd230886231790%_
                       _%tl230887231792%_
                       _%e230888231795%_
                       _%hd230889231798%_
                       _%tl230890231800%_
                       _%e230891231803%_
                       _%hd230892231806%_
                       _%tl230893231808%_
                       _%__splice235281235282%_
                       _%target230894231811%_
                       _%tl230896231813%_)
                      (_%__match235570235571%_
                       _%e230864231731%_
                       _%hd230865231734%_
                       _%tl230866231736%_
                       _%e230867231739%_
                       _%hd230868231742%_
                       _%tl230869231744%_
                       _%e230870231747%_
                       _%hd230871231750%_
                       _%tl230872231752%_
                       _%e230873231755%_
                       _%hd230874231758%_
                       _%tl230875231760%_
                       _%e230876231763%_
                       _%hd230877231766%_
                       _%tl230878231768%_
                       _%e230879231771%_
                       _%hd230880231774%_
                       _%tl230881231776%_
                       _%e230882231779%_
                       _%hd230883231782%_
                       _%tl230884231784%_
                       _%e230885231787%_
                       _%hd230886231790%_
                       _%tl230887231792%_
                       _%e230888231795%_
                       _%hd230889231798%_
                       _%tl230890231800%_
                       _%e230891231803%_
                       _%hd230892231806%_
                       _%tl230893231808%_))))
              (_%__match235570235571%_
               _%e230864231731%_
               _%hd230865231734%_
               _%tl230866231736%_
               _%e230867231739%_
               _%hd230868231742%_
               _%tl230869231744%_
               _%e230870231747%_
               _%hd230871231750%_
               _%tl230872231752%_
               _%e230873231755%_
               _%hd230874231758%_
               _%tl230875231760%_
               _%e230876231763%_
               _%hd230877231766%_
               _%tl230878231768%_
               _%e230879231771%_
               _%hd230880231774%_
               _%tl230881231776%_
               _%e230882231779%_
               _%hd230883231782%_
               _%tl230884231784%_
               _%e230885231787%_
               _%hd230886231790%_
               _%tl230887231792%_
               _%e230888231795%_
               _%hd230889231798%_
               _%tl230890231800%_
               _%e230891231803%_
               _%hd230892231806%_
               _%tl230893231808%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match235774235775%_
                                                   _%e230864231731%_
                                                   _%hd230865231734%_
                                                   _%tl230866231736%_
                                                   _%e230867231739%_
                                                   _%hd230868231742%_
                                                   _%tl230869231744%_
                                                   _%e230870231747%_
                                                   _%hd230871231750%_
                                                   _%tl230872231752%_
                                                   _%e230873231755%_
                                                   _%hd230874231758%_
                                                   _%tl230875231760%_
                                                   _%e230876231763%_
                                                   _%hd230877231766%_
                                                   _%tl230878231768%_
                                                   _%e230879231771%_
                                                   _%hd230880231774%_
                                                   _%tl230881231776%_
                                                   _%e230882231779%_
                                                   _%hd230883231782%_
                                                   _%tl230884231784%_
                                                   _%e230885231787%_
                                                   _%hd230886231790%_
                                                   _%tl230887231792%_))))
                                          (_%__match235774235775%_
                                           _%e230864231731%_
                                           _%hd230865231734%_
                                           _%tl230866231736%_
                                           _%e230867231739%_
                                           _%hd230868231742%_
                                           _%tl230869231744%_
                                           _%e230870231747%_
                                           _%hd230871231750%_
                                           _%tl230872231752%_
                                           _%e230873231755%_
                                           _%hd230874231758%_
                                           _%tl230875231760%_
                                           _%e230876231763%_
                                           _%hd230877231766%_
                                           _%tl230878231768%_
                                           _%e230879231771%_
                                           _%hd230880231774%_
                                           _%tl230881231776%_
                                           _%e230882231779%_
                                           _%hd230883231782%_
                                           _%tl230884231784%_
                                           _%e230885231787%_
                                           _%hd230886231790%_
                                           _%tl230887231792%_))
                                      (_%__match235450235451%_
                                       _%e230864231731%_
                                       _%hd230865231734%_
                                       _%tl230866231736%_
                                       _%e230867231739%_
                                       _%hd230868231742%_
                                       _%tl230869231744%_
                                       _%e230870231747%_
                                       _%hd230871231750%_
                                       _%tl230872231752%_
                                       _%e230873231755%_
                                       _%hd230874231758%_
                                       _%tl230875231760%_
                                       _%e230876231763%_
                                       _%hd230877231766%_
                                       _%tl230878231768%_
                                       _%e230879231771%_
                                       _%hd230880231774%_
                                       _%tl230881231776%_
                                       _%e230882231779%_
                                       _%hd230883231782%_
                                       _%tl230884231784%_
                                       _%e230885231787%_
                                       _%hd230886231790%_
                                       _%tl230887231792%_
                                       _%e230888231795%_
                                       _%hd230889231798%_
                                       _%tl230890231800%_))
                                  (_%__match235774235775%_
                                   _%e230864231731%_
                                   _%hd230865231734%_
                                   _%tl230866231736%_
                                   _%e230867231739%_
                                   _%hd230868231742%_
                                   _%tl230869231744%_
                                   _%e230870231747%_
                                   _%hd230871231750%_
                                   _%tl230872231752%_
                                   _%e230873231755%_
                                   _%hd230874231758%_
                                   _%tl230875231760%_
                                   _%e230876231763%_
                                   _%hd230877231766%_
                                   _%tl230878231768%_
                                   _%e230879231771%_
                                   _%hd230880231774%_
                                   _%tl230881231776%_
                                   _%e230882231779%_
                                   _%hd230883231782%_
                                   _%tl230884231784%_
                                   _%e230885231787%_
                                   _%hd230886231790%_
                                   _%tl230887231792%_))))
                          (_%__match235774235775%_
                           _%e230864231731%_
                           _%hd230865231734%_
                           _%tl230866231736%_
                           _%e230867231739%_
                           _%hd230868231742%_
                           _%tl230869231744%_
                           _%e230870231747%_
                           _%hd230871231750%_
                           _%tl230872231752%_
                           _%e230873231755%_
                           _%hd230874231758%_
                           _%tl230875231760%_
                           _%e230876231763%_
                           _%hd230877231766%_
                           _%tl230878231768%_
                           _%e230879231771%_
                           _%hd230880231774%_
                           _%tl230881231776%_
                           _%e230882231779%_
                           _%hd230883231782%_
                           _%tl230884231784%_
                           _%e230885231787%_
                           _%hd230886231790%_
                           _%tl230887231792%_))))
                  (_%__match235712235713%_
                   _%e230864231731%_
                   _%hd230865231734%_
                   _%tl230866231736%_
                   _%e230867231739%_
                   _%hd230868231742%_
                   _%tl230869231744%_
                   _%e230870231747%_
                   _%hd230871231750%_
                   _%tl230872231752%_
                   _%e230873231755%_
                   _%hd230874231758%_
                   _%tl230875231760%_
                   _%e230876231763%_
                   _%hd230877231766%_
                   _%tl230878231768%_
                   _%e230879231771%_
                   _%hd230880231774%_
                   _%tl230881231776%_
                   _%e230882231779%_
                   _%hd230883231782%_
                   _%tl230884231784%_))
              (_%__kont235295235296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont235295235296%_))
                                          (_%__kont235295235296%_))
                                      (_%__kont235295235296%_))))
                              (_%__kont235295235296%_))))
                      (_%__kont235295235296%_))
                  (_%__kont235295235296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235295235296%_))
                                              (_%__kont235295235296%_))
                                          (_%__kont235295235296%_))))
                                  (_%__kont235295235296%_))))
                          (_%__kont235295235296%_))))
                  (_%__kont235295235296%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self229792%_ _%stx229793%_)
        (letrec ((_%force-e229795%_
                  (lambda (_%target230847%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target230847%_ '()))
                                      '()))))))
          (let* ((_%__stx235779235780%_ _%stx229793%_)
                 (_%g229803230025%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx235779235780%_)))))
            (let ((_%__kont235781235782%_
                   (lambda (_%g229805230793%_
                            _%g229806230794%_
                            _%g229807230795%_
                            _%g229808230796%_)
                     (let ((_%$method230841%_
                            (let ((__tmp236442
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229792%_ 'methods)))
                                  (__tmp236441
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229806230794%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp236442 __tmp236441)))
                           (_%args230842%_
                            (map (lambda (_%g230829230831%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self229792%_
                                      _%g230829230831%_)))
                                 (let ((__tmp236443
                                        (lambda (_%g230833230836%_
                                                 _%g230834230838%_)
                                          (cons _%g230833230836%_
                                                _%g230834230838%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp236443
                                    '()
                                    _%g229805230793%_)))))
                       (let ((__tmp236444
                              (cons '%#call
                                    (cons (_%force-e229795%_ _%$method230841%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229792%_
                                                               'receiver))
                                                            '()))
                                                _%args230842%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp236444 _%stx229793%_)))))
                  (_%__kont235785235786%_
                   (lambda (_%g229848230627%_
                            _%g229849230628%_
                            _%g229850230629%_
                            _%g229851230630%_
                            _%g229852230631%_)
                     (let ((_%$method230683%_
                            (let ((__tmp236446
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229792%_ 'methods)))
                                  (__tmp236445
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229849230628%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp236446 __tmp236445)))
                           (_%args230684%_
                            (map (lambda (_%g230671230673%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self229792%_
                                      _%g230671230673%_)))
                                 (let ((__tmp236447
                                        (lambda (_%g230675230678%_
                                                 _%g230676230680%_)
                                          (cons _%g230675230678%_
                                                _%g230676230680%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp236447
                                    '()
                                    _%g229848230627%_)))))
                       (let ((__tmp236448
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e229795%_
                                                 _%$method230683%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self229792%_ 'receiver))
                          '()))
              _%args230684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp236448 _%stx229793%_)))))
                  (_%__kont235789235790%_
                   (lambda (_%g229901230460%_
                            _%g229902230461%_
                            _%g229903230462%_)
                     (let* ((_%$field230494%_
                             (let ((__tmp236450
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self229792%_ 'slots)))
                                   (__tmp236449
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g229901230460%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp236450 __tmp236449)))
                            (__tmp236451
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self229792%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field230494%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self229792%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp236451 _%stx229793%_))))
                  (_%__kont235791235792%_
                   (lambda (_%g229934230334%_
                            _%g229935230335%_
                            _%g229936230336%_
                            _%g229937230337%_)
                     (let ((_%$field230372%_
                            (let ((__tmp236453
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229792%_ 'slots)))
                                  (__tmp236452
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229935230335%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp236453 __tmp236452)))
                           (_%expr230373%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self229792%_
                               _%g229934230334%_))))
                       (let ((__tmp236454
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self229792%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field230372%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self229792%_ 'receiver))
                          '()))
              (cons _%expr230373%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp236454 _%stx229793%_)))))
                  (_%__kont235793235794%_
                   (lambda (_%g229971230206%_ _%g229972230207%_)
                     (let* ((_%accessor230229%_
                             (let ((__tmp236455
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g229972230207%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp236455)))
                            (_%klass230231%_
                             (let ((__tmp236456
                                    (##structure-ref
                                     _%accessor230229%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx229793%_
                                __tmp236456)))
                            (_%slot230233%_
                             (##structure-ref
                              _%accessor230229%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor230229%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass230231%_
                                      _%slot230233%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass230231%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx229793%_
                           (let* ((_%$field230239%_
                                   (let ((__tmp236457
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229792%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp236457 _%slot230233%_)))
                                  (__tmp236458
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self229792%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field230239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self229792%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp236458
                              _%stx229793%_))))))
                  (_%__kont235795235796%_
                   (lambda (_%g229994230101%_
                            _%g229995230102%_
                            _%g229996230103%_)
                     (let* ((_%mutator230131%_
                             (let ((__tmp236459
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g229996230103%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp236459)))
                            (_%klass230133%_
                             (let ((__tmp236460
                                    (##structure-ref
                                     _%mutator230131%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx229793%_
                                __tmp236460)))
                            (_%slot230135%_
                             (##structure-ref
                              _%mutator230131%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr230137%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self229792%_
                                _%g229994230101%_))))
                       (if (if (##structure-ref
                                _%mutator230131%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass230133%_
                                      _%slot230135%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass230133%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp236461
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g229996230103%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g229995230102%_
                                                                '()))
                                                    (cons _%expr230137%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp236461 _%stx229793%_))
                           (let* ((_%$field230143%_
                                   (let ((__tmp236462
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229792%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp236462 _%slot230135%_)))
                                  (__tmp236463
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self229792%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field230143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self229792%_ 'receiver))
                               '()))
                   (cons _%expr230137%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp236463
                              _%stx229793%_))))))
                  (_%__kont235797235798%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self229792%_ _%stx229793%_)))))
              (let* ((_%__match236278236279%_
                      (lambda (_%e229997230037%_
                               _%hd229998230040%_
                               _%tl229999230042%_
                               _%e230000230045%_
                               _%hd230001230048%_
                               _%tl230002230050%_
                               _%e230003230053%_
                               _%hd230004230056%_
                               _%tl230005230058%_
                               _%e230006230061%_
                               _%hd230007230064%_
                               _%tl230008230066%_
                               _%e230009230069%_
                               _%hd230010230072%_
                               _%tl230011230074%_
                               _%e230012230077%_
                               _%hd230013230080%_
                               _%tl230014230082%_
                               _%e230015230085%_
                               _%hd230016230088%_
                               _%tl230017230090%_
                               _%e230018230093%_
                               _%hd230019230096%_
                               _%tl230020230098%_)
                        (let ((_%g229994230101%_ _%hd230019230096%_)
                              (_%g229995230102%_ _%hd230016230088%_)
                              (_%g229996230103%_ _%hd230007230064%_))
                          (if (and (let ((__tmp236464
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229792%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229995230102%_
                                      __tmp236464))
                                   (let ((__tmp236465
                                          (let ((__tmp236466
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g229996230103%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp236466))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp236465
                                      'gxc#!mutator::t)))
                              (_%__kont235795235796%_
                               _%g229994230101%_
                               _%g229995230102%_
                               _%g229996230103%_)
                              (_%__kont235797235798%_)))))
                     (_%__match236276236277%_
                      (lambda (_%e229997230037%_
                               _%hd229998230040%_
                               _%tl229999230042%_
                               _%e230000230045%_
                               _%hd230001230048%_
                               _%tl230002230050%_
                               _%e230003230053%_
                               _%hd230004230056%_
                               _%tl230005230058%_
                               _%e230006230061%_
                               _%hd230007230064%_
                               _%tl230008230066%_
                               _%e230009230069%_
                               _%hd230010230072%_
                               _%tl230011230074%_
                               _%e230012230077%_
                               _%hd230013230080%_
                               _%tl230014230082%_
                               _%e230015230085%_
                               _%hd230016230088%_
                               _%tl230017230090%_
                               _%e230018230093%_
                               _%hd230019230096%_
                               _%tl230020230098%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230020230098%_))
                            (_%__match236278236279%_
                             _%e229997230037%_
                             _%hd229998230040%_
                             _%tl229999230042%_
                             _%e230000230045%_
                             _%hd230001230048%_
                             _%tl230002230050%_
                             _%e230003230053%_
                             _%hd230004230056%_
                             _%tl230005230058%_
                             _%e230006230061%_
                             _%hd230007230064%_
                             _%tl230008230066%_
                             _%e230009230069%_
                             _%hd230010230072%_
                             _%tl230011230074%_
                             _%e230012230077%_
                             _%hd230013230080%_
                             _%tl230014230082%_
                             _%e230015230085%_
                             _%hd230016230088%_
                             _%tl230017230090%_
                             _%e230018230093%_
                             _%hd230019230096%_
                             _%tl230020230098%_)
                            (_%__kont235797235798%_))))
                     (_%__match236270236271%_
                      (lambda (_%e229997230037%_
                               _%hd229998230040%_
                               _%tl229999230042%_
                               _%e230000230045%_
                               _%hd230001230048%_
                               _%tl230002230050%_
                               _%e230003230053%_
                               _%hd230004230056%_
                               _%tl230005230058%_
                               _%e230006230061%_
                               _%hd230007230064%_
                               _%tl230008230066%_
                               _%e230009230069%_
                               _%hd230010230072%_
                               _%tl230011230074%_
                               _%e230012230077%_
                               _%hd230013230080%_
                               _%tl230014230082%_
                               _%e230015230085%_
                               _%hd230016230088%_
                               _%tl230017230090%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230011230074%_))
                            (let ((_%e230018230093%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230011230074%_))))
                              (let ((_%tl230020230098%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230018230093%_)))
                                    (_%hd230019230096%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230018230093%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230020230098%_))
                                    (_%__match236278236279%_
                                     _%e229997230037%_
                                     _%hd229998230040%_
                                     _%tl229999230042%_
                                     _%e230000230045%_
                                     _%hd230001230048%_
                                     _%tl230002230050%_
                                     _%e230003230053%_
                                     _%hd230004230056%_
                                     _%tl230005230058%_
                                     _%e230006230061%_
                                     _%hd230007230064%_
                                     _%tl230008230066%_
                                     _%e230009230069%_
                                     _%hd230010230072%_
                                     _%tl230011230074%_
                                     _%e230012230077%_
                                     _%hd230013230080%_
                                     _%tl230014230082%_
                                     _%e230015230085%_
                                     _%hd230016230088%_
                                     _%tl230017230090%_
                                     _%e230018230093%_
                                     _%hd230019230096%_
                                     _%tl230020230098%_)
                                    (_%__kont235797235798%_))))
                            (_%__kont235797235798%_))))
                     (_%__match236216236217%_
                      (lambda (_%e229973230150%_
                               _%hd229974230153%_
                               _%tl229975230155%_
                               _%e229976230158%_
                               _%hd229977230161%_
                               _%tl229978230163%_
                               _%e229979230166%_
                               _%hd229980230169%_
                               _%tl229981230171%_
                               _%e229982230174%_
                               _%hd229983230177%_
                               _%tl229984230179%_
                               _%e229985230182%_
                               _%hd229986230185%_
                               _%tl229987230187%_
                               _%e229988230190%_
                               _%hd229989230193%_
                               _%tl229990230195%_
                               _%e229991230198%_
                               _%hd229992230201%_
                               _%tl229993230203%_)
                        (let ((_%g229971230206%_ _%hd229992230201%_)
                              (_%g229972230207%_ _%hd229983230177%_))
                          (if (and (let ((__tmp236467
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229792%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229971230206%_
                                      __tmp236467))
                                   (let ((__tmp236468
                                          (let ((__tmp236469
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g229972230207%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp236469))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp236468
                                      'gxc#!accessor::t)))
                              (_%__kont235793235794%_
                               _%g229971230206%_
                               _%g229972230207%_)
                              (_%__kont235797235798%_)))))
                     (_%__match236214236215%_
                      (lambda (_%e229973230150%_
                               _%hd229974230153%_
                               _%tl229975230155%_
                               _%e229976230158%_
                               _%hd229977230161%_
                               _%tl229978230163%_
                               _%e229979230166%_
                               _%hd229980230169%_
                               _%tl229981230171%_
                               _%e229982230174%_
                               _%hd229983230177%_
                               _%tl229984230179%_
                               _%e229985230182%_
                               _%hd229986230185%_
                               _%tl229987230187%_
                               _%e229988230190%_
                               _%hd229989230193%_
                               _%tl229990230195%_
                               _%e229991230198%_
                               _%hd229992230201%_
                               _%tl229993230203%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229987230187%_))
                            (_%__match236216236217%_
                             _%e229973230150%_
                             _%hd229974230153%_
                             _%tl229975230155%_
                             _%e229976230158%_
                             _%hd229977230161%_
                             _%tl229978230163%_
                             _%e229979230166%_
                             _%hd229980230169%_
                             _%tl229981230171%_
                             _%e229982230174%_
                             _%hd229983230177%_
                             _%tl229984230179%_
                             _%e229985230182%_
                             _%hd229986230185%_
                             _%tl229987230187%_
                             _%e229988230190%_
                             _%hd229989230193%_
                             _%tl229990230195%_
                             _%e229991230198%_
                             _%hd229992230201%_
                             _%tl229993230203%_)
                            (_%__match236270236271%_
                             _%e229973230150%_
                             _%hd229974230153%_
                             _%tl229975230155%_
                             _%e229976230158%_
                             _%hd229977230161%_
                             _%tl229978230163%_
                             _%e229979230166%_
                             _%hd229980230169%_
                             _%tl229981230171%_
                             _%e229982230174%_
                             _%hd229983230177%_
                             _%tl229984230179%_
                             _%e229985230182%_
                             _%hd229986230185%_
                             _%tl229987230187%_
                             _%e229988230190%_
                             _%hd229989230193%_
                             _%tl229990230195%_
                             _%e229991230198%_
                             _%hd229992230201%_
                             _%tl229993230203%_))))
                     (_%__match236160236161%_
                      (lambda (_%e229938230246%_
                               _%hd229939230249%_
                               _%tl229940230251%_
                               _%e229941230254%_
                               _%hd229942230257%_
                               _%tl229943230259%_
                               _%e229944230262%_
                               _%hd229945230265%_
                               _%tl229946230267%_
                               _%e229947230270%_
                               _%hd229948230273%_
                               _%tl229949230275%_
                               _%e229950230278%_
                               _%hd229951230281%_
                               _%tl229952230283%_
                               _%e229953230286%_
                               _%hd229954230289%_
                               _%tl229955230291%_
                               _%e229956230294%_
                               _%hd229957230297%_
                               _%tl229958230299%_
                               _%e229959230302%_
                               _%hd229960230305%_
                               _%tl229961230307%_
                               _%e229962230310%_
                               _%hd229963230313%_
                               _%tl229964230315%_
                               _%e229965230318%_
                               _%hd229966230321%_
                               _%tl229967230323%_
                               _%e229968230326%_
                               _%hd229969230329%_
                               _%tl229970230331%_)
                        (let ((_%g229934230334%_ _%hd229969230329%_)
                              (_%g229935230335%_ _%hd229966230321%_)
                              (_%g229936230336%_ _%hd229957230297%_)
                              (_%g229937230337%_ _%hd229948230273%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229937230337%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229937230337%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp236470
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229792%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229936230336%_
                                      __tmp236470)))
                              (_%__kont235791235792%_
                               _%g229934230334%_
                               _%g229935230335%_
                               _%g229936230336%_
                               _%g229937230337%_)
                              (_%__kont235797235798%_)))))
                     (_%__match236152236153%_
                      (lambda (_%e229938230246%_
                               _%hd229939230249%_
                               _%tl229940230251%_
                               _%e229941230254%_
                               _%hd229942230257%_
                               _%tl229943230259%_
                               _%e229944230262%_
                               _%hd229945230265%_
                               _%tl229946230267%_
                               _%e229947230270%_
                               _%hd229948230273%_
                               _%tl229949230275%_
                               _%e229950230278%_
                               _%hd229951230281%_
                               _%tl229952230283%_
                               _%e229953230286%_
                               _%hd229954230289%_
                               _%tl229955230291%_
                               _%e229956230294%_
                               _%hd229957230297%_
                               _%tl229958230299%_
                               _%e229959230302%_
                               _%hd229960230305%_
                               _%tl229961230307%_
                               _%e229962230310%_
                               _%hd229963230313%_
                               _%tl229964230315%_
                               _%e229965230318%_
                               _%hd229966230321%_
                               _%tl229967230323%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229961230307%_))
                            (let ((_%e229968230326%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229961230307%_))))
                              (let ((_%tl229970230331%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229968230326%_)))
                                    (_%hd229969230329%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229968230326%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229970230331%_))
                                    (_%__match236160236161%_
                                     _%e229938230246%_
                                     _%hd229939230249%_
                                     _%tl229940230251%_
                                     _%e229941230254%_
                                     _%hd229942230257%_
                                     _%tl229943230259%_
                                     _%e229944230262%_
                                     _%hd229945230265%_
                                     _%tl229946230267%_
                                     _%e229947230270%_
                                     _%hd229948230273%_
                                     _%tl229949230275%_
                                     _%e229950230278%_
                                     _%hd229951230281%_
                                     _%tl229952230283%_
                                     _%e229953230286%_
                                     _%hd229954230289%_
                                     _%tl229955230291%_
                                     _%e229956230294%_
                                     _%hd229957230297%_
                                     _%tl229958230299%_
                                     _%e229959230302%_
                                     _%hd229960230305%_
                                     _%tl229961230307%_
                                     _%e229962230310%_
                                     _%hd229963230313%_
                                     _%tl229964230315%_
                                     _%e229965230318%_
                                     _%hd229966230321%_
                                     _%tl229967230323%_
                                     _%e229968230326%_
                                     _%hd229969230329%_
                                     _%tl229970230331%_)
                                    (_%__kont235797235798%_))))
                            (_%__match236276236277%_
                             _%e229938230246%_
                             _%hd229939230249%_
                             _%tl229940230251%_
                             _%e229941230254%_
                             _%hd229942230257%_
                             _%tl229943230259%_
                             _%e229944230262%_
                             _%hd229945230265%_
                             _%tl229946230267%_
                             _%e229947230270%_
                             _%hd229948230273%_
                             _%tl229949230275%_
                             _%e229950230278%_
                             _%hd229951230281%_
                             _%tl229952230283%_
                             _%e229953230286%_
                             _%hd229954230289%_
                             _%tl229955230291%_
                             _%e229956230294%_
                             _%hd229957230297%_
                             _%tl229958230299%_
                             _%e229959230302%_
                             _%hd229960230305%_
                             _%tl229961230307%_))))
                     (_%__match236074236075%_
                      (lambda (_%e229904230380%_
                               _%hd229905230383%_
                               _%tl229906230385%_
                               _%e229907230388%_
                               _%hd229908230391%_
                               _%tl229909230393%_
                               _%e229910230396%_
                               _%hd229911230399%_
                               _%tl229912230401%_
                               _%e229913230404%_
                               _%hd229914230407%_
                               _%tl229915230409%_
                               _%e229916230412%_
                               _%hd229917230415%_
                               _%tl229918230417%_
                               _%e229919230420%_
                               _%hd229920230423%_
                               _%tl229921230425%_
                               _%e229922230428%_
                               _%hd229923230431%_
                               _%tl229924230433%_
                               _%e229925230436%_
                               _%hd229926230439%_
                               _%tl229927230441%_
                               _%e229928230444%_
                               _%hd229929230447%_
                               _%tl229930230449%_
                               _%e229931230452%_
                               _%hd229932230455%_
                               _%tl229933230457%_)
                        (let ((_%g229901230460%_ _%hd229932230455%_)
                              (_%g229902230461%_ _%hd229923230431%_)
                              (_%g229903230462%_ _%hd229914230407%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229903230462%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229903230462%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp236471
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229792%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229902230461%_
                                      __tmp236471)))
                              (_%__kont235789235790%_
                               _%g229901230460%_
                               _%g229902230461%_
                               _%g229903230462%_)
                              (_%__match236278236279%_
                               _%e229904230380%_
                               _%hd229905230383%_
                               _%tl229906230385%_
                               _%e229907230388%_
                               _%hd229908230391%_
                               _%tl229909230393%_
                               _%e229910230396%_
                               _%hd229911230399%_
                               _%tl229912230401%_
                               _%e229913230404%_
                               _%hd229914230407%_
                               _%tl229915230409%_
                               _%e229916230412%_
                               _%hd229917230415%_
                               _%tl229918230417%_
                               _%e229919230420%_
                               _%hd229920230423%_
                               _%tl229921230425%_
                               _%e229922230428%_
                               _%hd229923230431%_
                               _%tl229924230433%_
                               _%e229925230436%_
                               _%hd229926230439%_
                               _%tl229927230441%_)))))
                     (_%__match236072236073%_
                      (lambda (_%e229904230380%_
                               _%hd229905230383%_
                               _%tl229906230385%_
                               _%e229907230388%_
                               _%hd229908230391%_
                               _%tl229909230393%_
                               _%e229910230396%_
                               _%hd229911230399%_
                               _%tl229912230401%_
                               _%e229913230404%_
                               _%hd229914230407%_
                               _%tl229915230409%_
                               _%e229916230412%_
                               _%hd229917230415%_
                               _%tl229918230417%_
                               _%e229919230420%_
                               _%hd229920230423%_
                               _%tl229921230425%_
                               _%e229922230428%_
                               _%hd229923230431%_
                               _%tl229924230433%_
                               _%e229925230436%_
                               _%hd229926230439%_
                               _%tl229927230441%_
                               _%e229928230444%_
                               _%hd229929230447%_
                               _%tl229930230449%_
                               _%e229931230452%_
                               _%hd229932230455%_
                               _%tl229933230457%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229927230441%_))
                            (_%__match236074236075%_
                             _%e229904230380%_
                             _%hd229905230383%_
                             _%tl229906230385%_
                             _%e229907230388%_
                             _%hd229908230391%_
                             _%tl229909230393%_
                             _%e229910230396%_
                             _%hd229911230399%_
                             _%tl229912230401%_
                             _%e229913230404%_
                             _%hd229914230407%_
                             _%tl229915230409%_
                             _%e229916230412%_
                             _%hd229917230415%_
                             _%tl229918230417%_
                             _%e229919230420%_
                             _%hd229920230423%_
                             _%tl229921230425%_
                             _%e229922230428%_
                             _%hd229923230431%_
                             _%tl229924230433%_
                             _%e229925230436%_
                             _%hd229926230439%_
                             _%tl229927230441%_
                             _%e229928230444%_
                             _%hd229929230447%_
                             _%tl229930230449%_
                             _%e229931230452%_
                             _%hd229932230455%_
                             _%tl229933230457%_)
                            (_%__match236152236153%_
                             _%e229904230380%_
                             _%hd229905230383%_
                             _%tl229906230385%_
                             _%e229907230388%_
                             _%hd229908230391%_
                             _%tl229909230393%_
                             _%e229910230396%_
                             _%hd229911230399%_
                             _%tl229912230401%_
                             _%e229913230404%_
                             _%hd229914230407%_
                             _%tl229915230409%_
                             _%e229916230412%_
                             _%hd229917230415%_
                             _%tl229918230417%_
                             _%e229919230420%_
                             _%hd229920230423%_
                             _%tl229921230425%_
                             _%e229922230428%_
                             _%hd229923230431%_
                             _%tl229924230433%_
                             _%e229925230436%_
                             _%hd229926230439%_
                             _%tl229927230441%_
                             _%e229928230444%_
                             _%hd229929230447%_
                             _%tl229930230449%_
                             _%e229931230452%_
                             _%hd229932230455%_
                             _%tl229933230457%_))))
                     (_%__match236062236063%_
                      (lambda (_%e229904230380%_
                               _%hd229905230383%_
                               _%tl229906230385%_
                               _%e229907230388%_
                               _%hd229908230391%_
                               _%tl229909230393%_
                               _%e229910230396%_
                               _%hd229911230399%_
                               _%tl229912230401%_
                               _%e229913230404%_
                               _%hd229914230407%_
                               _%tl229915230409%_
                               _%e229916230412%_
                               _%hd229917230415%_
                               _%tl229918230417%_
                               _%e229919230420%_
                               _%hd229920230423%_
                               _%tl229921230425%_
                               _%e229922230428%_
                               _%hd229923230431%_
                               _%tl229924230433%_
                               _%e229925230436%_
                               _%hd229926230439%_
                               _%tl229927230441%_
                               _%e229928230444%_
                               _%hd229929230447%_
                               _%tl229930230449%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd229929230447%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229930230449%_))
                                (let ((_%e229931230452%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229930230449%_))))
                                  (let ((_%tl229933230457%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229931230452%_)))
                                        (_%hd229932230455%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229931230452%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229933230457%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229927230441%_))
                                            (_%__match236074236075%_
                                             _%e229904230380%_
                                             _%hd229905230383%_
                                             _%tl229906230385%_
                                             _%e229907230388%_
                                             _%hd229908230391%_
                                             _%tl229909230393%_
                                             _%e229910230396%_
                                             _%hd229911230399%_
                                             _%tl229912230401%_
                                             _%e229913230404%_
                                             _%hd229914230407%_
                                             _%tl229915230409%_
                                             _%e229916230412%_
                                             _%hd229917230415%_
                                             _%tl229918230417%_
                                             _%e229919230420%_
                                             _%hd229920230423%_
                                             _%tl229921230425%_
                                             _%e229922230428%_
                                             _%hd229923230431%_
                                             _%tl229924230433%_
                                             _%e229925230436%_
                                             _%hd229926230439%_
                                             _%tl229927230441%_
                                             _%e229928230444%_
                                             _%hd229929230447%_
                                             _%tl229930230449%_
                                             _%e229931230452%_
                                             _%hd229932230455%_
                                             _%tl229933230457%_)
                                            (_%__match236152236153%_
                                             _%e229904230380%_
                                             _%hd229905230383%_
                                             _%tl229906230385%_
                                             _%e229907230388%_
                                             _%hd229908230391%_
                                             _%tl229909230393%_
                                             _%e229910230396%_
                                             _%hd229911230399%_
                                             _%tl229912230401%_
                                             _%e229913230404%_
                                             _%hd229914230407%_
                                             _%tl229915230409%_
                                             _%e229916230412%_
                                             _%hd229917230415%_
                                             _%tl229918230417%_
                                             _%e229919230420%_
                                             _%hd229920230423%_
                                             _%tl229921230425%_
                                             _%e229922230428%_
                                             _%hd229923230431%_
                                             _%tl229924230433%_
                                             _%e229925230436%_
                                             _%hd229926230439%_
                                             _%tl229927230441%_
                                             _%e229928230444%_
                                             _%hd229929230447%_
                                             _%tl229930230449%_
                                             _%e229931230452%_
                                             _%hd229932230455%_
                                             _%tl229933230457%_))
                                        (_%__match236276236277%_
                                         _%e229904230380%_
                                         _%hd229905230383%_
                                         _%tl229906230385%_
                                         _%e229907230388%_
                                         _%hd229908230391%_
                                         _%tl229909230393%_
                                         _%e229910230396%_
                                         _%hd229911230399%_
                                         _%tl229912230401%_
                                         _%e229913230404%_
                                         _%hd229914230407%_
                                         _%tl229915230409%_
                                         _%e229916230412%_
                                         _%hd229917230415%_
                                         _%tl229918230417%_
                                         _%e229919230420%_
                                         _%hd229920230423%_
                                         _%tl229921230425%_
                                         _%e229922230428%_
                                         _%hd229923230431%_
                                         _%tl229924230433%_
                                         _%e229925230436%_
                                         _%hd229926230439%_
                                         _%tl229927230441%_))))
                                (_%__match236276236277%_
                                 _%e229904230380%_
                                 _%hd229905230383%_
                                 _%tl229906230385%_
                                 _%e229907230388%_
                                 _%hd229908230391%_
                                 _%tl229909230393%_
                                 _%e229910230396%_
                                 _%hd229911230399%_
                                 _%tl229912230401%_
                                 _%e229913230404%_
                                 _%hd229914230407%_
                                 _%tl229915230409%_
                                 _%e229916230412%_
                                 _%hd229917230415%_
                                 _%tl229918230417%_
                                 _%e229919230420%_
                                 _%hd229920230423%_
                                 _%tl229921230425%_
                                 _%e229922230428%_
                                 _%hd229923230431%_
                                 _%tl229924230433%_
                                 _%e229925230436%_
                                 _%hd229926230439%_
                                 _%tl229927230441%_))
                            (_%__match236276236277%_
                             _%e229904230380%_
                             _%hd229905230383%_
                             _%tl229906230385%_
                             _%e229907230388%_
                             _%hd229908230391%_
                             _%tl229909230393%_
                             _%e229910230396%_
                             _%hd229911230399%_
                             _%tl229912230401%_
                             _%e229913230404%_
                             _%hd229914230407%_
                             _%tl229915230409%_
                             _%e229916230412%_
                             _%hd229917230415%_
                             _%tl229918230417%_
                             _%e229919230420%_
                             _%hd229920230423%_
                             _%tl229921230425%_
                             _%e229922230428%_
                             _%hd229923230431%_
                             _%tl229924230433%_
                             _%e229925230436%_
                             _%hd229926230439%_
                             _%tl229927230441%_))))
                     (_%__match235994235995%_
                      (lambda (_%e229853230501%_
                               _%hd229854230504%_
                               _%tl229855230506%_
                               _%e229856230509%_
                               _%hd229857230512%_
                               _%tl229858230514%_
                               _%e229859230517%_
                               _%hd229860230520%_
                               _%tl229861230522%_
                               _%e229862230525%_
                               _%hd229863230528%_
                               _%tl229864230530%_
                               _%e229865230533%_
                               _%hd229866230536%_
                               _%tl229867230538%_
                               _%e229868230541%_
                               _%hd229869230544%_
                               _%tl229870230546%_
                               _%e229871230549%_
                               _%hd229872230552%_
                               _%tl229873230554%_
                               _%e229874230557%_
                               _%hd229875230560%_
                               _%tl229876230562%_
                               _%e229877230565%_
                               _%hd229878230568%_
                               _%tl229879230570%_
                               _%e229880230573%_
                               _%hd229881230576%_
                               _%tl229882230578%_
                               _%e229883230581%_
                               _%hd229884230584%_
                               _%tl229885230586%_
                               _%e229886230589%_
                               _%hd229887230592%_
                               _%tl229888230594%_
                               _%e229889230597%_
                               _%hd229890230600%_
                               _%tl229891230602%_
                               _%__splice235787235788%_
                               _%target229892230605%_
                               _%tl229894230607%_)
                        (letrec ((_%loop229895230610%_
                                  (lambda (_%hd229893230613%_
                                           _%args229899230615%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229893230613%_))
                                        (let ((_%e229896230617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229893230613%_))))
                                          (let ((_%lp-tl229898230622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229896230617%_)))
                                                (_%lp-hd229897230620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229896230617%_))))
                                            (_%loop229895230610%_
                                             _%lp-tl229898230622%_
                                             (cons _%lp-hd229897230620%_
                                                   _%args229899230615%_))))
                                        (let ((_%args229900230625%_
                                               (reverse _%args229899230615%_)))
                                          (let ((_%g229848230627%_
                                                 _%args229900230625%_)
                                                (_%g229849230628%_
                                                 _%hd229890230600%_)
                                                (_%g229850230629%_
                                                 _%hd229881230576%_)
                                                (_%g229851230630%_
                                                 _%hd229872230552%_)
                                                (_%g229852230631%_
                                                 _%hd229863230528%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229852230631%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229851230630%_
                                                        'call-method))
                                                     (let ((__tmp236472
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229792%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g229850230629%_
                                                        __tmp236472)))
                                                (_%__kont235785235786%_
                                                 _%g229848230627%_
                                                 _%g229849230628%_
                                                 _%g229850230629%_
                                                 _%g229851230630%_
                                                 _%g229852230631%_)
                                                (_%__kont235797235798%_))))))))
                          (_%loop229895230610%_ _%target229892230605%_ '()))))
                     (_%__match235952235953%_
                      (lambda (_%e229853230501%_
                               _%hd229854230504%_
                               _%tl229855230506%_
                               _%e229856230509%_
                               _%hd229857230512%_
                               _%tl229858230514%_
                               _%e229859230517%_
                               _%hd229860230520%_
                               _%tl229861230522%_
                               _%e229862230525%_
                               _%hd229863230528%_
                               _%tl229864230530%_
                               _%e229865230533%_
                               _%hd229866230536%_
                               _%tl229867230538%_
                               _%e229868230541%_
                               _%hd229869230544%_
                               _%tl229870230546%_
                               _%e229871230549%_
                               _%hd229872230552%_
                               _%tl229873230554%_
                               _%e229874230557%_
                               _%hd229875230560%_
                               _%tl229876230562%_
                               _%e229877230565%_
                               _%hd229878230568%_
                               _%tl229879230570%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd229878230568%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229879230570%_))
                                (let ((_%e229880230573%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229879230570%_))))
                                  (let ((_%tl229882230578%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229880230573%_)))
                                        (_%hd229881230576%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229880230573%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229882230578%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229876230562%_))
                                            (let ((_%e229883230581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229876230562%_))))
                                              (let ((_%tl229885230586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229883230581%_)))
                                                    (_%hd229884230584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229883230581%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd229884230584%_))
                                                    (let ((_%e229886230589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229884230584%_))))
                                                      (let ((_%tl229888230594%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229886230589%_)))
                    (_%hd229887230592%_
                     (let () (declare (not safe)) (##car _%e229886230589%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd229887230592%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd229887230592%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229888230594%_))
                            (let ((_%e229889230597%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229888230594%_))))
                              (let ((_%tl229891230602%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229889230597%_)))
                                    (_%hd229890230600%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229889230597%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229891230602%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl229885230586%_))
                                        (let ((_%__splice235787235788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl229885230586%_
                                                  '0))))
                                          (let ((_%tl229894230607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice235787235788%_
                                                    '1)))
                                                (_%target229892230605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice235787235788%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl229894230607%_))
                                                (_%__match235994235995%_
                                                 _%e229853230501%_
                                                 _%hd229854230504%_
                                                 _%tl229855230506%_
                                                 _%e229856230509%_
                                                 _%hd229857230512%_
                                                 _%tl229858230514%_
                                                 _%e229859230517%_
                                                 _%hd229860230520%_
                                                 _%tl229861230522%_
                                                 _%e229862230525%_
                                                 _%hd229863230528%_
                                                 _%tl229864230530%_
                                                 _%e229865230533%_
                                                 _%hd229866230536%_
                                                 _%tl229867230538%_
                                                 _%e229868230541%_
                                                 _%hd229869230544%_
                                                 _%tl229870230546%_
                                                 _%e229871230549%_
                                                 _%hd229872230552%_
                                                 _%tl229873230554%_
                                                 _%e229874230557%_
                                                 _%hd229875230560%_
                                                 _%tl229876230562%_
                                                 _%e229877230565%_
                                                 _%hd229878230568%_
                                                 _%tl229879230570%_
                                                 _%e229880230573%_
                                                 _%hd229881230576%_
                                                 _%tl229882230578%_
                                                 _%e229883230581%_
                                                 _%hd229884230584%_
                                                 _%tl229885230586%_
                                                 _%e229886230589%_
                                                 _%hd229887230592%_
                                                 _%tl229888230594%_
                                                 _%e229889230597%_
                                                 _%hd229890230600%_
                                                 _%tl229891230602%_
                                                 _%__splice235787235788%_
                                                 _%target229892230605%_
                                                 _%tl229894230607%_)
                                                (_%__kont235797235798%_))))
                                        (_%__kont235797235798%_))
                                    (_%__kont235797235798%_))))
                            (_%__kont235797235798%_))
                        (_%__kont235797235798%_))
                    (_%__kont235797235798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont235797235798%_))))
                                            (_%__match236276236277%_
                                             _%e229853230501%_
                                             _%hd229854230504%_
                                             _%tl229855230506%_
                                             _%e229856230509%_
                                             _%hd229857230512%_
                                             _%tl229858230514%_
                                             _%e229859230517%_
                                             _%hd229860230520%_
                                             _%tl229861230522%_
                                             _%e229862230525%_
                                             _%hd229863230528%_
                                             _%tl229864230530%_
                                             _%e229865230533%_
                                             _%hd229866230536%_
                                             _%tl229867230538%_
                                             _%e229868230541%_
                                             _%hd229869230544%_
                                             _%tl229870230546%_
                                             _%e229871230549%_
                                             _%hd229872230552%_
                                             _%tl229873230554%_
                                             _%e229874230557%_
                                             _%hd229875230560%_
                                             _%tl229876230562%_))
                                        (_%__match236276236277%_
                                         _%e229853230501%_
                                         _%hd229854230504%_
                                         _%tl229855230506%_
                                         _%e229856230509%_
                                         _%hd229857230512%_
                                         _%tl229858230514%_
                                         _%e229859230517%_
                                         _%hd229860230520%_
                                         _%tl229861230522%_
                                         _%e229862230525%_
                                         _%hd229863230528%_
                                         _%tl229864230530%_
                                         _%e229865230533%_
                                         _%hd229866230536%_
                                         _%tl229867230538%_
                                         _%e229868230541%_
                                         _%hd229869230544%_
                                         _%tl229870230546%_
                                         _%e229871230549%_
                                         _%hd229872230552%_
                                         _%tl229873230554%_
                                         _%e229874230557%_
                                         _%hd229875230560%_
                                         _%tl229876230562%_))))
                                (_%__match236276236277%_
                                 _%e229853230501%_
                                 _%hd229854230504%_
                                 _%tl229855230506%_
                                 _%e229856230509%_
                                 _%hd229857230512%_
                                 _%tl229858230514%_
                                 _%e229859230517%_
                                 _%hd229860230520%_
                                 _%tl229861230522%_
                                 _%e229862230525%_
                                 _%hd229863230528%_
                                 _%tl229864230530%_
                                 _%e229865230533%_
                                 _%hd229866230536%_
                                 _%tl229867230538%_
                                 _%e229868230541%_
                                 _%hd229869230544%_
                                 _%tl229870230546%_
                                 _%e229871230549%_
                                 _%hd229872230552%_
                                 _%tl229873230554%_
                                 _%e229874230557%_
                                 _%hd229875230560%_
                                 _%tl229876230562%_))
                            (_%__match236062236063%_
                             _%e229853230501%_
                             _%hd229854230504%_
                             _%tl229855230506%_
                             _%e229856230509%_
                             _%hd229857230512%_
                             _%tl229858230514%_
                             _%e229859230517%_
                             _%hd229860230520%_
                             _%tl229861230522%_
                             _%e229862230525%_
                             _%hd229863230528%_
                             _%tl229864230530%_
                             _%e229865230533%_
                             _%hd229866230536%_
                             _%tl229867230538%_
                             _%e229868230541%_
                             _%hd229869230544%_
                             _%tl229870230546%_
                             _%e229871230549%_
                             _%hd229872230552%_
                             _%tl229873230554%_
                             _%e229874230557%_
                             _%hd229875230560%_
                             _%tl229876230562%_
                             _%e229877230565%_
                             _%hd229878230568%_
                             _%tl229879230570%_))))
                     (_%__match235884235885%_
                      (lambda (_%e229809230691%_
                               _%hd229810230694%_
                               _%tl229811230696%_
                               _%e229812230699%_
                               _%hd229813230702%_
                               _%tl229814230704%_
                               _%e229815230707%_
                               _%hd229816230710%_
                               _%tl229817230712%_
                               _%e229818230715%_
                               _%hd229819230718%_
                               _%tl229820230720%_
                               _%e229821230723%_
                               _%hd229822230726%_
                               _%tl229823230728%_
                               _%e229824230731%_
                               _%hd229825230734%_
                               _%tl229826230736%_
                               _%e229827230739%_
                               _%hd229828230742%_
                               _%tl229829230744%_
                               _%e229830230747%_
                               _%hd229831230750%_
                               _%tl229832230752%_
                               _%e229833230755%_
                               _%hd229834230758%_
                               _%tl229835230760%_
                               _%e229836230763%_
                               _%hd229837230766%_
                               _%tl229838230768%_
                               _%__splice235783235784%_
                               _%target229839230771%_
                               _%tl229841230773%_)
                        (letrec ((_%loop229842230776%_
                                  (lambda (_%hd229840230779%_
                                           _%args229846230781%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229840230779%_))
                                        (let ((_%e229843230783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229840230779%_))))
                                          (let ((_%lp-tl229845230788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229843230783%_)))
                                                (_%lp-hd229844230786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229843230783%_))))
                                            (_%loop229842230776%_
                                             _%lp-tl229845230788%_
                                             (cons _%lp-hd229844230786%_
                                                   _%args229846230781%_))))
                                        (let ((_%args229847230791%_
                                               (reverse _%args229846230781%_)))
                                          (let ((_%g229805230793%_
                                                 _%args229847230791%_)
                                                (_%g229806230794%_
                                                 _%hd229837230766%_)
                                                (_%g229807230795%_
                                                 _%hd229828230742%_)
                                                (_%g229808230796%_
                                                 _%hd229819230718%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229808230796%_
                                                        'call-method))
                                                     (let ((__tmp236473
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229792%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g229807230795%_
                                                        __tmp236473)))
                                                (_%__kont235781235782%_
                                                 _%g229805230793%_
                                                 _%g229806230794%_
                                                 _%g229807230795%_
                                                 _%g229808230796%_)
                                                (_%__match236072236073%_
                                                 _%e229809230691%_
                                                 _%hd229810230694%_
                                                 _%tl229811230696%_
                                                 _%e229812230699%_
                                                 _%hd229813230702%_
                                                 _%tl229814230704%_
                                                 _%e229815230707%_
                                                 _%hd229816230710%_
                                                 _%tl229817230712%_
                                                 _%e229818230715%_
                                                 _%hd229819230718%_
                                                 _%tl229820230720%_
                                                 _%e229821230723%_
                                                 _%hd229822230726%_
                                                 _%tl229823230728%_
                                                 _%e229824230731%_
                                                 _%hd229825230734%_
                                                 _%tl229826230736%_
                                                 _%e229827230739%_
                                                 _%hd229828230742%_
                                                 _%tl229829230744%_
                                                 _%e229830230747%_
                                                 _%hd229831230750%_
                                                 _%tl229832230752%_
                                                 _%e229833230755%_
                                                 _%hd229834230758%_
                                                 _%tl229835230760%_
                                                 _%e229836230763%_
                                                 _%hd229837230766%_
                                                 _%tl229838230768%_))))))))
                          (_%loop229842230776%_ _%target229839230771%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx235779235780%_))
                    (let ((_%e229809230691%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx235779235780%_))))
                      (let ((_%tl229811230696%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229809230691%_)))
                            (_%hd229810230694%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229809230691%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229811230696%_))
                            (let ((_%e229812230699%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229811230696%_))))
                              (let ((_%tl229814230704%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229812230699%_)))
                                    (_%hd229813230702%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229812230699%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd229813230702%_))
                                    (let ((_%e229815230707%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229813230702%_))))
                                      (let ((_%tl229817230712%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229815230707%_)))
                                            (_%hd229816230710%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229815230707%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd229816230710%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd229816230710%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229817230712%_))
                                                    (let ((_%e229818230715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229817230712%_))))
                                                      (let ((_%tl229820230720%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229818230715%_)))
                    (_%hd229819230718%_
                     (let () (declare (not safe)) (##car _%e229818230715%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl229820230720%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229814230704%_))
                        (let ((_%e229821230723%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl229814230704%_))))
                          (let ((_%tl229823230728%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229821230723%_)))
                                (_%hd229822230726%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229821230723%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229822230726%_))
                                (let ((_%e229824230731%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd229822230726%_))))
                                  (let ((_%tl229826230736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229824230731%_)))
                                        (_%hd229825230734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229824230731%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229825230734%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd229825230734%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229826230736%_))
                                                (let ((_%e229827230739%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl229826230736%_))))
                                                  (let ((_%tl229829230744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229827230739%_)))
                                                        (_%hd229828230742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229827230739%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229829230744%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229823230728%_))
                                                            (let ((_%e229830230747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229823230728%_))))
                      (let ((_%tl229832230752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229830230747%_)))
                            (_%hd229831230750%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229830230747%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd229831230750%_))
                            (let ((_%e229833230755%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd229831230750%_))))
                              (let ((_%tl229835230760%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229833230755%_)))
                                    (_%hd229834230758%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229833230755%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd229834230758%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd229834230758%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229835230760%_))
                                            (let ((_%e229836230763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229835230760%_))))
                                              (let ((_%tl229838230768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229836230763%_)))
                                                    (_%hd229837230766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229836230763%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl229838230768%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl229832230752%_))
                                                        (let ((_%__splice235783235784%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl229832230752%_
                          '0))))
                  (let ((_%tl229841230773%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice235783235784%_ '1)))
                        (_%target229839230771%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice235783235784%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229841230773%_))
                        (_%__match235884235885%_
                         _%e229809230691%_
                         _%hd229810230694%_
                         _%tl229811230696%_
                         _%e229812230699%_
                         _%hd229813230702%_
                         _%tl229814230704%_
                         _%e229815230707%_
                         _%hd229816230710%_
                         _%tl229817230712%_
                         _%e229818230715%_
                         _%hd229819230718%_
                         _%tl229820230720%_
                         _%e229821230723%_
                         _%hd229822230726%_
                         _%tl229823230728%_
                         _%e229824230731%_
                         _%hd229825230734%_
                         _%tl229826230736%_
                         _%e229827230739%_
                         _%hd229828230742%_
                         _%tl229829230744%_
                         _%e229830230747%_
                         _%hd229831230750%_
                         _%tl229832230752%_
                         _%e229833230755%_
                         _%hd229834230758%_
                         _%tl229835230760%_
                         _%e229836230763%_
                         _%hd229837230766%_
                         _%tl229838230768%_
                         _%__splice235783235784%_
                         _%target229839230771%_
                         _%tl229841230773%_)
                        (_%__match236072236073%_
                         _%e229809230691%_
                         _%hd229810230694%_
                         _%tl229811230696%_
                         _%e229812230699%_
                         _%hd229813230702%_
                         _%tl229814230704%_
                         _%e229815230707%_
                         _%hd229816230710%_
                         _%tl229817230712%_
                         _%e229818230715%_
                         _%hd229819230718%_
                         _%tl229820230720%_
                         _%e229821230723%_
                         _%hd229822230726%_
                         _%tl229823230728%_
                         _%e229824230731%_
                         _%hd229825230734%_
                         _%tl229826230736%_
                         _%e229827230739%_
                         _%hd229828230742%_
                         _%tl229829230744%_
                         _%e229830230747%_
                         _%hd229831230750%_
                         _%tl229832230752%_
                         _%e229833230755%_
                         _%hd229834230758%_
                         _%tl229835230760%_
                         _%e229836230763%_
                         _%hd229837230766%_
                         _%tl229838230768%_))))
                (_%__match236072236073%_
                 _%e229809230691%_
                 _%hd229810230694%_
                 _%tl229811230696%_
                 _%e229812230699%_
                 _%hd229813230702%_
                 _%tl229814230704%_
                 _%e229815230707%_
                 _%hd229816230710%_
                 _%tl229817230712%_
                 _%e229818230715%_
                 _%hd229819230718%_
                 _%tl229820230720%_
                 _%e229821230723%_
                 _%hd229822230726%_
                 _%tl229823230728%_
                 _%e229824230731%_
                 _%hd229825230734%_
                 _%tl229826230736%_
                 _%e229827230739%_
                 _%hd229828230742%_
                 _%tl229829230744%_
                 _%e229830230747%_
                 _%hd229831230750%_
                 _%tl229832230752%_
                 _%e229833230755%_
                 _%hd229834230758%_
                 _%tl229835230760%_
                 _%e229836230763%_
                 _%hd229837230766%_
                 _%tl229838230768%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match236276236277%_
                                                     _%e229809230691%_
                                                     _%hd229810230694%_
                                                     _%tl229811230696%_
                                                     _%e229812230699%_
                                                     _%hd229813230702%_
                                                     _%tl229814230704%_
                                                     _%e229815230707%_
                                                     _%hd229816230710%_
                                                     _%tl229817230712%_
                                                     _%e229818230715%_
                                                     _%hd229819230718%_
                                                     _%tl229820230720%_
                                                     _%e229821230723%_
                                                     _%hd229822230726%_
                                                     _%tl229823230728%_
                                                     _%e229824230731%_
                                                     _%hd229825230734%_
                                                     _%tl229826230736%_
                                                     _%e229827230739%_
                                                     _%hd229828230742%_
                                                     _%tl229829230744%_
                                                     _%e229830230747%_
                                                     _%hd229831230750%_
                                                     _%tl229832230752%_))))
                                            (_%__match236276236277%_
                                             _%e229809230691%_
                                             _%hd229810230694%_
                                             _%tl229811230696%_
                                             _%e229812230699%_
                                             _%hd229813230702%_
                                             _%tl229814230704%_
                                             _%e229815230707%_
                                             _%hd229816230710%_
                                             _%tl229817230712%_
                                             _%e229818230715%_
                                             _%hd229819230718%_
                                             _%tl229820230720%_
                                             _%e229821230723%_
                                             _%hd229822230726%_
                                             _%tl229823230728%_
                                             _%e229824230731%_
                                             _%hd229825230734%_
                                             _%tl229826230736%_
                                             _%e229827230739%_
                                             _%hd229828230742%_
                                             _%tl229829230744%_
                                             _%e229830230747%_
                                             _%hd229831230750%_
                                             _%tl229832230752%_))
                                        (_%__match235952235953%_
                                         _%e229809230691%_
                                         _%hd229810230694%_
                                         _%tl229811230696%_
                                         _%e229812230699%_
                                         _%hd229813230702%_
                                         _%tl229814230704%_
                                         _%e229815230707%_
                                         _%hd229816230710%_
                                         _%tl229817230712%_
                                         _%e229818230715%_
                                         _%hd229819230718%_
                                         _%tl229820230720%_
                                         _%e229821230723%_
                                         _%hd229822230726%_
                                         _%tl229823230728%_
                                         _%e229824230731%_
                                         _%hd229825230734%_
                                         _%tl229826230736%_
                                         _%e229827230739%_
                                         _%hd229828230742%_
                                         _%tl229829230744%_
                                         _%e229830230747%_
                                         _%hd229831230750%_
                                         _%tl229832230752%_
                                         _%e229833230755%_
                                         _%hd229834230758%_
                                         _%tl229835230760%_))
                                    (_%__match236276236277%_
                                     _%e229809230691%_
                                     _%hd229810230694%_
                                     _%tl229811230696%_
                                     _%e229812230699%_
                                     _%hd229813230702%_
                                     _%tl229814230704%_
                                     _%e229815230707%_
                                     _%hd229816230710%_
                                     _%tl229817230712%_
                                     _%e229818230715%_
                                     _%hd229819230718%_
                                     _%tl229820230720%_
                                     _%e229821230723%_
                                     _%hd229822230726%_
                                     _%tl229823230728%_
                                     _%e229824230731%_
                                     _%hd229825230734%_
                                     _%tl229826230736%_
                                     _%e229827230739%_
                                     _%hd229828230742%_
                                     _%tl229829230744%_
                                     _%e229830230747%_
                                     _%hd229831230750%_
                                     _%tl229832230752%_))))
                            (_%__match236276236277%_
                             _%e229809230691%_
                             _%hd229810230694%_
                             _%tl229811230696%_
                             _%e229812230699%_
                             _%hd229813230702%_
                             _%tl229814230704%_
                             _%e229815230707%_
                             _%hd229816230710%_
                             _%tl229817230712%_
                             _%e229818230715%_
                             _%hd229819230718%_
                             _%tl229820230720%_
                             _%e229821230723%_
                             _%hd229822230726%_
                             _%tl229823230728%_
                             _%e229824230731%_
                             _%hd229825230734%_
                             _%tl229826230736%_
                             _%e229827230739%_
                             _%hd229828230742%_
                             _%tl229829230744%_
                             _%e229830230747%_
                             _%hd229831230750%_
                             _%tl229832230752%_))))
                    (_%__match236214236215%_
                     _%e229809230691%_
                     _%hd229810230694%_
                     _%tl229811230696%_
                     _%e229812230699%_
                     _%hd229813230702%_
                     _%tl229814230704%_
                     _%e229815230707%_
                     _%hd229816230710%_
                     _%tl229817230712%_
                     _%e229818230715%_
                     _%hd229819230718%_
                     _%tl229820230720%_
                     _%e229821230723%_
                     _%hd229822230726%_
                     _%tl229823230728%_
                     _%e229824230731%_
                     _%hd229825230734%_
                     _%tl229826230736%_
                     _%e229827230739%_
                     _%hd229828230742%_
                     _%tl229829230744%_))
                (_%__kont235797235798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont235797235798%_))
                                            (_%__kont235797235798%_))
                                        (_%__kont235797235798%_))))
                                (_%__kont235797235798%_))))
                        (_%__kont235797235798%_))
                    (_%__kont235797235798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont235797235798%_))
                                                (_%__kont235797235798%_))
                                            (_%__kont235797235798%_))))
                                    (_%__kont235797235798%_))))
                            (_%__kont235797235798%_))))
                    (_%__kont235797235798%_))))))))))
