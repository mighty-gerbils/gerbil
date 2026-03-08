(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1773012989)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp236299 (list gxc#::identity::t))
            (__tmp236298 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp236299
         '()
         __tmp236298
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args235096%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args235096%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp236300
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
        (__make-atomic-promise __tmp236300)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx235088%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self235091%_
                (let ((__obj236291
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj236291))
               (__tmp236301
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self235091%_ _%stx235088%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp236301
           gxc#current-compile-method
           _%self235091%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp236303 (list gxc#::false::t))
            (__tmp236302 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp236303
         '()
         __tmp236302
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args235085%_
        (apply make-instance gxc#::extract-receiver::t _%$args235085%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp236304
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
        (__make-atomic-promise __tmp236304)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx235077%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self235080%_
                (let ((__obj236293
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj236293))
               (__tmp236305
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self235080%_ _%stx235077%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp236305
           gxc#current-compile-method
           _%self235080%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp236307 (list gxc#::void::t))
            (__tmp236306 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp236307
         '(receiver methods slots)
         __tmp236306
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args235074%_
        (apply make-instance gxc#::collect-object-refs::t _%$args235074%_)))
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
      (let ((__tmp236308
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
        (__make-atomic-promise __tmp236308)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords235043%_
               _%receiver235038235044%_
               _%methods235039235045%_
               _%slots235040235046%_
               _%stx235047%_)
        (let* ((_%receiver235050%_
                (if (eq? _%receiver235038235044%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver235038235044%_))
               (_%methods235052%_
                (if (eq? _%methods235039235045%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods235039235045%_))
               (_%slots235054%_
                (if (eq? _%slots235040235046%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots235040235046%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self235056%_
                  (let ((__obj236295
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
                       __obj236295
                       _%receiver235050%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236295
                       _%methods235052%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236295
                       _%slots235054%_
                       '3
                       '#f
                       '#f))
                    __obj236295))
                 (__tmp236309
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self235056%_ _%stx235047%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp236309
             gxc#current-compile-method
             _%self235056%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords235063%_ . _%args235064%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords235063%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235063%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235063%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235063%_
                  'slots:
                  absent-value))
               _%args235064%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args235041235070%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args235041235070%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp236311 (list gxc#::basic-xform-expression::t))
            (__tmp236310 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp236311
         '(receiver klass methods slots)
         __tmp236310
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args235034%_
        (apply make-instance gxc#::subst-object-refs::t _%$args235034%_)))
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
      (let ((__tmp236312
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
        (__make-atomic-promise __tmp236312)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords235000%_
               _%receiver234994235001%_
               _%klass234995235002%_
               _%methods234996235003%_
               _%slots234997235004%_
               _%stx235005%_)
        (let* ((_%receiver235008%_
                (if (eq? _%receiver234994235001%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver234994235001%_))
               (_%klass235010%_
                (if (eq? _%klass234995235002%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass234995235002%_))
               (_%methods235012%_
                (if (eq? _%methods234996235003%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods234996235003%_))
               (_%slots235014%_
                (if (eq? _%slots234997235004%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots234997235004%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self235016%_
                  (let ((__obj236297
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
                       __obj236297
                       _%receiver235008%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236297
                       _%klass235010%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236297
                       _%methods235012%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236297
                       _%slots235014%_
                       '4
                       '#f
                       '#f))
                    __obj236297))
                 (__tmp236313
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self235016%_ _%stx235005%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp236313
             gxc#current-compile-method
             _%self235016%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords235023%_ . _%args235024%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords235023%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235023%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235023%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235023%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235023%_
                  'slots:
                  absent-value))
               _%args235024%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args234998235030%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args234998235030%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self232125%_ _%stx232126%_)
        (letrec ((_%generate-method-bind232128%_
                  (lambda (_%$klass234986%_
                           _%$method-table234987%_
                           _%id234988%_
                           _%$id234989%_)
                    (let ((_%$tmp234991%_
                           (let ((__tmp236314
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp236314))))
                      (cons (cons _%$id234989%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp234991%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table234987%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id234988%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp234991%_ '()))
                    (cons (cons '%#ref (cons _%$tmp234991%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id234988%_
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
                 (_%generate-slot-bind232129%_
                  (lambda (_%$klass234980%_ _%id234981%_ _%$id234982%_)
                    (let ((_%$tmp234984%_
                           (let ((__tmp236315
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp236315))))
                      (cons (cons _%$id234982%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp234984%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass234980%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id234981%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp234984%_ '()))
                        (cons (cons '%#ref (cons _%$tmp234984%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id234981%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl232130%_
                  (lambda (_%$klass234974%_
                           _%$method-table234975%_
                           _%methods-bind234976%_
                           _%slots-bind234977%_
                           _%specializer-impl234978%_)
                    (let ((__tmp236316
                           (cons '%#lambda
                                 (cons (cons _%$klass234974%_
                                             (cons _%$method-table234975%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind234977%_
                                                            _%methods-bind234976%_))
                                                         (cons _%specializer-impl234978%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp236316 _%stx232126%_))))
                 (_%generate-specializer-def232131%_
                  (lambda (_%id234970%_
                           _%specializer-id234971%_
                           _%specializer-impl234972%_)
                    (let ((__tmp236317
                           (cons '%#begin
                                 (cons _%stx232126%_
                                       (cons (let ((__tmp236318
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id234971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl234972%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp236318
                                                _%stx232126%_))
                                             (cons (let ((__tmp236319
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id234970%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id234971%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236319
                                                      _%stx232126%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp236317 _%stx232126%_)))))
          (let* ((_%__stx235185235186%_ _%stx232126%_)
                 (_%g232134232154%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx235185235186%_)))))
            (let ((_%__kont235187235188%_
                   (lambda (_%g232136232198%_ _%g232137232199%_)
                     (let ((_%method-calls232218%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs232219%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty232220%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?232222%_
                                 (lambda ()
                                   (if (let ((__tmp236320
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls232218%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp236320))
                                       (let ((__tmp236321
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs232219%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp236321))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g232136232198%_))
                             (let* ((_%__stx235099235100%_ _%g232136232198%_)
                                    (_%g232606232624%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx235099235100%_)))))
                               (let ((_%__kont235101235102%_
                                      (lambda (_%g232608232660%_
                                               _%g232609232661%_
                                               _%g232610232662%_)
                                        (let ((_%receiver232682%_
                                               (let ((_%$e232679%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g232608232660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e232679%_
                                                     _%$e232679%_
                                                     _%g232610232662%_))))
                                          (for-each
                                           (lambda (_%g232683232685%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver232682%_
                                              _%method-calls232218%_
                                              _%slot-refs232219%_
                                              _%g232683232685%_))
                                           _%g232608232660%_)
                                          (if (_%no-specializer?232222%_)
                                              _%stx232126%_
                                              (let* ((_%specializer-id232694%_
                                                      (let* ((_%id232688%_
                                                              (let ((__tmp236322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g232137232199%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp236322 '"::specialize")))
                     (_%specializer-id232691%_
                      (let ((__tmp236323
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx232126%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id232688%_ __tmp236323))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id232691%_))
                _%specializer-id232691%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass232696%_
                                                      (let ((__tmp236324
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp236324)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table232698%_
                                                      (let ((__tmp236325
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp236325)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods232700%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls232218%_)))
                                                     (_%$methods232704%_
                                                      (let ((__tmp236326
                                                             (lambda (_%id232702%_)
                                                               (let ((__tmp236327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232702%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236327)))))
                (declare (not safe))
                (##map __tmp236326 _%methods232700%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232713%_
                                                      (let ((__tmp236328
                                                             (lambda (_%g232705232708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232706232710%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls232218%_
                          _%g232705232708%_
                          _%g232706232710%_)))))
                (declare (not safe))
                (##for-each __tmp236328 _%methods232700%_ _%$methods232704%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind232723%_
                                                      (let ((__tmp236329
                                                             (lambda (_%g232715232718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232716232720%_)
                       (_%generate-method-bind232128%_
                        _%$klass232696%_
                        _%$method-table232698%_
                        _%g232715232718%_
                        _%g232716232720%_))))
                (declare (not safe))
                (##map __tmp236329 _%methods232700%_ _%$methods232704%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots232725%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs232219%_)))
                                                     (_%$slots232729%_
                                                      (let ((__tmp236330
                                                             (lambda (_%id232727%_)
                                                               (let ((__tmp236331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232727%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236331)))))
                (declare (not safe))
                (##map __tmp236330 _%slots232725%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232738%_
                                                      (let ((__tmp236332
                                                             (lambda (_%g232730232733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232731232735%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs232219%_
                          _%g232730232733%_
                          _%g232731232735%_)))))
                (declare (not safe))
                (##for-each __tmp236332 _%slots232725%_ _%$slots232729%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind232747%_
                                                      (let ((__tmp236333
                                                             (lambda (_%g232739232742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232740232744%_)
                       (_%generate-slot-bind232129%_
                        _%$klass232696%_
                        _%g232739232742%_
                        _%g232740232744%_))))
                (declare (not safe))
                (##map __tmp236333 _%slots232725%_ _%$slots232729%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body232753%_
                                                      (map (lambda (_%g232748232750%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver232682%_
                                                              _%$klass232696%_
                                                              _%method-calls232218%_
                                                              _%slot-refs232219%_
                                                              _%g232748232750%_))
                                                           _%g232608232660%_))
                                                     (_%specializer-impl232755%_
                                                      (let ((__tmp236334
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g232610232662%_ _%g232609232661%_)
                                 _%specializer-body232753%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp236334 _%stx232126%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl232757%_
                                                      (_%generate-specializer-impl232130%_
                                                       _%$klass232696%_
                                                       _%$method-table232698%_
                                                       _%methods-bind232723%_
                                                       _%slots-bind232747%_
                                                       _%specializer-impl232755%_)))
                                                (let ((__tmp236336
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g232137232199%_)))
                                                      (__tmp236335
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id232694%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp236336
                                                   '" => "
                                                   __tmp236335))
                                                (_%generate-specializer-def232131%_
                                                 _%g232137232199%_
                                                 _%specializer-id232694%_
                                                 _%specializer-impl232757%_))))))
                                     (_%__kont235103235104%_
                                      (lambda () _%stx232126%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx235099235100%_))
                                     (let ((_%e232611232636%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx235099235100%_))))
                                       (let ((_%tl232613232641%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e232611232636%_)))
                                             (_%hd232612232639%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e232611232636%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl232613232641%_))
                                             (let ((_%e232614232644%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl232613232641%_))))
                                               (let ((_%tl232616232649%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e232614232644%_)))
                                                     (_%hd232615232647%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e232614232644%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd232615232647%_))
                                                     (let ((_%e232617232652%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd232615232647%_))))
                                                       (let ((_%tl232619232657%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e232617232652%_)))
                     (_%hd232618232655%_
                      (let () (declare (not safe)) (##car _%e232617232652%_))))
                 (_%__kont235101235102%_
                  _%tl232616232649%_
                  _%tl232619232657%_
                  _%hd232618232655%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont235103235104%_))))
                                             (_%__kont235103235104%_))))
                                     (_%__kont235103235104%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g232136232198%_))
                                 (let* ((_%g232764232783%_
                                         (lambda (_%g232765232780%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g232765232780%_))))
                                        (_%g232763233079%_
                                         (lambda (_%g232765232786%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g232765232786%_))
                                               (let ((_%e232767232788%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g232765232786%_))))
                                                 (let ((_%hd232768232791%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232767232788%_)))
                                                       (_%tl232769232793%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232767232788%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl232769232793%_))
                                                       (let ((_g236337_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl232769232793%_ '0))))
                 (begin
                   (let ((_g236338_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g236337_)
                                (##values-length _g236337_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g236338_ 2)))
                         (error "Context expects 2 values" _g236338_)))
                   (let ((_%target232770232796%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g236337_ 0)))
                         (_%tl232772232798%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g236337_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl232772232798%_))
                         (letrec ((_%loop232773232801%_
                                   (lambda (_%hd232771232804%_
                                            _%clause232777232806%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd232771232804%_))
                                         (let ((_%e232774232808%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd232771232804%_))))
                                           (let ((_%lp-hd232775232811%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e232774232808%_)))
                                                 (_%lp-tl232776232813%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e232774232808%_))))
                                             (_%loop232773232801%_
                                              _%lp-tl232776232813%_
                                              (cons _%lp-hd232775232811%_
                                                    _%clause232777232806%_))))
                                         (let ((_%clause232778232816%_
                                                (reverse _%clause232777232806%_)))
                                           ((lambda (_%g232766232818%_)
                                              (for-each
                                               (lambda (_%clause232832%_)
                                                 (let* ((_%__stx235125235126%_
                                                         _%clause232832%_)
                                                        (_%g232835232850%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx235125235126%_)))))
                                                   (let ((_%__kont235127235128%_
                                                          (lambda (_%g232837232878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g232838232879%_
                           _%g232839232880%_)
                    (let ((_%receiver232899%_
                           (let ((_%$e232896%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g232837232878%_))))
                             (if _%$e232896%_
                                 _%$e232896%_
                                 _%g232839232880%_))))
                      (for-each
                       (lambda (_%g232900232902%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver232899%_
                          _%method-calls232218%_
                          _%slot-refs232219%_
                          _%g232900232902%_))
                       _%g232837232878%_))))
                 (_%__kont235129235130%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx235125235126%_))
                                                         (let ((_%e232840232862%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx235125235126%_))))
                   (let ((_%tl232842232867%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e232840232862%_)))
                         (_%hd232841232865%_
                          (let ()
                            (declare (not safe))
                            (##car _%e232840232862%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd232841232865%_))
                         (let ((_%e232843232870%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd232841232865%_))))
                           (let ((_%tl232845232875%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e232843232870%_)))
                                 (_%hd232844232873%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e232843232870%_))))
                             (_%__kont235127235128%_
                              _%tl232842232867%_
                              _%tl232845232875%_
                              _%hd232844232873%_)))
                         (_%__kont235129235130%_))))
                 (_%__kont235129235130%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp236339
                                                      (lambda (_%g232907232910%_
                                                               _%g232908232912%_)
                                                        (cons _%g232907232910%_
                                                              _%g232908232912%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp236339
                                                  '()
                                                  _%g232766232818%_)))
                                              (if (_%no-specializer?232222%_)
                                                  _%stx232126%_
                                                  (let* ((_%specializer-id232921%_
                                                          (let* ((_%id232915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp236340
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g232137232199%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp236340 '"::specialize")))
                         (_%specializer-id232918%_
                          (let ((__tmp236341
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx232126%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id232915%_
                             __tmp236341))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id232918%_))
                    _%specializer-id232918%_))
                 (_%$klass232923%_
                  (let ((__tmp236342
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236342)))
                 (_%$method-table232925%_
                  (let ((__tmp236343
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236343)))
                 (_%methods232927%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls232218%_)))
                 (_%$methods232931%_
                  (let ((__tmp236344
                         (lambda (_%id232929%_)
                           (let ((__tmp236345 (gensym _%id232929%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236345)))))
                    (declare (not safe))
                    (##map __tmp236344 _%methods232927%_)))
                 (_%_232940%_
                  (let ((__tmp236346
                         (lambda (_%g232932232935%_ _%g232933232937%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls232218%_
                              _%g232932232935%_
                              _%g232933232937%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp236346
                     _%methods232927%_
                     _%$methods232931%_)))
                 (_%methods-bind232950%_
                  (let ((__tmp236347
                         (lambda (_%g232942232945%_ _%g232943232947%_)
                           (_%generate-method-bind232128%_
                            _%$klass232923%_
                            _%$method-table232925%_
                            _%g232942232945%_
                            _%g232943232947%_))))
                    (declare (not safe))
                    (##map __tmp236347 _%methods232927%_ _%$methods232931%_)))
                 (_%slots232952%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs232219%_)))
                 (_%$slots232956%_
                  (let ((__tmp236348
                         (lambda (_%id232954%_)
                           (let ((__tmp236349 (gensym _%id232954%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236349)))))
                    (declare (not safe))
                    (##map __tmp236348 _%slots232952%_)))
                 (_%_232965%_
                  (let ((__tmp236350
                         (lambda (_%g232957232960%_ _%g232958232962%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs232219%_
                              _%g232957232960%_
                              _%g232958232962%_)))))
                    (declare (not safe))
                    (##for-each __tmp236350 _%slots232952%_ _%$slots232956%_)))
                 (_%slots-bind232974%_
                  (let ((__tmp236351
                         (lambda (_%g232966232969%_ _%g232967232971%_)
                           (_%generate-slot-bind232129%_
                            _%$klass232923%_
                            _%g232966232969%_
                            _%g232967232971%_))))
                    (declare (not safe))
                    (##map __tmp236351 _%slots232952%_ _%$slots232956%_)))
                 (_%specializer-clauses233072%_
                  (map (lambda (_%clause232976%_)
                         (let* ((_%__stx235145235146%_ _%clause232976%_)
                                (_%g232979232994%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx235145235146%_)))))
                           (let ((_%__kont235147235148%_
                                  (lambda (_%g232981233022%_
                                           _%g232982233023%_
                                           _%g232983233024%_)
                                    (let* ((_%receiver233053%_
                                            (let ((_%$e233050%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g232981233022%_))))
                                              (if _%$e233050%_
                                                  _%$e233050%_
                                                  _%g232983233024%_)))
                                           (_%body233059%_
                                            (map (lambda (_%g233054233056%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver233053%_
                                                    _%$klass232923%_
                                                    _%method-calls232218%_
                                                    _%slot-refs232219%_
                                                    _%g233054233056%_))
                                                 _%g232981233022%_)))
                                      (cons (cons _%g232983233024%_
                                                  _%g232982233023%_)
                                            _%body233059%_))))
                                 (_%__kont235149235150%_
                                  (lambda () _%clause232976%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx235145235146%_))
                                 (let ((_%e232984233006%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx235145235146%_))))
                                   (let ((_%tl232986233011%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e232984233006%_)))
                                         (_%hd232985233009%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e232984233006%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd232985233009%_))
                                         (let ((_%e232987233014%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd232985233009%_))))
                                           (let ((_%tl232989233019%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e232987233014%_)))
                                                 (_%hd232988233017%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e232987233014%_))))
                                             (_%__kont235147235148%_
                                              _%tl232986233011%_
                                              _%tl232989233019%_
                                              _%hd232988233017%_)))
                                         (_%__kont235149235150%_))))
                                 (_%__kont235149235150%_)))))
                       (let ((__tmp236352
                              (lambda (_%g233064233067%_ _%g233065233069%_)
                                (cons _%g233064233067%_ _%g233065233069%_))))
                         (declare (not safe))
                         (foldr__0 __tmp236352 '() _%g232766232818%_))))
                 (_%specializer-impl233074%_
                  (let ((__tmp236353
                         (cons '%#case-lambda _%specializer-clauses233072%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp236353 _%stx232126%_)))
                 (_%specializer-impl233076%_
                  (_%generate-specializer-impl232130%_
                   _%$klass232923%_
                   _%$method-table232925%_
                   _%methods-bind232950%_
                   _%slots-bind232974%_
                   _%specializer-impl233074%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp236355
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g232137232199%_)))
                                                          (__tmp236354
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id232921%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp236355
                                                       '" => "
                                                       __tmp236354))
                                                    (_%generate-specializer-def232131%_
                                                     _%g232137232199%_
                                                     _%specializer-id232921%_
                                                     _%specializer-impl233076%_))))
                                            _%clause232778232816%_))))))
                           (_%loop232773232801%_ _%target232770232796%_ '()))
                         (_%g232764232783%_ _%g232765232786%_)))))
               (_%g232764232783%_ _%g232765232786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232764232783%_
                                                _%g232765232786%_)))))
                                   (_%g232763233079%_ _%g232136232198%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g232136232198%_))
                                     (let* ((_%g233083233113%_
                                             (lambda (_%g233084233110%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g233084233110%_))))
                                            (_%g233082233740%_
                                             (lambda (_%g233084233116%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g233084233116%_))
                                                   (let ((_%e233088233118%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g233084233116%_))))
                                                     (let ((_%hd233089233121%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233088233118%_)))
                                                           (_%tl233090233123%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233088233118%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233090233123%_))
                                                           (let ((_%e233091233126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233090233123%_))))
                     (let ((_%hd233092233129%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233091233126%_)))
                           (_%tl233093233131%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233091233126%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd233092233129%_))
                           (let ((_%e233094233134%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd233092233129%_))))
                             (let ((_%hd233095233137%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233094233134%_)))
                                   (_%tl233096233139%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233094233134%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233095233137%_))
                                   (let ((_%e233097233142%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233095233137%_))))
                                     (let ((_%hd233098233145%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233097233142%_)))
                                           (_%tl233099233147%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233097233142%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd233098233145%_))
                                           (let ((_%e233100233150%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd233098233145%_))))
                                             (let ((_%hd233101233153%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e233100233150%_)))
                                                   (_%tl233102233155%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e233100233150%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl233102233155%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl233099233147%_))
                                                       (let ((_%e233103233158%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl233099233147%_))))
                 (let ((_%hd233104233161%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233103233158%_)))
                       (_%tl233105233163%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233103233158%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl233105233163%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl233096233139%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl233093233131%_))
                               (let ((_%e233106233166%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl233093233131%_))))
                                 (let ((_%hd233107233169%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233106233166%_)))
                                       (_%tl233108233171%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233106233166%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl233108233171%_))
                                       ((lambda (_%g233085233174%_
                                                 _%g233086233175%_
                                                 _%g233087233176%_)
                                          (let* ((_%g233200233218%_
                                                  (lambda (_%g233201233215%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g233201233215%_))))
                                                 (_%g233199233274%_
                                                  (lambda (_%g233201233221%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g233201233221%_))
                                                        (let ((_%e233205233223%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g233201233221%_))))
                  (let ((_%hd233206233226%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233205233223%_)))
                        (_%tl233207233228%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233205233223%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl233207233228%_))
                        (let ((_%e233208233231%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl233207233228%_))))
                          (let ((_%hd233209233234%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e233208233231%_)))
                                (_%tl233210233236%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e233208233231%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd233209233234%_))
                                (let ((_%e233211233239%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd233209233234%_))))
                                  (let ((_%hd233212233242%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233211233239%_)))
                                        (_%tl233213233244%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233211233239%_))))
                                    ((lambda (_%g233202233247%_
                                              _%g233203233248%_
                                              _%g233204233249%_)
                                       (let ((_%receiver233268%_
                                              (let ((_%$e233265%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g233202233247%_))))
                                                (if _%$e233265%_
                                                    _%$e233265%_
                                                    _%g233204233249%_))))
                                         (for-each
                                          (lambda (_%g233269233271%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver233268%_
                                             _%method-calls232218%_
                                             _%slot-refs232219%_
                                             _%g233269233271%_))
                                          _%g233202233247%_)))
                                     _%tl233210233236%_
                                     _%tl233213233244%_
                                     _%hd233212233242%_)))
                                (_%g233200233218%_ _%g233201233221%_))))
                        (_%g233200233218%_ _%g233201233221%_))))
                (_%g233200233218%_ _%g233201233221%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g233199233274%_
                                             _%g233086233175%_))
                                          (let* ((_%g233277233296%_
                                                  (lambda (_%g233278233293%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g233278233293%_))))
                                                 (_%g233276233418%_
                                                  (lambda (_%g233278233299%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g233278233299%_))
                                                        (let ((_%e233280233301%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g233278233299%_))))
                  (let ((_%hd233281233304%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233280233301%_)))
                        (_%tl233282233306%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233280233301%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl233282233306%_))
                        (let ((_g236356_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl233282233306%_
                                  '0))))
                          (begin
                            (let ((_g236357_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g236356_)
                                         (##values-length _g236356_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g236357_ 2)))
                                  (error "Context expects 2 values"
                                         _g236357_)))
                            (let ((_%target233283233309%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g236356_ 0)))
                                  (_%tl233285233311%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g236356_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl233285233311%_))
                                  (letrec ((_%loop233286233314%_
                                            (lambda (_%hd233284233317%_
                                                     _%clause233290233319%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd233284233317%_))
                                                  (let ((_%e233287233321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd233284233317%_))))
                                                    (let ((_%lp-hd233288233324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e233287233321%_)))
                                                          (_%lp-tl233289233326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e233287233321%_))))
                                                      (_%loop233286233314%_
                                                       _%lp-tl233289233326%_
                                                       (cons _%lp-hd233288233324%_
                                                             _%clause233290233319%_))))
                                                  (let ((_%clause233291233329%_
                                                         (reverse _%clause233290233319%_)))
                                                    ((lambda (_%g233279233331%_)
                                                       (for-each
                                                        (lambda (_%clause233344%_)
                                                          (let* ((_%g233346233361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g233347233358%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g233347233358%_))))
                         (_%g233345233408%_
                          (lambda (_%g233347233364%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g233347233364%_))
                                (let ((_%e233351233366%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g233347233364%_))))
                                  (let ((_%hd233352233369%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233351233366%_)))
                                        (_%tl233353233371%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233351233366%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd233352233369%_))
                                        (let ((_%e233354233374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd233352233369%_))))
                                          (let ((_%hd233355233377%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e233354233374%_)))
                                                (_%tl233356233379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e233354233374%_))))
                                            ((lambda (_%g233348233382%_
                                                      _%g233349233383%_
                                                      _%g233350233384%_)
                                               (let ((_%receiver233402%_
                                                      (let ((_%$e233399%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g233348233382%_))))
                (if _%$e233399%_ _%$e233399%_ _%g233350233384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g233403233405%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver233402%_
                                                     _%method-calls232218%_
                                                     _%slot-refs232219%_
                                                     _%g233403233405%_))
                                                  _%g233348233382%_)))
                                             _%tl233353233371%_
                                             _%tl233356233379%_
                                             _%hd233355233377%_)))
                                        (_%g233346233361%_
                                         _%g233347233364%_))))
                                (_%g233346233361%_ _%g233347233364%_)))))
                    (_%g233345233408%_ _%clause233344%_)))
                (let ((__tmp236358
                       (lambda (_%g233410233413%_ _%g233411233415%_)
                         (cons _%g233410233413%_ _%g233411233415%_))))
                  (declare (not safe))
                  (foldr__0 __tmp236358 '() _%g233279233331%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause233291233329%_))))))
                                    (_%loop233286233314%_
                                     _%target233283233309%_
                                     '()))
                                  (_%g233277233296%_ _%g233278233299%_)))))
                        (_%g233277233296%_ _%g233278233299%_))))
                (_%g233277233296%_ _%g233278233299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g233276233418%_
                                             _%g233085233174%_))
                                          (if (_%no-specializer?232222%_)
                                              _%stx232126%_
                                              (let* ((_%specializer-id233427%_
                                                      (let* ((_%id233421%_
                                                              (let ((__tmp236359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g232137232199%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp236359 '"::specialize")))
                     (_%specializer-id233424%_
                      (let ((__tmp236360
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx232126%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id233421%_ __tmp236360))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id233424%_))
                _%specializer-id233424%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass233429%_
                                                      (let ((__tmp236361
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp236361)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table233431%_
                                                      (let ((__tmp236362
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp236362)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods233433%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls232218%_)))
                                                     (_%$methods233437%_
                                                      (let ((__tmp236363
                                                             (lambda (_%id233435%_)
                                                               (let ((__tmp236364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id233435%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236364)))))
                (declare (not safe))
                (##map __tmp236363 _%methods233433%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_233446%_
                                                      (let ((__tmp236365
                                                             (lambda (_%g233438233441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233439233443%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls232218%_
                          _%g233438233441%_
                          _%g233439233443%_)))))
                (declare (not safe))
                (##for-each __tmp236365 _%methods233433%_ _%$methods233437%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind233456%_
                                                      (let ((__tmp236366
                                                             (lambda (_%g233448233451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233449233453%_)
                       (_%generate-method-bind232128%_
                        _%$klass233429%_
                        _%$method-table233431%_
                        _%g233448233451%_
                        _%g233449233453%_))))
                (declare (not safe))
                (##map __tmp236366 _%methods233433%_ _%$methods233437%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots233458%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs232219%_)))
                                                     (_%$slots233462%_
                                                      (let ((__tmp236367
                                                             (lambda (_%id233460%_)
                                                               (let ((__tmp236368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id233460%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236368)))))
                (declare (not safe))
                (##map __tmp236367 _%slots233458%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_233471%_
                                                      (let ((__tmp236369
                                                             (lambda (_%g233463233466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233464233468%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs232219%_
                          _%g233463233466%_
                          _%g233464233468%_)))))
                (declare (not safe))
                (##for-each __tmp236369 _%slots233458%_ _%$slots233462%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind233480%_
                                                      (let ((__tmp236370
                                                             (lambda (_%g233472233475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233473233477%_)
                       (_%generate-slot-bind232129%_
                        _%$klass233429%_
                        _%g233472233475%_
                        _%g233473233477%_))))
                (declare (not safe))
                (##map __tmp236370 _%slots233458%_ _%$slots233462%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr233572%_
                                                      (let* ((_%g233482233500%_
                                                              (lambda (_%g233483233497%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233483233497%_))))
                     (_%g233481233569%_
                      (lambda (_%g233483233503%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233483233503%_))
                            (let ((_%e233487233505%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233483233503%_))))
                              (let ((_%hd233488233508%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233487233505%_)))
                                    (_%tl233489233510%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233487233505%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl233489233510%_))
                                    (let ((_%e233490233513%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl233489233510%_))))
                                      (let ((_%hd233491233516%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233490233513%_)))
                                            (_%tl233492233518%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233490233513%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd233491233516%_))
                                            (let ((_%e233493233521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd233491233516%_))))
                                              (let ((_%hd233494233524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233493233521%_)))
                                                    (_%tl233495233526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233493233521%_))))
                                                ((lambda (_%g233484233529%_
                                                          _%g233485233530%_
                                                          _%g233486233531%_)
                                                   (let* ((_%receiver233560%_
                                                           (let ((_%$e233557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g233484233529%_))))
                     (if _%$e233557%_ _%$e233557%_ _%g233486233531%_)))
                  (_%body233566%_
                   (map (lambda (_%g233561233563%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver233560%_
                           _%$klass233429%_
                           _%method-calls232218%_
                           _%slot-refs232219%_
                           _%g233561233563%_))
                        _%g233484233529%_))
                  (__tmp236371
                   (cons '%#lambda
                         (cons (cons _%g233486233531%_ _%g233485233530%_)
                               _%body233566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236371
                                                      _%g233086233175%_)))
                                                 _%tl233492233518%_
                                                 _%tl233495233526%_
                                                 _%hd233494233524%_)))
                                            (_%g233482233500%_
                                             _%g233483233503%_))))
                                    (_%g233482233500%_ _%g233483233503%_))))
                            (_%g233482233500%_ _%g233483233503%_)))))
                (_%g233481233569%_ _%g233086233175%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr233733%_
                                                      (let* ((_%g233574233593%_
                                                              (lambda (_%g233575233590%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233575233590%_))))
                     (_%g233573233730%_
                      (lambda (_%g233575233596%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233575233596%_))
                            (let ((_%e233577233598%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233575233596%_))))
                              (let ((_%hd233578233601%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233577233598%_)))
                                    (_%tl233579233603%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233577233598%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl233579233603%_))
                                    (let ((_g236372_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl233579233603%_
                                              '0))))
                                      (begin
                                        (let ((_g236373_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g236372_)
                                                     (##values-length
                                                      _g236372_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g236373_ 2)))
                                              (error "Context expects 2 values"
                                                     _g236373_)))
                                        (let ((_%target233580233606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g236372_ 0)))
                                              (_%tl233582233608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g236372_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl233582233608%_))
                                              (letrec ((_%loop233583233611%_
                                                        (lambda (_%hd233581233614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause233587233616%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd233581233614%_))
                      (let ((_%e233584233618%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd233581233614%_))))
                        (let ((_%lp-hd233585233621%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233584233618%_)))
                              (_%lp-tl233586233623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233584233618%_))))
                          (_%loop233583233611%_
                           _%lp-tl233586233623%_
                           (cons _%lp-hd233585233621%_
                                 _%clause233587233616%_))))
                      (let ((_%clause233588233626%_
                             (reverse _%clause233587233616%_)))
                        ((lambda (_%g233576233628%_)
                           (let* ((_%clauses233728%_
                                   (map (lambda (_%clause233642%_)
                                          (let* ((_%__stx235165235166%_
                                                  _%clause233642%_)
                                                 (_%g233645233660%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx235165235166%_)))))
                                            (let ((_%__kont235167235168%_
                                                   (lambda (_%g233647233688%_
                                                            _%g233648233689%_
                                                            _%g233649233690%_)
                                                     (let* ((_%receiver233709%_
                                                             (let ((_%$e233706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g233647233688%_))))
                       (if _%$e233706%_ _%$e233706%_ _%g233649233690%_)))
                    (_%body233715%_
                     (map (lambda (_%g233710233712%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver233709%_
                             _%$klass233429%_
                             _%method-calls232218%_
                             _%slot-refs232219%_
                             _%g233710233712%_))
                          _%g233647233688%_)))
               (cons (cons _%g233649233690%_ _%g233648233689%_)
                     _%body233715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235169235170%_
                                                   (lambda ()
                                                     _%clause233642%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx235165235166%_))
                                                  (let ((_%e233650233672%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx235165235166%_))))
                                                    (let ((_%tl233652233677%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e233650233672%_)))
                                                          (_%hd233651233675%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e233650233672%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd233651233675%_))
                                                          (let ((_%e233653233680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd233651233675%_))))
                    (let ((_%tl233655233685%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e233653233680%_)))
                          (_%hd233654233683%_
                           (let ()
                             (declare (not safe))
                             (##car _%e233653233680%_))))
                      (_%__kont235167235168%_
                       _%tl233652233677%_
                       _%tl233655233685%_
                       _%hd233654233683%_)))
                  (_%__kont235169235170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235169235170%_)))))
                                        (let ((__tmp236374
                                               (lambda (_%g233720233723%_
                                                        _%g233721233725%_)
                                                 (cons _%g233720233723%_
                                                       _%g233721233725%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp236374
                                           '()
                                           _%g233576233628%_))))
                                  (__tmp236375
                                   (cons '%#case-lambda _%clauses233728%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp236375
                              _%g233085233174%_)))
                         _%clause233588233626%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop233583233611%_
                                                 _%target233580233606%_
                                                 '()))
                                              (_%g233574233593%_
                                               _%g233575233596%_)))))
                                    (_%g233574233593%_ _%g233575233596%_))))
                            (_%g233574233593%_ _%g233575233596%_)))))
                (_%g233573233730%_ _%g233085233174%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233735%_
                                                      (let ((__tmp236376
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g233087233176%_ '())
                                             (cons _%specializer-lambda-expr233572%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr233733%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp236376 _%stx232126%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233737%_
                                                      (_%generate-specializer-impl232130%_
                                                       _%$klass233429%_
                                                       _%$method-table233431%_
                                                       _%methods-bind233456%_
                                                       _%slots-bind233480%_
                                                       _%specializer-impl233735%_)))
                                                (let ((__tmp236378
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g232137232199%_)))
                                                      (__tmp236377
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id233427%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp236378
                                                   '" => "
                                                   __tmp236377))
                                                (_%generate-specializer-def232131%_
                                                 _%g232137232199%_
                                                 _%specializer-id233427%_
                                                 _%specializer-impl233737%_))))
                                        _%hd233107233169%_
                                        _%hd233104233161%_
                                        _%hd233101233153%_)
                                       (_%g233083233113%_ _%g233084233116%_))))
                               (_%g233083233113%_ _%g233084233116%_))
                           (_%g233083233113%_ _%g233084233116%_))
                       (_%g233083233113%_ _%g233084233116%_))))
               (_%g233083233113%_ _%g233084233116%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233083233113%_
                                                    _%g233084233116%_))))
                                           (_%g233083233113%_
                                            _%g233084233116%_))))
                                   (_%g233083233113%_ _%g233084233116%_))))
                           (_%g233083233113%_ _%g233084233116%_))))
                   (_%g233083233113%_ _%g233084233116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233083233113%_
                                                    _%g233084233116%_)))))
                                       (_%g233082233740%_ _%g232136232198%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g232136232198%_))
                                         (let* ((_%g233744233797%_
                                                 (lambda (_%g233745233794%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g233745233794%_))))
                                                (_%g233743234962%_
                                                 (lambda (_%g233745233800%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g233745233800%_))
                                                       (let ((_%e233751233802%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g233745233800%_))))
                 (let ((_%hd233752233805%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233751233802%_)))
                       (_%tl233753233807%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233751233802%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd233752233805%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd233752233805%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl233753233807%_))
                               (let ((_%e233754233810%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl233753233807%_))))
                                 (let ((_%hd233755233813%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233754233810%_)))
                                       (_%tl233756233815%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233754233810%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd233755233813%_))
                                       (let ((_%e233757233818%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd233755233813%_))))
                                         (let ((_%hd233758233821%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e233757233818%_)))
                                               (_%tl233759233823%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e233757233818%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd233758233821%_))
                                               (let ((_%e233760233826%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd233758233821%_))))
                                                 (let ((_%hd233761233829%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233760233826%_)))
                                                       (_%tl233762233831%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233760233826%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd233761233829%_))
                                                       (let ((_%e233763233834%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd233761233829%_))))
                 (let ((_%hd233764233837%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233763233834%_)))
                       (_%tl233765233839%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233763233834%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl233765233839%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl233762233831%_))
                           (let ((_%e233766233842%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl233762233831%_))))
                             (let ((_%hd233767233845%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233766233842%_)))
                                   (_%tl233768233847%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233766233842%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233767233845%_))
                                   (let ((_%e233769233850%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233767233845%_))))
                                     (let ((_%hd233770233853%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233769233850%_)))
                                           (_%tl233771233855%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233769233850%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd233770233853%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd233770233853%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl233771233855%_))
                                                   (let ((_%e233772233858%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl233771233855%_))))
                                                     (let ((_%hd233773233861%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233772233858%_)))
                                                           (_%tl233774233863%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233772233858%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd233773233861%_))
                                                           (let ((_%e233775233866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd233773233861%_))))
                     (let ((_%hd233776233869%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233775233866%_)))
                           (_%tl233777233871%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233775233866%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd233776233869%_))
                           (let ((_%e233778233874%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd233776233869%_))))
                             (let ((_%hd233779233877%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233778233874%_)))
                                   (_%tl233780233879%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233778233874%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233779233877%_))
                                   (let ((_%e233781233882%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233779233877%_))))
                                     (let ((_%hd233782233885%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233781233882%_)))
                                           (_%tl233783233887%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233781233882%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl233783233887%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl233780233879%_))
                                               (let ((_%e233784233890%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl233780233879%_))))
                                                 (let ((_%hd233785233893%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233784233890%_)))
                                                       (_%tl233786233895%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233784233890%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl233786233895%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl233777233871%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl233774233863%_))
                       (let ((_%e233787233898%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl233774233863%_))))
                         (let ((_%hd233788233901%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e233787233898%_)))
                               (_%tl233789233903%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e233787233898%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl233789233903%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl233768233847%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl233759233823%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl233756233815%_))
                                           (let ((_%e233790233906%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl233756233815%_))))
                                             (let ((_%hd233791233909%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e233790233906%_)))
                                                   (_%tl233792233911%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e233790233906%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl233792233911%_))
                                                   ((lambda (_%g233746233914%_
                                                             _%g233747233915%_
                                                             _%g233748233916%_
                                                             _%g233749233917%_
                                                             _%g233750233918%_)
                                                      (let* ((_%g233958234020%_
                                                              (lambda (_%g233959234017%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233959234017%_))))
                     (_%g233957234959%_
                      (lambda (_%g233959234023%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233959234023%_))
                            (let ((_%e233965234025%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233959234023%_))))
                              (let ((_%hd233966234028%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233965234025%_)))
                                    (_%tl233967234030%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233965234025%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd233966234028%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd233966234028%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl233967234030%_))
                                            (let ((_%e233968234033%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl233967234030%_))))
                                              (let ((_%hd233969234036%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233968234033%_)))
                                                    (_%tl233970234038%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233968234033%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl233970234038%_))
                                                    (let ((_%e233971234041%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl233970234038%_))))
                                                      (let ((_%hd233972234044%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e233971234041%_)))
                    (_%tl233973234046%_
                     (let () (declare (not safe)) (##cdr _%e233971234041%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd233972234044%_))
                    (let ((_%e233974234049%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd233972234044%_))))
                      (let ((_%hd233975234052%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233974234049%_)))
                            (_%tl233976234054%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233974234049%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd233975234052%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd233975234052%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl233976234054%_))
                                    (let ((_%e233977234057%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl233976234054%_))))
                                      (let ((_%hd233978234060%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233977234057%_)))
                                            (_%tl233979234062%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233977234057%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd233978234060%_))
                                            (let ((_%e233980234065%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd233978234060%_))))
                                              (let ((_%hd233981234068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233980234065%_)))
                                                    (_%tl233982234070%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233980234065%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd233981234068%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd233981234068%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl233982234070%_))
                                                            (let ((_%e233983234073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl233982234070%_))))
                      (let ((_%hd233984234076%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233983234073%_)))
                            (_%tl233985234078%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233983234073%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233985234078%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl233979234062%_))
                                (let ((_%e233986234081%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl233979234062%_))))
                                  (let ((_%hd233987234084%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233986234081%_)))
                                        (_%tl233988234086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233986234081%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd233987234084%_))
                                        (let ((_%e233989234089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd233987234084%_))))
                                          (let ((_%hd233990234092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e233989234089%_)))
                                                (_%tl233991234094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e233989234089%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd233990234092%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd233990234092%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl233991234094%_))
                                                        (let ((_%e233992234097%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl233991234094%_))))
                  (let ((_%hd233993234100%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233992234097%_)))
                        (_%tl233994234102%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233992234097%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl233994234102%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233988234086%_))
                            (let ((_%e233995234105%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233988234086%_))))
                              (let ((_%hd233996234108%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233995234105%_)))
                                    (_%tl233997234110%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233995234105%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd233996234108%_))
                                    (let ((_%e233998234113%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd233996234108%_))))
                                      (let ((_%hd233999234116%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233998234113%_)))
                                            (_%tl234000234118%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233998234113%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd233999234116%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd233999234116%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl234000234118%_))
                                                    (let ((_%e234001234121%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl234000234118%_))))
                                                      (let ((_%hd234002234124%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e234001234121%_)))
                    (_%tl234003234126%_
                     (let () (declare (not safe)) (##cdr _%e234001234121%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl234003234126%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl233997234110%_))
                        (if (let ((__tmp236379
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl233997234110%_))))
                              (declare (not safe))
                              (##fx>= __tmp236379 '1))
                            (let ((_g236380_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl233997234110%_
                                      '1))))
                              (begin
                                (let ((_g236381_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g236380_)
                                             (##values-length _g236380_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g236381_ 2)))
                                      (error "Context expects 2 values"
                                             _g236381_)))
                                (let ((_%target234004234129%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236380_ 0)))
                                      (_%tl234006234131%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236380_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl234006234131%_))
                                      (let ((_%e234013234134%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl234006234131%_))))
                                        (let ((_%hd234014234137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234013234134%_)))
                                              (_%tl234015234139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234013234134%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl234015234139%_))
                                              (letrec ((_%loop234007234142%_
                                                        (lambda (_%hd234005234145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref234011234147%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd234005234145%_))
                      (let ((_%e234008234149%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd234005234145%_))))
                        (let ((_%lp-hd234009234152%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234008234149%_)))
                              (_%lp-tl234010234154%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234008234149%_))))
                          (_%loop234007234142%_
                           _%lp-tl234010234154%_
                           (cons _%lp-hd234009234152%_
                                 _%kw-ref234011234147%_))))
                      (let ((_%kw-ref234012234157%_
                             (reverse _%kw-ref234011234147%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233973234046%_))
                            ((lambda (_%g233960234159%_
                                      _%g233961234160%_
                                      _%g233962234161%_
                                      _%g233963234162%_
                                      _%g233964234163%_)
                               (let* ((_%kw-count234214%_
                                       (length (let ((__tmp236382
                                                      (lambda (_%g234206234209%_
                                                               _%g234207234211%_)
                                                        (cons _%g234206234209%_
                                                              _%g234207234211%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp236382
                                                  '()
                                                  _%g233961234160%_))))
                                      (_%self-index234216%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count234214%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g233748233916%_))
                                     (let* ((_%g234220234234%_
                                             (lambda (_%g234221234231%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g234221234231%_))))
                                            (_%g234219234357%_
                                             (lambda (_%g234221234237%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g234221234237%_))
                                                   (let ((_%e234224234239%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g234221234237%_))))
                                                     (let ((_%hd234225234242%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e234224234239%_)))
                                                           (_%tl234226234244%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e234224234239%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl234226234244%_))
                                                           (let ((_%e234227234247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl234226234244%_))))
                     (let ((_%hd234228234250%_
                            (let ()
                              (declare (not safe))
                              (##car _%e234227234247%_)))
                           (_%tl234229234252%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e234227234247%_))))
                       ((lambda (_%g234222234255%_ _%g234223234256%_)
                          (let* ((_%self234273%_
                                  (list-ref
                                   _%g234223234256%_
                                   _%self-index234216%_))
                                 (_%receiver234278%_
                                  (let ((_%$e234275%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g234222234255%_))))
                                    (if _%$e234275%_
                                        _%$e234275%_
                                        _%self234273%_))))
                            (for-each
                             (lambda (_%g234280234282%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver234278%_
                                _%method-calls232218%_
                                _%slot-refs232219%_
                                _%g234280234282%_))
                             _%g234222234255%_)
                            (if (_%no-specializer?232222%_)
                                _%stx232126%_
                                (let* ((_%specializer-id234291%_
                                        (let* ((_%id234285%_
                                                (let ((__tmp236383
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g232137232199%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp236383
                                                   '"::specialize")))
                                               (_%specializer-id234288%_
                                                (let ((__tmp236384
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx232126%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id234285%_
                                                   __tmp236384))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id234288%_))
                                          _%specializer-id234288%_))
                                       (_%$klass234293%_
                                        (let ((__tmp236385
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp236385)))
                                       (_%$method-table234295%_
                                        (let ((__tmp236386
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp236386)))
                                       (_%methods234297%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls232218%_)))
                                       (_%$methods234301%_
                                        (let ((__tmp236387
                                               (lambda (_%id234299%_)
                                                 (let ((__tmp236388
                                                        (gensym _%id234299%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp236388)))))
                                          (declare (not safe))
                                          (##map __tmp236387
                                                 _%methods234297%_)))
                                       (_%_234310%_
                                        (let ((__tmp236389
                                               (lambda (_%g234302234305%_
                                                        _%g234303234307%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls232218%_
                                                    _%g234302234305%_
                                                    _%g234303234307%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp236389
                                           _%methods234297%_
                                           _%$methods234301%_)))
                                       (_%methods-bind234320%_
                                        (let ((__tmp236390
                                               (lambda (_%g234312234315%_
                                                        _%g234313234317%_)
                                                 (_%generate-method-bind232128%_
                                                  _%$klass234293%_
                                                  _%$method-table234295%_
                                                  _%g234312234315%_
                                                  _%g234313234317%_))))
                                          (declare (not safe))
                                          (##map __tmp236390
                                                 _%methods234297%_
                                                 _%$methods234301%_)))
                                       (_%slots234322%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs232219%_)))
                                       (_%$slots234326%_
                                        (let ((__tmp236391
                                               (lambda (_%id234324%_)
                                                 (let ((__tmp236392
                                                        (gensym _%id234324%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp236392)))))
                                          (declare (not safe))
                                          (##map __tmp236391 _%slots234322%_)))
                                       (_%_234335%_
                                        (let ((__tmp236393
                                               (lambda (_%g234327234330%_
                                                        _%g234328234332%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs232219%_
                                                    _%g234327234330%_
                                                    _%g234328234332%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp236393
                                           _%slots234322%_
                                           _%$slots234326%_)))
                                       (_%slots-bind234344%_
                                        (let ((__tmp236394
                                               (lambda (_%g234336234339%_
                                                        _%g234337234341%_)
                                                 (_%generate-slot-bind232129%_
                                                  _%$klass234293%_
                                                  _%g234336234339%_
                                                  _%g234337234341%_))))
                                          (declare (not safe))
                                          (##map __tmp236394
                                                 _%slots234322%_
                                                 _%$slots234326%_)))
                                       (_%specializer-impl234352%_
                                        (let* ((_%specializer-body234350%_
                                                (map (lambda (_%g234345234347%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver234278%_
                                                        _%$klass234293%_
                                                        _%method-calls232218%_
                                                        _%slot-refs232219%_
                                                        _%g234345234347%_))
                                                     _%g234222234255%_))
                                               (__tmp236395
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g233750233918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g233749233917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp236396
                                   (cons '%#lambda
                                         (cons _%g234223234256%_
                                               _%specializer-body234350%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp236396
                               _%g233748233916%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g233747233915%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g233746233914%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp236395
                                           _%stx232126%_)))
                                       (_%specializer-impl234354%_
                                        (_%generate-specializer-impl232130%_
                                         _%$klass234293%_
                                         _%$method-table234295%_
                                         _%methods-bind234320%_
                                         _%slots-bind234344%_
                                         _%specializer-impl234352%_)))
                                  (let ((__tmp236398
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g232137232199%_)))
                                        (__tmp236397
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id234291%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp236398
                                     '" => "
                                     __tmp236397))
                                  (_%generate-specializer-def232131%_
                                   _%g232137232199%_
                                   _%specializer-id234291%_
                                   _%specializer-impl234354%_)))))
                        _%tl234229234252%_
                        _%hd234228234250%_)))
                   (_%g234220234234%_ _%g234221234237%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g234220234234%_
                                                    _%g234221234237%_)))))
                                       (_%g234219234357%_ _%g233748233916%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g233748233916%_))
                                         (let* ((_%g234361234391%_
                                                 (lambda (_%g234362234388%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g234362234388%_))))
                                                (_%g234360234955%_
                                                 (lambda (_%g234362234394%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g234362234394%_))
                                                       (let ((_%e234366234396%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g234362234394%_))))
                 (let ((_%hd234367234399%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234366234396%_)))
                       (_%tl234368234401%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234366234396%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl234368234401%_))
                       (let ((_%e234369234404%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl234368234401%_))))
                         (let ((_%hd234370234407%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e234369234404%_)))
                               (_%tl234371234409%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e234369234404%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd234370234407%_))
                               (let ((_%e234372234412%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd234370234407%_))))
                                 (let ((_%hd234373234415%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e234372234412%_)))
                                       (_%tl234374234417%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e234372234412%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd234373234415%_))
                                       (let ((_%e234375234420%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd234373234415%_))))
                                         (let ((_%hd234376234423%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e234375234420%_)))
                                               (_%tl234377234425%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e234375234420%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd234376234423%_))
                                               (let ((_%e234378234428%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd234376234423%_))))
                                                 (let ((_%hd234379234431%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e234378234428%_)))
                                                       (_%tl234380234433%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e234378234428%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl234380234433%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl234377234425%_))
                                                           (let ((_%e234381234436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl234377234425%_))))
                     (let ((_%hd234382234439%_
                            (let ()
                              (declare (not safe))
                              (##car _%e234381234436%_)))
                           (_%tl234383234441%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e234381234436%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl234383234441%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl234374234417%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl234371234409%_))
                                   (let ((_%e234384234444%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl234371234409%_))))
                                     (let ((_%hd234385234447%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234384234444%_)))
                                           (_%tl234386234449%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234384234444%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl234386234449%_))
                                           ((lambda (_%g234363234452%_
                                                     _%g234364234453%_
                                                     _%g234365234454%_)
                                              (let* ((_%g234478234492%_
                                                      (lambda (_%g234479234489%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234479234489%_))))
                                                     (_%g234477234539%_
                                                      (lambda (_%g234479234495%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234479234495%_))
                                                            (let ((_%e234482234497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234479234495%_))))
                      (let ((_%hd234483234500%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234482234497%_)))
                            (_%tl234484234502%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234482234497%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl234484234502%_))
                            (let ((_%e234485234505%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl234484234502%_))))
                              (let ((_%hd234486234508%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e234485234505%_)))
                                    (_%tl234487234510%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e234485234505%_))))
                                ((lambda (_%g234480234513%_ _%g234481234514%_)
                                   (let* ((_%self234527%_
                                           (list-ref
                                            _%g234481234514%_
                                            _%self-index234216%_))
                                          (_%receiver234532%_
                                           (let ((_%$e234529%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g234480234513%_))))
                                             (if _%$e234529%_
                                                 _%$e234529%_
                                                 _%self234527%_))))
                                     (for-each
                                      (lambda (_%g234534234536%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver234532%_
                                         _%method-calls232218%_
                                         _%slot-refs232219%_
                                         _%g234534234536%_))
                                      _%g234480234513%_)))
                                 _%tl234487234510%_
                                 _%hd234486234508%_)))
                            (_%g234478234492%_ _%g234479234495%_))))
                    (_%g234478234492%_ _%g234479234495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234477234539%_
                                                 _%g234364234453%_))
                                              (let* ((_%g234542234561%_
                                                      (lambda (_%g234543234558%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234543234558%_))))
                                                     (_%g234541234670%_
                                                      (lambda (_%g234543234564%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234543234564%_))
                                                            (let ((_%e234545234566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234543234564%_))))
                      (let ((_%hd234546234569%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234545234566%_)))
                            (_%tl234547234571%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234545234566%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl234547234571%_))
                            (let ((_g236399_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl234547234571%_
                                      '0))))
                              (begin
                                (let ((_g236400_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g236399_)
                                             (##values-length _g236399_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g236400_ 2)))
                                      (error "Context expects 2 values"
                                             _g236400_)))
                                (let ((_%target234548234574%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236399_ 0)))
                                      (_%tl234550234576%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236399_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl234550234576%_))
                                      (letrec ((_%loop234551234579%_
                                                (lambda (_%hd234549234582%_
                                                         _%clause234555234584%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd234549234582%_))
                                                      (let ((_%e234552234586%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd234549234582%_))))
                (let ((_%lp-hd234553234589%_
                       (let () (declare (not safe)) (##car _%e234552234586%_)))
                      (_%lp-tl234554234591%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e234552234586%_))))
                  (_%loop234551234579%_
                   _%lp-tl234554234591%_
                   (cons _%lp-hd234553234589%_ _%clause234555234584%_))))
              (let ((_%clause234556234594%_ (reverse _%clause234555234584%_)))
                ((lambda (_%g234544234596%_)
                   (for-each
                    (lambda (_%clause234609%_)
                      (let* ((_%g234611234622%_
                              (lambda (_%g234612234619%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g234612234619%_))))
                             (_%g234610234660%_
                              (lambda (_%g234612234625%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g234612234625%_))
                                    (let ((_%e234615234627%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g234612234625%_))))
                                      (let ((_%hd234616234630%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e234615234627%_)))
                                            (_%tl234617234632%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e234615234627%_))))
                                        ((lambda (_%g234613234635%_
                                                  _%g234614234636%_)
                                           (let* ((_%self234648%_
                                                   (list-ref
                                                    _%g234614234636%_
                                                    _%self-index234216%_))
                                                  (_%receiver234653%_
                                                   (let ((_%$e234650%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g234613234635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e234650%_
                                                         _%$e234650%_
                                                         _%self234648%_))))
                                             (for-each
                                              (lambda (_%g234655234657%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver234653%_
                                                 _%method-calls232218%_
                                                 _%slot-refs232219%_
                                                 _%g234655234657%_))
                                              _%g234613234635%_)))
                                         _%tl234617234632%_
                                         _%hd234616234630%_)))
                                    (_%g234611234622%_ _%g234612234625%_)))))
                        (_%g234610234660%_ _%clause234609%_)))
                    (let ((__tmp236401
                           (lambda (_%g234662234665%_ _%g234663234667%_)
                             (cons _%g234662234665%_ _%g234663234667%_))))
                      (declare (not safe))
                      (foldr__0 __tmp236401 '() _%g234544234596%_))))
                 _%clause234556234594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop234551234579%_
                                         _%target234548234574%_
                                         '()))
                                      (_%g234542234561%_ _%g234543234564%_)))))
                            (_%g234542234561%_ _%g234543234564%_))))
                    (_%g234542234561%_ _%g234543234564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234541234670%_
                                                 _%g234363234452%_))
                                              (if (_%no-specializer?232222%_)
                                                  _%stx232126%_
                                                  (let* ((_%specializer-id234679%_
                                                          (let* ((_%id234673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp236402
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g232137232199%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp236402 '"::specialize")))
                         (_%specializer-id234676%_
                          (let ((__tmp236403
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx232126%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id234673%_
                             __tmp236403))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id234676%_))
                    _%specializer-id234676%_))
                 (_%$klass234681%_
                  (let ((__tmp236404
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236404)))
                 (_%$method-table234683%_
                  (let ((__tmp236405
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236405)))
                 (_%methods234685%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls232218%_)))
                 (_%$methods234689%_
                  (let ((__tmp236406
                         (lambda (_%id234687%_)
                           (let ((__tmp236407 (gensym _%id234687%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236407)))))
                    (declare (not safe))
                    (##map __tmp236406 _%methods234685%_)))
                 (_%_234698%_
                  (let ((__tmp236408
                         (lambda (_%g234690234693%_ _%g234691234695%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls232218%_
                              _%g234690234693%_
                              _%g234691234695%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp236408
                     _%methods234685%_
                     _%$methods234689%_)))
                 (_%methods-bind234708%_
                  (let ((__tmp236409
                         (lambda (_%g234700234703%_ _%g234701234705%_)
                           (_%generate-method-bind232128%_
                            _%$klass234681%_
                            _%$method-table234683%_
                            _%g234700234703%_
                            _%g234701234705%_))))
                    (declare (not safe))
                    (##map __tmp236409 _%methods234685%_ _%$methods234689%_)))
                 (_%slots234710%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs232219%_)))
                 (_%$slots234714%_
                  (let ((__tmp236410
                         (lambda (_%id234712%_)
                           (let ((__tmp236411 (gensym _%id234712%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236411)))))
                    (declare (not safe))
                    (##map __tmp236410 _%slots234710%_)))
                 (_%_234723%_
                  (let ((__tmp236412
                         (lambda (_%g234715234718%_ _%g234716234720%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs232219%_
                              _%g234715234718%_
                              _%g234716234720%_)))))
                    (declare (not safe))
                    (##for-each __tmp236412 _%slots234710%_ _%$slots234714%_)))
                 (_%slots-bind234732%_
                  (let ((__tmp236413
                         (lambda (_%g234724234727%_ _%g234725234729%_)
                           (_%generate-slot-bind232129%_
                            _%$klass234681%_
                            _%g234724234727%_
                            _%g234725234729%_))))
                    (declare (not safe))
                    (##map __tmp236413 _%slots234710%_ _%$slots234714%_)))
                 (_%specializer-lambda-expr234810%_
                  (let* ((_%g234734234748%_
                          (lambda (_%g234735234745%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g234735234745%_))))
                         (_%g234733234807%_
                          (lambda (_%g234735234751%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g234735234751%_))
                                (let ((_%e234738234753%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g234735234751%_))))
                                  (let ((_%hd234739234756%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e234738234753%_)))
                                        (_%tl234740234758%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e234738234753%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl234740234758%_))
                                        (let ((_%e234741234761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl234740234758%_))))
                                          (let ((_%hd234742234764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e234741234761%_)))
                                                (_%tl234743234766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e234741234761%_))))
                                            ((lambda (_%g234736234769%_
                                                      _%g234737234770%_)
                                               (let* ((_%self234793%_
                                                       (list-ref
                                                        _%g234737234770%_
                                                        _%self-index234216%_))
                                                      (_%receiver234798%_
                                                       (let ((_%$e234795%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g234736234769%_))))
                 (if _%$e234795%_ _%$e234795%_ _%self234793%_)))
              (_%body234804%_
               (map (lambda (_%g234799234801%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver234798%_
                       _%$klass234681%_
                       _%method-calls232218%_
                       _%slot-refs232219%_
                       _%g234799234801%_))
                    _%g234736234769%_))
              (__tmp236414
               (cons '%#lambda (cons _%g234737234770%_ _%body234804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp236414
                                                  _%g234364234453%_)))
                                             _%tl234743234766%_
                                             _%hd234742234764%_)))
                                        (_%g234734234748%_
                                         _%g234735234751%_))))
                                (_%g234734234748%_ _%g234735234751%_)))))
                    (_%g234733234807%_ _%g234364234453%_)))
                 (_%specializer-case-lambda-expr234948%_
                  (let* ((_%g234812234831%_
                          (lambda (_%g234813234828%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g234813234828%_))))
                         (_%g234811234945%_
                          (lambda (_%g234813234834%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g234813234834%_))
                                (let ((_%e234815234836%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g234813234834%_))))
                                  (let ((_%hd234816234839%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e234815234836%_)))
                                        (_%tl234817234841%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e234815234836%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl234817234841%_))
                                        (let ((_g236415_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl234817234841%_
                                                  '0))))
                                          (begin
                                            (let ((_g236416_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g236415_)
                                                         (##values-length
                                                          _g236415_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g236416_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g236416_)))
                                            (let ((_%target234818234844%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g236415_
                                                      0)))
                                                  (_%tl234820234846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g236415_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl234820234846%_))
                                                  (letrec ((_%loop234821234849%_
                                                            (lambda (_%hd234819234852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause234825234854%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd234819234852%_))
                          (let ((_%e234822234856%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd234819234852%_))))
                            (let ((_%lp-hd234823234859%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234822234856%_)))
                                  (_%lp-tl234824234861%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234822234856%_))))
                              (_%loop234821234849%_
                               _%lp-tl234824234861%_
                               (cons _%lp-hd234823234859%_
                                     _%clause234825234854%_))))
                          (let ((_%clause234826234864%_
                                 (reverse _%clause234825234854%_)))
                            ((lambda (_%g234814234866%_)
                               (let* ((_%clauses234943%_
                                       (map (lambda (_%clause234880%_)
                                              (let* ((_%g234882234893%_
                                                      (lambda (_%g234883234890%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234883234890%_))))
                                                     (_%g234881234933%_
                                                      (lambda (_%g234883234896%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234883234896%_))
                                                            (let ((_%e234886234898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234883234896%_))))
                      (let ((_%hd234887234901%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234886234898%_)))
                            (_%tl234888234903%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234886234898%_))))
                        ((lambda (_%g234884234906%_ _%g234885234907%_)
                           (let* ((_%self234919%_
                                   (list-ref
                                    _%g234885234907%_
                                    _%self-index234216%_))
                                  (_%receiver234924%_
                                   (let ((_%$e234921%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g234884234906%_))))
                                     (if _%$e234921%_
                                         _%$e234921%_
                                         _%self234919%_)))
                                  (_%body234930%_
                                   (map (lambda (_%g234925234927%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver234924%_
                                           _%$klass234681%_
                                           _%method-calls232218%_
                                           _%slot-refs232219%_
                                           _%g234925234927%_))
                                        _%g234884234906%_)))
                             (cons _%g234885234907%_ _%body234930%_)))
                         _%tl234888234903%_
                         _%hd234887234901%_)))
                    (_%g234882234893%_ _%g234883234896%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234881234933%_
                                                 _%clause234880%_)))
                                            (let ((__tmp236417
                                                   (lambda (_%g234935234938%_
                                                            _%g234936234940%_)
                                                     (cons _%g234935234938%_
                                                           _%g234936234940%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp236417
                                               '()
                                               _%g234814234866%_))))
                                      (__tmp236418
                                       (cons '%#case-lambda
                                             _%clauses234943%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp236418
                                  _%g234363234452%_)))
                             _%clause234826234864%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop234821234849%_
                                                     _%target234818234844%_
                                                     '()))
                                                  (_%g234812234831%_
                                                   _%g234813234834%_)))))
                                        (_%g234812234831%_
                                         _%g234813234834%_))))
                                (_%g234812234831%_ _%g234813234834%_)))))
                    (_%g234811234945%_ _%g234363234452%_)))
                 (_%specializer-impl234950%_
                  (let ((__tmp236419
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g233750233918%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g233749233917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp236420
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g234365234454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr234810%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr234948%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp236420
                                                _%stx232126%_))
                                             '()))
                                 '())
                           (cons _%g233747233915%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g233746233914%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp236419 _%stx232126%_)))
                 (_%specializer-impl234952%_
                  (_%generate-specializer-impl232130%_
                   _%$klass234681%_
                   _%$method-table234683%_
                   _%methods-bind234708%_
                   _%slots-bind234732%_
                   _%specializer-impl234950%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp236422
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g232137232199%_)))
                                                          (__tmp236421
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id234679%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp236422
                                                       '" => "
                                                       __tmp236421))
                                                    (_%generate-specializer-def232131%_
                                                     _%g232137232199%_
                                                     _%specializer-id234679%_
                                                     _%specializer-impl234952%_))))
                                            _%hd234385234447%_
                                            _%hd234382234439%_
                                            _%hd234379234431%_)
                                           (_%g234361234391%_
                                            _%g234362234394%_))))
                                   (_%g234361234391%_ _%g234362234394%_))
                               (_%g234361234391%_ _%g234362234394%_))
                           (_%g234361234391%_ _%g234362234394%_))))
                   (_%g234361234391%_ _%g234362234394%_))
               (_%g234361234391%_ _%g234362234394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g234361234391%_
                                                _%g234362234394%_))))
                                       (_%g234361234391%_ _%g234362234394%_))))
                               (_%g234361234391%_ _%g234362234394%_))))
                       (_%g234361234391%_ _%g234362234394%_))))
               (_%g234361234391%_ _%g234362234394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g234360234955%_
                                            _%g233748233916%_))
                                         _%stx232126%_))))
                             _%hd234014234137%_
                             _%kw-ref234012234157%_
                             _%hd234002234124%_
                             _%hd233993234100%_
                             _%hd233984234076%_)
                            (_%g233958234020%_ _%g233959234023%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop234007234142%_
                                                 _%target234004234129%_
                                                 '()))
                                              (_%g233958234020%_
                                               _%g233959234023%_))))
                                      (_%g233958234020%_ _%g233959234023%_)))))
                            (_%g233958234020%_ _%g233959234023%_))
                        (_%g233958234020%_ _%g233959234023%_))
                    (_%g233958234020%_ _%g233959234023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233958234020%_
                                                     _%g233959234023%_))
                                                (_%g233958234020%_
                                                 _%g233959234023%_))
                                            (_%g233958234020%_
                                             _%g233959234023%_))))
                                    (_%g233958234020%_ _%g233959234023%_))))
                            (_%g233958234020%_ _%g233959234023%_))
                        (_%g233958234020%_ _%g233959234023%_))))
                (_%g233958234020%_ _%g233959234023%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233958234020%_
                                                     _%g233959234023%_))
                                                (_%g233958234020%_
                                                 _%g233959234023%_))))
                                        (_%g233958234020%_
                                         _%g233959234023%_))))
                                (_%g233958234020%_ _%g233959234023%_))
                            (_%g233958234020%_ _%g233959234023%_))))
                    (_%g233958234020%_ _%g233959234023%_))
                (_%g233958234020%_ _%g233959234023%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233958234020%_
                                                     _%g233959234023%_))))
                                            (_%g233958234020%_
                                             _%g233959234023%_))))
                                    (_%g233958234020%_ _%g233959234023%_))
                                (_%g233958234020%_ _%g233959234023%_))
                            (_%g233958234020%_ _%g233959234023%_))))
                    (_%g233958234020%_ _%g233959234023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233958234020%_
                                                     _%g233959234023%_))))
                                            (_%g233958234020%_
                                             _%g233959234023%_))
                                        (_%g233958234020%_ _%g233959234023%_))
                                    (_%g233958234020%_ _%g233959234023%_))))
                            (_%g233958234020%_ _%g233959234023%_)))))
                (_%g233957234959%_ _%g233747233915%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd233791233909%_
                                                    _%hd233788233901%_
                                                    _%hd233785233893%_
                                                    _%hd233782233885%_
                                                    _%hd233764233837%_)
                                                   (_%g233744233797%_
                                                    _%g233745233800%_))))
                                           (_%g233744233797%_
                                            _%g233745233800%_))
                                       (_%g233744233797%_ _%g233745233800%_))
                                   (_%g233744233797%_ _%g233745233800%_))
                               (_%g233744233797%_ _%g233745233800%_))))
                       (_%g233744233797%_ _%g233745233800%_))
                   (_%g233744233797%_ _%g233745233800%_))
               (_%g233744233797%_ _%g233745233800%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233744233797%_
                                                _%g233745233800%_))
                                           (_%g233744233797%_
                                            _%g233745233800%_))))
                                   (_%g233744233797%_ _%g233745233800%_))))
                           (_%g233744233797%_ _%g233745233800%_))))
                   (_%g233744233797%_ _%g233745233800%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233744233797%_
                                                    _%g233745233800%_))
                                               (_%g233744233797%_
                                                _%g233745233800%_))
                                           (_%g233744233797%_
                                            _%g233745233800%_))))
                                   (_%g233744233797%_ _%g233745233800%_))))
                           (_%g233744233797%_ _%g233745233800%_))
                       (_%g233744233797%_ _%g233745233800%_))))
               (_%g233744233797%_ _%g233745233800%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233744233797%_
                                                _%g233745233800%_))))
                                       (_%g233744233797%_ _%g233745233800%_))))
                               (_%g233744233797%_ _%g233745233800%_))
                           (_%g233744233797%_ _%g233745233800%_))
                       (_%g233744233797%_ _%g233745233800%_))))
               (_%g233744233797%_ _%g233745233800%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g233743234962%_
                                            _%g232136232198%_))
                                         _%stx232126%_))))))))
                  (_%__kont235189235190%_ (lambda () _%stx232126%_)))
              (let ((_%__match235218235219%_
                     (lambda (_%e232138232166%_
                              _%hd232139232169%_
                              _%tl232140232171%_
                              _%e232141232174%_
                              _%hd232142232177%_
                              _%tl232143232179%_
                              _%e232144232182%_
                              _%hd232145232185%_
                              _%tl232146232187%_
                              _%e232147232190%_
                              _%hd232148232193%_
                              _%tl232149232195%_)
                       (let ((_%g232136232198%_ _%hd232148232193%_)
                             (_%g232137232199%_ _%hd232145232185%_))
                         (if (let ((__tmp236423
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g232137232199%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp236423))
                             (_%__kont235187235188%_
                              _%g232136232198%_
                              _%g232137232199%_)
                             (_%__kont235189235190%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx235185235186%_))
                    (let ((_%e232138232166%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx235185235186%_))))
                      (let ((_%tl232140232171%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232138232166%_)))
                            (_%hd232139232169%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232138232166%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl232140232171%_))
                            (let ((_%e232141232174%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl232140232171%_))))
                              (let ((_%tl232143232179%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232141232174%_)))
                                    (_%hd232142232177%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232141232174%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd232142232177%_))
                                    (let ((_%e232144232182%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd232142232177%_))))
                                      (let ((_%tl232146232187%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232144232182%_)))
                                            (_%hd232145232185%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232144232182%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl232146232187%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl232143232179%_))
                                                (let ((_%e232147232190%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl232143232179%_))))
                                                  (let ((_%tl232149232195%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e232147232190%_)))
                                                        (_%hd232148232193%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e232147232190%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl232149232195%_))
                                                        (_%__match235218235219%_
                                                         _%e232138232166%_
                                                         _%hd232139232169%_
                                                         _%tl232140232171%_
                                                         _%e232141232174%_
                                                         _%hd232142232177%_
                                                         _%tl232143232179%_
                                                         _%e232144232182%_
                                                         _%hd232145232185%_
                                                         _%tl232146232187%_
                                                         _%e232147232190%_
                                                         _%hd232148232193%_
                                                         _%tl232149232195%_)
                                                        (_%__kont235189235190%_))))
                                                (_%__kont235189235190%_))
                                            (_%__kont235189235190%_))))
                                    (_%__kont235189235190%_))))
                            (_%__kont235189235190%_))))
                    (_%__kont235189235190%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self231978%_ _%stx231979%_)
        (let* ((_%__stx235221235222%_ _%stx231979%_)
               (_%g231982232015%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx235221235222%_)))))
          (let ((_%__kont235223235224%_
                 (lambda (_%g231984232105%_) _%g231984232105%_))
                (_%__kont235225235226%_
                 (lambda (_%g232000232044%_ _%g232001232045%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self231978%_ _%g232000232044%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx235221235222%_))
                (let ((_%e231985232065%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx235221235222%_))))
                  (let ((_%tl231987232070%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231985232065%_)))
                        (_%hd231986232068%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231985232065%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231987232070%_))
                        (let ((_%e231988232073%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl231987232070%_))))
                          (let ((_%tl231990232078%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231988232073%_)))
                                (_%hd231989232076%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231988232073%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd231989232076%_))
                                (let ((_%e231991232081%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231989232076%_))))
                                  (let ((_%tl231993232086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231991232081%_)))
                                        (_%hd231992232084%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231991232081%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd231992232084%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd231992232084%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231993232086%_))
                                                (let ((_%e231994232089%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231993232086%_))))
                                                  (let ((_%tl231996232094%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231994232089%_)))
                                                        (_%hd231995232092%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231994232089%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231996232094%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl231990232078%_))
                                                            (let ((_%e231997232097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231990232078%_))))
                      (let ((_%tl231999232102%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231997232097%_)))
                            (_%hd231998232100%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231997232097%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231999232102%_))
                            (_%__kont235223235224%_ _%hd231995232092%_)
                            (let ()
                              (declare (not safe))
                              (_%g231982232015%_)))))
                    (let () (declare (not safe)) (_%g231982232015%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl231990232078%_))
                    (let ((_%e232008232036%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231990232078%_))))
                      (let ((_%tl232010232041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232008232036%_)))
                            (_%hd232009232039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232008232036%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232010232041%_))
                            (_%__kont235225235226%_
                             _%hd232009232039%_
                             _%hd231989232076%_)
                            (let ()
                              (declare (not safe))
                              (_%g231982232015%_)))))
                    (let () (declare (not safe)) (_%g231982232015%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl231990232078%_))
                                                    (let ((_%e232008232036%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl231990232078%_))))
                                                      (let ((_%tl232010232041%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e232008232036%_)))
                    (_%hd232009232039%_
                     (let () (declare (not safe)) (##car _%e232008232036%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl232010232041%_))
                    (_%__kont235225235226%_
                     _%hd232009232039%_
                     _%hd231989232076%_)
                    (let () (declare (not safe)) (_%g231982232015%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g231982232015%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231990232078%_))
                                                (let ((_%e232008232036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231990232078%_))))
                                                  (let ((_%tl232010232041%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e232008232036%_)))
                                                        (_%hd232009232039%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e232008232036%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl232010232041%_))
                                                        (_%__kont235225235226%_
                                                         _%hd232009232039%_
                                                         _%hd231989232076%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g231982232015%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g231982232015%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl231990232078%_))
                                            (let ((_%e232008232036%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl231990232078%_))))
                                              (let ((_%tl232010232041%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232008232036%_)))
                                                    (_%hd232009232039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232008232036%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl232010232041%_))
                                                    (_%__kont235225235226%_
                                                     _%hd232009232039%_
                                                     _%hd231989232076%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g231982232015%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g231982232015%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl231990232078%_))
                                    (let ((_%e232008232036%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl231990232078%_))))
                                      (let ((_%tl232010232041%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232008232036%_)))
                                            (_%hd232009232039%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232008232036%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl232010232041%_))
                                            (_%__kont235225235226%_
                                             _%hd232009232039%_
                                             _%hd231989232076%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g231982232015%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g231982232015%_))))))
                        (let () (declare (not safe)) (_%g231982232015%_)))))
                (let () (declare (not safe)) (_%g231982232015%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self231894%_ _%stx231895%_)
        (let* ((_%g231897231918%_
                (lambda (_%g231898231915%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g231898231915%_))))
               (_%g231896231975%_
                (lambda (_%g231898231921%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g231898231921%_))
                      (let ((_%e231902231923%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231898231921%_))))
                        (let ((_%hd231903231926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231902231923%_)))
                              (_%tl231904231928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231902231923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl231904231928%_))
                              (let ((_%e231905231931%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl231904231928%_))))
                                (let ((_%hd231906231934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e231905231931%_)))
                                      (_%tl231907231936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e231905231931%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl231907231936%_))
                                      (let ((_%e231908231939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl231907231936%_))))
                                        (let ((_%hd231909231942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231908231939%_)))
                                              (_%tl231910231944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231908231939%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231910231944%_))
                                              (let ((_%e231911231947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl231910231944%_))))
                                                (let ((_%hd231912231950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231911231947%_)))
                                                      (_%tl231913231952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231911231947%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl231913231952%_))
                                                      ((lambda (_%g231899231955%_
                                                                _%g231900231956%_
                                                                _%g231901231957%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self231894%_
                                                            _%g231900231956%_)))
                                                       _%hd231912231950%_
                                                       _%hd231909231942%_
                                                       _%hd231906231934%_)
                                                      (_%g231897231918%_
                                                       _%g231898231921%_))))
                                              (_%g231897231918%_
                                               _%g231898231921%_))))
                                      (_%g231897231918%_ _%g231898231921%_))))
                              (_%g231897231918%_ _%g231898231921%_))))
                      (_%g231897231918%_ _%g231898231921%_)))))
          (_%g231896231975%_ _%stx231895%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self230859%_ _%stx230860%_)
        (let* ((_%__stx235287235288%_ _%stx230860%_)
               (_%g230868231090%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx235287235288%_)))))
          (let ((_%__kont235289235290%_
                 (lambda (_%g230870231843%_
                          _%g230871231844%_
                          _%g230872231845%_
                          _%g230873231846%_)
                   (let ((__tmp236425
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230859%_ 'methods)))
                         (__tmp236424
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230871231844%_))))
                     (declare (not safe))
                     (hash-put! __tmp236425 __tmp236424 '#t))
                   (for-each
                    (lambda (_%g231879231881%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self230859%_ _%g231879231881%_)))
                    (let ((__tmp236426
                           (lambda (_%g231883231886%_ _%g231884231888%_)
                             (cons _%g231883231886%_ _%g231884231888%_))))
                      (declare (not safe))
                      (foldr__0 __tmp236426 '() _%g230870231843%_)))))
                (_%__kont235293235294%_
                 (lambda (_%g230913231680%_
                          _%g230914231681%_
                          _%g230915231682%_
                          _%g230916231683%_
                          _%g230917231684%_)
                   (let ((__tmp236428
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230859%_ 'methods)))
                         (__tmp236427
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230914231681%_))))
                     (declare (not safe))
                     (hash-put! __tmp236428 __tmp236427 '#t))
                   (for-each
                    (lambda (_%g231724231726%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self230859%_ _%g231724231726%_)))
                    (let ((__tmp236429
                           (lambda (_%g231728231731%_ _%g231729231733%_)
                             (cons _%g231728231731%_ _%g231729231733%_))))
                      (declare (not safe))
                      (foldr__0 __tmp236429 '() _%g230913231680%_)))))
                (_%__kont235297235298%_
                 (lambda (_%g230966231515%_
                          _%g230967231516%_
                          _%g230968231517%_)
                   (let ((__tmp236431
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230859%_ 'slots)))
                         (__tmp236430
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230966231515%_))))
                     (declare (not safe))
                     (hash-put! __tmp236431 __tmp236430 '#t))))
                (_%__kont235299235300%_
                 (lambda (_%g230999231392%_
                          _%g231000231393%_
                          _%g231001231394%_
                          _%g231002231395%_)
                   (let ((__tmp236433
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230859%_ 'slots)))
                         (__tmp236432
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g231000231393%_))))
                     (declare (not safe))
                     (hash-put! __tmp236433 __tmp236432 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self230859%_ _%g230999231392%_))))
                (_%__kont235301235302%_
                 (lambda (_%g231036231266%_ _%g231037231267%_)
                   (let* ((_%accessor231289%_
                           (let ((__tmp236434
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g231037231267%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp236434)))
                          (_%klass231291%_
                           (let ((__tmp236435
                                  (##structure-ref
                                   _%accessor231289%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx230860%_
                              __tmp236435)))
                          (_%slot231293%_
                           (##structure-ref
                            _%accessor231289%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor231289%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass231291%_
                                    _%slot231293%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass231291%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp236437
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self230859%_ 'slots)))
                               (__tmp236436
                                (##structure-ref
                                 _%accessor231289%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp236437 __tmp236436 '#t))))))
                (_%__kont235303235304%_
                 (lambda (_%g231059231166%_
                          _%g231060231167%_
                          _%g231061231168%_)
                   (let* ((_%mutator231195%_
                           (let ((__tmp236438
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g231061231168%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp236438)))
                          (_%klass231197%_
                           (let ((__tmp236439
                                  (##structure-ref
                                   _%mutator231195%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx230860%_
                              __tmp236439)))
                          (_%slot231199%_
                           (##structure-ref
                            _%mutator231195%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator231195%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass231197%_
                                    _%slot231199%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass231197%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp236440
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self230859%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp236440 _%slot231199%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self230859%_ _%g231059231166%_)))))
                (_%__kont235305235306%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self230859%_ _%stx230860%_)))))
            (let* ((_%__match235786235787%_
                    (lambda (_%e231062231102%_
                             _%hd231063231105%_
                             _%tl231064231107%_
                             _%e231065231110%_
                             _%hd231066231113%_
                             _%tl231067231115%_
                             _%e231068231118%_
                             _%hd231069231121%_
                             _%tl231070231123%_
                             _%e231071231126%_
                             _%hd231072231129%_
                             _%tl231073231131%_
                             _%e231074231134%_
                             _%hd231075231137%_
                             _%tl231076231139%_
                             _%e231077231142%_
                             _%hd231078231145%_
                             _%tl231079231147%_
                             _%e231080231150%_
                             _%hd231081231153%_
                             _%tl231082231155%_
                             _%e231083231158%_
                             _%hd231084231161%_
                             _%tl231085231163%_)
                      (let ((_%g231059231166%_ _%hd231084231161%_)
                            (_%g231060231167%_ _%hd231081231153%_)
                            (_%g231061231168%_ _%hd231072231129%_))
                        (if (and (let ((__tmp236441
                                        (let ((__tmp236442
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g231061231168%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp236442))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp236441
                                    'gxc#!mutator::t))
                                 (let ((__tmp236443
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230859%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231060231167%_
                                    __tmp236443)))
                            (_%__kont235303235304%_
                             _%g231059231166%_
                             _%g231060231167%_
                             _%g231061231168%_)
                            (_%__kont235305235306%_)))))
                   (_%__match235784235785%_
                    (lambda (_%e231062231102%_
                             _%hd231063231105%_
                             _%tl231064231107%_
                             _%e231065231110%_
                             _%hd231066231113%_
                             _%tl231067231115%_
                             _%e231068231118%_
                             _%hd231069231121%_
                             _%tl231070231123%_
                             _%e231071231126%_
                             _%hd231072231129%_
                             _%tl231073231131%_
                             _%e231074231134%_
                             _%hd231075231137%_
                             _%tl231076231139%_
                             _%e231077231142%_
                             _%hd231078231145%_
                             _%tl231079231147%_
                             _%e231080231150%_
                             _%hd231081231153%_
                             _%tl231082231155%_
                             _%e231083231158%_
                             _%hd231084231161%_
                             _%tl231085231163%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl231085231163%_))
                          (_%__match235786235787%_
                           _%e231062231102%_
                           _%hd231063231105%_
                           _%tl231064231107%_
                           _%e231065231110%_
                           _%hd231066231113%_
                           _%tl231067231115%_
                           _%e231068231118%_
                           _%hd231069231121%_
                           _%tl231070231123%_
                           _%e231071231126%_
                           _%hd231072231129%_
                           _%tl231073231131%_
                           _%e231074231134%_
                           _%hd231075231137%_
                           _%tl231076231139%_
                           _%e231077231142%_
                           _%hd231078231145%_
                           _%tl231079231147%_
                           _%e231080231150%_
                           _%hd231081231153%_
                           _%tl231082231155%_
                           _%e231083231158%_
                           _%hd231084231161%_
                           _%tl231085231163%_)
                          (_%__kont235305235306%_))))
                   (_%__match235778235779%_
                    (lambda (_%e231062231102%_
                             _%hd231063231105%_
                             _%tl231064231107%_
                             _%e231065231110%_
                             _%hd231066231113%_
                             _%tl231067231115%_
                             _%e231068231118%_
                             _%hd231069231121%_
                             _%tl231070231123%_
                             _%e231071231126%_
                             _%hd231072231129%_
                             _%tl231073231131%_
                             _%e231074231134%_
                             _%hd231075231137%_
                             _%tl231076231139%_
                             _%e231077231142%_
                             _%hd231078231145%_
                             _%tl231079231147%_
                             _%e231080231150%_
                             _%hd231081231153%_
                             _%tl231082231155%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231076231139%_))
                          (let ((_%e231083231158%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231076231139%_))))
                            (let ((_%tl231085231163%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231083231158%_)))
                                  (_%hd231084231161%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231083231158%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231085231163%_))
                                  (_%__match235786235787%_
                                   _%e231062231102%_
                                   _%hd231063231105%_
                                   _%tl231064231107%_
                                   _%e231065231110%_
                                   _%hd231066231113%_
                                   _%tl231067231115%_
                                   _%e231068231118%_
                                   _%hd231069231121%_
                                   _%tl231070231123%_
                                   _%e231071231126%_
                                   _%hd231072231129%_
                                   _%tl231073231131%_
                                   _%e231074231134%_
                                   _%hd231075231137%_
                                   _%tl231076231139%_
                                   _%e231077231142%_
                                   _%hd231078231145%_
                                   _%tl231079231147%_
                                   _%e231080231150%_
                                   _%hd231081231153%_
                                   _%tl231082231155%_
                                   _%e231083231158%_
                                   _%hd231084231161%_
                                   _%tl231085231163%_)
                                  (_%__kont235305235306%_))))
                          (_%__kont235305235306%_))))
                   (_%__match235724235725%_
                    (lambda (_%e231038231210%_
                             _%hd231039231213%_
                             _%tl231040231215%_
                             _%e231041231218%_
                             _%hd231042231221%_
                             _%tl231043231223%_
                             _%e231044231226%_
                             _%hd231045231229%_
                             _%tl231046231231%_
                             _%e231047231234%_
                             _%hd231048231237%_
                             _%tl231049231239%_
                             _%e231050231242%_
                             _%hd231051231245%_
                             _%tl231052231247%_
                             _%e231053231250%_
                             _%hd231054231253%_
                             _%tl231055231255%_
                             _%e231056231258%_
                             _%hd231057231261%_
                             _%tl231058231263%_)
                      (let ((_%g231036231266%_ _%hd231057231261%_)
                            (_%g231037231267%_ _%hd231048231237%_))
                        (if (and (let ((__tmp236444
                                        (let ((__tmp236445
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g231037231267%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp236445))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp236444
                                    'gxc#!accessor::t))
                                 (let ((__tmp236446
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230859%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231036231266%_
                                    __tmp236446)))
                            (_%__kont235301235302%_
                             _%g231036231266%_
                             _%g231037231267%_)
                            (_%__kont235305235306%_)))))
                   (_%__match235722235723%_
                    (lambda (_%e231038231210%_
                             _%hd231039231213%_
                             _%tl231040231215%_
                             _%e231041231218%_
                             _%hd231042231221%_
                             _%tl231043231223%_
                             _%e231044231226%_
                             _%hd231045231229%_
                             _%tl231046231231%_
                             _%e231047231234%_
                             _%hd231048231237%_
                             _%tl231049231239%_
                             _%e231050231242%_
                             _%hd231051231245%_
                             _%tl231052231247%_
                             _%e231053231250%_
                             _%hd231054231253%_
                             _%tl231055231255%_
                             _%e231056231258%_
                             _%hd231057231261%_
                             _%tl231058231263%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl231052231247%_))
                          (_%__match235724235725%_
                           _%e231038231210%_
                           _%hd231039231213%_
                           _%tl231040231215%_
                           _%e231041231218%_
                           _%hd231042231221%_
                           _%tl231043231223%_
                           _%e231044231226%_
                           _%hd231045231229%_
                           _%tl231046231231%_
                           _%e231047231234%_
                           _%hd231048231237%_
                           _%tl231049231239%_
                           _%e231050231242%_
                           _%hd231051231245%_
                           _%tl231052231247%_
                           _%e231053231250%_
                           _%hd231054231253%_
                           _%tl231055231255%_
                           _%e231056231258%_
                           _%hd231057231261%_
                           _%tl231058231263%_)
                          (_%__match235778235779%_
                           _%e231038231210%_
                           _%hd231039231213%_
                           _%tl231040231215%_
                           _%e231041231218%_
                           _%hd231042231221%_
                           _%tl231043231223%_
                           _%e231044231226%_
                           _%hd231045231229%_
                           _%tl231046231231%_
                           _%e231047231234%_
                           _%hd231048231237%_
                           _%tl231049231239%_
                           _%e231050231242%_
                           _%hd231051231245%_
                           _%tl231052231247%_
                           _%e231053231250%_
                           _%hd231054231253%_
                           _%tl231055231255%_
                           _%e231056231258%_
                           _%hd231057231261%_
                           _%tl231058231263%_))))
                   (_%__match235668235669%_
                    (lambda (_%e231003231304%_
                             _%hd231004231307%_
                             _%tl231005231309%_
                             _%e231006231312%_
                             _%hd231007231315%_
                             _%tl231008231317%_
                             _%e231009231320%_
                             _%hd231010231323%_
                             _%tl231011231325%_
                             _%e231012231328%_
                             _%hd231013231331%_
                             _%tl231014231333%_
                             _%e231015231336%_
                             _%hd231016231339%_
                             _%tl231017231341%_
                             _%e231018231344%_
                             _%hd231019231347%_
                             _%tl231020231349%_
                             _%e231021231352%_
                             _%hd231022231355%_
                             _%tl231023231357%_
                             _%e231024231360%_
                             _%hd231025231363%_
                             _%tl231026231365%_
                             _%e231027231368%_
                             _%hd231028231371%_
                             _%tl231029231373%_
                             _%e231030231376%_
                             _%hd231031231379%_
                             _%tl231032231381%_
                             _%e231033231384%_
                             _%hd231034231387%_
                             _%tl231035231389%_)
                      (let ((_%g230999231392%_ _%hd231034231387%_)
                            (_%g231000231393%_ _%hd231031231379%_)
                            (_%g231001231394%_ _%hd231022231355%_)
                            (_%g231002231395%_ _%hd231013231331%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g231002231395%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g231002231395%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp236447
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230859%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231001231394%_
                                    __tmp236447)))
                            (_%__kont235299235300%_
                             _%g230999231392%_
                             _%g231000231393%_
                             _%g231001231394%_
                             _%g231002231395%_)
                            (_%__kont235305235306%_)))))
                   (_%__match235660235661%_
                    (lambda (_%e231003231304%_
                             _%hd231004231307%_
                             _%tl231005231309%_
                             _%e231006231312%_
                             _%hd231007231315%_
                             _%tl231008231317%_
                             _%e231009231320%_
                             _%hd231010231323%_
                             _%tl231011231325%_
                             _%e231012231328%_
                             _%hd231013231331%_
                             _%tl231014231333%_
                             _%e231015231336%_
                             _%hd231016231339%_
                             _%tl231017231341%_
                             _%e231018231344%_
                             _%hd231019231347%_
                             _%tl231020231349%_
                             _%e231021231352%_
                             _%hd231022231355%_
                             _%tl231023231357%_
                             _%e231024231360%_
                             _%hd231025231363%_
                             _%tl231026231365%_
                             _%e231027231368%_
                             _%hd231028231371%_
                             _%tl231029231373%_
                             _%e231030231376%_
                             _%hd231031231379%_
                             _%tl231032231381%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231026231365%_))
                          (let ((_%e231033231384%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231026231365%_))))
                            (let ((_%tl231035231389%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231033231384%_)))
                                  (_%hd231034231387%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231033231384%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231035231389%_))
                                  (_%__match235668235669%_
                                   _%e231003231304%_
                                   _%hd231004231307%_
                                   _%tl231005231309%_
                                   _%e231006231312%_
                                   _%hd231007231315%_
                                   _%tl231008231317%_
                                   _%e231009231320%_
                                   _%hd231010231323%_
                                   _%tl231011231325%_
                                   _%e231012231328%_
                                   _%hd231013231331%_
                                   _%tl231014231333%_
                                   _%e231015231336%_
                                   _%hd231016231339%_
                                   _%tl231017231341%_
                                   _%e231018231344%_
                                   _%hd231019231347%_
                                   _%tl231020231349%_
                                   _%e231021231352%_
                                   _%hd231022231355%_
                                   _%tl231023231357%_
                                   _%e231024231360%_
                                   _%hd231025231363%_
                                   _%tl231026231365%_
                                   _%e231027231368%_
                                   _%hd231028231371%_
                                   _%tl231029231373%_
                                   _%e231030231376%_
                                   _%hd231031231379%_
                                   _%tl231032231381%_
                                   _%e231033231384%_
                                   _%hd231034231387%_
                                   _%tl231035231389%_)
                                  (_%__kont235305235306%_))))
                          (_%__match235784235785%_
                           _%e231003231304%_
                           _%hd231004231307%_
                           _%tl231005231309%_
                           _%e231006231312%_
                           _%hd231007231315%_
                           _%tl231008231317%_
                           _%e231009231320%_
                           _%hd231010231323%_
                           _%tl231011231325%_
                           _%e231012231328%_
                           _%hd231013231331%_
                           _%tl231014231333%_
                           _%e231015231336%_
                           _%hd231016231339%_
                           _%tl231017231341%_
                           _%e231018231344%_
                           _%hd231019231347%_
                           _%tl231020231349%_
                           _%e231021231352%_
                           _%hd231022231355%_
                           _%tl231023231357%_
                           _%e231024231360%_
                           _%hd231025231363%_
                           _%tl231026231365%_))))
                   (_%__match235582235583%_
                    (lambda (_%e230969231435%_
                             _%hd230970231438%_
                             _%tl230971231440%_
                             _%e230972231443%_
                             _%hd230973231446%_
                             _%tl230974231448%_
                             _%e230975231451%_
                             _%hd230976231454%_
                             _%tl230977231456%_
                             _%e230978231459%_
                             _%hd230979231462%_
                             _%tl230980231464%_
                             _%e230981231467%_
                             _%hd230982231470%_
                             _%tl230983231472%_
                             _%e230984231475%_
                             _%hd230985231478%_
                             _%tl230986231480%_
                             _%e230987231483%_
                             _%hd230988231486%_
                             _%tl230989231488%_
                             _%e230990231491%_
                             _%hd230991231494%_
                             _%tl230992231496%_
                             _%e230993231499%_
                             _%hd230994231502%_
                             _%tl230995231504%_
                             _%e230996231507%_
                             _%hd230997231510%_
                             _%tl230998231512%_)
                      (let ((_%g230966231515%_ _%hd230997231510%_)
                            (_%g230967231516%_ _%hd230988231486%_)
                            (_%g230968231517%_ _%hd230979231462%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230968231517%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230968231517%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp236448
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230859%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230967231516%_
                                    __tmp236448)))
                            (_%__kont235297235298%_
                             _%g230966231515%_
                             _%g230967231516%_
                             _%g230968231517%_)
                            (_%__match235786235787%_
                             _%e230969231435%_
                             _%hd230970231438%_
                             _%tl230971231440%_
                             _%e230972231443%_
                             _%hd230973231446%_
                             _%tl230974231448%_
                             _%e230975231451%_
                             _%hd230976231454%_
                             _%tl230977231456%_
                             _%e230978231459%_
                             _%hd230979231462%_
                             _%tl230980231464%_
                             _%e230981231467%_
                             _%hd230982231470%_
                             _%tl230983231472%_
                             _%e230984231475%_
                             _%hd230985231478%_
                             _%tl230986231480%_
                             _%e230987231483%_
                             _%hd230988231486%_
                             _%tl230989231488%_
                             _%e230990231491%_
                             _%hd230991231494%_
                             _%tl230992231496%_)))))
                   (_%__match235580235581%_
                    (lambda (_%e230969231435%_
                             _%hd230970231438%_
                             _%tl230971231440%_
                             _%e230972231443%_
                             _%hd230973231446%_
                             _%tl230974231448%_
                             _%e230975231451%_
                             _%hd230976231454%_
                             _%tl230977231456%_
                             _%e230978231459%_
                             _%hd230979231462%_
                             _%tl230980231464%_
                             _%e230981231467%_
                             _%hd230982231470%_
                             _%tl230983231472%_
                             _%e230984231475%_
                             _%hd230985231478%_
                             _%tl230986231480%_
                             _%e230987231483%_
                             _%hd230988231486%_
                             _%tl230989231488%_
                             _%e230990231491%_
                             _%hd230991231494%_
                             _%tl230992231496%_
                             _%e230993231499%_
                             _%hd230994231502%_
                             _%tl230995231504%_
                             _%e230996231507%_
                             _%hd230997231510%_
                             _%tl230998231512%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230992231496%_))
                          (_%__match235582235583%_
                           _%e230969231435%_
                           _%hd230970231438%_
                           _%tl230971231440%_
                           _%e230972231443%_
                           _%hd230973231446%_
                           _%tl230974231448%_
                           _%e230975231451%_
                           _%hd230976231454%_
                           _%tl230977231456%_
                           _%e230978231459%_
                           _%hd230979231462%_
                           _%tl230980231464%_
                           _%e230981231467%_
                           _%hd230982231470%_
                           _%tl230983231472%_
                           _%e230984231475%_
                           _%hd230985231478%_
                           _%tl230986231480%_
                           _%e230987231483%_
                           _%hd230988231486%_
                           _%tl230989231488%_
                           _%e230990231491%_
                           _%hd230991231494%_
                           _%tl230992231496%_
                           _%e230993231499%_
                           _%hd230994231502%_
                           _%tl230995231504%_
                           _%e230996231507%_
                           _%hd230997231510%_
                           _%tl230998231512%_)
                          (_%__match235660235661%_
                           _%e230969231435%_
                           _%hd230970231438%_
                           _%tl230971231440%_
                           _%e230972231443%_
                           _%hd230973231446%_
                           _%tl230974231448%_
                           _%e230975231451%_
                           _%hd230976231454%_
                           _%tl230977231456%_
                           _%e230978231459%_
                           _%hd230979231462%_
                           _%tl230980231464%_
                           _%e230981231467%_
                           _%hd230982231470%_
                           _%tl230983231472%_
                           _%e230984231475%_
                           _%hd230985231478%_
                           _%tl230986231480%_
                           _%e230987231483%_
                           _%hd230988231486%_
                           _%tl230989231488%_
                           _%e230990231491%_
                           _%hd230991231494%_
                           _%tl230992231496%_
                           _%e230993231499%_
                           _%hd230994231502%_
                           _%tl230995231504%_
                           _%e230996231507%_
                           _%hd230997231510%_
                           _%tl230998231512%_))))
                   (_%__match235570235571%_
                    (lambda (_%e230969231435%_
                             _%hd230970231438%_
                             _%tl230971231440%_
                             _%e230972231443%_
                             _%hd230973231446%_
                             _%tl230974231448%_
                             _%e230975231451%_
                             _%hd230976231454%_
                             _%tl230977231456%_
                             _%e230978231459%_
                             _%hd230979231462%_
                             _%tl230980231464%_
                             _%e230981231467%_
                             _%hd230982231470%_
                             _%tl230983231472%_
                             _%e230984231475%_
                             _%hd230985231478%_
                             _%tl230986231480%_
                             _%e230987231483%_
                             _%hd230988231486%_
                             _%tl230989231488%_
                             _%e230990231491%_
                             _%hd230991231494%_
                             _%tl230992231496%_
                             _%e230993231499%_
                             _%hd230994231502%_
                             _%tl230995231504%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd230994231502%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230995231504%_))
                              (let ((_%e230996231507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230995231504%_))))
                                (let ((_%tl230998231512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230996231507%_)))
                                      (_%hd230997231510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230996231507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230998231512%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl230992231496%_))
                                          (_%__match235582235583%_
                                           _%e230969231435%_
                                           _%hd230970231438%_
                                           _%tl230971231440%_
                                           _%e230972231443%_
                                           _%hd230973231446%_
                                           _%tl230974231448%_
                                           _%e230975231451%_
                                           _%hd230976231454%_
                                           _%tl230977231456%_
                                           _%e230978231459%_
                                           _%hd230979231462%_
                                           _%tl230980231464%_
                                           _%e230981231467%_
                                           _%hd230982231470%_
                                           _%tl230983231472%_
                                           _%e230984231475%_
                                           _%hd230985231478%_
                                           _%tl230986231480%_
                                           _%e230987231483%_
                                           _%hd230988231486%_
                                           _%tl230989231488%_
                                           _%e230990231491%_
                                           _%hd230991231494%_
                                           _%tl230992231496%_
                                           _%e230993231499%_
                                           _%hd230994231502%_
                                           _%tl230995231504%_
                                           _%e230996231507%_
                                           _%hd230997231510%_
                                           _%tl230998231512%_)
                                          (_%__match235660235661%_
                                           _%e230969231435%_
                                           _%hd230970231438%_
                                           _%tl230971231440%_
                                           _%e230972231443%_
                                           _%hd230973231446%_
                                           _%tl230974231448%_
                                           _%e230975231451%_
                                           _%hd230976231454%_
                                           _%tl230977231456%_
                                           _%e230978231459%_
                                           _%hd230979231462%_
                                           _%tl230980231464%_
                                           _%e230981231467%_
                                           _%hd230982231470%_
                                           _%tl230983231472%_
                                           _%e230984231475%_
                                           _%hd230985231478%_
                                           _%tl230986231480%_
                                           _%e230987231483%_
                                           _%hd230988231486%_
                                           _%tl230989231488%_
                                           _%e230990231491%_
                                           _%hd230991231494%_
                                           _%tl230992231496%_
                                           _%e230993231499%_
                                           _%hd230994231502%_
                                           _%tl230995231504%_
                                           _%e230996231507%_
                                           _%hd230997231510%_
                                           _%tl230998231512%_))
                                      (_%__match235784235785%_
                                       _%e230969231435%_
                                       _%hd230970231438%_
                                       _%tl230971231440%_
                                       _%e230972231443%_
                                       _%hd230973231446%_
                                       _%tl230974231448%_
                                       _%e230975231451%_
                                       _%hd230976231454%_
                                       _%tl230977231456%_
                                       _%e230978231459%_
                                       _%hd230979231462%_
                                       _%tl230980231464%_
                                       _%e230981231467%_
                                       _%hd230982231470%_
                                       _%tl230983231472%_
                                       _%e230984231475%_
                                       _%hd230985231478%_
                                       _%tl230986231480%_
                                       _%e230987231483%_
                                       _%hd230988231486%_
                                       _%tl230989231488%_
                                       _%e230990231491%_
                                       _%hd230991231494%_
                                       _%tl230992231496%_))))
                              (_%__match235784235785%_
                               _%e230969231435%_
                               _%hd230970231438%_
                               _%tl230971231440%_
                               _%e230972231443%_
                               _%hd230973231446%_
                               _%tl230974231448%_
                               _%e230975231451%_
                               _%hd230976231454%_
                               _%tl230977231456%_
                               _%e230978231459%_
                               _%hd230979231462%_
                               _%tl230980231464%_
                               _%e230981231467%_
                               _%hd230982231470%_
                               _%tl230983231472%_
                               _%e230984231475%_
                               _%hd230985231478%_
                               _%tl230986231480%_
                               _%e230987231483%_
                               _%hd230988231486%_
                               _%tl230989231488%_
                               _%e230990231491%_
                               _%hd230991231494%_
                               _%tl230992231496%_))
                          (_%__match235784235785%_
                           _%e230969231435%_
                           _%hd230970231438%_
                           _%tl230971231440%_
                           _%e230972231443%_
                           _%hd230973231446%_
                           _%tl230974231448%_
                           _%e230975231451%_
                           _%hd230976231454%_
                           _%tl230977231456%_
                           _%e230978231459%_
                           _%hd230979231462%_
                           _%tl230980231464%_
                           _%e230981231467%_
                           _%hd230982231470%_
                           _%tl230983231472%_
                           _%e230984231475%_
                           _%hd230985231478%_
                           _%tl230986231480%_
                           _%e230987231483%_
                           _%hd230988231486%_
                           _%tl230989231488%_
                           _%e230990231491%_
                           _%hd230991231494%_
                           _%tl230992231496%_))))
                   (_%__match235502235503%_
                    (lambda (_%e230918231554%_
                             _%hd230919231557%_
                             _%tl230920231559%_
                             _%e230921231562%_
                             _%hd230922231565%_
                             _%tl230923231567%_
                             _%e230924231570%_
                             _%hd230925231573%_
                             _%tl230926231575%_
                             _%e230927231578%_
                             _%hd230928231581%_
                             _%tl230929231583%_
                             _%e230930231586%_
                             _%hd230931231589%_
                             _%tl230932231591%_
                             _%e230933231594%_
                             _%hd230934231597%_
                             _%tl230935231599%_
                             _%e230936231602%_
                             _%hd230937231605%_
                             _%tl230938231607%_
                             _%e230939231610%_
                             _%hd230940231613%_
                             _%tl230941231615%_
                             _%e230942231618%_
                             _%hd230943231621%_
                             _%tl230944231623%_
                             _%e230945231626%_
                             _%hd230946231629%_
                             _%tl230947231631%_
                             _%e230948231634%_
                             _%hd230949231637%_
                             _%tl230950231639%_
                             _%e230951231642%_
                             _%hd230952231645%_
                             _%tl230953231647%_
                             _%e230954231650%_
                             _%hd230955231653%_
                             _%tl230956231655%_
                             _%__splice235295235296%_
                             _%target230957231658%_
                             _%tl230959231660%_)
                      (letrec ((_%loop230960231663%_
                                (lambda (_%hd230958231666%_
                                         _%args230964231668%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd230958231666%_))
                                      (let ((_%e230961231670%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd230958231666%_))))
                                        (let ((_%lp-tl230963231675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230961231670%_)))
                                              (_%lp-hd230962231673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230961231670%_))))
                                          (_%loop230960231663%_
                                           _%lp-tl230963231675%_
                                           (cons _%lp-hd230962231673%_
                                                 _%args230964231668%_))))
                                      (let ((_%args230965231678%_
                                             (reverse _%args230964231668%_)))
                                        (let ((_%g230913231680%_
                                               _%args230965231678%_)
                                              (_%g230914231681%_
                                               _%hd230955231653%_)
                                              (_%g230915231682%_
                                               _%hd230946231629%_)
                                              (_%g230916231683%_
                                               _%hd230937231605%_)
                                              (_%g230917231684%_
                                               _%hd230928231581%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230917231684%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230916231683%_
                                                      'call-method))
                                                   (let ((__tmp236449
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self230859%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g230915231682%_
                                                      __tmp236449)))
                                              (_%__kont235293235294%_
                                               _%g230913231680%_
                                               _%g230914231681%_
                                               _%g230915231682%_
                                               _%g230916231683%_
                                               _%g230917231684%_)
                                              (_%__kont235305235306%_))))))))
                        (_%loop230960231663%_ _%target230957231658%_ '()))))
                   (_%__match235460235461%_
                    (lambda (_%e230918231554%_
                             _%hd230919231557%_
                             _%tl230920231559%_
                             _%e230921231562%_
                             _%hd230922231565%_
                             _%tl230923231567%_
                             _%e230924231570%_
                             _%hd230925231573%_
                             _%tl230926231575%_
                             _%e230927231578%_
                             _%hd230928231581%_
                             _%tl230929231583%_
                             _%e230930231586%_
                             _%hd230931231589%_
                             _%tl230932231591%_
                             _%e230933231594%_
                             _%hd230934231597%_
                             _%tl230935231599%_
                             _%e230936231602%_
                             _%hd230937231605%_
                             _%tl230938231607%_
                             _%e230939231610%_
                             _%hd230940231613%_
                             _%tl230941231615%_
                             _%e230942231618%_
                             _%hd230943231621%_
                             _%tl230944231623%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd230943231621%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230944231623%_))
                              (let ((_%e230945231626%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230944231623%_))))
                                (let ((_%tl230947231631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230945231626%_)))
                                      (_%hd230946231629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230945231626%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230947231631%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl230941231615%_))
                                          (let ((_%e230948231634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl230941231615%_))))
                                            (let ((_%tl230950231639%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e230948231634%_)))
                                                  (_%hd230949231637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e230948231634%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd230949231637%_))
                                                  (let ((_%e230951231642%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd230949231637%_))))
                                                    (let ((_%tl230953231647%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230951231642%_)))
                                                          (_%hd230952231645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230951231642%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd230952231645%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd230952231645%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230953231647%_))
                          (let ((_%e230954231650%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230953231647%_))))
                            (let ((_%tl230956231655%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230954231650%_)))
                                  (_%hd230955231653%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230954231650%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230956231655%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230950231639%_))
                                      (let ((_%__splice235295235296%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl230950231639%_
                                                '0))))
                                        (let ((_%tl230959231660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice235295235296%_
                                                  '1)))
                                              (_%target230957231658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice235295235296%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230959231660%_))
                                              (_%__match235502235503%_
                                               _%e230918231554%_
                                               _%hd230919231557%_
                                               _%tl230920231559%_
                                               _%e230921231562%_
                                               _%hd230922231565%_
                                               _%tl230923231567%_
                                               _%e230924231570%_
                                               _%hd230925231573%_
                                               _%tl230926231575%_
                                               _%e230927231578%_
                                               _%hd230928231581%_
                                               _%tl230929231583%_
                                               _%e230930231586%_
                                               _%hd230931231589%_
                                               _%tl230932231591%_
                                               _%e230933231594%_
                                               _%hd230934231597%_
                                               _%tl230935231599%_
                                               _%e230936231602%_
                                               _%hd230937231605%_
                                               _%tl230938231607%_
                                               _%e230939231610%_
                                               _%hd230940231613%_
                                               _%tl230941231615%_
                                               _%e230942231618%_
                                               _%hd230943231621%_
                                               _%tl230944231623%_
                                               _%e230945231626%_
                                               _%hd230946231629%_
                                               _%tl230947231631%_
                                               _%e230948231634%_
                                               _%hd230949231637%_
                                               _%tl230950231639%_
                                               _%e230951231642%_
                                               _%hd230952231645%_
                                               _%tl230953231647%_
                                               _%e230954231650%_
                                               _%hd230955231653%_
                                               _%tl230956231655%_
                                               _%__splice235295235296%_
                                               _%target230957231658%_
                                               _%tl230959231660%_)
                                              (_%__kont235305235306%_))))
                                      (_%__kont235305235306%_))
                                  (_%__kont235305235306%_))))
                          (_%__kont235305235306%_))
                      (_%__kont235305235306%_))
                  (_%__kont235305235306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235305235306%_))))
                                          (_%__match235784235785%_
                                           _%e230918231554%_
                                           _%hd230919231557%_
                                           _%tl230920231559%_
                                           _%e230921231562%_
                                           _%hd230922231565%_
                                           _%tl230923231567%_
                                           _%e230924231570%_
                                           _%hd230925231573%_
                                           _%tl230926231575%_
                                           _%e230927231578%_
                                           _%hd230928231581%_
                                           _%tl230929231583%_
                                           _%e230930231586%_
                                           _%hd230931231589%_
                                           _%tl230932231591%_
                                           _%e230933231594%_
                                           _%hd230934231597%_
                                           _%tl230935231599%_
                                           _%e230936231602%_
                                           _%hd230937231605%_
                                           _%tl230938231607%_
                                           _%e230939231610%_
                                           _%hd230940231613%_
                                           _%tl230941231615%_))
                                      (_%__match235784235785%_
                                       _%e230918231554%_
                                       _%hd230919231557%_
                                       _%tl230920231559%_
                                       _%e230921231562%_
                                       _%hd230922231565%_
                                       _%tl230923231567%_
                                       _%e230924231570%_
                                       _%hd230925231573%_
                                       _%tl230926231575%_
                                       _%e230927231578%_
                                       _%hd230928231581%_
                                       _%tl230929231583%_
                                       _%e230930231586%_
                                       _%hd230931231589%_
                                       _%tl230932231591%_
                                       _%e230933231594%_
                                       _%hd230934231597%_
                                       _%tl230935231599%_
                                       _%e230936231602%_
                                       _%hd230937231605%_
                                       _%tl230938231607%_
                                       _%e230939231610%_
                                       _%hd230940231613%_
                                       _%tl230941231615%_))))
                              (_%__match235784235785%_
                               _%e230918231554%_
                               _%hd230919231557%_
                               _%tl230920231559%_
                               _%e230921231562%_
                               _%hd230922231565%_
                               _%tl230923231567%_
                               _%e230924231570%_
                               _%hd230925231573%_
                               _%tl230926231575%_
                               _%e230927231578%_
                               _%hd230928231581%_
                               _%tl230929231583%_
                               _%e230930231586%_
                               _%hd230931231589%_
                               _%tl230932231591%_
                               _%e230933231594%_
                               _%hd230934231597%_
                               _%tl230935231599%_
                               _%e230936231602%_
                               _%hd230937231605%_
                               _%tl230938231607%_
                               _%e230939231610%_
                               _%hd230940231613%_
                               _%tl230941231615%_))
                          (_%__match235570235571%_
                           _%e230918231554%_
                           _%hd230919231557%_
                           _%tl230920231559%_
                           _%e230921231562%_
                           _%hd230922231565%_
                           _%tl230923231567%_
                           _%e230924231570%_
                           _%hd230925231573%_
                           _%tl230926231575%_
                           _%e230927231578%_
                           _%hd230928231581%_
                           _%tl230929231583%_
                           _%e230930231586%_
                           _%hd230931231589%_
                           _%tl230932231591%_
                           _%e230933231594%_
                           _%hd230934231597%_
                           _%tl230935231599%_
                           _%e230936231602%_
                           _%hd230937231605%_
                           _%tl230938231607%_
                           _%e230939231610%_
                           _%hd230940231613%_
                           _%tl230941231615%_
                           _%e230942231618%_
                           _%hd230943231621%_
                           _%tl230944231623%_))))
                   (_%__match235392235393%_
                    (lambda (_%e230874231741%_
                             _%hd230875231744%_
                             _%tl230876231746%_
                             _%e230877231749%_
                             _%hd230878231752%_
                             _%tl230879231754%_
                             _%e230880231757%_
                             _%hd230881231760%_
                             _%tl230882231762%_
                             _%e230883231765%_
                             _%hd230884231768%_
                             _%tl230885231770%_
                             _%e230886231773%_
                             _%hd230887231776%_
                             _%tl230888231778%_
                             _%e230889231781%_
                             _%hd230890231784%_
                             _%tl230891231786%_
                             _%e230892231789%_
                             _%hd230893231792%_
                             _%tl230894231794%_
                             _%e230895231797%_
                             _%hd230896231800%_
                             _%tl230897231802%_
                             _%e230898231805%_
                             _%hd230899231808%_
                             _%tl230900231810%_
                             _%e230901231813%_
                             _%hd230902231816%_
                             _%tl230903231818%_
                             _%__splice235291235292%_
                             _%target230904231821%_
                             _%tl230906231823%_)
                      (letrec ((_%loop230907231826%_
                                (lambda (_%hd230905231829%_
                                         _%args230911231831%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd230905231829%_))
                                      (let ((_%e230908231833%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd230905231829%_))))
                                        (let ((_%lp-tl230910231838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230908231833%_)))
                                              (_%lp-hd230909231836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230908231833%_))))
                                          (_%loop230907231826%_
                                           _%lp-tl230910231838%_
                                           (cons _%lp-hd230909231836%_
                                                 _%args230911231831%_))))
                                      (let ((_%args230912231841%_
                                             (reverse _%args230911231831%_)))
                                        (let ((_%g230870231843%_
                                               _%args230912231841%_)
                                              (_%g230871231844%_
                                               _%hd230902231816%_)
                                              (_%g230872231845%_
                                               _%hd230893231792%_)
                                              (_%g230873231846%_
                                               _%hd230884231768%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230873231846%_
                                                      'call-method))
                                                   (let ((__tmp236450
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self230859%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g230872231845%_
                                                      __tmp236450)))
                                              (_%__kont235289235290%_
                                               _%g230870231843%_
                                               _%g230871231844%_
                                               _%g230872231845%_
                                               _%g230873231846%_)
                                              (_%__match235580235581%_
                                               _%e230874231741%_
                                               _%hd230875231744%_
                                               _%tl230876231746%_
                                               _%e230877231749%_
                                               _%hd230878231752%_
                                               _%tl230879231754%_
                                               _%e230880231757%_
                                               _%hd230881231760%_
                                               _%tl230882231762%_
                                               _%e230883231765%_
                                               _%hd230884231768%_
                                               _%tl230885231770%_
                                               _%e230886231773%_
                                               _%hd230887231776%_
                                               _%tl230888231778%_
                                               _%e230889231781%_
                                               _%hd230890231784%_
                                               _%tl230891231786%_
                                               _%e230892231789%_
                                               _%hd230893231792%_
                                               _%tl230894231794%_
                                               _%e230895231797%_
                                               _%hd230896231800%_
                                               _%tl230897231802%_
                                               _%e230898231805%_
                                               _%hd230899231808%_
                                               _%tl230900231810%_
                                               _%e230901231813%_
                                               _%hd230902231816%_
                                               _%tl230903231818%_))))))))
                        (_%loop230907231826%_ _%target230904231821%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx235287235288%_))
                  (let ((_%e230874231741%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx235287235288%_))))
                    (let ((_%tl230876231746%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230874231741%_)))
                          (_%hd230875231744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230874231741%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230876231746%_))
                          (let ((_%e230877231749%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230876231746%_))))
                            (let ((_%tl230879231754%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230877231749%_)))
                                  (_%hd230878231752%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230877231749%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd230878231752%_))
                                  (let ((_%e230880231757%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd230878231752%_))))
                                    (let ((_%tl230882231762%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e230880231757%_)))
                                          (_%hd230881231760%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e230880231757%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd230881231760%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd230881231760%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl230882231762%_))
                                                  (let ((_%e230883231765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl230882231762%_))))
                                                    (let ((_%tl230885231770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230883231765%_)))
                                                          (_%hd230884231768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230883231765%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl230885231770%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl230879231754%_))
                      (let ((_%e230886231773%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl230879231754%_))))
                        (let ((_%tl230888231778%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230886231773%_)))
                              (_%hd230887231776%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230886231773%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd230887231776%_))
                              (let ((_%e230889231781%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd230887231776%_))))
                                (let ((_%tl230891231786%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230889231781%_)))
                                      (_%hd230890231784%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230889231781%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd230890231784%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd230890231784%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl230891231786%_))
                                              (let ((_%e230892231789%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl230891231786%_))))
                                                (let ((_%tl230894231794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e230892231789%_)))
                                                      (_%hd230893231792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e230892231789%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl230894231794%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl230888231778%_))
                                                          (let ((_%e230895231797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl230888231778%_))))
                    (let ((_%tl230897231802%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230895231797%_)))
                          (_%hd230896231800%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230895231797%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd230896231800%_))
                          (let ((_%e230898231805%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd230896231800%_))))
                            (let ((_%tl230900231810%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230898231805%_)))
                                  (_%hd230899231808%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230898231805%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd230899231808%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd230899231808%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl230900231810%_))
                                          (let ((_%e230901231813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl230900231810%_))))
                                            (let ((_%tl230903231818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e230901231813%_)))
                                                  (_%hd230902231816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e230901231813%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl230903231818%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl230897231802%_))
                                                      (let ((_%__splice235291235292%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl230897231802%_
                        '0))))
                (let ((_%tl230906231823%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice235291235292%_ '1)))
                      (_%target230904231821%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice235291235292%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl230906231823%_))
                      (_%__match235392235393%_
                       _%e230874231741%_
                       _%hd230875231744%_
                       _%tl230876231746%_
                       _%e230877231749%_
                       _%hd230878231752%_
                       _%tl230879231754%_
                       _%e230880231757%_
                       _%hd230881231760%_
                       _%tl230882231762%_
                       _%e230883231765%_
                       _%hd230884231768%_
                       _%tl230885231770%_
                       _%e230886231773%_
                       _%hd230887231776%_
                       _%tl230888231778%_
                       _%e230889231781%_
                       _%hd230890231784%_
                       _%tl230891231786%_
                       _%e230892231789%_
                       _%hd230893231792%_
                       _%tl230894231794%_
                       _%e230895231797%_
                       _%hd230896231800%_
                       _%tl230897231802%_
                       _%e230898231805%_
                       _%hd230899231808%_
                       _%tl230900231810%_
                       _%e230901231813%_
                       _%hd230902231816%_
                       _%tl230903231818%_
                       _%__splice235291235292%_
                       _%target230904231821%_
                       _%tl230906231823%_)
                      (_%__match235580235581%_
                       _%e230874231741%_
                       _%hd230875231744%_
                       _%tl230876231746%_
                       _%e230877231749%_
                       _%hd230878231752%_
                       _%tl230879231754%_
                       _%e230880231757%_
                       _%hd230881231760%_
                       _%tl230882231762%_
                       _%e230883231765%_
                       _%hd230884231768%_
                       _%tl230885231770%_
                       _%e230886231773%_
                       _%hd230887231776%_
                       _%tl230888231778%_
                       _%e230889231781%_
                       _%hd230890231784%_
                       _%tl230891231786%_
                       _%e230892231789%_
                       _%hd230893231792%_
                       _%tl230894231794%_
                       _%e230895231797%_
                       _%hd230896231800%_
                       _%tl230897231802%_
                       _%e230898231805%_
                       _%hd230899231808%_
                       _%tl230900231810%_
                       _%e230901231813%_
                       _%hd230902231816%_
                       _%tl230903231818%_))))
              (_%__match235580235581%_
               _%e230874231741%_
               _%hd230875231744%_
               _%tl230876231746%_
               _%e230877231749%_
               _%hd230878231752%_
               _%tl230879231754%_
               _%e230880231757%_
               _%hd230881231760%_
               _%tl230882231762%_
               _%e230883231765%_
               _%hd230884231768%_
               _%tl230885231770%_
               _%e230886231773%_
               _%hd230887231776%_
               _%tl230888231778%_
               _%e230889231781%_
               _%hd230890231784%_
               _%tl230891231786%_
               _%e230892231789%_
               _%hd230893231792%_
               _%tl230894231794%_
               _%e230895231797%_
               _%hd230896231800%_
               _%tl230897231802%_
               _%e230898231805%_
               _%hd230899231808%_
               _%tl230900231810%_
               _%e230901231813%_
               _%hd230902231816%_
               _%tl230903231818%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match235784235785%_
                                                   _%e230874231741%_
                                                   _%hd230875231744%_
                                                   _%tl230876231746%_
                                                   _%e230877231749%_
                                                   _%hd230878231752%_
                                                   _%tl230879231754%_
                                                   _%e230880231757%_
                                                   _%hd230881231760%_
                                                   _%tl230882231762%_
                                                   _%e230883231765%_
                                                   _%hd230884231768%_
                                                   _%tl230885231770%_
                                                   _%e230886231773%_
                                                   _%hd230887231776%_
                                                   _%tl230888231778%_
                                                   _%e230889231781%_
                                                   _%hd230890231784%_
                                                   _%tl230891231786%_
                                                   _%e230892231789%_
                                                   _%hd230893231792%_
                                                   _%tl230894231794%_
                                                   _%e230895231797%_
                                                   _%hd230896231800%_
                                                   _%tl230897231802%_))))
                                          (_%__match235784235785%_
                                           _%e230874231741%_
                                           _%hd230875231744%_
                                           _%tl230876231746%_
                                           _%e230877231749%_
                                           _%hd230878231752%_
                                           _%tl230879231754%_
                                           _%e230880231757%_
                                           _%hd230881231760%_
                                           _%tl230882231762%_
                                           _%e230883231765%_
                                           _%hd230884231768%_
                                           _%tl230885231770%_
                                           _%e230886231773%_
                                           _%hd230887231776%_
                                           _%tl230888231778%_
                                           _%e230889231781%_
                                           _%hd230890231784%_
                                           _%tl230891231786%_
                                           _%e230892231789%_
                                           _%hd230893231792%_
                                           _%tl230894231794%_
                                           _%e230895231797%_
                                           _%hd230896231800%_
                                           _%tl230897231802%_))
                                      (_%__match235460235461%_
                                       _%e230874231741%_
                                       _%hd230875231744%_
                                       _%tl230876231746%_
                                       _%e230877231749%_
                                       _%hd230878231752%_
                                       _%tl230879231754%_
                                       _%e230880231757%_
                                       _%hd230881231760%_
                                       _%tl230882231762%_
                                       _%e230883231765%_
                                       _%hd230884231768%_
                                       _%tl230885231770%_
                                       _%e230886231773%_
                                       _%hd230887231776%_
                                       _%tl230888231778%_
                                       _%e230889231781%_
                                       _%hd230890231784%_
                                       _%tl230891231786%_
                                       _%e230892231789%_
                                       _%hd230893231792%_
                                       _%tl230894231794%_
                                       _%e230895231797%_
                                       _%hd230896231800%_
                                       _%tl230897231802%_
                                       _%e230898231805%_
                                       _%hd230899231808%_
                                       _%tl230900231810%_))
                                  (_%__match235784235785%_
                                   _%e230874231741%_
                                   _%hd230875231744%_
                                   _%tl230876231746%_
                                   _%e230877231749%_
                                   _%hd230878231752%_
                                   _%tl230879231754%_
                                   _%e230880231757%_
                                   _%hd230881231760%_
                                   _%tl230882231762%_
                                   _%e230883231765%_
                                   _%hd230884231768%_
                                   _%tl230885231770%_
                                   _%e230886231773%_
                                   _%hd230887231776%_
                                   _%tl230888231778%_
                                   _%e230889231781%_
                                   _%hd230890231784%_
                                   _%tl230891231786%_
                                   _%e230892231789%_
                                   _%hd230893231792%_
                                   _%tl230894231794%_
                                   _%e230895231797%_
                                   _%hd230896231800%_
                                   _%tl230897231802%_))))
                          (_%__match235784235785%_
                           _%e230874231741%_
                           _%hd230875231744%_
                           _%tl230876231746%_
                           _%e230877231749%_
                           _%hd230878231752%_
                           _%tl230879231754%_
                           _%e230880231757%_
                           _%hd230881231760%_
                           _%tl230882231762%_
                           _%e230883231765%_
                           _%hd230884231768%_
                           _%tl230885231770%_
                           _%e230886231773%_
                           _%hd230887231776%_
                           _%tl230888231778%_
                           _%e230889231781%_
                           _%hd230890231784%_
                           _%tl230891231786%_
                           _%e230892231789%_
                           _%hd230893231792%_
                           _%tl230894231794%_
                           _%e230895231797%_
                           _%hd230896231800%_
                           _%tl230897231802%_))))
                  (_%__match235722235723%_
                   _%e230874231741%_
                   _%hd230875231744%_
                   _%tl230876231746%_
                   _%e230877231749%_
                   _%hd230878231752%_
                   _%tl230879231754%_
                   _%e230880231757%_
                   _%hd230881231760%_
                   _%tl230882231762%_
                   _%e230883231765%_
                   _%hd230884231768%_
                   _%tl230885231770%_
                   _%e230886231773%_
                   _%hd230887231776%_
                   _%tl230888231778%_
                   _%e230889231781%_
                   _%hd230890231784%_
                   _%tl230891231786%_
                   _%e230892231789%_
                   _%hd230893231792%_
                   _%tl230894231794%_))
              (_%__kont235305235306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont235305235306%_))
                                          (_%__kont235305235306%_))
                                      (_%__kont235305235306%_))))
                              (_%__kont235305235306%_))))
                      (_%__kont235305235306%_))
                  (_%__kont235305235306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235305235306%_))
                                              (_%__kont235305235306%_))
                                          (_%__kont235305235306%_))))
                                  (_%__kont235305235306%_))))
                          (_%__kont235305235306%_))))
                  (_%__kont235305235306%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self229802%_ _%stx229803%_)
        (letrec ((_%force-e229805%_
                  (lambda (_%target230857%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target230857%_ '()))
                                      '()))))))
          (let* ((_%__stx235789235790%_ _%stx229803%_)
                 (_%g229813230035%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx235789235790%_)))))
            (let ((_%__kont235791235792%_
                   (lambda (_%g229815230803%_
                            _%g229816230804%_
                            _%g229817230805%_
                            _%g229818230806%_)
                     (let ((_%$method230851%_
                            (let ((__tmp236452
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229802%_ 'methods)))
                                  (__tmp236451
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229816230804%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp236452 __tmp236451)))
                           (_%args230852%_
                            (map (lambda (_%g230839230841%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self229802%_
                                      _%g230839230841%_)))
                                 (let ((__tmp236453
                                        (lambda (_%g230843230846%_
                                                 _%g230844230848%_)
                                          (cons _%g230843230846%_
                                                _%g230844230848%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp236453
                                    '()
                                    _%g229815230803%_)))))
                       (let ((__tmp236454
                              (cons '%#call
                                    (cons (_%force-e229805%_ _%$method230851%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229802%_
                                                               'receiver))
                                                            '()))
                                                _%args230852%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp236454 _%stx229803%_)))))
                  (_%__kont235795235796%_
                   (lambda (_%g229858230637%_
                            _%g229859230638%_
                            _%g229860230639%_
                            _%g229861230640%_
                            _%g229862230641%_)
                     (let ((_%$method230693%_
                            (let ((__tmp236456
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229802%_ 'methods)))
                                  (__tmp236455
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229859230638%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp236456 __tmp236455)))
                           (_%args230694%_
                            (map (lambda (_%g230681230683%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self229802%_
                                      _%g230681230683%_)))
                                 (let ((__tmp236457
                                        (lambda (_%g230685230688%_
                                                 _%g230686230690%_)
                                          (cons _%g230685230688%_
                                                _%g230686230690%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp236457
                                    '()
                                    _%g229858230637%_)))))
                       (let ((__tmp236458
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e229805%_
                                                 _%$method230693%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self229802%_ 'receiver))
                          '()))
              _%args230694%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp236458 _%stx229803%_)))))
                  (_%__kont235799235800%_
                   (lambda (_%g229911230470%_
                            _%g229912230471%_
                            _%g229913230472%_)
                     (let* ((_%$field230504%_
                             (let ((__tmp236460
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self229802%_ 'slots)))
                                   (__tmp236459
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g229911230470%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp236460 __tmp236459)))
                            (__tmp236461
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self229802%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field230504%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self229802%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp236461 _%stx229803%_))))
                  (_%__kont235801235802%_
                   (lambda (_%g229944230344%_
                            _%g229945230345%_
                            _%g229946230346%_
                            _%g229947230347%_)
                     (let ((_%$field230382%_
                            (let ((__tmp236463
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229802%_ 'slots)))
                                  (__tmp236462
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229945230345%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp236463 __tmp236462)))
                           (_%expr230383%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self229802%_
                               _%g229944230344%_))))
                       (let ((__tmp236464
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self229802%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field230382%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self229802%_ 'receiver))
                          '()))
              (cons _%expr230383%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp236464 _%stx229803%_)))))
                  (_%__kont235803235804%_
                   (lambda (_%g229981230216%_ _%g229982230217%_)
                     (let* ((_%accessor230239%_
                             (let ((__tmp236465
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g229982230217%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp236465)))
                            (_%klass230241%_
                             (let ((__tmp236466
                                    (##structure-ref
                                     _%accessor230239%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx229803%_
                                __tmp236466)))
                            (_%slot230243%_
                             (##structure-ref
                              _%accessor230239%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor230239%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass230241%_
                                      _%slot230243%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass230241%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx229803%_
                           (let* ((_%$field230249%_
                                   (let ((__tmp236467
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229802%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp236467 _%slot230243%_)))
                                  (__tmp236468
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self229802%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field230249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self229802%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp236468
                              _%stx229803%_))))))
                  (_%__kont235805235806%_
                   (lambda (_%g230004230111%_
                            _%g230005230112%_
                            _%g230006230113%_)
                     (let* ((_%mutator230141%_
                             (let ((__tmp236469
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g230006230113%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp236469)))
                            (_%klass230143%_
                             (let ((__tmp236470
                                    (##structure-ref
                                     _%mutator230141%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx229803%_
                                __tmp236470)))
                            (_%slot230145%_
                             (##structure-ref
                              _%mutator230141%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr230147%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self229802%_
                                _%g230004230111%_))))
                       (if (if (##structure-ref
                                _%mutator230141%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass230143%_
                                      _%slot230145%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass230143%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp236471
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g230006230113%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g230005230112%_
                                                                '()))
                                                    (cons _%expr230147%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp236471 _%stx229803%_))
                           (let* ((_%$field230153%_
                                   (let ((__tmp236472
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229802%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp236472 _%slot230145%_)))
                                  (__tmp236473
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self229802%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field230153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self229802%_ 'receiver))
                               '()))
                   (cons _%expr230147%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp236473
                              _%stx229803%_))))))
                  (_%__kont235807235808%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self229802%_ _%stx229803%_)))))
              (let* ((_%__match236288236289%_
                      (lambda (_%e230007230047%_
                               _%hd230008230050%_
                               _%tl230009230052%_
                               _%e230010230055%_
                               _%hd230011230058%_
                               _%tl230012230060%_
                               _%e230013230063%_
                               _%hd230014230066%_
                               _%tl230015230068%_
                               _%e230016230071%_
                               _%hd230017230074%_
                               _%tl230018230076%_
                               _%e230019230079%_
                               _%hd230020230082%_
                               _%tl230021230084%_
                               _%e230022230087%_
                               _%hd230023230090%_
                               _%tl230024230092%_
                               _%e230025230095%_
                               _%hd230026230098%_
                               _%tl230027230100%_
                               _%e230028230103%_
                               _%hd230029230106%_
                               _%tl230030230108%_)
                        (let ((_%g230004230111%_ _%hd230029230106%_)
                              (_%g230005230112%_ _%hd230026230098%_)
                              (_%g230006230113%_ _%hd230017230074%_))
                          (if (and (let ((__tmp236474
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229802%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g230005230112%_
                                      __tmp236474))
                                   (let ((__tmp236475
                                          (let ((__tmp236476
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g230006230113%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp236476))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp236475
                                      'gxc#!mutator::t)))
                              (_%__kont235805235806%_
                               _%g230004230111%_
                               _%g230005230112%_
                               _%g230006230113%_)
                              (_%__kont235807235808%_)))))
                     (_%__match236286236287%_
                      (lambda (_%e230007230047%_
                               _%hd230008230050%_
                               _%tl230009230052%_
                               _%e230010230055%_
                               _%hd230011230058%_
                               _%tl230012230060%_
                               _%e230013230063%_
                               _%hd230014230066%_
                               _%tl230015230068%_
                               _%e230016230071%_
                               _%hd230017230074%_
                               _%tl230018230076%_
                               _%e230019230079%_
                               _%hd230020230082%_
                               _%tl230021230084%_
                               _%e230022230087%_
                               _%hd230023230090%_
                               _%tl230024230092%_
                               _%e230025230095%_
                               _%hd230026230098%_
                               _%tl230027230100%_
                               _%e230028230103%_
                               _%hd230029230106%_
                               _%tl230030230108%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230030230108%_))
                            (_%__match236288236289%_
                             _%e230007230047%_
                             _%hd230008230050%_
                             _%tl230009230052%_
                             _%e230010230055%_
                             _%hd230011230058%_
                             _%tl230012230060%_
                             _%e230013230063%_
                             _%hd230014230066%_
                             _%tl230015230068%_
                             _%e230016230071%_
                             _%hd230017230074%_
                             _%tl230018230076%_
                             _%e230019230079%_
                             _%hd230020230082%_
                             _%tl230021230084%_
                             _%e230022230087%_
                             _%hd230023230090%_
                             _%tl230024230092%_
                             _%e230025230095%_
                             _%hd230026230098%_
                             _%tl230027230100%_
                             _%e230028230103%_
                             _%hd230029230106%_
                             _%tl230030230108%_)
                            (_%__kont235807235808%_))))
                     (_%__match236280236281%_
                      (lambda (_%e230007230047%_
                               _%hd230008230050%_
                               _%tl230009230052%_
                               _%e230010230055%_
                               _%hd230011230058%_
                               _%tl230012230060%_
                               _%e230013230063%_
                               _%hd230014230066%_
                               _%tl230015230068%_
                               _%e230016230071%_
                               _%hd230017230074%_
                               _%tl230018230076%_
                               _%e230019230079%_
                               _%hd230020230082%_
                               _%tl230021230084%_
                               _%e230022230087%_
                               _%hd230023230090%_
                               _%tl230024230092%_
                               _%e230025230095%_
                               _%hd230026230098%_
                               _%tl230027230100%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230021230084%_))
                            (let ((_%e230028230103%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230021230084%_))))
                              (let ((_%tl230030230108%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230028230103%_)))
                                    (_%hd230029230106%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230028230103%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230030230108%_))
                                    (_%__match236288236289%_
                                     _%e230007230047%_
                                     _%hd230008230050%_
                                     _%tl230009230052%_
                                     _%e230010230055%_
                                     _%hd230011230058%_
                                     _%tl230012230060%_
                                     _%e230013230063%_
                                     _%hd230014230066%_
                                     _%tl230015230068%_
                                     _%e230016230071%_
                                     _%hd230017230074%_
                                     _%tl230018230076%_
                                     _%e230019230079%_
                                     _%hd230020230082%_
                                     _%tl230021230084%_
                                     _%e230022230087%_
                                     _%hd230023230090%_
                                     _%tl230024230092%_
                                     _%e230025230095%_
                                     _%hd230026230098%_
                                     _%tl230027230100%_
                                     _%e230028230103%_
                                     _%hd230029230106%_
                                     _%tl230030230108%_)
                                    (_%__kont235807235808%_))))
                            (_%__kont235807235808%_))))
                     (_%__match236226236227%_
                      (lambda (_%e229983230160%_
                               _%hd229984230163%_
                               _%tl229985230165%_
                               _%e229986230168%_
                               _%hd229987230171%_
                               _%tl229988230173%_
                               _%e229989230176%_
                               _%hd229990230179%_
                               _%tl229991230181%_
                               _%e229992230184%_
                               _%hd229993230187%_
                               _%tl229994230189%_
                               _%e229995230192%_
                               _%hd229996230195%_
                               _%tl229997230197%_
                               _%e229998230200%_
                               _%hd229999230203%_
                               _%tl230000230205%_
                               _%e230001230208%_
                               _%hd230002230211%_
                               _%tl230003230213%_)
                        (let ((_%g229981230216%_ _%hd230002230211%_)
                              (_%g229982230217%_ _%hd229993230187%_))
                          (if (and (let ((__tmp236477
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229802%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229981230216%_
                                      __tmp236477))
                                   (let ((__tmp236478
                                          (let ((__tmp236479
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g229982230217%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp236479))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp236478
                                      'gxc#!accessor::t)))
                              (_%__kont235803235804%_
                               _%g229981230216%_
                               _%g229982230217%_)
                              (_%__kont235807235808%_)))))
                     (_%__match236224236225%_
                      (lambda (_%e229983230160%_
                               _%hd229984230163%_
                               _%tl229985230165%_
                               _%e229986230168%_
                               _%hd229987230171%_
                               _%tl229988230173%_
                               _%e229989230176%_
                               _%hd229990230179%_
                               _%tl229991230181%_
                               _%e229992230184%_
                               _%hd229993230187%_
                               _%tl229994230189%_
                               _%e229995230192%_
                               _%hd229996230195%_
                               _%tl229997230197%_
                               _%e229998230200%_
                               _%hd229999230203%_
                               _%tl230000230205%_
                               _%e230001230208%_
                               _%hd230002230211%_
                               _%tl230003230213%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229997230197%_))
                            (_%__match236226236227%_
                             _%e229983230160%_
                             _%hd229984230163%_
                             _%tl229985230165%_
                             _%e229986230168%_
                             _%hd229987230171%_
                             _%tl229988230173%_
                             _%e229989230176%_
                             _%hd229990230179%_
                             _%tl229991230181%_
                             _%e229992230184%_
                             _%hd229993230187%_
                             _%tl229994230189%_
                             _%e229995230192%_
                             _%hd229996230195%_
                             _%tl229997230197%_
                             _%e229998230200%_
                             _%hd229999230203%_
                             _%tl230000230205%_
                             _%e230001230208%_
                             _%hd230002230211%_
                             _%tl230003230213%_)
                            (_%__match236280236281%_
                             _%e229983230160%_
                             _%hd229984230163%_
                             _%tl229985230165%_
                             _%e229986230168%_
                             _%hd229987230171%_
                             _%tl229988230173%_
                             _%e229989230176%_
                             _%hd229990230179%_
                             _%tl229991230181%_
                             _%e229992230184%_
                             _%hd229993230187%_
                             _%tl229994230189%_
                             _%e229995230192%_
                             _%hd229996230195%_
                             _%tl229997230197%_
                             _%e229998230200%_
                             _%hd229999230203%_
                             _%tl230000230205%_
                             _%e230001230208%_
                             _%hd230002230211%_
                             _%tl230003230213%_))))
                     (_%__match236170236171%_
                      (lambda (_%e229948230256%_
                               _%hd229949230259%_
                               _%tl229950230261%_
                               _%e229951230264%_
                               _%hd229952230267%_
                               _%tl229953230269%_
                               _%e229954230272%_
                               _%hd229955230275%_
                               _%tl229956230277%_
                               _%e229957230280%_
                               _%hd229958230283%_
                               _%tl229959230285%_
                               _%e229960230288%_
                               _%hd229961230291%_
                               _%tl229962230293%_
                               _%e229963230296%_
                               _%hd229964230299%_
                               _%tl229965230301%_
                               _%e229966230304%_
                               _%hd229967230307%_
                               _%tl229968230309%_
                               _%e229969230312%_
                               _%hd229970230315%_
                               _%tl229971230317%_
                               _%e229972230320%_
                               _%hd229973230323%_
                               _%tl229974230325%_
                               _%e229975230328%_
                               _%hd229976230331%_
                               _%tl229977230333%_
                               _%e229978230336%_
                               _%hd229979230339%_
                               _%tl229980230341%_)
                        (let ((_%g229944230344%_ _%hd229979230339%_)
                              (_%g229945230345%_ _%hd229976230331%_)
                              (_%g229946230346%_ _%hd229967230307%_)
                              (_%g229947230347%_ _%hd229958230283%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229947230347%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229947230347%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp236480
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229802%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229946230346%_
                                      __tmp236480)))
                              (_%__kont235801235802%_
                               _%g229944230344%_
                               _%g229945230345%_
                               _%g229946230346%_
                               _%g229947230347%_)
                              (_%__kont235807235808%_)))))
                     (_%__match236162236163%_
                      (lambda (_%e229948230256%_
                               _%hd229949230259%_
                               _%tl229950230261%_
                               _%e229951230264%_
                               _%hd229952230267%_
                               _%tl229953230269%_
                               _%e229954230272%_
                               _%hd229955230275%_
                               _%tl229956230277%_
                               _%e229957230280%_
                               _%hd229958230283%_
                               _%tl229959230285%_
                               _%e229960230288%_
                               _%hd229961230291%_
                               _%tl229962230293%_
                               _%e229963230296%_
                               _%hd229964230299%_
                               _%tl229965230301%_
                               _%e229966230304%_
                               _%hd229967230307%_
                               _%tl229968230309%_
                               _%e229969230312%_
                               _%hd229970230315%_
                               _%tl229971230317%_
                               _%e229972230320%_
                               _%hd229973230323%_
                               _%tl229974230325%_
                               _%e229975230328%_
                               _%hd229976230331%_
                               _%tl229977230333%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229971230317%_))
                            (let ((_%e229978230336%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229971230317%_))))
                              (let ((_%tl229980230341%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229978230336%_)))
                                    (_%hd229979230339%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229978230336%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229980230341%_))
                                    (_%__match236170236171%_
                                     _%e229948230256%_
                                     _%hd229949230259%_
                                     _%tl229950230261%_
                                     _%e229951230264%_
                                     _%hd229952230267%_
                                     _%tl229953230269%_
                                     _%e229954230272%_
                                     _%hd229955230275%_
                                     _%tl229956230277%_
                                     _%e229957230280%_
                                     _%hd229958230283%_
                                     _%tl229959230285%_
                                     _%e229960230288%_
                                     _%hd229961230291%_
                                     _%tl229962230293%_
                                     _%e229963230296%_
                                     _%hd229964230299%_
                                     _%tl229965230301%_
                                     _%e229966230304%_
                                     _%hd229967230307%_
                                     _%tl229968230309%_
                                     _%e229969230312%_
                                     _%hd229970230315%_
                                     _%tl229971230317%_
                                     _%e229972230320%_
                                     _%hd229973230323%_
                                     _%tl229974230325%_
                                     _%e229975230328%_
                                     _%hd229976230331%_
                                     _%tl229977230333%_
                                     _%e229978230336%_
                                     _%hd229979230339%_
                                     _%tl229980230341%_)
                                    (_%__kont235807235808%_))))
                            (_%__match236286236287%_
                             _%e229948230256%_
                             _%hd229949230259%_
                             _%tl229950230261%_
                             _%e229951230264%_
                             _%hd229952230267%_
                             _%tl229953230269%_
                             _%e229954230272%_
                             _%hd229955230275%_
                             _%tl229956230277%_
                             _%e229957230280%_
                             _%hd229958230283%_
                             _%tl229959230285%_
                             _%e229960230288%_
                             _%hd229961230291%_
                             _%tl229962230293%_
                             _%e229963230296%_
                             _%hd229964230299%_
                             _%tl229965230301%_
                             _%e229966230304%_
                             _%hd229967230307%_
                             _%tl229968230309%_
                             _%e229969230312%_
                             _%hd229970230315%_
                             _%tl229971230317%_))))
                     (_%__match236084236085%_
                      (lambda (_%e229914230390%_
                               _%hd229915230393%_
                               _%tl229916230395%_
                               _%e229917230398%_
                               _%hd229918230401%_
                               _%tl229919230403%_
                               _%e229920230406%_
                               _%hd229921230409%_
                               _%tl229922230411%_
                               _%e229923230414%_
                               _%hd229924230417%_
                               _%tl229925230419%_
                               _%e229926230422%_
                               _%hd229927230425%_
                               _%tl229928230427%_
                               _%e229929230430%_
                               _%hd229930230433%_
                               _%tl229931230435%_
                               _%e229932230438%_
                               _%hd229933230441%_
                               _%tl229934230443%_
                               _%e229935230446%_
                               _%hd229936230449%_
                               _%tl229937230451%_
                               _%e229938230454%_
                               _%hd229939230457%_
                               _%tl229940230459%_
                               _%e229941230462%_
                               _%hd229942230465%_
                               _%tl229943230467%_)
                        (let ((_%g229911230470%_ _%hd229942230465%_)
                              (_%g229912230471%_ _%hd229933230441%_)
                              (_%g229913230472%_ _%hd229924230417%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229913230472%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229913230472%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp236481
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229802%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229912230471%_
                                      __tmp236481)))
                              (_%__kont235799235800%_
                               _%g229911230470%_
                               _%g229912230471%_
                               _%g229913230472%_)
                              (_%__match236288236289%_
                               _%e229914230390%_
                               _%hd229915230393%_
                               _%tl229916230395%_
                               _%e229917230398%_
                               _%hd229918230401%_
                               _%tl229919230403%_
                               _%e229920230406%_
                               _%hd229921230409%_
                               _%tl229922230411%_
                               _%e229923230414%_
                               _%hd229924230417%_
                               _%tl229925230419%_
                               _%e229926230422%_
                               _%hd229927230425%_
                               _%tl229928230427%_
                               _%e229929230430%_
                               _%hd229930230433%_
                               _%tl229931230435%_
                               _%e229932230438%_
                               _%hd229933230441%_
                               _%tl229934230443%_
                               _%e229935230446%_
                               _%hd229936230449%_
                               _%tl229937230451%_)))))
                     (_%__match236082236083%_
                      (lambda (_%e229914230390%_
                               _%hd229915230393%_
                               _%tl229916230395%_
                               _%e229917230398%_
                               _%hd229918230401%_
                               _%tl229919230403%_
                               _%e229920230406%_
                               _%hd229921230409%_
                               _%tl229922230411%_
                               _%e229923230414%_
                               _%hd229924230417%_
                               _%tl229925230419%_
                               _%e229926230422%_
                               _%hd229927230425%_
                               _%tl229928230427%_
                               _%e229929230430%_
                               _%hd229930230433%_
                               _%tl229931230435%_
                               _%e229932230438%_
                               _%hd229933230441%_
                               _%tl229934230443%_
                               _%e229935230446%_
                               _%hd229936230449%_
                               _%tl229937230451%_
                               _%e229938230454%_
                               _%hd229939230457%_
                               _%tl229940230459%_
                               _%e229941230462%_
                               _%hd229942230465%_
                               _%tl229943230467%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229937230451%_))
                            (_%__match236084236085%_
                             _%e229914230390%_
                             _%hd229915230393%_
                             _%tl229916230395%_
                             _%e229917230398%_
                             _%hd229918230401%_
                             _%tl229919230403%_
                             _%e229920230406%_
                             _%hd229921230409%_
                             _%tl229922230411%_
                             _%e229923230414%_
                             _%hd229924230417%_
                             _%tl229925230419%_
                             _%e229926230422%_
                             _%hd229927230425%_
                             _%tl229928230427%_
                             _%e229929230430%_
                             _%hd229930230433%_
                             _%tl229931230435%_
                             _%e229932230438%_
                             _%hd229933230441%_
                             _%tl229934230443%_
                             _%e229935230446%_
                             _%hd229936230449%_
                             _%tl229937230451%_
                             _%e229938230454%_
                             _%hd229939230457%_
                             _%tl229940230459%_
                             _%e229941230462%_
                             _%hd229942230465%_
                             _%tl229943230467%_)
                            (_%__match236162236163%_
                             _%e229914230390%_
                             _%hd229915230393%_
                             _%tl229916230395%_
                             _%e229917230398%_
                             _%hd229918230401%_
                             _%tl229919230403%_
                             _%e229920230406%_
                             _%hd229921230409%_
                             _%tl229922230411%_
                             _%e229923230414%_
                             _%hd229924230417%_
                             _%tl229925230419%_
                             _%e229926230422%_
                             _%hd229927230425%_
                             _%tl229928230427%_
                             _%e229929230430%_
                             _%hd229930230433%_
                             _%tl229931230435%_
                             _%e229932230438%_
                             _%hd229933230441%_
                             _%tl229934230443%_
                             _%e229935230446%_
                             _%hd229936230449%_
                             _%tl229937230451%_
                             _%e229938230454%_
                             _%hd229939230457%_
                             _%tl229940230459%_
                             _%e229941230462%_
                             _%hd229942230465%_
                             _%tl229943230467%_))))
                     (_%__match236072236073%_
                      (lambda (_%e229914230390%_
                               _%hd229915230393%_
                               _%tl229916230395%_
                               _%e229917230398%_
                               _%hd229918230401%_
                               _%tl229919230403%_
                               _%e229920230406%_
                               _%hd229921230409%_
                               _%tl229922230411%_
                               _%e229923230414%_
                               _%hd229924230417%_
                               _%tl229925230419%_
                               _%e229926230422%_
                               _%hd229927230425%_
                               _%tl229928230427%_
                               _%e229929230430%_
                               _%hd229930230433%_
                               _%tl229931230435%_
                               _%e229932230438%_
                               _%hd229933230441%_
                               _%tl229934230443%_
                               _%e229935230446%_
                               _%hd229936230449%_
                               _%tl229937230451%_
                               _%e229938230454%_
                               _%hd229939230457%_
                               _%tl229940230459%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd229939230457%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229940230459%_))
                                (let ((_%e229941230462%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229940230459%_))))
                                  (let ((_%tl229943230467%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229941230462%_)))
                                        (_%hd229942230465%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229941230462%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229943230467%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229937230451%_))
                                            (_%__match236084236085%_
                                             _%e229914230390%_
                                             _%hd229915230393%_
                                             _%tl229916230395%_
                                             _%e229917230398%_
                                             _%hd229918230401%_
                                             _%tl229919230403%_
                                             _%e229920230406%_
                                             _%hd229921230409%_
                                             _%tl229922230411%_
                                             _%e229923230414%_
                                             _%hd229924230417%_
                                             _%tl229925230419%_
                                             _%e229926230422%_
                                             _%hd229927230425%_
                                             _%tl229928230427%_
                                             _%e229929230430%_
                                             _%hd229930230433%_
                                             _%tl229931230435%_
                                             _%e229932230438%_
                                             _%hd229933230441%_
                                             _%tl229934230443%_
                                             _%e229935230446%_
                                             _%hd229936230449%_
                                             _%tl229937230451%_
                                             _%e229938230454%_
                                             _%hd229939230457%_
                                             _%tl229940230459%_
                                             _%e229941230462%_
                                             _%hd229942230465%_
                                             _%tl229943230467%_)
                                            (_%__match236162236163%_
                                             _%e229914230390%_
                                             _%hd229915230393%_
                                             _%tl229916230395%_
                                             _%e229917230398%_
                                             _%hd229918230401%_
                                             _%tl229919230403%_
                                             _%e229920230406%_
                                             _%hd229921230409%_
                                             _%tl229922230411%_
                                             _%e229923230414%_
                                             _%hd229924230417%_
                                             _%tl229925230419%_
                                             _%e229926230422%_
                                             _%hd229927230425%_
                                             _%tl229928230427%_
                                             _%e229929230430%_
                                             _%hd229930230433%_
                                             _%tl229931230435%_
                                             _%e229932230438%_
                                             _%hd229933230441%_
                                             _%tl229934230443%_
                                             _%e229935230446%_
                                             _%hd229936230449%_
                                             _%tl229937230451%_
                                             _%e229938230454%_
                                             _%hd229939230457%_
                                             _%tl229940230459%_
                                             _%e229941230462%_
                                             _%hd229942230465%_
                                             _%tl229943230467%_))
                                        (_%__match236286236287%_
                                         _%e229914230390%_
                                         _%hd229915230393%_
                                         _%tl229916230395%_
                                         _%e229917230398%_
                                         _%hd229918230401%_
                                         _%tl229919230403%_
                                         _%e229920230406%_
                                         _%hd229921230409%_
                                         _%tl229922230411%_
                                         _%e229923230414%_
                                         _%hd229924230417%_
                                         _%tl229925230419%_
                                         _%e229926230422%_
                                         _%hd229927230425%_
                                         _%tl229928230427%_
                                         _%e229929230430%_
                                         _%hd229930230433%_
                                         _%tl229931230435%_
                                         _%e229932230438%_
                                         _%hd229933230441%_
                                         _%tl229934230443%_
                                         _%e229935230446%_
                                         _%hd229936230449%_
                                         _%tl229937230451%_))))
                                (_%__match236286236287%_
                                 _%e229914230390%_
                                 _%hd229915230393%_
                                 _%tl229916230395%_
                                 _%e229917230398%_
                                 _%hd229918230401%_
                                 _%tl229919230403%_
                                 _%e229920230406%_
                                 _%hd229921230409%_
                                 _%tl229922230411%_
                                 _%e229923230414%_
                                 _%hd229924230417%_
                                 _%tl229925230419%_
                                 _%e229926230422%_
                                 _%hd229927230425%_
                                 _%tl229928230427%_
                                 _%e229929230430%_
                                 _%hd229930230433%_
                                 _%tl229931230435%_
                                 _%e229932230438%_
                                 _%hd229933230441%_
                                 _%tl229934230443%_
                                 _%e229935230446%_
                                 _%hd229936230449%_
                                 _%tl229937230451%_))
                            (_%__match236286236287%_
                             _%e229914230390%_
                             _%hd229915230393%_
                             _%tl229916230395%_
                             _%e229917230398%_
                             _%hd229918230401%_
                             _%tl229919230403%_
                             _%e229920230406%_
                             _%hd229921230409%_
                             _%tl229922230411%_
                             _%e229923230414%_
                             _%hd229924230417%_
                             _%tl229925230419%_
                             _%e229926230422%_
                             _%hd229927230425%_
                             _%tl229928230427%_
                             _%e229929230430%_
                             _%hd229930230433%_
                             _%tl229931230435%_
                             _%e229932230438%_
                             _%hd229933230441%_
                             _%tl229934230443%_
                             _%e229935230446%_
                             _%hd229936230449%_
                             _%tl229937230451%_))))
                     (_%__match236004236005%_
                      (lambda (_%e229863230511%_
                               _%hd229864230514%_
                               _%tl229865230516%_
                               _%e229866230519%_
                               _%hd229867230522%_
                               _%tl229868230524%_
                               _%e229869230527%_
                               _%hd229870230530%_
                               _%tl229871230532%_
                               _%e229872230535%_
                               _%hd229873230538%_
                               _%tl229874230540%_
                               _%e229875230543%_
                               _%hd229876230546%_
                               _%tl229877230548%_
                               _%e229878230551%_
                               _%hd229879230554%_
                               _%tl229880230556%_
                               _%e229881230559%_
                               _%hd229882230562%_
                               _%tl229883230564%_
                               _%e229884230567%_
                               _%hd229885230570%_
                               _%tl229886230572%_
                               _%e229887230575%_
                               _%hd229888230578%_
                               _%tl229889230580%_
                               _%e229890230583%_
                               _%hd229891230586%_
                               _%tl229892230588%_
                               _%e229893230591%_
                               _%hd229894230594%_
                               _%tl229895230596%_
                               _%e229896230599%_
                               _%hd229897230602%_
                               _%tl229898230604%_
                               _%e229899230607%_
                               _%hd229900230610%_
                               _%tl229901230612%_
                               _%__splice235797235798%_
                               _%target229902230615%_
                               _%tl229904230617%_)
                        (letrec ((_%loop229905230620%_
                                  (lambda (_%hd229903230623%_
                                           _%args229909230625%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229903230623%_))
                                        (let ((_%e229906230627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229903230623%_))))
                                          (let ((_%lp-tl229908230632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229906230627%_)))
                                                (_%lp-hd229907230630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229906230627%_))))
                                            (_%loop229905230620%_
                                             _%lp-tl229908230632%_
                                             (cons _%lp-hd229907230630%_
                                                   _%args229909230625%_))))
                                        (let ((_%args229910230635%_
                                               (reverse _%args229909230625%_)))
                                          (let ((_%g229858230637%_
                                                 _%args229910230635%_)
                                                (_%g229859230638%_
                                                 _%hd229900230610%_)
                                                (_%g229860230639%_
                                                 _%hd229891230586%_)
                                                (_%g229861230640%_
                                                 _%hd229882230562%_)
                                                (_%g229862230641%_
                                                 _%hd229873230538%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229862230641%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229861230640%_
                                                        'call-method))
                                                     (let ((__tmp236482
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229802%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g229860230639%_
                                                        __tmp236482)))
                                                (_%__kont235795235796%_
                                                 _%g229858230637%_
                                                 _%g229859230638%_
                                                 _%g229860230639%_
                                                 _%g229861230640%_
                                                 _%g229862230641%_)
                                                (_%__kont235807235808%_))))))))
                          (_%loop229905230620%_ _%target229902230615%_ '()))))
                     (_%__match235962235963%_
                      (lambda (_%e229863230511%_
                               _%hd229864230514%_
                               _%tl229865230516%_
                               _%e229866230519%_
                               _%hd229867230522%_
                               _%tl229868230524%_
                               _%e229869230527%_
                               _%hd229870230530%_
                               _%tl229871230532%_
                               _%e229872230535%_
                               _%hd229873230538%_
                               _%tl229874230540%_
                               _%e229875230543%_
                               _%hd229876230546%_
                               _%tl229877230548%_
                               _%e229878230551%_
                               _%hd229879230554%_
                               _%tl229880230556%_
                               _%e229881230559%_
                               _%hd229882230562%_
                               _%tl229883230564%_
                               _%e229884230567%_
                               _%hd229885230570%_
                               _%tl229886230572%_
                               _%e229887230575%_
                               _%hd229888230578%_
                               _%tl229889230580%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd229888230578%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229889230580%_))
                                (let ((_%e229890230583%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229889230580%_))))
                                  (let ((_%tl229892230588%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229890230583%_)))
                                        (_%hd229891230586%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229890230583%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229892230588%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229886230572%_))
                                            (let ((_%e229893230591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229886230572%_))))
                                              (let ((_%tl229895230596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229893230591%_)))
                                                    (_%hd229894230594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229893230591%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd229894230594%_))
                                                    (let ((_%e229896230599%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229894230594%_))))
                                                      (let ((_%tl229898230604%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229896230599%_)))
                    (_%hd229897230602%_
                     (let () (declare (not safe)) (##car _%e229896230599%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd229897230602%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd229897230602%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229898230604%_))
                            (let ((_%e229899230607%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229898230604%_))))
                              (let ((_%tl229901230612%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229899230607%_)))
                                    (_%hd229900230610%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229899230607%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229901230612%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl229895230596%_))
                                        (let ((_%__splice235797235798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl229895230596%_
                                                  '0))))
                                          (let ((_%tl229904230617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice235797235798%_
                                                    '1)))
                                                (_%target229902230615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice235797235798%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl229904230617%_))
                                                (_%__match236004236005%_
                                                 _%e229863230511%_
                                                 _%hd229864230514%_
                                                 _%tl229865230516%_
                                                 _%e229866230519%_
                                                 _%hd229867230522%_
                                                 _%tl229868230524%_
                                                 _%e229869230527%_
                                                 _%hd229870230530%_
                                                 _%tl229871230532%_
                                                 _%e229872230535%_
                                                 _%hd229873230538%_
                                                 _%tl229874230540%_
                                                 _%e229875230543%_
                                                 _%hd229876230546%_
                                                 _%tl229877230548%_
                                                 _%e229878230551%_
                                                 _%hd229879230554%_
                                                 _%tl229880230556%_
                                                 _%e229881230559%_
                                                 _%hd229882230562%_
                                                 _%tl229883230564%_
                                                 _%e229884230567%_
                                                 _%hd229885230570%_
                                                 _%tl229886230572%_
                                                 _%e229887230575%_
                                                 _%hd229888230578%_
                                                 _%tl229889230580%_
                                                 _%e229890230583%_
                                                 _%hd229891230586%_
                                                 _%tl229892230588%_
                                                 _%e229893230591%_
                                                 _%hd229894230594%_
                                                 _%tl229895230596%_
                                                 _%e229896230599%_
                                                 _%hd229897230602%_
                                                 _%tl229898230604%_
                                                 _%e229899230607%_
                                                 _%hd229900230610%_
                                                 _%tl229901230612%_
                                                 _%__splice235797235798%_
                                                 _%target229902230615%_
                                                 _%tl229904230617%_)
                                                (_%__kont235807235808%_))))
                                        (_%__kont235807235808%_))
                                    (_%__kont235807235808%_))))
                            (_%__kont235807235808%_))
                        (_%__kont235807235808%_))
                    (_%__kont235807235808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont235807235808%_))))
                                            (_%__match236286236287%_
                                             _%e229863230511%_
                                             _%hd229864230514%_
                                             _%tl229865230516%_
                                             _%e229866230519%_
                                             _%hd229867230522%_
                                             _%tl229868230524%_
                                             _%e229869230527%_
                                             _%hd229870230530%_
                                             _%tl229871230532%_
                                             _%e229872230535%_
                                             _%hd229873230538%_
                                             _%tl229874230540%_
                                             _%e229875230543%_
                                             _%hd229876230546%_
                                             _%tl229877230548%_
                                             _%e229878230551%_
                                             _%hd229879230554%_
                                             _%tl229880230556%_
                                             _%e229881230559%_
                                             _%hd229882230562%_
                                             _%tl229883230564%_
                                             _%e229884230567%_
                                             _%hd229885230570%_
                                             _%tl229886230572%_))
                                        (_%__match236286236287%_
                                         _%e229863230511%_
                                         _%hd229864230514%_
                                         _%tl229865230516%_
                                         _%e229866230519%_
                                         _%hd229867230522%_
                                         _%tl229868230524%_
                                         _%e229869230527%_
                                         _%hd229870230530%_
                                         _%tl229871230532%_
                                         _%e229872230535%_
                                         _%hd229873230538%_
                                         _%tl229874230540%_
                                         _%e229875230543%_
                                         _%hd229876230546%_
                                         _%tl229877230548%_
                                         _%e229878230551%_
                                         _%hd229879230554%_
                                         _%tl229880230556%_
                                         _%e229881230559%_
                                         _%hd229882230562%_
                                         _%tl229883230564%_
                                         _%e229884230567%_
                                         _%hd229885230570%_
                                         _%tl229886230572%_))))
                                (_%__match236286236287%_
                                 _%e229863230511%_
                                 _%hd229864230514%_
                                 _%tl229865230516%_
                                 _%e229866230519%_
                                 _%hd229867230522%_
                                 _%tl229868230524%_
                                 _%e229869230527%_
                                 _%hd229870230530%_
                                 _%tl229871230532%_
                                 _%e229872230535%_
                                 _%hd229873230538%_
                                 _%tl229874230540%_
                                 _%e229875230543%_
                                 _%hd229876230546%_
                                 _%tl229877230548%_
                                 _%e229878230551%_
                                 _%hd229879230554%_
                                 _%tl229880230556%_
                                 _%e229881230559%_
                                 _%hd229882230562%_
                                 _%tl229883230564%_
                                 _%e229884230567%_
                                 _%hd229885230570%_
                                 _%tl229886230572%_))
                            (_%__match236072236073%_
                             _%e229863230511%_
                             _%hd229864230514%_
                             _%tl229865230516%_
                             _%e229866230519%_
                             _%hd229867230522%_
                             _%tl229868230524%_
                             _%e229869230527%_
                             _%hd229870230530%_
                             _%tl229871230532%_
                             _%e229872230535%_
                             _%hd229873230538%_
                             _%tl229874230540%_
                             _%e229875230543%_
                             _%hd229876230546%_
                             _%tl229877230548%_
                             _%e229878230551%_
                             _%hd229879230554%_
                             _%tl229880230556%_
                             _%e229881230559%_
                             _%hd229882230562%_
                             _%tl229883230564%_
                             _%e229884230567%_
                             _%hd229885230570%_
                             _%tl229886230572%_
                             _%e229887230575%_
                             _%hd229888230578%_
                             _%tl229889230580%_))))
                     (_%__match235894235895%_
                      (lambda (_%e229819230701%_
                               _%hd229820230704%_
                               _%tl229821230706%_
                               _%e229822230709%_
                               _%hd229823230712%_
                               _%tl229824230714%_
                               _%e229825230717%_
                               _%hd229826230720%_
                               _%tl229827230722%_
                               _%e229828230725%_
                               _%hd229829230728%_
                               _%tl229830230730%_
                               _%e229831230733%_
                               _%hd229832230736%_
                               _%tl229833230738%_
                               _%e229834230741%_
                               _%hd229835230744%_
                               _%tl229836230746%_
                               _%e229837230749%_
                               _%hd229838230752%_
                               _%tl229839230754%_
                               _%e229840230757%_
                               _%hd229841230760%_
                               _%tl229842230762%_
                               _%e229843230765%_
                               _%hd229844230768%_
                               _%tl229845230770%_
                               _%e229846230773%_
                               _%hd229847230776%_
                               _%tl229848230778%_
                               _%__splice235793235794%_
                               _%target229849230781%_
                               _%tl229851230783%_)
                        (letrec ((_%loop229852230786%_
                                  (lambda (_%hd229850230789%_
                                           _%args229856230791%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229850230789%_))
                                        (let ((_%e229853230793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229850230789%_))))
                                          (let ((_%lp-tl229855230798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229853230793%_)))
                                                (_%lp-hd229854230796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229853230793%_))))
                                            (_%loop229852230786%_
                                             _%lp-tl229855230798%_
                                             (cons _%lp-hd229854230796%_
                                                   _%args229856230791%_))))
                                        (let ((_%args229857230801%_
                                               (reverse _%args229856230791%_)))
                                          (let ((_%g229815230803%_
                                                 _%args229857230801%_)
                                                (_%g229816230804%_
                                                 _%hd229847230776%_)
                                                (_%g229817230805%_
                                                 _%hd229838230752%_)
                                                (_%g229818230806%_
                                                 _%hd229829230728%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229818230806%_
                                                        'call-method))
                                                     (let ((__tmp236483
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229802%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g229817230805%_
                                                        __tmp236483)))
                                                (_%__kont235791235792%_
                                                 _%g229815230803%_
                                                 _%g229816230804%_
                                                 _%g229817230805%_
                                                 _%g229818230806%_)
                                                (_%__match236082236083%_
                                                 _%e229819230701%_
                                                 _%hd229820230704%_
                                                 _%tl229821230706%_
                                                 _%e229822230709%_
                                                 _%hd229823230712%_
                                                 _%tl229824230714%_
                                                 _%e229825230717%_
                                                 _%hd229826230720%_
                                                 _%tl229827230722%_
                                                 _%e229828230725%_
                                                 _%hd229829230728%_
                                                 _%tl229830230730%_
                                                 _%e229831230733%_
                                                 _%hd229832230736%_
                                                 _%tl229833230738%_
                                                 _%e229834230741%_
                                                 _%hd229835230744%_
                                                 _%tl229836230746%_
                                                 _%e229837230749%_
                                                 _%hd229838230752%_
                                                 _%tl229839230754%_
                                                 _%e229840230757%_
                                                 _%hd229841230760%_
                                                 _%tl229842230762%_
                                                 _%e229843230765%_
                                                 _%hd229844230768%_
                                                 _%tl229845230770%_
                                                 _%e229846230773%_
                                                 _%hd229847230776%_
                                                 _%tl229848230778%_))))))))
                          (_%loop229852230786%_ _%target229849230781%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx235789235790%_))
                    (let ((_%e229819230701%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx235789235790%_))))
                      (let ((_%tl229821230706%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229819230701%_)))
                            (_%hd229820230704%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229819230701%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229821230706%_))
                            (let ((_%e229822230709%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229821230706%_))))
                              (let ((_%tl229824230714%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229822230709%_)))
                                    (_%hd229823230712%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229822230709%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd229823230712%_))
                                    (let ((_%e229825230717%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229823230712%_))))
                                      (let ((_%tl229827230722%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229825230717%_)))
                                            (_%hd229826230720%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229825230717%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd229826230720%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd229826230720%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229827230722%_))
                                                    (let ((_%e229828230725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229827230722%_))))
                                                      (let ((_%tl229830230730%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229828230725%_)))
                    (_%hd229829230728%_
                     (let () (declare (not safe)) (##car _%e229828230725%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl229830230730%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229824230714%_))
                        (let ((_%e229831230733%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl229824230714%_))))
                          (let ((_%tl229833230738%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229831230733%_)))
                                (_%hd229832230736%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229831230733%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229832230736%_))
                                (let ((_%e229834230741%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd229832230736%_))))
                                  (let ((_%tl229836230746%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229834230741%_)))
                                        (_%hd229835230744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229834230741%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229835230744%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd229835230744%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229836230746%_))
                                                (let ((_%e229837230749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl229836230746%_))))
                                                  (let ((_%tl229839230754%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229837230749%_)))
                                                        (_%hd229838230752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229837230749%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229839230754%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229833230738%_))
                                                            (let ((_%e229840230757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229833230738%_))))
                      (let ((_%tl229842230762%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229840230757%_)))
                            (_%hd229841230760%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229840230757%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd229841230760%_))
                            (let ((_%e229843230765%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd229841230760%_))))
                              (let ((_%tl229845230770%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229843230765%_)))
                                    (_%hd229844230768%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229843230765%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd229844230768%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd229844230768%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229845230770%_))
                                            (let ((_%e229846230773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229845230770%_))))
                                              (let ((_%tl229848230778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229846230773%_)))
                                                    (_%hd229847230776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229846230773%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl229848230778%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl229842230762%_))
                                                        (let ((_%__splice235793235794%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl229842230762%_
                          '0))))
                  (let ((_%tl229851230783%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice235793235794%_ '1)))
                        (_%target229849230781%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice235793235794%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229851230783%_))
                        (_%__match235894235895%_
                         _%e229819230701%_
                         _%hd229820230704%_
                         _%tl229821230706%_
                         _%e229822230709%_
                         _%hd229823230712%_
                         _%tl229824230714%_
                         _%e229825230717%_
                         _%hd229826230720%_
                         _%tl229827230722%_
                         _%e229828230725%_
                         _%hd229829230728%_
                         _%tl229830230730%_
                         _%e229831230733%_
                         _%hd229832230736%_
                         _%tl229833230738%_
                         _%e229834230741%_
                         _%hd229835230744%_
                         _%tl229836230746%_
                         _%e229837230749%_
                         _%hd229838230752%_
                         _%tl229839230754%_
                         _%e229840230757%_
                         _%hd229841230760%_
                         _%tl229842230762%_
                         _%e229843230765%_
                         _%hd229844230768%_
                         _%tl229845230770%_
                         _%e229846230773%_
                         _%hd229847230776%_
                         _%tl229848230778%_
                         _%__splice235793235794%_
                         _%target229849230781%_
                         _%tl229851230783%_)
                        (_%__match236082236083%_
                         _%e229819230701%_
                         _%hd229820230704%_
                         _%tl229821230706%_
                         _%e229822230709%_
                         _%hd229823230712%_
                         _%tl229824230714%_
                         _%e229825230717%_
                         _%hd229826230720%_
                         _%tl229827230722%_
                         _%e229828230725%_
                         _%hd229829230728%_
                         _%tl229830230730%_
                         _%e229831230733%_
                         _%hd229832230736%_
                         _%tl229833230738%_
                         _%e229834230741%_
                         _%hd229835230744%_
                         _%tl229836230746%_
                         _%e229837230749%_
                         _%hd229838230752%_
                         _%tl229839230754%_
                         _%e229840230757%_
                         _%hd229841230760%_
                         _%tl229842230762%_
                         _%e229843230765%_
                         _%hd229844230768%_
                         _%tl229845230770%_
                         _%e229846230773%_
                         _%hd229847230776%_
                         _%tl229848230778%_))))
                (_%__match236082236083%_
                 _%e229819230701%_
                 _%hd229820230704%_
                 _%tl229821230706%_
                 _%e229822230709%_
                 _%hd229823230712%_
                 _%tl229824230714%_
                 _%e229825230717%_
                 _%hd229826230720%_
                 _%tl229827230722%_
                 _%e229828230725%_
                 _%hd229829230728%_
                 _%tl229830230730%_
                 _%e229831230733%_
                 _%hd229832230736%_
                 _%tl229833230738%_
                 _%e229834230741%_
                 _%hd229835230744%_
                 _%tl229836230746%_
                 _%e229837230749%_
                 _%hd229838230752%_
                 _%tl229839230754%_
                 _%e229840230757%_
                 _%hd229841230760%_
                 _%tl229842230762%_
                 _%e229843230765%_
                 _%hd229844230768%_
                 _%tl229845230770%_
                 _%e229846230773%_
                 _%hd229847230776%_
                 _%tl229848230778%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match236286236287%_
                                                     _%e229819230701%_
                                                     _%hd229820230704%_
                                                     _%tl229821230706%_
                                                     _%e229822230709%_
                                                     _%hd229823230712%_
                                                     _%tl229824230714%_
                                                     _%e229825230717%_
                                                     _%hd229826230720%_
                                                     _%tl229827230722%_
                                                     _%e229828230725%_
                                                     _%hd229829230728%_
                                                     _%tl229830230730%_
                                                     _%e229831230733%_
                                                     _%hd229832230736%_
                                                     _%tl229833230738%_
                                                     _%e229834230741%_
                                                     _%hd229835230744%_
                                                     _%tl229836230746%_
                                                     _%e229837230749%_
                                                     _%hd229838230752%_
                                                     _%tl229839230754%_
                                                     _%e229840230757%_
                                                     _%hd229841230760%_
                                                     _%tl229842230762%_))))
                                            (_%__match236286236287%_
                                             _%e229819230701%_
                                             _%hd229820230704%_
                                             _%tl229821230706%_
                                             _%e229822230709%_
                                             _%hd229823230712%_
                                             _%tl229824230714%_
                                             _%e229825230717%_
                                             _%hd229826230720%_
                                             _%tl229827230722%_
                                             _%e229828230725%_
                                             _%hd229829230728%_
                                             _%tl229830230730%_
                                             _%e229831230733%_
                                             _%hd229832230736%_
                                             _%tl229833230738%_
                                             _%e229834230741%_
                                             _%hd229835230744%_
                                             _%tl229836230746%_
                                             _%e229837230749%_
                                             _%hd229838230752%_
                                             _%tl229839230754%_
                                             _%e229840230757%_
                                             _%hd229841230760%_
                                             _%tl229842230762%_))
                                        (_%__match235962235963%_
                                         _%e229819230701%_
                                         _%hd229820230704%_
                                         _%tl229821230706%_
                                         _%e229822230709%_
                                         _%hd229823230712%_
                                         _%tl229824230714%_
                                         _%e229825230717%_
                                         _%hd229826230720%_
                                         _%tl229827230722%_
                                         _%e229828230725%_
                                         _%hd229829230728%_
                                         _%tl229830230730%_
                                         _%e229831230733%_
                                         _%hd229832230736%_
                                         _%tl229833230738%_
                                         _%e229834230741%_
                                         _%hd229835230744%_
                                         _%tl229836230746%_
                                         _%e229837230749%_
                                         _%hd229838230752%_
                                         _%tl229839230754%_
                                         _%e229840230757%_
                                         _%hd229841230760%_
                                         _%tl229842230762%_
                                         _%e229843230765%_
                                         _%hd229844230768%_
                                         _%tl229845230770%_))
                                    (_%__match236286236287%_
                                     _%e229819230701%_
                                     _%hd229820230704%_
                                     _%tl229821230706%_
                                     _%e229822230709%_
                                     _%hd229823230712%_
                                     _%tl229824230714%_
                                     _%e229825230717%_
                                     _%hd229826230720%_
                                     _%tl229827230722%_
                                     _%e229828230725%_
                                     _%hd229829230728%_
                                     _%tl229830230730%_
                                     _%e229831230733%_
                                     _%hd229832230736%_
                                     _%tl229833230738%_
                                     _%e229834230741%_
                                     _%hd229835230744%_
                                     _%tl229836230746%_
                                     _%e229837230749%_
                                     _%hd229838230752%_
                                     _%tl229839230754%_
                                     _%e229840230757%_
                                     _%hd229841230760%_
                                     _%tl229842230762%_))))
                            (_%__match236286236287%_
                             _%e229819230701%_
                             _%hd229820230704%_
                             _%tl229821230706%_
                             _%e229822230709%_
                             _%hd229823230712%_
                             _%tl229824230714%_
                             _%e229825230717%_
                             _%hd229826230720%_
                             _%tl229827230722%_
                             _%e229828230725%_
                             _%hd229829230728%_
                             _%tl229830230730%_
                             _%e229831230733%_
                             _%hd229832230736%_
                             _%tl229833230738%_
                             _%e229834230741%_
                             _%hd229835230744%_
                             _%tl229836230746%_
                             _%e229837230749%_
                             _%hd229838230752%_
                             _%tl229839230754%_
                             _%e229840230757%_
                             _%hd229841230760%_
                             _%tl229842230762%_))))
                    (_%__match236224236225%_
                     _%e229819230701%_
                     _%hd229820230704%_
                     _%tl229821230706%_
                     _%e229822230709%_
                     _%hd229823230712%_
                     _%tl229824230714%_
                     _%e229825230717%_
                     _%hd229826230720%_
                     _%tl229827230722%_
                     _%e229828230725%_
                     _%hd229829230728%_
                     _%tl229830230730%_
                     _%e229831230733%_
                     _%hd229832230736%_
                     _%tl229833230738%_
                     _%e229834230741%_
                     _%hd229835230744%_
                     _%tl229836230746%_
                     _%e229837230749%_
                     _%hd229838230752%_
                     _%tl229839230754%_))
                (_%__kont235807235808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont235807235808%_))
                                            (_%__kont235807235808%_))
                                        (_%__kont235807235808%_))))
                                (_%__kont235807235808%_))))
                        (_%__kont235807235808%_))
                    (_%__kont235807235808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont235807235808%_))
                                                (_%__kont235807235808%_))
                                            (_%__kont235807235808%_))))
                                    (_%__kont235807235808%_))))
                            (_%__kont235807235808%_))))
                    (_%__kont235807235808%_))))))))))
