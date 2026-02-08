(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770513300)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp232264 (list gxc#::identity::t))
            (__tmp232263 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp232264
         '()
         __tmp232263
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args231061%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args231061%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp232265
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
        (__make-atomic-promise __tmp232265)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx231053%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self231056%_
                (let ((__obj232256
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj232256))
               (__tmp232266
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self231056%_ _%stx231053%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp232266
           gxc#current-compile-method
           _%self231056%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp232268 (list gxc#::false::t))
            (__tmp232267 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp232268
         '()
         __tmp232267
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args231050%_
        (apply make-instance gxc#::extract-receiver::t _%$args231050%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp232269
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
        (__make-atomic-promise __tmp232269)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx231042%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self231045%_
                (let ((__obj232258
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj232258))
               (__tmp232270
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self231045%_ _%stx231042%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp232270
           gxc#current-compile-method
           _%self231045%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp232272 (list gxc#::void::t))
            (__tmp232271 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp232272
         '(receiver methods slots)
         __tmp232271
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args231039%_
        (apply make-instance gxc#::collect-object-refs::t _%$args231039%_)))
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
      (let ((__tmp232273
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
        (__make-atomic-promise __tmp232273)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords231008%_
               _%receiver231003231009%_
               _%methods231004231010%_
               _%slots231005231011%_
               _%stx231012%_)
        (let* ((_%receiver231015%_
                (if (eq? _%receiver231003231009%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver231003231009%_))
               (_%methods231017%_
                (if (eq? _%methods231004231010%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods231004231010%_))
               (_%slots231019%_
                (if (eq? _%slots231005231011%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots231005231011%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self231021%_
                  (let ((__obj232260
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
                       __obj232260
                       _%receiver231015%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232260
                       _%methods231017%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232260
                       _%slots231019%_
                       '3
                       '#f
                       '#f))
                    __obj232260))
                 (__tmp232274
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self231021%_ _%stx231012%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp232274
             gxc#current-compile-method
             _%self231021%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords231028%_ . _%args231029%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords231028%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords231028%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords231028%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords231028%_
                  'slots:
                  absent-value))
               _%args231029%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args231006231035%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args231006231035%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp232276 (list gxc#::basic-xform-expression::t))
            (__tmp232275 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp232276
         '(receiver klass methods slots)
         __tmp232275
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args230999%_
        (apply make-instance gxc#::subst-object-refs::t _%$args230999%_)))
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
      (let ((__tmp232277
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
        (__make-atomic-promise __tmp232277)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords230965%_
               _%receiver230959230966%_
               _%klass230960230967%_
               _%methods230961230968%_
               _%slots230962230969%_
               _%stx230970%_)
        (let* ((_%receiver230973%_
                (if (eq? _%receiver230959230966%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver230959230966%_))
               (_%klass230975%_
                (if (eq? _%klass230960230967%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass230960230967%_))
               (_%methods230977%_
                (if (eq? _%methods230961230968%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods230961230968%_))
               (_%slots230979%_
                (if (eq? _%slots230962230969%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots230962230969%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self230981%_
                  (let ((__obj232262
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
                       __obj232262
                       _%receiver230973%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232262
                       _%klass230975%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232262
                       _%methods230977%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232262
                       _%slots230979%_
                       '4
                       '#f
                       '#f))
                    __obj232262))
                 (__tmp232278
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self230981%_ _%stx230970%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp232278
             gxc#current-compile-method
             _%self230981%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords230988%_ . _%args230989%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords230988%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230988%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230988%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230988%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230988%_
                  'slots:
                  absent-value))
               _%args230989%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args230963230995%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args230963230995%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self228090%_ _%stx228091%_)
        (letrec ((_%generate-method-bind228093%_
                  (lambda (_%$klass230951%_
                           _%$method-table230952%_
                           _%id230953%_
                           _%$id230954%_)
                    (let ((_%$tmp230956%_
                           (let ((__tmp232279
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp232279))))
                      (cons (cons _%$id230954%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp230956%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table230952%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id230953%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp230956%_ '()))
                    (cons (cons '%#ref (cons _%$tmp230956%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id230953%_
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
                 (_%generate-slot-bind228094%_
                  (lambda (_%$klass230945%_ _%id230946%_ _%$id230947%_)
                    (let ((_%$tmp230949%_
                           (let ((__tmp232280
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp232280))))
                      (cons (cons _%$id230947%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp230949%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass230945%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id230946%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp230949%_ '()))
                        (cons (cons '%#ref (cons _%$tmp230949%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id230946%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl228095%_
                  (lambda (_%$klass230939%_
                           _%$method-table230940%_
                           _%methods-bind230941%_
                           _%slots-bind230942%_
                           _%specializer-impl230943%_)
                    (let ((__tmp232281
                           (cons '%#lambda
                                 (cons (cons _%$klass230939%_
                                             (cons _%$method-table230940%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind230942%_
                                                            _%methods-bind230941%_))
                                                         (cons _%specializer-impl230943%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp232281 _%stx228091%_))))
                 (_%generate-specializer-def228096%_
                  (lambda (_%id230935%_
                           _%specializer-id230936%_
                           _%specializer-impl230937%_)
                    (let ((__tmp232282
                           (cons '%#begin
                                 (cons _%stx228091%_
                                       (cons (let ((__tmp232283
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id230936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl230937%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp232283
                                                _%stx228091%_))
                                             (cons (let ((__tmp232284
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id230935%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id230936%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp232284
                                                      _%stx228091%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp232282 _%stx228091%_)))))
          (let* ((_%__stx231150231151%_ _%stx228091%_)
                 (_%g228099228119%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx231150231151%_)))))
            (let ((_%__kont231152231153%_
                   (lambda (_%g228101228163%_ _%g228102228164%_)
                     (let ((_%method-calls228183%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs228184%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty228185%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?228187%_
                                 (lambda ()
                                   (if (let ((__tmp232285
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls228183%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp232285))
                                       (let ((__tmp232286
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs228184%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp232286))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g228101228163%_))
                             (let* ((_%__stx231064231065%_ _%g228101228163%_)
                                    (_%g228571228589%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx231064231065%_)))))
                               (let ((_%__kont231066231067%_
                                      (lambda (_%g228573228625%_
                                               _%g228574228626%_
                                               _%g228575228627%_)
                                        (let ((_%receiver228647%_
                                               (let ((_%$e228644%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g228573228625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e228644%_
                                                     _%$e228644%_
                                                     _%g228575228627%_))))
                                          (for-each
                                           (lambda (_%g228648228650%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver228647%_
                                              _%method-calls228183%_
                                              _%slot-refs228184%_
                                              _%g228648228650%_))
                                           _%g228573228625%_)
                                          (if (_%no-specializer?228187%_)
                                              _%stx228091%_
                                              (let* ((_%specializer-id228659%_
                                                      (let* ((_%id228653%_
                                                              (let ((__tmp232287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g228102228164%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp232287 '"::specialize")))
                     (_%specializer-id228656%_
                      (let ((__tmp232288
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx228091%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id228653%_ __tmp232288))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id228656%_))
                _%specializer-id228656%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass228661%_
                                                      (let ((__tmp232289
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp232289)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table228663%_
                                                      (let ((__tmp232290
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp232290)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods228665%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls228183%_)))
                                                     (_%$methods228669%_
                                                      (let ((__tmp232291
                                                             (lambda (_%id228667%_)
                                                               (let ((__tmp232292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id228667%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232292)))))
                (declare (not safe))
                (##map __tmp232291 _%methods228665%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_228678%_
                                                      (let ((__tmp232293
                                                             (lambda (_%g228670228673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228671228675%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls228183%_
                          _%g228670228673%_
                          _%g228671228675%_)))))
                (declare (not safe))
                (##for-each __tmp232293 _%methods228665%_ _%$methods228669%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind228688%_
                                                      (let ((__tmp232294
                                                             (lambda (_%g228680228683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228681228685%_)
                       (_%generate-method-bind228093%_
                        _%$klass228661%_
                        _%$method-table228663%_
                        _%g228680228683%_
                        _%g228681228685%_))))
                (declare (not safe))
                (##map __tmp232294 _%methods228665%_ _%$methods228669%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots228690%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs228184%_)))
                                                     (_%$slots228694%_
                                                      (let ((__tmp232295
                                                             (lambda (_%id228692%_)
                                                               (let ((__tmp232296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id228692%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232296)))))
                (declare (not safe))
                (##map __tmp232295 _%slots228690%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_228703%_
                                                      (let ((__tmp232297
                                                             (lambda (_%g228695228698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228696228700%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs228184%_
                          _%g228695228698%_
                          _%g228696228700%_)))))
                (declare (not safe))
                (##for-each __tmp232297 _%slots228690%_ _%$slots228694%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind228712%_
                                                      (let ((__tmp232298
                                                             (lambda (_%g228704228707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228705228709%_)
                       (_%generate-slot-bind228094%_
                        _%$klass228661%_
                        _%g228704228707%_
                        _%g228705228709%_))))
                (declare (not safe))
                (##map __tmp232298 _%slots228690%_ _%$slots228694%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body228718%_
                                                      (map (lambda (_%g228713228715%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver228647%_
                                                              _%$klass228661%_
                                                              _%method-calls228183%_
                                                              _%slot-refs228184%_
                                                              _%g228713228715%_))
                                                           _%g228573228625%_))
                                                     (_%specializer-impl228720%_
                                                      (let ((__tmp232299
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g228575228627%_ _%g228574228626%_)
                                 _%specializer-body228718%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp232299 _%stx228091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl228722%_
                                                      (_%generate-specializer-impl228095%_
                                                       _%$klass228661%_
                                                       _%$method-table228663%_
                                                       _%methods-bind228688%_
                                                       _%slots-bind228712%_
                                                       _%specializer-impl228720%_)))
                                                (let ((__tmp232301
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g228102228164%_)))
                                                      (__tmp232300
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id228659%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp232301
                                                   '" => "
                                                   __tmp232300))
                                                (_%generate-specializer-def228096%_
                                                 _%g228102228164%_
                                                 _%specializer-id228659%_
                                                 _%specializer-impl228722%_))))))
                                     (_%__kont231068231069%_
                                      (lambda () _%stx228091%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx231064231065%_))
                                     (let ((_%e228576228601%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx231064231065%_))))
                                       (let ((_%tl228578228606%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e228576228601%_)))
                                             (_%hd228577228604%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e228576228601%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl228578228606%_))
                                             (let ((_%e228579228609%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl228578228606%_))))
                                               (let ((_%tl228581228614%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e228579228609%_)))
                                                     (_%hd228580228612%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e228579228609%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd228580228612%_))
                                                     (let ((_%e228582228617%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd228580228612%_))))
                                                       (let ((_%tl228584228622%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e228582228617%_)))
                     (_%hd228583228620%_
                      (let () (declare (not safe)) (##car _%e228582228617%_))))
                 (_%__kont231066231067%_
                  _%tl228581228614%_
                  _%tl228584228622%_
                  _%hd228583228620%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont231068231069%_))))
                                             (_%__kont231068231069%_))))
                                     (_%__kont231068231069%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g228101228163%_))
                                 (let* ((_%g228729228748%_
                                         (lambda (_%g228730228745%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g228730228745%_))))
                                        (_%g228728229044%_
                                         (lambda (_%g228730228751%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g228730228751%_))
                                               (let ((_%e228732228753%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g228730228751%_))))
                                                 (let ((_%hd228733228756%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e228732228753%_)))
                                                       (_%tl228734228758%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e228732228753%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl228734228758%_))
                                                       (let ((_g232302_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl228734228758%_ '0))))
                 (begin
                   (let ((_g232303_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g232302_)
                                (##values-length _g232302_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g232303_ 2)))
                         (error "Context expects 2 values" _g232303_)))
                   (let ((_%target228735228761%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g232302_ 0)))
                         (_%tl228737228763%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g232302_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl228737228763%_))
                         (letrec ((_%loop228738228766%_
                                   (lambda (_%hd228736228769%_
                                            _%clause228742228771%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd228736228769%_))
                                         (let ((_%e228739228773%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd228736228769%_))))
                                           (let ((_%lp-hd228740228776%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e228739228773%_)))
                                                 (_%lp-tl228741228778%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e228739228773%_))))
                                             (_%loop228738228766%_
                                              _%lp-tl228741228778%_
                                              (cons _%lp-hd228740228776%_
                                                    _%clause228742228771%_))))
                                         (let ((_%clause228743228781%_
                                                (reverse _%clause228742228771%_)))
                                           ((lambda (_%g228731228783%_)
                                              (for-each
                                               (lambda (_%clause228797%_)
                                                 (let* ((_%__stx231090231091%_
                                                         _%clause228797%_)
                                                        (_%g228800228815%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx231090231091%_)))))
                                                   (let ((_%__kont231092231093%_
                                                          (lambda (_%g228802228843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g228803228844%_
                           _%g228804228845%_)
                    (let ((_%receiver228864%_
                           (let ((_%$e228861%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g228802228843%_))))
                             (if _%$e228861%_
                                 _%$e228861%_
                                 _%g228804228845%_))))
                      (for-each
                       (lambda (_%g228865228867%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver228864%_
                          _%method-calls228183%_
                          _%slot-refs228184%_
                          _%g228865228867%_))
                       _%g228802228843%_))))
                 (_%__kont231094231095%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx231090231091%_))
                                                         (let ((_%e228805228827%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx231090231091%_))))
                   (let ((_%tl228807228832%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e228805228827%_)))
                         (_%hd228806228830%_
                          (let ()
                            (declare (not safe))
                            (##car _%e228805228827%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd228806228830%_))
                         (let ((_%e228808228835%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd228806228830%_))))
                           (let ((_%tl228810228840%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e228808228835%_)))
                                 (_%hd228809228838%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e228808228835%_))))
                             (_%__kont231092231093%_
                              _%tl228807228832%_
                              _%tl228810228840%_
                              _%hd228809228838%_)))
                         (_%__kont231094231095%_))))
                 (_%__kont231094231095%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp232304
                                                      (lambda (_%g228872228875%_
                                                               _%g228873228877%_)
                                                        (cons _%g228872228875%_
                                                              _%g228873228877%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp232304
                                                  '()
                                                  _%g228731228783%_)))
                                              (if (_%no-specializer?228187%_)
                                                  _%stx228091%_
                                                  (let* ((_%specializer-id228886%_
                                                          (let* ((_%id228880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp232305
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g228102228164%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp232305 '"::specialize")))
                         (_%specializer-id228883%_
                          (let ((__tmp232306
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx228091%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id228880%_
                             __tmp232306))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id228883%_))
                    _%specializer-id228883%_))
                 (_%$klass228888%_
                  (let ((__tmp232307
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232307)))
                 (_%$method-table228890%_
                  (let ((__tmp232308
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232308)))
                 (_%methods228892%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls228183%_)))
                 (_%$methods228896%_
                  (let ((__tmp232309
                         (lambda (_%id228894%_)
                           (let ((__tmp232310 (gensym _%id228894%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232310)))))
                    (declare (not safe))
                    (##map __tmp232309 _%methods228892%_)))
                 (_%_228905%_
                  (let ((__tmp232311
                         (lambda (_%g228897228900%_ _%g228898228902%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls228183%_
                              _%g228897228900%_
                              _%g228898228902%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp232311
                     _%methods228892%_
                     _%$methods228896%_)))
                 (_%methods-bind228915%_
                  (let ((__tmp232312
                         (lambda (_%g228907228910%_ _%g228908228912%_)
                           (_%generate-method-bind228093%_
                            _%$klass228888%_
                            _%$method-table228890%_
                            _%g228907228910%_
                            _%g228908228912%_))))
                    (declare (not safe))
                    (##map __tmp232312 _%methods228892%_ _%$methods228896%_)))
                 (_%slots228917%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs228184%_)))
                 (_%$slots228921%_
                  (let ((__tmp232313
                         (lambda (_%id228919%_)
                           (let ((__tmp232314 (gensym _%id228919%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232314)))))
                    (declare (not safe))
                    (##map __tmp232313 _%slots228917%_)))
                 (_%_228930%_
                  (let ((__tmp232315
                         (lambda (_%g228922228925%_ _%g228923228927%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs228184%_
                              _%g228922228925%_
                              _%g228923228927%_)))))
                    (declare (not safe))
                    (##for-each __tmp232315 _%slots228917%_ _%$slots228921%_)))
                 (_%slots-bind228939%_
                  (let ((__tmp232316
                         (lambda (_%g228931228934%_ _%g228932228936%_)
                           (_%generate-slot-bind228094%_
                            _%$klass228888%_
                            _%g228931228934%_
                            _%g228932228936%_))))
                    (declare (not safe))
                    (##map __tmp232316 _%slots228917%_ _%$slots228921%_)))
                 (_%specializer-clauses229037%_
                  (map (lambda (_%clause228941%_)
                         (let* ((_%__stx231110231111%_ _%clause228941%_)
                                (_%g228944228959%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx231110231111%_)))))
                           (let ((_%__kont231112231113%_
                                  (lambda (_%g228946228987%_
                                           _%g228947228988%_
                                           _%g228948228989%_)
                                    (let* ((_%receiver229018%_
                                            (let ((_%$e229015%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g228946228987%_))))
                                              (if _%$e229015%_
                                                  _%$e229015%_
                                                  _%g228948228989%_)))
                                           (_%body229024%_
                                            (map (lambda (_%g229019229021%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver229018%_
                                                    _%$klass228888%_
                                                    _%method-calls228183%_
                                                    _%slot-refs228184%_
                                                    _%g229019229021%_))
                                                 _%g228946228987%_)))
                                      (cons (cons _%g228948228989%_
                                                  _%g228947228988%_)
                                            _%body229024%_))))
                                 (_%__kont231114231115%_
                                  (lambda () _%clause228941%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx231110231111%_))
                                 (let ((_%e228949228971%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx231110231111%_))))
                                   (let ((_%tl228951228976%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e228949228971%_)))
                                         (_%hd228950228974%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e228949228971%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd228950228974%_))
                                         (let ((_%e228952228979%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd228950228974%_))))
                                           (let ((_%tl228954228984%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e228952228979%_)))
                                                 (_%hd228953228982%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e228952228979%_))))
                                             (_%__kont231112231113%_
                                              _%tl228951228976%_
                                              _%tl228954228984%_
                                              _%hd228953228982%_)))
                                         (_%__kont231114231115%_))))
                                 (_%__kont231114231115%_)))))
                       (let ((__tmp232317
                              (lambda (_%g229029229032%_ _%g229030229034%_)
                                (cons _%g229029229032%_ _%g229030229034%_))))
                         (declare (not safe))
                         (foldr__0 __tmp232317 '() _%g228731228783%_))))
                 (_%specializer-impl229039%_
                  (let ((__tmp232318
                         (cons '%#case-lambda _%specializer-clauses229037%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp232318 _%stx228091%_)))
                 (_%specializer-impl229041%_
                  (_%generate-specializer-impl228095%_
                   _%$klass228888%_
                   _%$method-table228890%_
                   _%methods-bind228915%_
                   _%slots-bind228939%_
                   _%specializer-impl229039%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp232320
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g228102228164%_)))
                                                          (__tmp232319
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id228886%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp232320
                                                       '" => "
                                                       __tmp232319))
                                                    (_%generate-specializer-def228096%_
                                                     _%g228102228164%_
                                                     _%specializer-id228886%_
                                                     _%specializer-impl229041%_))))
                                            _%clause228743228781%_))))))
                           (_%loop228738228766%_ _%target228735228761%_ '()))
                         (_%g228729228748%_ _%g228730228751%_)))))
               (_%g228729228748%_ _%g228730228751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g228729228748%_
                                                _%g228730228751%_)))))
                                   (_%g228728229044%_ _%g228101228163%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g228101228163%_))
                                     (let* ((_%g229048229078%_
                                             (lambda (_%g229049229075%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g229049229075%_))))
                                            (_%g229047229705%_
                                             (lambda (_%g229049229081%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g229049229081%_))
                                                   (let ((_%e229053229083%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g229049229081%_))))
                                                     (let ((_%hd229054229086%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e229053229083%_)))
                                                           (_%tl229055229088%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e229053229083%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl229055229088%_))
                                                           (let ((_%e229056229091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl229055229088%_))))
                     (let ((_%hd229057229094%_
                            (let ()
                              (declare (not safe))
                              (##car _%e229056229091%_)))
                           (_%tl229058229096%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e229056229091%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd229057229094%_))
                           (let ((_%e229059229099%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd229057229094%_))))
                             (let ((_%hd229060229102%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e229059229099%_)))
                                   (_%tl229061229104%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e229059229099%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd229060229102%_))
                                   (let ((_%e229062229107%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd229060229102%_))))
                                     (let ((_%hd229063229110%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e229062229107%_)))
                                           (_%tl229064229112%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e229062229107%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd229063229110%_))
                                           (let ((_%e229065229115%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd229063229110%_))))
                                             (let ((_%hd229066229118%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e229065229115%_)))
                                                   (_%tl229067229120%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e229065229115%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl229067229120%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl229064229112%_))
                                                       (let ((_%e229068229123%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl229064229112%_))))
                 (let ((_%hd229069229126%_
                        (let ()
                          (declare (not safe))
                          (##car _%e229068229123%_)))
                       (_%tl229070229128%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e229068229123%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl229070229128%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl229061229104%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl229058229096%_))
                               (let ((_%e229071229131%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl229058229096%_))))
                                 (let ((_%hd229072229134%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e229071229131%_)))
                                       (_%tl229073229136%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e229071229131%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl229073229136%_))
                                       ((lambda (_%g229050229139%_
                                                 _%g229051229140%_
                                                 _%g229052229141%_)
                                          (let* ((_%g229165229183%_
                                                  (lambda (_%g229166229180%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g229166229180%_))))
                                                 (_%g229164229239%_
                                                  (lambda (_%g229166229186%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g229166229186%_))
                                                        (let ((_%e229170229188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g229166229186%_))))
                  (let ((_%hd229171229191%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229170229188%_)))
                        (_%tl229172229193%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229170229188%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229172229193%_))
                        (let ((_%e229173229196%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl229172229193%_))))
                          (let ((_%hd229174229199%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229173229196%_)))
                                (_%tl229175229201%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229173229196%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229174229199%_))
                                (let ((_%e229176229204%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd229174229199%_))))
                                  (let ((_%hd229177229207%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229176229204%_)))
                                        (_%tl229178229209%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229176229204%_))))
                                    ((lambda (_%g229167229212%_
                                              _%g229168229213%_
                                              _%g229169229214%_)
                                       (let ((_%receiver229233%_
                                              (let ((_%$e229230%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g229167229212%_))))
                                                (if _%$e229230%_
                                                    _%$e229230%_
                                                    _%g229169229214%_))))
                                         (for-each
                                          (lambda (_%g229234229236%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver229233%_
                                             _%method-calls228183%_
                                             _%slot-refs228184%_
                                             _%g229234229236%_))
                                          _%g229167229212%_)))
                                     _%tl229175229201%_
                                     _%tl229178229209%_
                                     _%hd229177229207%_)))
                                (_%g229165229183%_ _%g229166229186%_))))
                        (_%g229165229183%_ _%g229166229186%_))))
                (_%g229165229183%_ _%g229166229186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g229164229239%_
                                             _%g229051229140%_))
                                          (let* ((_%g229242229261%_
                                                  (lambda (_%g229243229258%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g229243229258%_))))
                                                 (_%g229241229383%_
                                                  (lambda (_%g229243229264%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g229243229264%_))
                                                        (let ((_%e229245229266%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g229243229264%_))))
                  (let ((_%hd229246229269%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229245229266%_)))
                        (_%tl229247229271%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229245229266%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl229247229271%_))
                        (let ((_g232321_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl229247229271%_
                                  '0))))
                          (begin
                            (let ((_g232322_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g232321_)
                                         (##values-length _g232321_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g232322_ 2)))
                                  (error "Context expects 2 values"
                                         _g232322_)))
                            (let ((_%target229248229274%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232321_ 0)))
                                  (_%tl229250229276%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232321_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229250229276%_))
                                  (letrec ((_%loop229251229279%_
                                            (lambda (_%hd229249229282%_
                                                     _%clause229255229284%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd229249229282%_))
                                                  (let ((_%e229252229286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd229249229282%_))))
                                                    (let ((_%lp-hd229253229289%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229252229286%_)))
                                                          (_%lp-tl229254229291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229252229286%_))))
                                                      (_%loop229251229279%_
                                                       _%lp-tl229254229291%_
                                                       (cons _%lp-hd229253229289%_
                                                             _%clause229255229284%_))))
                                                  (let ((_%clause229256229294%_
                                                         (reverse _%clause229255229284%_)))
                                                    ((lambda (_%g229244229296%_)
                                                       (for-each
                                                        (lambda (_%clause229309%_)
                                                          (let* ((_%g229311229326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g229312229323%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g229312229323%_))))
                         (_%g229310229373%_
                          (lambda (_%g229312229329%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g229312229329%_))
                                (let ((_%e229316229331%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g229312229329%_))))
                                  (let ((_%hd229317229334%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229316229331%_)))
                                        (_%tl229318229336%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229316229331%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229317229334%_))
                                        (let ((_%e229319229339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229317229334%_))))
                                          (let ((_%hd229320229342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229319229339%_)))
                                                (_%tl229321229344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229319229339%_))))
                                            ((lambda (_%g229313229347%_
                                                      _%g229314229348%_
                                                      _%g229315229349%_)
                                               (let ((_%receiver229367%_
                                                      (let ((_%$e229364%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g229313229347%_))))
                (if _%$e229364%_ _%$e229364%_ _%g229315229349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g229368229370%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver229367%_
                                                     _%method-calls228183%_
                                                     _%slot-refs228184%_
                                                     _%g229368229370%_))
                                                  _%g229313229347%_)))
                                             _%tl229318229336%_
                                             _%tl229321229344%_
                                             _%hd229320229342%_)))
                                        (_%g229311229326%_
                                         _%g229312229329%_))))
                                (_%g229311229326%_ _%g229312229329%_)))))
                    (_%g229310229373%_ _%clause229309%_)))
                (let ((__tmp232323
                       (lambda (_%g229375229378%_ _%g229376229380%_)
                         (cons _%g229375229378%_ _%g229376229380%_))))
                  (declare (not safe))
                  (foldr__0 __tmp232323 '() _%g229244229296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause229256229294%_))))))
                                    (_%loop229251229279%_
                                     _%target229248229274%_
                                     '()))
                                  (_%g229242229261%_ _%g229243229264%_)))))
                        (_%g229242229261%_ _%g229243229264%_))))
                (_%g229242229261%_ _%g229243229264%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g229241229383%_
                                             _%g229050229139%_))
                                          (if (_%no-specializer?228187%_)
                                              _%stx228091%_
                                              (let* ((_%specializer-id229392%_
                                                      (let* ((_%id229386%_
                                                              (let ((__tmp232324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g228102228164%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp232324 '"::specialize")))
                     (_%specializer-id229389%_
                      (let ((__tmp232325
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx228091%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id229386%_ __tmp232325))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id229389%_))
                _%specializer-id229389%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass229394%_
                                                      (let ((__tmp232326
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp232326)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table229396%_
                                                      (let ((__tmp232327
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp232327)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods229398%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls228183%_)))
                                                     (_%$methods229402%_
                                                      (let ((__tmp232328
                                                             (lambda (_%id229400%_)
                                                               (let ((__tmp232329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id229400%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232329)))))
                (declare (not safe))
                (##map __tmp232328 _%methods229398%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_229411%_
                                                      (let ((__tmp232330
                                                             (lambda (_%g229403229406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229404229408%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls228183%_
                          _%g229403229406%_
                          _%g229404229408%_)))))
                (declare (not safe))
                (##for-each __tmp232330 _%methods229398%_ _%$methods229402%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind229421%_
                                                      (let ((__tmp232331
                                                             (lambda (_%g229413229416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229414229418%_)
                       (_%generate-method-bind228093%_
                        _%$klass229394%_
                        _%$method-table229396%_
                        _%g229413229416%_
                        _%g229414229418%_))))
                (declare (not safe))
                (##map __tmp232331 _%methods229398%_ _%$methods229402%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots229423%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs228184%_)))
                                                     (_%$slots229427%_
                                                      (let ((__tmp232332
                                                             (lambda (_%id229425%_)
                                                               (let ((__tmp232333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id229425%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232333)))))
                (declare (not safe))
                (##map __tmp232332 _%slots229423%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_229436%_
                                                      (let ((__tmp232334
                                                             (lambda (_%g229428229431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229429229433%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs228184%_
                          _%g229428229431%_
                          _%g229429229433%_)))))
                (declare (not safe))
                (##for-each __tmp232334 _%slots229423%_ _%$slots229427%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind229445%_
                                                      (let ((__tmp232335
                                                             (lambda (_%g229437229440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229438229442%_)
                       (_%generate-slot-bind228094%_
                        _%$klass229394%_
                        _%g229437229440%_
                        _%g229438229442%_))))
                (declare (not safe))
                (##map __tmp232335 _%slots229423%_ _%$slots229427%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr229537%_
                                                      (let* ((_%g229447229465%_
                                                              (lambda (_%g229448229462%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g229448229462%_))))
                     (_%g229446229534%_
                      (lambda (_%g229448229468%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g229448229468%_))
                            (let ((_%e229452229470%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229448229468%_))))
                              (let ((_%hd229453229473%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229452229470%_)))
                                    (_%tl229454229475%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229452229470%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229454229475%_))
                                    (let ((_%e229455229478%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl229454229475%_))))
                                      (let ((_%hd229456229481%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229455229478%_)))
                                            (_%tl229457229483%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229455229478%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229456229481%_))
                                            (let ((_%e229458229486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd229456229481%_))))
                                              (let ((_%hd229459229489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229458229486%_)))
                                                    (_%tl229460229491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229458229486%_))))
                                                ((lambda (_%g229449229494%_
                                                          _%g229450229495%_
                                                          _%g229451229496%_)
                                                   (let* ((_%receiver229525%_
                                                           (let ((_%$e229522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g229449229494%_))))
                     (if _%$e229522%_ _%$e229522%_ _%g229451229496%_)))
                  (_%body229531%_
                   (map (lambda (_%g229526229528%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver229525%_
                           _%$klass229394%_
                           _%method-calls228183%_
                           _%slot-refs228184%_
                           _%g229526229528%_))
                        _%g229449229494%_))
                  (__tmp232336
                   (cons '%#lambda
                         (cons (cons _%g229451229496%_ _%g229450229495%_)
                               _%body229531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp232336
                                                      _%g229051229140%_)))
                                                 _%tl229457229483%_
                                                 _%tl229460229491%_
                                                 _%hd229459229489%_)))
                                            (_%g229447229465%_
                                             _%g229448229468%_))))
                                    (_%g229447229465%_ _%g229448229468%_))))
                            (_%g229447229465%_ _%g229448229468%_)))))
                (_%g229446229534%_ _%g229051229140%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr229698%_
                                                      (let* ((_%g229539229558%_
                                                              (lambda (_%g229540229555%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g229540229555%_))))
                     (_%g229538229695%_
                      (lambda (_%g229540229561%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g229540229561%_))
                            (let ((_%e229542229563%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229540229561%_))))
                              (let ((_%hd229543229566%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229542229563%_)))
                                    (_%tl229544229568%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229542229563%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl229544229568%_))
                                    (let ((_g232337_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl229544229568%_
                                              '0))))
                                      (begin
                                        (let ((_g232338_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g232337_)
                                                     (##values-length
                                                      _g232337_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g232338_ 2)))
                                              (error "Context expects 2 values"
                                                     _g232338_)))
                                        (let ((_%target229545229571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g232337_ 0)))
                                              (_%tl229547229573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g232337_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229547229573%_))
                                              (letrec ((_%loop229548229576%_
                                                        (lambda (_%hd229546229579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause229552229581%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd229546229579%_))
                      (let ((_%e229549229583%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd229546229579%_))))
                        (let ((_%lp-hd229550229586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229549229583%_)))
                              (_%lp-tl229551229588%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229549229583%_))))
                          (_%loop229548229576%_
                           _%lp-tl229551229588%_
                           (cons _%lp-hd229550229586%_
                                 _%clause229552229581%_))))
                      (let ((_%clause229553229591%_
                             (reverse _%clause229552229581%_)))
                        ((lambda (_%g229541229593%_)
                           (let* ((_%clauses229693%_
                                   (map (lambda (_%clause229607%_)
                                          (let* ((_%__stx231130231131%_
                                                  _%clause229607%_)
                                                 (_%g229610229625%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx231130231131%_)))))
                                            (let ((_%__kont231132231133%_
                                                   (lambda (_%g229612229653%_
                                                            _%g229613229654%_
                                                            _%g229614229655%_)
                                                     (let* ((_%receiver229674%_
                                                             (let ((_%$e229671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g229612229653%_))))
                       (if _%$e229671%_ _%$e229671%_ _%g229614229655%_)))
                    (_%body229680%_
                     (map (lambda (_%g229675229677%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver229674%_
                             _%$klass229394%_
                             _%method-calls228183%_
                             _%slot-refs228184%_
                             _%g229675229677%_))
                          _%g229612229653%_)))
               (cons (cons _%g229614229655%_ _%g229613229654%_)
                     _%body229680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231134231135%_
                                                   (lambda ()
                                                     _%clause229607%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx231130231131%_))
                                                  (let ((_%e229615229637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx231130231131%_))))
                                                    (let ((_%tl229617229642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229615229637%_)))
                                                          (_%hd229616229640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229615229637%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd229616229640%_))
                                                          (let ((_%e229618229645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd229616229640%_))))
                    (let ((_%tl229620229650%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229618229645%_)))
                          (_%hd229619229648%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229618229645%_))))
                      (_%__kont231132231133%_
                       _%tl229617229642%_
                       _%tl229620229650%_
                       _%hd229619229648%_)))
                  (_%__kont231134231135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231134231135%_)))))
                                        (let ((__tmp232339
                                               (lambda (_%g229685229688%_
                                                        _%g229686229690%_)
                                                 (cons _%g229685229688%_
                                                       _%g229686229690%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp232339
                                           '()
                                           _%g229541229593%_))))
                                  (__tmp232340
                                   (cons '%#case-lambda _%clauses229693%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp232340
                              _%g229050229139%_)))
                         _%clause229553229591%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop229548229576%_
                                                 _%target229545229571%_
                                                 '()))
                                              (_%g229539229558%_
                                               _%g229540229561%_)))))
                                    (_%g229539229558%_ _%g229540229561%_))))
                            (_%g229539229558%_ _%g229540229561%_)))))
                (_%g229538229695%_ _%g229050229139%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl229700%_
                                                      (let ((__tmp232341
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g229052229141%_ '())
                                             (cons _%specializer-lambda-expr229537%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr229698%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp232341 _%stx228091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl229702%_
                                                      (_%generate-specializer-impl228095%_
                                                       _%$klass229394%_
                                                       _%$method-table229396%_
                                                       _%methods-bind229421%_
                                                       _%slots-bind229445%_
                                                       _%specializer-impl229700%_)))
                                                (let ((__tmp232343
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g228102228164%_)))
                                                      (__tmp232342
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id229392%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp232343
                                                   '" => "
                                                   __tmp232342))
                                                (_%generate-specializer-def228096%_
                                                 _%g228102228164%_
                                                 _%specializer-id229392%_
                                                 _%specializer-impl229702%_))))
                                        _%hd229072229134%_
                                        _%hd229069229126%_
                                        _%hd229066229118%_)
                                       (_%g229048229078%_ _%g229049229081%_))))
                               (_%g229048229078%_ _%g229049229081%_))
                           (_%g229048229078%_ _%g229049229081%_))
                       (_%g229048229078%_ _%g229049229081%_))))
               (_%g229048229078%_ _%g229049229081%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g229048229078%_
                                                    _%g229049229081%_))))
                                           (_%g229048229078%_
                                            _%g229049229081%_))))
                                   (_%g229048229078%_ _%g229049229081%_))))
                           (_%g229048229078%_ _%g229049229081%_))))
                   (_%g229048229078%_ _%g229049229081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g229048229078%_
                                                    _%g229049229081%_)))))
                                       (_%g229047229705%_ _%g228101228163%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g228101228163%_))
                                         (let* ((_%g229709229762%_
                                                 (lambda (_%g229710229759%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g229710229759%_))))
                                                (_%g229708230927%_
                                                 (lambda (_%g229710229765%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g229710229765%_))
                                                       (let ((_%e229716229767%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g229710229765%_))))
                 (let ((_%hd229717229770%_
                        (let ()
                          (declare (not safe))
                          (##car _%e229716229767%_)))
                       (_%tl229718229772%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e229716229767%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd229717229770%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd229717229770%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl229718229772%_))
                               (let ((_%e229719229775%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl229718229772%_))))
                                 (let ((_%hd229720229778%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e229719229775%_)))
                                       (_%tl229721229780%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e229719229775%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd229720229778%_))
                                       (let ((_%e229722229783%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd229720229778%_))))
                                         (let ((_%hd229723229786%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e229722229783%_)))
                                               (_%tl229724229788%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e229722229783%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd229723229786%_))
                                               (let ((_%e229725229791%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd229723229786%_))))
                                                 (let ((_%hd229726229794%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229725229791%_)))
                                                       (_%tl229727229796%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229725229791%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd229726229794%_))
                                                       (let ((_%e229728229799%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd229726229794%_))))
                 (let ((_%hd229729229802%_
                        (let ()
                          (declare (not safe))
                          (##car _%e229728229799%_)))
                       (_%tl229730229804%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e229728229799%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl229730229804%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl229727229796%_))
                           (let ((_%e229731229807%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl229727229796%_))))
                             (let ((_%hd229732229810%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e229731229807%_)))
                                   (_%tl229733229812%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e229731229807%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd229732229810%_))
                                   (let ((_%e229734229815%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd229732229810%_))))
                                     (let ((_%hd229735229818%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e229734229815%_)))
                                           (_%tl229736229820%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e229734229815%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd229735229818%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd229735229818%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl229736229820%_))
                                                   (let ((_%e229737229823%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl229736229820%_))))
                                                     (let ((_%hd229738229826%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e229737229823%_)))
                                                           (_%tl229739229828%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e229737229823%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd229738229826%_))
                                                           (let ((_%e229740229831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd229738229826%_))))
                     (let ((_%hd229741229834%_
                            (let ()
                              (declare (not safe))
                              (##car _%e229740229831%_)))
                           (_%tl229742229836%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e229740229831%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd229741229834%_))
                           (let ((_%e229743229839%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd229741229834%_))))
                             (let ((_%hd229744229842%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e229743229839%_)))
                                   (_%tl229745229844%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e229743229839%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd229744229842%_))
                                   (let ((_%e229746229847%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd229744229842%_))))
                                     (let ((_%hd229747229850%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e229746229847%_)))
                                           (_%tl229748229852%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e229746229847%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl229748229852%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl229745229844%_))
                                               (let ((_%e229749229855%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl229745229844%_))))
                                                 (let ((_%hd229750229858%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229749229855%_)))
                                                       (_%tl229751229860%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229749229855%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl229751229860%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl229742229836%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl229739229828%_))
                       (let ((_%e229752229863%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl229739229828%_))))
                         (let ((_%hd229753229866%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e229752229863%_)))
                               (_%tl229754229868%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e229752229863%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl229754229868%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl229733229812%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl229724229788%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl229721229780%_))
                                           (let ((_%e229755229871%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl229721229780%_))))
                                             (let ((_%hd229756229874%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e229755229871%_)))
                                                   (_%tl229757229876%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e229755229871%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl229757229876%_))
                                                   ((lambda (_%g229711229879%_
                                                             _%g229712229880%_
                                                             _%g229713229881%_
                                                             _%g229714229882%_
                                                             _%g229715229883%_)
                                                      (let* ((_%g229923229985%_
                                                              (lambda (_%g229924229982%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g229924229982%_))))
                     (_%g229922230924%_
                      (lambda (_%g229924229988%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g229924229988%_))
                            (let ((_%e229930229990%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229924229988%_))))
                              (let ((_%hd229931229993%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229930229990%_)))
                                    (_%tl229932229995%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229930229990%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd229931229993%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd229931229993%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229932229995%_))
                                            (let ((_%e229933229998%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229932229995%_))))
                                              (let ((_%hd229934230001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229933229998%_)))
                                                    (_%tl229935230003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229933229998%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229935230003%_))
                                                    (let ((_%e229936230006%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229935230003%_))))
                                                      (let ((_%hd229937230009%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e229936230006%_)))
                    (_%tl229938230011%_
                     (let () (declare (not safe)) (##cdr _%e229936230006%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd229937230009%_))
                    (let ((_%e229939230014%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd229937230009%_))))
                      (let ((_%hd229940230017%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229939230014%_)))
                            (_%tl229941230019%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229939230014%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd229940230017%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd229940230017%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229941230019%_))
                                    (let ((_%e229942230022%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl229941230019%_))))
                                      (let ((_%hd229943230025%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229942230022%_)))
                                            (_%tl229944230027%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229942230022%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229943230025%_))
                                            (let ((_%e229945230030%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd229943230025%_))))
                                              (let ((_%hd229946230033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229945230030%_)))
                                                    (_%tl229947230035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229945230030%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd229946230033%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd229946230033%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229947230035%_))
                                                            (let ((_%e229948230038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229947230035%_))))
                      (let ((_%hd229949230041%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229948230038%_)))
                            (_%tl229950230043%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229948230038%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229950230043%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229944230027%_))
                                (let ((_%e229951230046%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229944230027%_))))
                                  (let ((_%hd229952230049%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229951230046%_)))
                                        (_%tl229953230051%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229951230046%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229952230049%_))
                                        (let ((_%e229954230054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229952230049%_))))
                                          (let ((_%hd229955230057%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229954230054%_)))
                                                (_%tl229956230059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229954230054%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd229955230057%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd229955230057%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl229956230059%_))
                                                        (let ((_%e229957230062%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl229956230059%_))))
                  (let ((_%hd229958230065%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229957230062%_)))
                        (_%tl229959230067%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229957230062%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229959230067%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229953230051%_))
                            (let ((_%e229960230070%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229953230051%_))))
                              (let ((_%hd229961230073%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229960230070%_)))
                                    (_%tl229962230075%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229960230070%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd229961230073%_))
                                    (let ((_%e229963230078%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229961230073%_))))
                                      (let ((_%hd229964230081%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229963230078%_)))
                                            (_%tl229965230083%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229963230078%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd229964230081%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd229964230081%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229965230083%_))
                                                    (let ((_%e229966230086%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229965230083%_))))
                                                      (let ((_%hd229967230089%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e229966230086%_)))
                    (_%tl229968230091%_
                     (let () (declare (not safe)) (##cdr _%e229966230086%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl229968230091%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl229962230075%_))
                        (if (let ((__tmp232344
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl229962230075%_))))
                              (declare (not safe))
                              (##fx>= __tmp232344 '1))
                            (let ((_g232345_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl229962230075%_
                                      '1))))
                              (begin
                                (let ((_g232346_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g232345_)
                                             (##values-length _g232345_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g232346_ 2)))
                                      (error "Context expects 2 values"
                                             _g232346_)))
                                (let ((_%target229969230094%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232345_ 0)))
                                      (_%tl229971230096%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232345_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl229971230096%_))
                                      (let ((_%e229978230099%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl229971230096%_))))
                                        (let ((_%hd229979230102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229978230099%_)))
                                              (_%tl229980230104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229978230099%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229980230104%_))
                                              (letrec ((_%loop229972230107%_
                                                        (lambda (_%hd229970230110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref229976230112%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd229970230110%_))
                      (let ((_%e229973230114%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd229970230110%_))))
                        (let ((_%lp-hd229974230117%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229973230114%_)))
                              (_%lp-tl229975230119%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229973230114%_))))
                          (_%loop229972230107%_
                           _%lp-tl229975230119%_
                           (cons _%lp-hd229974230117%_
                                 _%kw-ref229976230112%_))))
                      (let ((_%kw-ref229977230122%_
                             (reverse _%kw-ref229976230112%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229938230011%_))
                            ((lambda (_%g229925230124%_
                                      _%g229926230125%_
                                      _%g229927230126%_
                                      _%g229928230127%_
                                      _%g229929230128%_)
                               (let* ((_%kw-count230179%_
                                       (length (let ((__tmp232347
                                                      (lambda (_%g230171230174%_
                                                               _%g230172230176%_)
                                                        (cons _%g230171230174%_
                                                              _%g230172230176%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp232347
                                                  '()
                                                  _%g229926230125%_))))
                                      (_%self-index230181%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count230179%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g229713229881%_))
                                     (let* ((_%g230185230199%_
                                             (lambda (_%g230186230196%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g230186230196%_))))
                                            (_%g230184230322%_
                                             (lambda (_%g230186230202%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g230186230202%_))
                                                   (let ((_%e230189230204%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g230186230202%_))))
                                                     (let ((_%hd230190230207%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e230189230204%_)))
                                                           (_%tl230191230209%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e230189230204%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl230191230209%_))
                                                           (let ((_%e230192230212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl230191230209%_))))
                     (let ((_%hd230193230215%_
                            (let ()
                              (declare (not safe))
                              (##car _%e230192230212%_)))
                           (_%tl230194230217%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e230192230212%_))))
                       ((lambda (_%g230187230220%_ _%g230188230221%_)
                          (let* ((_%self230238%_
                                  (list-ref
                                   _%g230188230221%_
                                   _%self-index230181%_))
                                 (_%receiver230243%_
                                  (let ((_%$e230240%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g230187230220%_))))
                                    (if _%$e230240%_
                                        _%$e230240%_
                                        _%self230238%_))))
                            (for-each
                             (lambda (_%g230245230247%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver230243%_
                                _%method-calls228183%_
                                _%slot-refs228184%_
                                _%g230245230247%_))
                             _%g230187230220%_)
                            (if (_%no-specializer?228187%_)
                                _%stx228091%_
                                (let* ((_%specializer-id230256%_
                                        (let* ((_%id230250%_
                                                (let ((__tmp232348
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g228102228164%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp232348
                                                   '"::specialize")))
                                               (_%specializer-id230253%_
                                                (let ((__tmp232349
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx228091%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id230250%_
                                                   __tmp232349))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id230253%_))
                                          _%specializer-id230253%_))
                                       (_%$klass230258%_
                                        (let ((__tmp232350
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp232350)))
                                       (_%$method-table230260%_
                                        (let ((__tmp232351
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp232351)))
                                       (_%methods230262%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls228183%_)))
                                       (_%$methods230266%_
                                        (let ((__tmp232352
                                               (lambda (_%id230264%_)
                                                 (let ((__tmp232353
                                                        (gensym _%id230264%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp232353)))))
                                          (declare (not safe))
                                          (##map __tmp232352
                                                 _%methods230262%_)))
                                       (_%_230275%_
                                        (let ((__tmp232354
                                               (lambda (_%g230267230270%_
                                                        _%g230268230272%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls228183%_
                                                    _%g230267230270%_
                                                    _%g230268230272%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp232354
                                           _%methods230262%_
                                           _%$methods230266%_)))
                                       (_%methods-bind230285%_
                                        (let ((__tmp232355
                                               (lambda (_%g230277230280%_
                                                        _%g230278230282%_)
                                                 (_%generate-method-bind228093%_
                                                  _%$klass230258%_
                                                  _%$method-table230260%_
                                                  _%g230277230280%_
                                                  _%g230278230282%_))))
                                          (declare (not safe))
                                          (##map __tmp232355
                                                 _%methods230262%_
                                                 _%$methods230266%_)))
                                       (_%slots230287%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs228184%_)))
                                       (_%$slots230291%_
                                        (let ((__tmp232356
                                               (lambda (_%id230289%_)
                                                 (let ((__tmp232357
                                                        (gensym _%id230289%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp232357)))))
                                          (declare (not safe))
                                          (##map __tmp232356 _%slots230287%_)))
                                       (_%_230300%_
                                        (let ((__tmp232358
                                               (lambda (_%g230292230295%_
                                                        _%g230293230297%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs228184%_
                                                    _%g230292230295%_
                                                    _%g230293230297%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp232358
                                           _%slots230287%_
                                           _%$slots230291%_)))
                                       (_%slots-bind230309%_
                                        (let ((__tmp232359
                                               (lambda (_%g230301230304%_
                                                        _%g230302230306%_)
                                                 (_%generate-slot-bind228094%_
                                                  _%$klass230258%_
                                                  _%g230301230304%_
                                                  _%g230302230306%_))))
                                          (declare (not safe))
                                          (##map __tmp232359
                                                 _%slots230287%_
                                                 _%$slots230291%_)))
                                       (_%specializer-impl230317%_
                                        (let* ((_%specializer-body230315%_
                                                (map (lambda (_%g230310230312%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver230243%_
                                                        _%$klass230258%_
                                                        _%method-calls228183%_
                                                        _%slot-refs228184%_
                                                        _%g230310230312%_))
                                                     _%g230187230220%_))
                                               (__tmp232360
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g229715229883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g229714229882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp232361
                                   (cons '%#lambda
                                         (cons _%g230188230221%_
                                               _%specializer-body230315%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp232361
                               _%g229713229881%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g229712229880%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g229711229879%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp232360
                                           _%stx228091%_)))
                                       (_%specializer-impl230319%_
                                        (_%generate-specializer-impl228095%_
                                         _%$klass230258%_
                                         _%$method-table230260%_
                                         _%methods-bind230285%_
                                         _%slots-bind230309%_
                                         _%specializer-impl230317%_)))
                                  (let ((__tmp232363
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g228102228164%_)))
                                        (__tmp232362
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id230256%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp232363
                                     '" => "
                                     __tmp232362))
                                  (_%generate-specializer-def228096%_
                                   _%g228102228164%_
                                   _%specializer-id230256%_
                                   _%specializer-impl230319%_)))))
                        _%tl230194230217%_
                        _%hd230193230215%_)))
                   (_%g230185230199%_ _%g230186230202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g230185230199%_
                                                    _%g230186230202%_)))))
                                       (_%g230184230322%_ _%g229713229881%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g229713229881%_))
                                         (let* ((_%g230326230356%_
                                                 (lambda (_%g230327230353%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g230327230353%_))))
                                                (_%g230325230920%_
                                                 (lambda (_%g230327230359%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g230327230359%_))
                                                       (let ((_%e230331230361%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g230327230359%_))))
                 (let ((_%hd230332230364%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230331230361%_)))
                       (_%tl230333230366%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230331230361%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl230333230366%_))
                       (let ((_%e230334230369%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl230333230366%_))))
                         (let ((_%hd230335230372%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e230334230369%_)))
                               (_%tl230336230374%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e230334230369%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd230335230372%_))
                               (let ((_%e230337230377%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd230335230372%_))))
                                 (let ((_%hd230338230380%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e230337230377%_)))
                                       (_%tl230339230382%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e230337230377%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd230338230380%_))
                                       (let ((_%e230340230385%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd230338230380%_))))
                                         (let ((_%hd230341230388%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e230340230385%_)))
                                               (_%tl230342230390%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e230340230385%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd230341230388%_))
                                               (let ((_%e230343230393%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd230341230388%_))))
                                                 (let ((_%hd230344230396%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230343230393%_)))
                                                       (_%tl230345230398%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230343230393%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl230345230398%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl230342230390%_))
                                                           (let ((_%e230346230401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl230342230390%_))))
                     (let ((_%hd230347230404%_
                            (let ()
                              (declare (not safe))
                              (##car _%e230346230401%_)))
                           (_%tl230348230406%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e230346230401%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl230348230406%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl230339230382%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl230336230374%_))
                                   (let ((_%e230349230409%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl230336230374%_))))
                                     (let ((_%hd230350230412%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e230349230409%_)))
                                           (_%tl230351230414%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e230349230409%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl230351230414%_))
                                           ((lambda (_%g230328230417%_
                                                     _%g230329230418%_
                                                     _%g230330230419%_)
                                              (let* ((_%g230443230457%_
                                                      (lambda (_%g230444230454%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230444230454%_))))
                                                     (_%g230442230504%_
                                                      (lambda (_%g230444230460%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230444230460%_))
                                                            (let ((_%e230447230462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g230444230460%_))))
                      (let ((_%hd230448230465%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230447230462%_)))
                            (_%tl230449230467%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230447230462%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230449230467%_))
                            (let ((_%e230450230470%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230449230467%_))))
                              (let ((_%hd230451230473%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230450230470%_)))
                                    (_%tl230452230475%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230450230470%_))))
                                ((lambda (_%g230445230478%_ _%g230446230479%_)
                                   (let* ((_%self230492%_
                                           (list-ref
                                            _%g230446230479%_
                                            _%self-index230181%_))
                                          (_%receiver230497%_
                                           (let ((_%$e230494%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g230445230478%_))))
                                             (if _%$e230494%_
                                                 _%$e230494%_
                                                 _%self230492%_))))
                                     (for-each
                                      (lambda (_%g230499230501%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver230497%_
                                         _%method-calls228183%_
                                         _%slot-refs228184%_
                                         _%g230499230501%_))
                                      _%g230445230478%_)))
                                 _%tl230452230475%_
                                 _%hd230451230473%_)))
                            (_%g230443230457%_ _%g230444230460%_))))
                    (_%g230443230457%_ _%g230444230460%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230442230504%_
                                                 _%g230329230418%_))
                                              (let* ((_%g230507230526%_
                                                      (lambda (_%g230508230523%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230508230523%_))))
                                                     (_%g230506230635%_
                                                      (lambda (_%g230508230529%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230508230529%_))
                                                            (let ((_%e230510230531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g230508230529%_))))
                      (let ((_%hd230511230534%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230510230531%_)))
                            (_%tl230512230536%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230510230531%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl230512230536%_))
                            (let ((_g232364_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl230512230536%_
                                      '0))))
                              (begin
                                (let ((_g232365_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g232364_)
                                             (##values-length _g232364_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g232365_ 2)))
                                      (error "Context expects 2 values"
                                             _g232365_)))
                                (let ((_%target230513230539%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232364_ 0)))
                                      (_%tl230515230541%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232364_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230515230541%_))
                                      (letrec ((_%loop230516230544%_
                                                (lambda (_%hd230514230547%_
                                                         _%clause230520230549%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd230514230547%_))
                                                      (let ((_%e230517230551%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd230514230547%_))))
                (let ((_%lp-hd230518230554%_
                       (let () (declare (not safe)) (##car _%e230517230551%_)))
                      (_%lp-tl230519230556%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e230517230551%_))))
                  (_%loop230516230544%_
                   _%lp-tl230519230556%_
                   (cons _%lp-hd230518230554%_ _%clause230520230549%_))))
              (let ((_%clause230521230559%_ (reverse _%clause230520230549%_)))
                ((lambda (_%g230509230561%_)
                   (for-each
                    (lambda (_%clause230574%_)
                      (let* ((_%g230576230587%_
                              (lambda (_%g230577230584%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g230577230584%_))))
                             (_%g230575230625%_
                              (lambda (_%g230577230590%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g230577230590%_))
                                    (let ((_%e230580230592%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g230577230590%_))))
                                      (let ((_%hd230581230595%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e230580230592%_)))
                                            (_%tl230582230597%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e230580230592%_))))
                                        ((lambda (_%g230578230600%_
                                                  _%g230579230601%_)
                                           (let* ((_%self230613%_
                                                   (list-ref
                                                    _%g230579230601%_
                                                    _%self-index230181%_))
                                                  (_%receiver230618%_
                                                   (let ((_%$e230615%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g230578230600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e230615%_
                                                         _%$e230615%_
                                                         _%self230613%_))))
                                             (for-each
                                              (lambda (_%g230620230622%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver230618%_
                                                 _%method-calls228183%_
                                                 _%slot-refs228184%_
                                                 _%g230620230622%_))
                                              _%g230578230600%_)))
                                         _%tl230582230597%_
                                         _%hd230581230595%_)))
                                    (_%g230576230587%_ _%g230577230590%_)))))
                        (_%g230575230625%_ _%clause230574%_)))
                    (let ((__tmp232366
                           (lambda (_%g230627230630%_ _%g230628230632%_)
                             (cons _%g230627230630%_ _%g230628230632%_))))
                      (declare (not safe))
                      (foldr__0 __tmp232366 '() _%g230509230561%_))))
                 _%clause230521230559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop230516230544%_
                                         _%target230513230539%_
                                         '()))
                                      (_%g230507230526%_ _%g230508230529%_)))))
                            (_%g230507230526%_ _%g230508230529%_))))
                    (_%g230507230526%_ _%g230508230529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230506230635%_
                                                 _%g230328230417%_))
                                              (if (_%no-specializer?228187%_)
                                                  _%stx228091%_
                                                  (let* ((_%specializer-id230644%_
                                                          (let* ((_%id230638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp232367
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g228102228164%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp232367 '"::specialize")))
                         (_%specializer-id230641%_
                          (let ((__tmp232368
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx228091%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id230638%_
                             __tmp232368))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id230641%_))
                    _%specializer-id230641%_))
                 (_%$klass230646%_
                  (let ((__tmp232369
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232369)))
                 (_%$method-table230648%_
                  (let ((__tmp232370
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232370)))
                 (_%methods230650%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls228183%_)))
                 (_%$methods230654%_
                  (let ((__tmp232371
                         (lambda (_%id230652%_)
                           (let ((__tmp232372 (gensym _%id230652%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232372)))))
                    (declare (not safe))
                    (##map __tmp232371 _%methods230650%_)))
                 (_%_230663%_
                  (let ((__tmp232373
                         (lambda (_%g230655230658%_ _%g230656230660%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls228183%_
                              _%g230655230658%_
                              _%g230656230660%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp232373
                     _%methods230650%_
                     _%$methods230654%_)))
                 (_%methods-bind230673%_
                  (let ((__tmp232374
                         (lambda (_%g230665230668%_ _%g230666230670%_)
                           (_%generate-method-bind228093%_
                            _%$klass230646%_
                            _%$method-table230648%_
                            _%g230665230668%_
                            _%g230666230670%_))))
                    (declare (not safe))
                    (##map __tmp232374 _%methods230650%_ _%$methods230654%_)))
                 (_%slots230675%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs228184%_)))
                 (_%$slots230679%_
                  (let ((__tmp232375
                         (lambda (_%id230677%_)
                           (let ((__tmp232376 (gensym _%id230677%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232376)))))
                    (declare (not safe))
                    (##map __tmp232375 _%slots230675%_)))
                 (_%_230688%_
                  (let ((__tmp232377
                         (lambda (_%g230680230683%_ _%g230681230685%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs228184%_
                              _%g230680230683%_
                              _%g230681230685%_)))))
                    (declare (not safe))
                    (##for-each __tmp232377 _%slots230675%_ _%$slots230679%_)))
                 (_%slots-bind230697%_
                  (let ((__tmp232378
                         (lambda (_%g230689230692%_ _%g230690230694%_)
                           (_%generate-slot-bind228094%_
                            _%$klass230646%_
                            _%g230689230692%_
                            _%g230690230694%_))))
                    (declare (not safe))
                    (##map __tmp232378 _%slots230675%_ _%$slots230679%_)))
                 (_%specializer-lambda-expr230775%_
                  (let* ((_%g230699230713%_
                          (lambda (_%g230700230710%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g230700230710%_))))
                         (_%g230698230772%_
                          (lambda (_%g230700230716%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g230700230716%_))
                                (let ((_%e230703230718%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g230700230716%_))))
                                  (let ((_%hd230704230721%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230703230718%_)))
                                        (_%tl230705230723%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230703230718%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl230705230723%_))
                                        (let ((_%e230706230726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl230705230723%_))))
                                          (let ((_%hd230707230729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e230706230726%_)))
                                                (_%tl230708230731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e230706230726%_))))
                                            ((lambda (_%g230701230734%_
                                                      _%g230702230735%_)
                                               (let* ((_%self230758%_
                                                       (list-ref
                                                        _%g230702230735%_
                                                        _%self-index230181%_))
                                                      (_%receiver230763%_
                                                       (let ((_%$e230760%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g230701230734%_))))
                 (if _%$e230760%_ _%$e230760%_ _%self230758%_)))
              (_%body230769%_
               (map (lambda (_%g230764230766%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver230763%_
                       _%$klass230646%_
                       _%method-calls228183%_
                       _%slot-refs228184%_
                       _%g230764230766%_))
                    _%g230701230734%_))
              (__tmp232379
               (cons '%#lambda (cons _%g230702230735%_ _%body230769%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp232379
                                                  _%g230329230418%_)))
                                             _%tl230708230731%_
                                             _%hd230707230729%_)))
                                        (_%g230699230713%_
                                         _%g230700230716%_))))
                                (_%g230699230713%_ _%g230700230716%_)))))
                    (_%g230698230772%_ _%g230329230418%_)))
                 (_%specializer-case-lambda-expr230913%_
                  (let* ((_%g230777230796%_
                          (lambda (_%g230778230793%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g230778230793%_))))
                         (_%g230776230910%_
                          (lambda (_%g230778230799%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g230778230799%_))
                                (let ((_%e230780230801%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g230778230799%_))))
                                  (let ((_%hd230781230804%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230780230801%_)))
                                        (_%tl230782230806%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230780230801%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl230782230806%_))
                                        (let ((_g232380_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl230782230806%_
                                                  '0))))
                                          (begin
                                            (let ((_g232381_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g232380_)
                                                         (##values-length
                                                          _g232380_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g232381_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g232381_)))
                                            (let ((_%target230783230809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g232380_
                                                      0)))
                                                  (_%tl230785230811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g232380_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl230785230811%_))
                                                  (letrec ((_%loop230786230814%_
                                                            (lambda (_%hd230784230817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause230790230819%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd230784230817%_))
                          (let ((_%e230787230821%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd230784230817%_))))
                            (let ((_%lp-hd230788230824%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230787230821%_)))
                                  (_%lp-tl230789230826%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230787230821%_))))
                              (_%loop230786230814%_
                               _%lp-tl230789230826%_
                               (cons _%lp-hd230788230824%_
                                     _%clause230790230819%_))))
                          (let ((_%clause230791230829%_
                                 (reverse _%clause230790230819%_)))
                            ((lambda (_%g230779230831%_)
                               (let* ((_%clauses230908%_
                                       (map (lambda (_%clause230845%_)
                                              (let* ((_%g230847230858%_
                                                      (lambda (_%g230848230855%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230848230855%_))))
                                                     (_%g230846230898%_
                                                      (lambda (_%g230848230861%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230848230861%_))
                                                            (let ((_%e230851230863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g230848230861%_))))
                      (let ((_%hd230852230866%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230851230863%_)))
                            (_%tl230853230868%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230851230863%_))))
                        ((lambda (_%g230849230871%_ _%g230850230872%_)
                           (let* ((_%self230884%_
                                   (list-ref
                                    _%g230850230872%_
                                    _%self-index230181%_))
                                  (_%receiver230889%_
                                   (let ((_%$e230886%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g230849230871%_))))
                                     (if _%$e230886%_
                                         _%$e230886%_
                                         _%self230884%_)))
                                  (_%body230895%_
                                   (map (lambda (_%g230890230892%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver230889%_
                                           _%$klass230646%_
                                           _%method-calls228183%_
                                           _%slot-refs228184%_
                                           _%g230890230892%_))
                                        _%g230849230871%_)))
                             (cons _%g230850230872%_ _%body230895%_)))
                         _%tl230853230868%_
                         _%hd230852230866%_)))
                    (_%g230847230858%_ _%g230848230861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230846230898%_
                                                 _%clause230845%_)))
                                            (let ((__tmp232382
                                                   (lambda (_%g230900230903%_
                                                            _%g230901230905%_)
                                                     (cons _%g230900230903%_
                                                           _%g230901230905%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp232382
                                               '()
                                               _%g230779230831%_))))
                                      (__tmp232383
                                       (cons '%#case-lambda
                                             _%clauses230908%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp232383
                                  _%g230328230417%_)))
                             _%clause230791230829%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop230786230814%_
                                                     _%target230783230809%_
                                                     '()))
                                                  (_%g230777230796%_
                                                   _%g230778230799%_)))))
                                        (_%g230777230796%_
                                         _%g230778230799%_))))
                                (_%g230777230796%_ _%g230778230799%_)))))
                    (_%g230776230910%_ _%g230328230417%_)))
                 (_%specializer-impl230915%_
                  (let ((__tmp232384
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g229715229883%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g229714229882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp232385
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g230330230419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr230775%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr230913%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp232385
                                                _%stx228091%_))
                                             '()))
                                 '())
                           (cons _%g229712229880%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g229711229879%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp232384 _%stx228091%_)))
                 (_%specializer-impl230917%_
                  (_%generate-specializer-impl228095%_
                   _%$klass230646%_
                   _%$method-table230648%_
                   _%methods-bind230673%_
                   _%slots-bind230697%_
                   _%specializer-impl230915%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp232387
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g228102228164%_)))
                                                          (__tmp232386
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id230644%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp232387
                                                       '" => "
                                                       __tmp232386))
                                                    (_%generate-specializer-def228096%_
                                                     _%g228102228164%_
                                                     _%specializer-id230644%_
                                                     _%specializer-impl230917%_))))
                                            _%hd230350230412%_
                                            _%hd230347230404%_
                                            _%hd230344230396%_)
                                           (_%g230326230356%_
                                            _%g230327230359%_))))
                                   (_%g230326230356%_ _%g230327230359%_))
                               (_%g230326230356%_ _%g230327230359%_))
                           (_%g230326230356%_ _%g230327230359%_))))
                   (_%g230326230356%_ _%g230327230359%_))
               (_%g230326230356%_ _%g230327230359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230326230356%_
                                                _%g230327230359%_))))
                                       (_%g230326230356%_ _%g230327230359%_))))
                               (_%g230326230356%_ _%g230327230359%_))))
                       (_%g230326230356%_ _%g230327230359%_))))
               (_%g230326230356%_ _%g230327230359%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g230325230920%_
                                            _%g229713229881%_))
                                         _%stx228091%_))))
                             _%hd229979230102%_
                             _%kw-ref229977230122%_
                             _%hd229967230089%_
                             _%hd229958230065%_
                             _%hd229949230041%_)
                            (_%g229923229985%_ _%g229924229988%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop229972230107%_
                                                 _%target229969230094%_
                                                 '()))
                                              (_%g229923229985%_
                                               _%g229924229988%_))))
                                      (_%g229923229985%_ _%g229924229988%_)))))
                            (_%g229923229985%_ _%g229924229988%_))
                        (_%g229923229985%_ _%g229924229988%_))
                    (_%g229923229985%_ _%g229924229988%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229923229985%_
                                                     _%g229924229988%_))
                                                (_%g229923229985%_
                                                 _%g229924229988%_))
                                            (_%g229923229985%_
                                             _%g229924229988%_))))
                                    (_%g229923229985%_ _%g229924229988%_))))
                            (_%g229923229985%_ _%g229924229988%_))
                        (_%g229923229985%_ _%g229924229988%_))))
                (_%g229923229985%_ _%g229924229988%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229923229985%_
                                                     _%g229924229988%_))
                                                (_%g229923229985%_
                                                 _%g229924229988%_))))
                                        (_%g229923229985%_
                                         _%g229924229988%_))))
                                (_%g229923229985%_ _%g229924229988%_))
                            (_%g229923229985%_ _%g229924229988%_))))
                    (_%g229923229985%_ _%g229924229988%_))
                (_%g229923229985%_ _%g229924229988%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229923229985%_
                                                     _%g229924229988%_))))
                                            (_%g229923229985%_
                                             _%g229924229988%_))))
                                    (_%g229923229985%_ _%g229924229988%_))
                                (_%g229923229985%_ _%g229924229988%_))
                            (_%g229923229985%_ _%g229924229988%_))))
                    (_%g229923229985%_ _%g229924229988%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229923229985%_
                                                     _%g229924229988%_))))
                                            (_%g229923229985%_
                                             _%g229924229988%_))
                                        (_%g229923229985%_ _%g229924229988%_))
                                    (_%g229923229985%_ _%g229924229988%_))))
                            (_%g229923229985%_ _%g229924229988%_)))))
                (_%g229922230924%_ _%g229712229880%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd229756229874%_
                                                    _%hd229753229866%_
                                                    _%hd229750229858%_
                                                    _%hd229747229850%_
                                                    _%hd229729229802%_)
                                                   (_%g229709229762%_
                                                    _%g229710229765%_))))
                                           (_%g229709229762%_
                                            _%g229710229765%_))
                                       (_%g229709229762%_ _%g229710229765%_))
                                   (_%g229709229762%_ _%g229710229765%_))
                               (_%g229709229762%_ _%g229710229765%_))))
                       (_%g229709229762%_ _%g229710229765%_))
                   (_%g229709229762%_ _%g229710229765%_))
               (_%g229709229762%_ _%g229710229765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229709229762%_
                                                _%g229710229765%_))
                                           (_%g229709229762%_
                                            _%g229710229765%_))))
                                   (_%g229709229762%_ _%g229710229765%_))))
                           (_%g229709229762%_ _%g229710229765%_))))
                   (_%g229709229762%_ _%g229710229765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g229709229762%_
                                                    _%g229710229765%_))
                                               (_%g229709229762%_
                                                _%g229710229765%_))
                                           (_%g229709229762%_
                                            _%g229710229765%_))))
                                   (_%g229709229762%_ _%g229710229765%_))))
                           (_%g229709229762%_ _%g229710229765%_))
                       (_%g229709229762%_ _%g229710229765%_))))
               (_%g229709229762%_ _%g229710229765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229709229762%_
                                                _%g229710229765%_))))
                                       (_%g229709229762%_ _%g229710229765%_))))
                               (_%g229709229762%_ _%g229710229765%_))
                           (_%g229709229762%_ _%g229710229765%_))
                       (_%g229709229762%_ _%g229710229765%_))))
               (_%g229709229762%_ _%g229710229765%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g229708230927%_
                                            _%g228101228163%_))
                                         _%stx228091%_))))))))
                  (_%__kont231154231155%_ (lambda () _%stx228091%_)))
              (let ((_%__match231183231184%_
                     (lambda (_%e228103228131%_
                              _%hd228104228134%_
                              _%tl228105228136%_
                              _%e228106228139%_
                              _%hd228107228142%_
                              _%tl228108228144%_
                              _%e228109228147%_
                              _%hd228110228150%_
                              _%tl228111228152%_
                              _%e228112228155%_
                              _%hd228113228158%_
                              _%tl228114228160%_)
                       (let ((_%g228101228163%_ _%hd228113228158%_)
                             (_%g228102228164%_ _%hd228110228150%_))
                         (if (let ((__tmp232388
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g228102228164%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp232388))
                             (_%__kont231152231153%_
                              _%g228101228163%_
                              _%g228102228164%_)
                             (_%__kont231154231155%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx231150231151%_))
                    (let ((_%e228103228131%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx231150231151%_))))
                      (let ((_%tl228105228136%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e228103228131%_)))
                            (_%hd228104228134%_
                             (let ()
                               (declare (not safe))
                               (##car _%e228103228131%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228105228136%_))
                            (let ((_%e228106228139%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228105228136%_))))
                              (let ((_%tl228108228144%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228106228139%_)))
                                    (_%hd228107228142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228106228139%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228107228142%_))
                                    (let ((_%e228109228147%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd228107228142%_))))
                                      (let ((_%tl228111228152%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228109228147%_)))
                                            (_%hd228110228150%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228109228147%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl228111228152%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl228108228144%_))
                                                (let ((_%e228112228155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl228108228144%_))))
                                                  (let ((_%tl228114228160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e228112228155%_)))
                                                        (_%hd228113228158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e228112228155%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl228114228160%_))
                                                        (_%__match231183231184%_
                                                         _%e228103228131%_
                                                         _%hd228104228134%_
                                                         _%tl228105228136%_
                                                         _%e228106228139%_
                                                         _%hd228107228142%_
                                                         _%tl228108228144%_
                                                         _%e228109228147%_
                                                         _%hd228110228150%_
                                                         _%tl228111228152%_
                                                         _%e228112228155%_
                                                         _%hd228113228158%_
                                                         _%tl228114228160%_)
                                                        (_%__kont231154231155%_))))
                                                (_%__kont231154231155%_))
                                            (_%__kont231154231155%_))))
                                    (_%__kont231154231155%_))))
                            (_%__kont231154231155%_))))
                    (_%__kont231154231155%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self227943%_ _%stx227944%_)
        (let* ((_%__stx231186231187%_ _%stx227944%_)
               (_%g227947227980%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx231186231187%_)))))
          (let ((_%__kont231188231189%_
                 (lambda (_%g227949228070%_) _%g227949228070%_))
                (_%__kont231190231191%_
                 (lambda (_%g227965228009%_ _%g227966228010%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self227943%_ _%g227965228009%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx231186231187%_))
                (let ((_%e227950228030%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx231186231187%_))))
                  (let ((_%tl227952228035%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227950228030%_)))
                        (_%hd227951228033%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227950228030%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl227952228035%_))
                        (let ((_%e227953228038%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl227952228035%_))))
                          (let ((_%tl227955228043%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227953228038%_)))
                                (_%hd227954228041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227953228038%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd227954228041%_))
                                (let ((_%e227956228046%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd227954228041%_))))
                                  (let ((_%tl227958228051%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227956228046%_)))
                                        (_%hd227957228049%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227956228046%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd227957228049%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd227957228049%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl227958228051%_))
                                                (let ((_%e227959228054%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl227958228051%_))))
                                                  (let ((_%tl227961228059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e227959228054%_)))
                                                        (_%hd227960228057%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e227959228054%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl227961228059%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl227955228043%_))
                                                            (let ((_%e227962228062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl227955228043%_))))
                      (let ((_%tl227964228067%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e227962228062%_)))
                            (_%hd227963228065%_
                             (let ()
                               (declare (not safe))
                               (##car _%e227962228062%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl227964228067%_))
                            (_%__kont231188231189%_ _%hd227960228057%_)
                            (let ()
                              (declare (not safe))
                              (_%g227947227980%_)))))
                    (let () (declare (not safe)) (_%g227947227980%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl227955228043%_))
                    (let ((_%e227973228001%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl227955228043%_))))
                      (let ((_%tl227975228006%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e227973228001%_)))
                            (_%hd227974228004%_
                             (let ()
                               (declare (not safe))
                               (##car _%e227973228001%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl227975228006%_))
                            (_%__kont231190231191%_
                             _%hd227974228004%_
                             _%hd227954228041%_)
                            (let ()
                              (declare (not safe))
                              (_%g227947227980%_)))))
                    (let () (declare (not safe)) (_%g227947227980%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl227955228043%_))
                                                    (let ((_%e227973228001%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl227955228043%_))))
                                                      (let ((_%tl227975228006%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e227973228001%_)))
                    (_%hd227974228004%_
                     (let () (declare (not safe)) (##car _%e227973228001%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl227975228006%_))
                    (_%__kont231190231191%_
                     _%hd227974228004%_
                     _%hd227954228041%_)
                    (let () (declare (not safe)) (_%g227947227980%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g227947227980%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl227955228043%_))
                                                (let ((_%e227973228001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl227955228043%_))))
                                                  (let ((_%tl227975228006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e227973228001%_)))
                                                        (_%hd227974228004%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e227973228001%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl227975228006%_))
                                                        (_%__kont231190231191%_
                                                         _%hd227974228004%_
                                                         _%hd227954228041%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g227947227980%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g227947227980%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227955228043%_))
                                            (let ((_%e227973228001%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl227955228043%_))))
                                              (let ((_%tl227975228006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227973228001%_)))
                                                    (_%hd227974228004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227973228001%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl227975228006%_))
                                                    (_%__kont231190231191%_
                                                     _%hd227974228004%_
                                                     _%hd227954228041%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g227947227980%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g227947227980%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl227955228043%_))
                                    (let ((_%e227973228001%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl227955228043%_))))
                                      (let ((_%tl227975228006%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e227973228001%_)))
                                            (_%hd227974228004%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e227973228001%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl227975228006%_))
                                            (_%__kont231190231191%_
                                             _%hd227974228004%_
                                             _%hd227954228041%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g227947227980%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g227947227980%_))))))
                        (let () (declare (not safe)) (_%g227947227980%_)))))
                (let () (declare (not safe)) (_%g227947227980%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self227859%_ _%stx227860%_)
        (let* ((_%g227862227883%_
                (lambda (_%g227863227880%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227863227880%_))))
               (_%g227861227940%_
                (lambda (_%g227863227886%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227863227886%_))
                      (let ((_%e227867227888%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g227863227886%_))))
                        (let ((_%hd227868227891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227867227888%_)))
                              (_%tl227869227893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227867227888%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227869227893%_))
                              (let ((_%e227870227896%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl227869227893%_))))
                                (let ((_%hd227871227899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227870227896%_)))
                                      (_%tl227872227901%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227870227896%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227872227901%_))
                                      (let ((_%e227873227904%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl227872227901%_))))
                                        (let ((_%hd227874227907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227873227904%_)))
                                              (_%tl227875227909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227873227904%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227875227909%_))
                                              (let ((_%e227876227912%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl227875227909%_))))
                                                (let ((_%hd227877227915%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227876227912%_)))
                                                      (_%tl227878227917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227876227912%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227878227917%_))
                                                      ((lambda (_%g227864227920%_
                                                                _%g227865227921%_
                                                                _%g227866227922%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self227859%_
                                                            _%g227865227921%_)))
                                                       _%hd227877227915%_
                                                       _%hd227874227907%_
                                                       _%hd227871227899%_)
                                                      (_%g227862227883%_
                                                       _%g227863227886%_))))
                                              (_%g227862227883%_
                                               _%g227863227886%_))))
                                      (_%g227862227883%_ _%g227863227886%_))))
                              (_%g227862227883%_ _%g227863227886%_))))
                      (_%g227862227883%_ _%g227863227886%_)))))
          (_%g227861227940%_ _%stx227860%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self226824%_ _%stx226825%_)
        (let* ((_%__stx231252231253%_ _%stx226825%_)
               (_%g226833227055%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx231252231253%_)))))
          (let ((_%__kont231254231255%_
                 (lambda (_%g226835227808%_
                          _%g226836227809%_
                          _%g226837227810%_
                          _%g226838227811%_)
                   (let ((__tmp232390
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226824%_ 'methods)))
                         (__tmp232389
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226836227809%_))))
                     (declare (not safe))
                     (hash-put! __tmp232390 __tmp232389 '#t))
                   (for-each
                    (lambda (_%g227844227846%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self226824%_ _%g227844227846%_)))
                    (let ((__tmp232391
                           (lambda (_%g227848227851%_ _%g227849227853%_)
                             (cons _%g227848227851%_ _%g227849227853%_))))
                      (declare (not safe))
                      (foldr__0 __tmp232391 '() _%g226835227808%_)))))
                (_%__kont231258231259%_
                 (lambda (_%g226878227645%_
                          _%g226879227646%_
                          _%g226880227647%_
                          _%g226881227648%_
                          _%g226882227649%_)
                   (let ((__tmp232393
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226824%_ 'methods)))
                         (__tmp232392
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226879227646%_))))
                     (declare (not safe))
                     (hash-put! __tmp232393 __tmp232392 '#t))
                   (for-each
                    (lambda (_%g227689227691%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self226824%_ _%g227689227691%_)))
                    (let ((__tmp232394
                           (lambda (_%g227693227696%_ _%g227694227698%_)
                             (cons _%g227693227696%_ _%g227694227698%_))))
                      (declare (not safe))
                      (foldr__0 __tmp232394 '() _%g226878227645%_)))))
                (_%__kont231262231263%_
                 (lambda (_%g226931227480%_
                          _%g226932227481%_
                          _%g226933227482%_)
                   (let ((__tmp232396
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226824%_ 'slots)))
                         (__tmp232395
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226931227480%_))))
                     (declare (not safe))
                     (hash-put! __tmp232396 __tmp232395 '#t))))
                (_%__kont231264231265%_
                 (lambda (_%g226964227357%_
                          _%g226965227358%_
                          _%g226966227359%_
                          _%g226967227360%_)
                   (let ((__tmp232398
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226824%_ 'slots)))
                         (__tmp232397
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226965227358%_))))
                     (declare (not safe))
                     (hash-put! __tmp232398 __tmp232397 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self226824%_ _%g226964227357%_))))
                (_%__kont231266231267%_
                 (lambda (_%g227001227231%_ _%g227002227232%_)
                   (let* ((_%accessor227254%_
                           (let ((__tmp232399
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g227002227232%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp232399)))
                          (_%klass227256%_
                           (let ((__tmp232400
                                  (##structure-ref
                                   _%accessor227254%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx226825%_
                              __tmp232400)))
                          (_%slot227258%_
                           (##structure-ref
                            _%accessor227254%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor227254%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass227256%_
                                    _%slot227258%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass227256%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp232402
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self226824%_ 'slots)))
                               (__tmp232401
                                (##structure-ref
                                 _%accessor227254%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp232402 __tmp232401 '#t))))))
                (_%__kont231268231269%_
                 (lambda (_%g227024227131%_
                          _%g227025227132%_
                          _%g227026227133%_)
                   (let* ((_%mutator227160%_
                           (let ((__tmp232403
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g227026227133%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp232403)))
                          (_%klass227162%_
                           (let ((__tmp232404
                                  (##structure-ref
                                   _%mutator227160%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx226825%_
                              __tmp232404)))
                          (_%slot227164%_
                           (##structure-ref
                            _%mutator227160%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator227160%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass227162%_
                                    _%slot227164%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass227162%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp232405
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self226824%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp232405 _%slot227164%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self226824%_ _%g227024227131%_)))))
                (_%__kont231270231271%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self226824%_ _%stx226825%_)))))
            (let* ((_%__match231751231752%_
                    (lambda (_%e227027227067%_
                             _%hd227028227070%_
                             _%tl227029227072%_
                             _%e227030227075%_
                             _%hd227031227078%_
                             _%tl227032227080%_
                             _%e227033227083%_
                             _%hd227034227086%_
                             _%tl227035227088%_
                             _%e227036227091%_
                             _%hd227037227094%_
                             _%tl227038227096%_
                             _%e227039227099%_
                             _%hd227040227102%_
                             _%tl227041227104%_
                             _%e227042227107%_
                             _%hd227043227110%_
                             _%tl227044227112%_
                             _%e227045227115%_
                             _%hd227046227118%_
                             _%tl227047227120%_
                             _%e227048227123%_
                             _%hd227049227126%_
                             _%tl227050227128%_)
                      (let ((_%g227024227131%_ _%hd227049227126%_)
                            (_%g227025227132%_ _%hd227046227118%_)
                            (_%g227026227133%_ _%hd227037227094%_))
                        (if (and (let ((__tmp232406
                                        (let ((__tmp232407
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g227026227133%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp232407))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp232406
                                    'gxc#!mutator::t))
                                 (let ((__tmp232408
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226824%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g227025227132%_
                                    __tmp232408)))
                            (_%__kont231268231269%_
                             _%g227024227131%_
                             _%g227025227132%_
                             _%g227026227133%_)
                            (_%__kont231270231271%_)))))
                   (_%__match231749231750%_
                    (lambda (_%e227027227067%_
                             _%hd227028227070%_
                             _%tl227029227072%_
                             _%e227030227075%_
                             _%hd227031227078%_
                             _%tl227032227080%_
                             _%e227033227083%_
                             _%hd227034227086%_
                             _%tl227035227088%_
                             _%e227036227091%_
                             _%hd227037227094%_
                             _%tl227038227096%_
                             _%e227039227099%_
                             _%hd227040227102%_
                             _%tl227041227104%_
                             _%e227042227107%_
                             _%hd227043227110%_
                             _%tl227044227112%_
                             _%e227045227115%_
                             _%hd227046227118%_
                             _%tl227047227120%_
                             _%e227048227123%_
                             _%hd227049227126%_
                             _%tl227050227128%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227050227128%_))
                          (_%__match231751231752%_
                           _%e227027227067%_
                           _%hd227028227070%_
                           _%tl227029227072%_
                           _%e227030227075%_
                           _%hd227031227078%_
                           _%tl227032227080%_
                           _%e227033227083%_
                           _%hd227034227086%_
                           _%tl227035227088%_
                           _%e227036227091%_
                           _%hd227037227094%_
                           _%tl227038227096%_
                           _%e227039227099%_
                           _%hd227040227102%_
                           _%tl227041227104%_
                           _%e227042227107%_
                           _%hd227043227110%_
                           _%tl227044227112%_
                           _%e227045227115%_
                           _%hd227046227118%_
                           _%tl227047227120%_
                           _%e227048227123%_
                           _%hd227049227126%_
                           _%tl227050227128%_)
                          (_%__kont231270231271%_))))
                   (_%__match231743231744%_
                    (lambda (_%e227027227067%_
                             _%hd227028227070%_
                             _%tl227029227072%_
                             _%e227030227075%_
                             _%hd227031227078%_
                             _%tl227032227080%_
                             _%e227033227083%_
                             _%hd227034227086%_
                             _%tl227035227088%_
                             _%e227036227091%_
                             _%hd227037227094%_
                             _%tl227038227096%_
                             _%e227039227099%_
                             _%hd227040227102%_
                             _%tl227041227104%_
                             _%e227042227107%_
                             _%hd227043227110%_
                             _%tl227044227112%_
                             _%e227045227115%_
                             _%hd227046227118%_
                             _%tl227047227120%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl227041227104%_))
                          (let ((_%e227048227123%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl227041227104%_))))
                            (let ((_%tl227050227128%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e227048227123%_)))
                                  (_%hd227049227126%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e227048227123%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl227050227128%_))
                                  (_%__match231751231752%_
                                   _%e227027227067%_
                                   _%hd227028227070%_
                                   _%tl227029227072%_
                                   _%e227030227075%_
                                   _%hd227031227078%_
                                   _%tl227032227080%_
                                   _%e227033227083%_
                                   _%hd227034227086%_
                                   _%tl227035227088%_
                                   _%e227036227091%_
                                   _%hd227037227094%_
                                   _%tl227038227096%_
                                   _%e227039227099%_
                                   _%hd227040227102%_
                                   _%tl227041227104%_
                                   _%e227042227107%_
                                   _%hd227043227110%_
                                   _%tl227044227112%_
                                   _%e227045227115%_
                                   _%hd227046227118%_
                                   _%tl227047227120%_
                                   _%e227048227123%_
                                   _%hd227049227126%_
                                   _%tl227050227128%_)
                                  (_%__kont231270231271%_))))
                          (_%__kont231270231271%_))))
                   (_%__match231689231690%_
                    (lambda (_%e227003227175%_
                             _%hd227004227178%_
                             _%tl227005227180%_
                             _%e227006227183%_
                             _%hd227007227186%_
                             _%tl227008227188%_
                             _%e227009227191%_
                             _%hd227010227194%_
                             _%tl227011227196%_
                             _%e227012227199%_
                             _%hd227013227202%_
                             _%tl227014227204%_
                             _%e227015227207%_
                             _%hd227016227210%_
                             _%tl227017227212%_
                             _%e227018227215%_
                             _%hd227019227218%_
                             _%tl227020227220%_
                             _%e227021227223%_
                             _%hd227022227226%_
                             _%tl227023227228%_)
                      (let ((_%g227001227231%_ _%hd227022227226%_)
                            (_%g227002227232%_ _%hd227013227202%_))
                        (if (and (let ((__tmp232409
                                        (let ((__tmp232410
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g227002227232%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp232410))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp232409
                                    'gxc#!accessor::t))
                                 (let ((__tmp232411
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226824%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g227001227231%_
                                    __tmp232411)))
                            (_%__kont231266231267%_
                             _%g227001227231%_
                             _%g227002227232%_)
                            (_%__kont231270231271%_)))))
                   (_%__match231687231688%_
                    (lambda (_%e227003227175%_
                             _%hd227004227178%_
                             _%tl227005227180%_
                             _%e227006227183%_
                             _%hd227007227186%_
                             _%tl227008227188%_
                             _%e227009227191%_
                             _%hd227010227194%_
                             _%tl227011227196%_
                             _%e227012227199%_
                             _%hd227013227202%_
                             _%tl227014227204%_
                             _%e227015227207%_
                             _%hd227016227210%_
                             _%tl227017227212%_
                             _%e227018227215%_
                             _%hd227019227218%_
                             _%tl227020227220%_
                             _%e227021227223%_
                             _%hd227022227226%_
                             _%tl227023227228%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227017227212%_))
                          (_%__match231689231690%_
                           _%e227003227175%_
                           _%hd227004227178%_
                           _%tl227005227180%_
                           _%e227006227183%_
                           _%hd227007227186%_
                           _%tl227008227188%_
                           _%e227009227191%_
                           _%hd227010227194%_
                           _%tl227011227196%_
                           _%e227012227199%_
                           _%hd227013227202%_
                           _%tl227014227204%_
                           _%e227015227207%_
                           _%hd227016227210%_
                           _%tl227017227212%_
                           _%e227018227215%_
                           _%hd227019227218%_
                           _%tl227020227220%_
                           _%e227021227223%_
                           _%hd227022227226%_
                           _%tl227023227228%_)
                          (_%__match231743231744%_
                           _%e227003227175%_
                           _%hd227004227178%_
                           _%tl227005227180%_
                           _%e227006227183%_
                           _%hd227007227186%_
                           _%tl227008227188%_
                           _%e227009227191%_
                           _%hd227010227194%_
                           _%tl227011227196%_
                           _%e227012227199%_
                           _%hd227013227202%_
                           _%tl227014227204%_
                           _%e227015227207%_
                           _%hd227016227210%_
                           _%tl227017227212%_
                           _%e227018227215%_
                           _%hd227019227218%_
                           _%tl227020227220%_
                           _%e227021227223%_
                           _%hd227022227226%_
                           _%tl227023227228%_))))
                   (_%__match231633231634%_
                    (lambda (_%e226968227269%_
                             _%hd226969227272%_
                             _%tl226970227274%_
                             _%e226971227277%_
                             _%hd226972227280%_
                             _%tl226973227282%_
                             _%e226974227285%_
                             _%hd226975227288%_
                             _%tl226976227290%_
                             _%e226977227293%_
                             _%hd226978227296%_
                             _%tl226979227298%_
                             _%e226980227301%_
                             _%hd226981227304%_
                             _%tl226982227306%_
                             _%e226983227309%_
                             _%hd226984227312%_
                             _%tl226985227314%_
                             _%e226986227317%_
                             _%hd226987227320%_
                             _%tl226988227322%_
                             _%e226989227325%_
                             _%hd226990227328%_
                             _%tl226991227330%_
                             _%e226992227333%_
                             _%hd226993227336%_
                             _%tl226994227338%_
                             _%e226995227341%_
                             _%hd226996227344%_
                             _%tl226997227346%_
                             _%e226998227349%_
                             _%hd226999227352%_
                             _%tl227000227354%_)
                      (let ((_%g226964227357%_ _%hd226999227352%_)
                            (_%g226965227358%_ _%hd226996227344%_)
                            (_%g226966227359%_ _%hd226987227320%_)
                            (_%g226967227360%_ _%hd226978227296%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226967227360%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226967227360%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp232412
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226824%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g226966227359%_
                                    __tmp232412)))
                            (_%__kont231264231265%_
                             _%g226964227357%_
                             _%g226965227358%_
                             _%g226966227359%_
                             _%g226967227360%_)
                            (_%__kont231270231271%_)))))
                   (_%__match231625231626%_
                    (lambda (_%e226968227269%_
                             _%hd226969227272%_
                             _%tl226970227274%_
                             _%e226971227277%_
                             _%hd226972227280%_
                             _%tl226973227282%_
                             _%e226974227285%_
                             _%hd226975227288%_
                             _%tl226976227290%_
                             _%e226977227293%_
                             _%hd226978227296%_
                             _%tl226979227298%_
                             _%e226980227301%_
                             _%hd226981227304%_
                             _%tl226982227306%_
                             _%e226983227309%_
                             _%hd226984227312%_
                             _%tl226985227314%_
                             _%e226986227317%_
                             _%hd226987227320%_
                             _%tl226988227322%_
                             _%e226989227325%_
                             _%hd226990227328%_
                             _%tl226991227330%_
                             _%e226992227333%_
                             _%hd226993227336%_
                             _%tl226994227338%_
                             _%e226995227341%_
                             _%hd226996227344%_
                             _%tl226997227346%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226991227330%_))
                          (let ((_%e226998227349%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl226991227330%_))))
                            (let ((_%tl227000227354%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226998227349%_)))
                                  (_%hd226999227352%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226998227349%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl227000227354%_))
                                  (_%__match231633231634%_
                                   _%e226968227269%_
                                   _%hd226969227272%_
                                   _%tl226970227274%_
                                   _%e226971227277%_
                                   _%hd226972227280%_
                                   _%tl226973227282%_
                                   _%e226974227285%_
                                   _%hd226975227288%_
                                   _%tl226976227290%_
                                   _%e226977227293%_
                                   _%hd226978227296%_
                                   _%tl226979227298%_
                                   _%e226980227301%_
                                   _%hd226981227304%_
                                   _%tl226982227306%_
                                   _%e226983227309%_
                                   _%hd226984227312%_
                                   _%tl226985227314%_
                                   _%e226986227317%_
                                   _%hd226987227320%_
                                   _%tl226988227322%_
                                   _%e226989227325%_
                                   _%hd226990227328%_
                                   _%tl226991227330%_
                                   _%e226992227333%_
                                   _%hd226993227336%_
                                   _%tl226994227338%_
                                   _%e226995227341%_
                                   _%hd226996227344%_
                                   _%tl226997227346%_
                                   _%e226998227349%_
                                   _%hd226999227352%_
                                   _%tl227000227354%_)
                                  (_%__kont231270231271%_))))
                          (_%__match231749231750%_
                           _%e226968227269%_
                           _%hd226969227272%_
                           _%tl226970227274%_
                           _%e226971227277%_
                           _%hd226972227280%_
                           _%tl226973227282%_
                           _%e226974227285%_
                           _%hd226975227288%_
                           _%tl226976227290%_
                           _%e226977227293%_
                           _%hd226978227296%_
                           _%tl226979227298%_
                           _%e226980227301%_
                           _%hd226981227304%_
                           _%tl226982227306%_
                           _%e226983227309%_
                           _%hd226984227312%_
                           _%tl226985227314%_
                           _%e226986227317%_
                           _%hd226987227320%_
                           _%tl226988227322%_
                           _%e226989227325%_
                           _%hd226990227328%_
                           _%tl226991227330%_))))
                   (_%__match231547231548%_
                    (lambda (_%e226934227400%_
                             _%hd226935227403%_
                             _%tl226936227405%_
                             _%e226937227408%_
                             _%hd226938227411%_
                             _%tl226939227413%_
                             _%e226940227416%_
                             _%hd226941227419%_
                             _%tl226942227421%_
                             _%e226943227424%_
                             _%hd226944227427%_
                             _%tl226945227429%_
                             _%e226946227432%_
                             _%hd226947227435%_
                             _%tl226948227437%_
                             _%e226949227440%_
                             _%hd226950227443%_
                             _%tl226951227445%_
                             _%e226952227448%_
                             _%hd226953227451%_
                             _%tl226954227453%_
                             _%e226955227456%_
                             _%hd226956227459%_
                             _%tl226957227461%_
                             _%e226958227464%_
                             _%hd226959227467%_
                             _%tl226960227469%_
                             _%e226961227472%_
                             _%hd226962227475%_
                             _%tl226963227477%_)
                      (let ((_%g226931227480%_ _%hd226962227475%_)
                            (_%g226932227481%_ _%hd226953227451%_)
                            (_%g226933227482%_ _%hd226944227427%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226933227482%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226933227482%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp232413
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226824%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g226932227481%_
                                    __tmp232413)))
                            (_%__kont231262231263%_
                             _%g226931227480%_
                             _%g226932227481%_
                             _%g226933227482%_)
                            (_%__match231751231752%_
                             _%e226934227400%_
                             _%hd226935227403%_
                             _%tl226936227405%_
                             _%e226937227408%_
                             _%hd226938227411%_
                             _%tl226939227413%_
                             _%e226940227416%_
                             _%hd226941227419%_
                             _%tl226942227421%_
                             _%e226943227424%_
                             _%hd226944227427%_
                             _%tl226945227429%_
                             _%e226946227432%_
                             _%hd226947227435%_
                             _%tl226948227437%_
                             _%e226949227440%_
                             _%hd226950227443%_
                             _%tl226951227445%_
                             _%e226952227448%_
                             _%hd226953227451%_
                             _%tl226954227453%_
                             _%e226955227456%_
                             _%hd226956227459%_
                             _%tl226957227461%_)))))
                   (_%__match231545231546%_
                    (lambda (_%e226934227400%_
                             _%hd226935227403%_
                             _%tl226936227405%_
                             _%e226937227408%_
                             _%hd226938227411%_
                             _%tl226939227413%_
                             _%e226940227416%_
                             _%hd226941227419%_
                             _%tl226942227421%_
                             _%e226943227424%_
                             _%hd226944227427%_
                             _%tl226945227429%_
                             _%e226946227432%_
                             _%hd226947227435%_
                             _%tl226948227437%_
                             _%e226949227440%_
                             _%hd226950227443%_
                             _%tl226951227445%_
                             _%e226952227448%_
                             _%hd226953227451%_
                             _%tl226954227453%_
                             _%e226955227456%_
                             _%hd226956227459%_
                             _%tl226957227461%_
                             _%e226958227464%_
                             _%hd226959227467%_
                             _%tl226960227469%_
                             _%e226961227472%_
                             _%hd226962227475%_
                             _%tl226963227477%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl226957227461%_))
                          (_%__match231547231548%_
                           _%e226934227400%_
                           _%hd226935227403%_
                           _%tl226936227405%_
                           _%e226937227408%_
                           _%hd226938227411%_
                           _%tl226939227413%_
                           _%e226940227416%_
                           _%hd226941227419%_
                           _%tl226942227421%_
                           _%e226943227424%_
                           _%hd226944227427%_
                           _%tl226945227429%_
                           _%e226946227432%_
                           _%hd226947227435%_
                           _%tl226948227437%_
                           _%e226949227440%_
                           _%hd226950227443%_
                           _%tl226951227445%_
                           _%e226952227448%_
                           _%hd226953227451%_
                           _%tl226954227453%_
                           _%e226955227456%_
                           _%hd226956227459%_
                           _%tl226957227461%_
                           _%e226958227464%_
                           _%hd226959227467%_
                           _%tl226960227469%_
                           _%e226961227472%_
                           _%hd226962227475%_
                           _%tl226963227477%_)
                          (_%__match231625231626%_
                           _%e226934227400%_
                           _%hd226935227403%_
                           _%tl226936227405%_
                           _%e226937227408%_
                           _%hd226938227411%_
                           _%tl226939227413%_
                           _%e226940227416%_
                           _%hd226941227419%_
                           _%tl226942227421%_
                           _%e226943227424%_
                           _%hd226944227427%_
                           _%tl226945227429%_
                           _%e226946227432%_
                           _%hd226947227435%_
                           _%tl226948227437%_
                           _%e226949227440%_
                           _%hd226950227443%_
                           _%tl226951227445%_
                           _%e226952227448%_
                           _%hd226953227451%_
                           _%tl226954227453%_
                           _%e226955227456%_
                           _%hd226956227459%_
                           _%tl226957227461%_
                           _%e226958227464%_
                           _%hd226959227467%_
                           _%tl226960227469%_
                           _%e226961227472%_
                           _%hd226962227475%_
                           _%tl226963227477%_))))
                   (_%__match231535231536%_
                    (lambda (_%e226934227400%_
                             _%hd226935227403%_
                             _%tl226936227405%_
                             _%e226937227408%_
                             _%hd226938227411%_
                             _%tl226939227413%_
                             _%e226940227416%_
                             _%hd226941227419%_
                             _%tl226942227421%_
                             _%e226943227424%_
                             _%hd226944227427%_
                             _%tl226945227429%_
                             _%e226946227432%_
                             _%hd226947227435%_
                             _%tl226948227437%_
                             _%e226949227440%_
                             _%hd226950227443%_
                             _%tl226951227445%_
                             _%e226952227448%_
                             _%hd226953227451%_
                             _%tl226954227453%_
                             _%e226955227456%_
                             _%hd226956227459%_
                             _%tl226957227461%_
                             _%e226958227464%_
                             _%hd226959227467%_
                             _%tl226960227469%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd226959227467%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226960227469%_))
                              (let ((_%e226961227472%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl226960227469%_))))
                                (let ((_%tl226963227477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226961227472%_)))
                                      (_%hd226962227475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226961227472%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl226963227477%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl226957227461%_))
                                          (_%__match231547231548%_
                                           _%e226934227400%_
                                           _%hd226935227403%_
                                           _%tl226936227405%_
                                           _%e226937227408%_
                                           _%hd226938227411%_
                                           _%tl226939227413%_
                                           _%e226940227416%_
                                           _%hd226941227419%_
                                           _%tl226942227421%_
                                           _%e226943227424%_
                                           _%hd226944227427%_
                                           _%tl226945227429%_
                                           _%e226946227432%_
                                           _%hd226947227435%_
                                           _%tl226948227437%_
                                           _%e226949227440%_
                                           _%hd226950227443%_
                                           _%tl226951227445%_
                                           _%e226952227448%_
                                           _%hd226953227451%_
                                           _%tl226954227453%_
                                           _%e226955227456%_
                                           _%hd226956227459%_
                                           _%tl226957227461%_
                                           _%e226958227464%_
                                           _%hd226959227467%_
                                           _%tl226960227469%_
                                           _%e226961227472%_
                                           _%hd226962227475%_
                                           _%tl226963227477%_)
                                          (_%__match231625231626%_
                                           _%e226934227400%_
                                           _%hd226935227403%_
                                           _%tl226936227405%_
                                           _%e226937227408%_
                                           _%hd226938227411%_
                                           _%tl226939227413%_
                                           _%e226940227416%_
                                           _%hd226941227419%_
                                           _%tl226942227421%_
                                           _%e226943227424%_
                                           _%hd226944227427%_
                                           _%tl226945227429%_
                                           _%e226946227432%_
                                           _%hd226947227435%_
                                           _%tl226948227437%_
                                           _%e226949227440%_
                                           _%hd226950227443%_
                                           _%tl226951227445%_
                                           _%e226952227448%_
                                           _%hd226953227451%_
                                           _%tl226954227453%_
                                           _%e226955227456%_
                                           _%hd226956227459%_
                                           _%tl226957227461%_
                                           _%e226958227464%_
                                           _%hd226959227467%_
                                           _%tl226960227469%_
                                           _%e226961227472%_
                                           _%hd226962227475%_
                                           _%tl226963227477%_))
                                      (_%__match231749231750%_
                                       _%e226934227400%_
                                       _%hd226935227403%_
                                       _%tl226936227405%_
                                       _%e226937227408%_
                                       _%hd226938227411%_
                                       _%tl226939227413%_
                                       _%e226940227416%_
                                       _%hd226941227419%_
                                       _%tl226942227421%_
                                       _%e226943227424%_
                                       _%hd226944227427%_
                                       _%tl226945227429%_
                                       _%e226946227432%_
                                       _%hd226947227435%_
                                       _%tl226948227437%_
                                       _%e226949227440%_
                                       _%hd226950227443%_
                                       _%tl226951227445%_
                                       _%e226952227448%_
                                       _%hd226953227451%_
                                       _%tl226954227453%_
                                       _%e226955227456%_
                                       _%hd226956227459%_
                                       _%tl226957227461%_))))
                              (_%__match231749231750%_
                               _%e226934227400%_
                               _%hd226935227403%_
                               _%tl226936227405%_
                               _%e226937227408%_
                               _%hd226938227411%_
                               _%tl226939227413%_
                               _%e226940227416%_
                               _%hd226941227419%_
                               _%tl226942227421%_
                               _%e226943227424%_
                               _%hd226944227427%_
                               _%tl226945227429%_
                               _%e226946227432%_
                               _%hd226947227435%_
                               _%tl226948227437%_
                               _%e226949227440%_
                               _%hd226950227443%_
                               _%tl226951227445%_
                               _%e226952227448%_
                               _%hd226953227451%_
                               _%tl226954227453%_
                               _%e226955227456%_
                               _%hd226956227459%_
                               _%tl226957227461%_))
                          (_%__match231749231750%_
                           _%e226934227400%_
                           _%hd226935227403%_
                           _%tl226936227405%_
                           _%e226937227408%_
                           _%hd226938227411%_
                           _%tl226939227413%_
                           _%e226940227416%_
                           _%hd226941227419%_
                           _%tl226942227421%_
                           _%e226943227424%_
                           _%hd226944227427%_
                           _%tl226945227429%_
                           _%e226946227432%_
                           _%hd226947227435%_
                           _%tl226948227437%_
                           _%e226949227440%_
                           _%hd226950227443%_
                           _%tl226951227445%_
                           _%e226952227448%_
                           _%hd226953227451%_
                           _%tl226954227453%_
                           _%e226955227456%_
                           _%hd226956227459%_
                           _%tl226957227461%_))))
                   (_%__match231467231468%_
                    (lambda (_%e226883227519%_
                             _%hd226884227522%_
                             _%tl226885227524%_
                             _%e226886227527%_
                             _%hd226887227530%_
                             _%tl226888227532%_
                             _%e226889227535%_
                             _%hd226890227538%_
                             _%tl226891227540%_
                             _%e226892227543%_
                             _%hd226893227546%_
                             _%tl226894227548%_
                             _%e226895227551%_
                             _%hd226896227554%_
                             _%tl226897227556%_
                             _%e226898227559%_
                             _%hd226899227562%_
                             _%tl226900227564%_
                             _%e226901227567%_
                             _%hd226902227570%_
                             _%tl226903227572%_
                             _%e226904227575%_
                             _%hd226905227578%_
                             _%tl226906227580%_
                             _%e226907227583%_
                             _%hd226908227586%_
                             _%tl226909227588%_
                             _%e226910227591%_
                             _%hd226911227594%_
                             _%tl226912227596%_
                             _%e226913227599%_
                             _%hd226914227602%_
                             _%tl226915227604%_
                             _%e226916227607%_
                             _%hd226917227610%_
                             _%tl226918227612%_
                             _%e226919227615%_
                             _%hd226920227618%_
                             _%tl226921227620%_
                             _%__splice231260231261%_
                             _%target226922227623%_
                             _%tl226924227625%_)
                      (letrec ((_%loop226925227628%_
                                (lambda (_%hd226923227631%_
                                         _%args226929227633%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd226923227631%_))
                                      (let ((_%e226926227635%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd226923227631%_))))
                                        (let ((_%lp-tl226928227640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226926227635%_)))
                                              (_%lp-hd226927227638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226926227635%_))))
                                          (_%loop226925227628%_
                                           _%lp-tl226928227640%_
                                           (cons _%lp-hd226927227638%_
                                                 _%args226929227633%_))))
                                      (let ((_%args226930227643%_
                                             (reverse _%args226929227633%_)))
                                        (let ((_%g226878227645%_
                                               _%args226930227643%_)
                                              (_%g226879227646%_
                                               _%hd226920227618%_)
                                              (_%g226880227647%_
                                               _%hd226911227594%_)
                                              (_%g226881227648%_
                                               _%hd226902227570%_)
                                              (_%g226882227649%_
                                               _%hd226893227546%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g226882227649%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g226881227648%_
                                                      'call-method))
                                                   (let ((__tmp232414
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self226824%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g226880227647%_
                                                      __tmp232414)))
                                              (_%__kont231258231259%_
                                               _%g226878227645%_
                                               _%g226879227646%_
                                               _%g226880227647%_
                                               _%g226881227648%_
                                               _%g226882227649%_)
                                              (_%__kont231270231271%_))))))))
                        (_%loop226925227628%_ _%target226922227623%_ '()))))
                   (_%__match231425231426%_
                    (lambda (_%e226883227519%_
                             _%hd226884227522%_
                             _%tl226885227524%_
                             _%e226886227527%_
                             _%hd226887227530%_
                             _%tl226888227532%_
                             _%e226889227535%_
                             _%hd226890227538%_
                             _%tl226891227540%_
                             _%e226892227543%_
                             _%hd226893227546%_
                             _%tl226894227548%_
                             _%e226895227551%_
                             _%hd226896227554%_
                             _%tl226897227556%_
                             _%e226898227559%_
                             _%hd226899227562%_
                             _%tl226900227564%_
                             _%e226901227567%_
                             _%hd226902227570%_
                             _%tl226903227572%_
                             _%e226904227575%_
                             _%hd226905227578%_
                             _%tl226906227580%_
                             _%e226907227583%_
                             _%hd226908227586%_
                             _%tl226909227588%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd226908227586%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226909227588%_))
                              (let ((_%e226910227591%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl226909227588%_))))
                                (let ((_%tl226912227596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226910227591%_)))
                                      (_%hd226911227594%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226910227591%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl226912227596%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226906227580%_))
                                          (let ((_%e226913227599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl226906227580%_))))
                                            (let ((_%tl226915227604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226913227599%_)))
                                                  (_%hd226914227602%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226913227599%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd226914227602%_))
                                                  (let ((_%e226916227607%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd226914227602%_))))
                                                    (let ((_%tl226918227612%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226916227607%_)))
                                                          (_%hd226917227610%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226916227607%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd226917227610%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd226917227610%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226918227612%_))
                          (let ((_%e226919227615%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl226918227612%_))))
                            (let ((_%tl226921227620%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226919227615%_)))
                                  (_%hd226920227618%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226919227615%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl226921227620%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl226915227604%_))
                                      (let ((_%__splice231260231261%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl226915227604%_
                                                '0))))
                                        (let ((_%tl226924227625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice231260231261%_
                                                  '1)))
                                              (_%target226922227623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice231260231261%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226924227625%_))
                                              (_%__match231467231468%_
                                               _%e226883227519%_
                                               _%hd226884227522%_
                                               _%tl226885227524%_
                                               _%e226886227527%_
                                               _%hd226887227530%_
                                               _%tl226888227532%_
                                               _%e226889227535%_
                                               _%hd226890227538%_
                                               _%tl226891227540%_
                                               _%e226892227543%_
                                               _%hd226893227546%_
                                               _%tl226894227548%_
                                               _%e226895227551%_
                                               _%hd226896227554%_
                                               _%tl226897227556%_
                                               _%e226898227559%_
                                               _%hd226899227562%_
                                               _%tl226900227564%_
                                               _%e226901227567%_
                                               _%hd226902227570%_
                                               _%tl226903227572%_
                                               _%e226904227575%_
                                               _%hd226905227578%_
                                               _%tl226906227580%_
                                               _%e226907227583%_
                                               _%hd226908227586%_
                                               _%tl226909227588%_
                                               _%e226910227591%_
                                               _%hd226911227594%_
                                               _%tl226912227596%_
                                               _%e226913227599%_
                                               _%hd226914227602%_
                                               _%tl226915227604%_
                                               _%e226916227607%_
                                               _%hd226917227610%_
                                               _%tl226918227612%_
                                               _%e226919227615%_
                                               _%hd226920227618%_
                                               _%tl226921227620%_
                                               _%__splice231260231261%_
                                               _%target226922227623%_
                                               _%tl226924227625%_)
                                              (_%__kont231270231271%_))))
                                      (_%__kont231270231271%_))
                                  (_%__kont231270231271%_))))
                          (_%__kont231270231271%_))
                      (_%__kont231270231271%_))
                  (_%__kont231270231271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231270231271%_))))
                                          (_%__match231749231750%_
                                           _%e226883227519%_
                                           _%hd226884227522%_
                                           _%tl226885227524%_
                                           _%e226886227527%_
                                           _%hd226887227530%_
                                           _%tl226888227532%_
                                           _%e226889227535%_
                                           _%hd226890227538%_
                                           _%tl226891227540%_
                                           _%e226892227543%_
                                           _%hd226893227546%_
                                           _%tl226894227548%_
                                           _%e226895227551%_
                                           _%hd226896227554%_
                                           _%tl226897227556%_
                                           _%e226898227559%_
                                           _%hd226899227562%_
                                           _%tl226900227564%_
                                           _%e226901227567%_
                                           _%hd226902227570%_
                                           _%tl226903227572%_
                                           _%e226904227575%_
                                           _%hd226905227578%_
                                           _%tl226906227580%_))
                                      (_%__match231749231750%_
                                       _%e226883227519%_
                                       _%hd226884227522%_
                                       _%tl226885227524%_
                                       _%e226886227527%_
                                       _%hd226887227530%_
                                       _%tl226888227532%_
                                       _%e226889227535%_
                                       _%hd226890227538%_
                                       _%tl226891227540%_
                                       _%e226892227543%_
                                       _%hd226893227546%_
                                       _%tl226894227548%_
                                       _%e226895227551%_
                                       _%hd226896227554%_
                                       _%tl226897227556%_
                                       _%e226898227559%_
                                       _%hd226899227562%_
                                       _%tl226900227564%_
                                       _%e226901227567%_
                                       _%hd226902227570%_
                                       _%tl226903227572%_
                                       _%e226904227575%_
                                       _%hd226905227578%_
                                       _%tl226906227580%_))))
                              (_%__match231749231750%_
                               _%e226883227519%_
                               _%hd226884227522%_
                               _%tl226885227524%_
                               _%e226886227527%_
                               _%hd226887227530%_
                               _%tl226888227532%_
                               _%e226889227535%_
                               _%hd226890227538%_
                               _%tl226891227540%_
                               _%e226892227543%_
                               _%hd226893227546%_
                               _%tl226894227548%_
                               _%e226895227551%_
                               _%hd226896227554%_
                               _%tl226897227556%_
                               _%e226898227559%_
                               _%hd226899227562%_
                               _%tl226900227564%_
                               _%e226901227567%_
                               _%hd226902227570%_
                               _%tl226903227572%_
                               _%e226904227575%_
                               _%hd226905227578%_
                               _%tl226906227580%_))
                          (_%__match231535231536%_
                           _%e226883227519%_
                           _%hd226884227522%_
                           _%tl226885227524%_
                           _%e226886227527%_
                           _%hd226887227530%_
                           _%tl226888227532%_
                           _%e226889227535%_
                           _%hd226890227538%_
                           _%tl226891227540%_
                           _%e226892227543%_
                           _%hd226893227546%_
                           _%tl226894227548%_
                           _%e226895227551%_
                           _%hd226896227554%_
                           _%tl226897227556%_
                           _%e226898227559%_
                           _%hd226899227562%_
                           _%tl226900227564%_
                           _%e226901227567%_
                           _%hd226902227570%_
                           _%tl226903227572%_
                           _%e226904227575%_
                           _%hd226905227578%_
                           _%tl226906227580%_
                           _%e226907227583%_
                           _%hd226908227586%_
                           _%tl226909227588%_))))
                   (_%__match231357231358%_
                    (lambda (_%e226839227706%_
                             _%hd226840227709%_
                             _%tl226841227711%_
                             _%e226842227714%_
                             _%hd226843227717%_
                             _%tl226844227719%_
                             _%e226845227722%_
                             _%hd226846227725%_
                             _%tl226847227727%_
                             _%e226848227730%_
                             _%hd226849227733%_
                             _%tl226850227735%_
                             _%e226851227738%_
                             _%hd226852227741%_
                             _%tl226853227743%_
                             _%e226854227746%_
                             _%hd226855227749%_
                             _%tl226856227751%_
                             _%e226857227754%_
                             _%hd226858227757%_
                             _%tl226859227759%_
                             _%e226860227762%_
                             _%hd226861227765%_
                             _%tl226862227767%_
                             _%e226863227770%_
                             _%hd226864227773%_
                             _%tl226865227775%_
                             _%e226866227778%_
                             _%hd226867227781%_
                             _%tl226868227783%_
                             _%__splice231256231257%_
                             _%target226869227786%_
                             _%tl226871227788%_)
                      (letrec ((_%loop226872227791%_
                                (lambda (_%hd226870227794%_
                                         _%args226876227796%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd226870227794%_))
                                      (let ((_%e226873227798%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd226870227794%_))))
                                        (let ((_%lp-tl226875227803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226873227798%_)))
                                              (_%lp-hd226874227801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226873227798%_))))
                                          (_%loop226872227791%_
                                           _%lp-tl226875227803%_
                                           (cons _%lp-hd226874227801%_
                                                 _%args226876227796%_))))
                                      (let ((_%args226877227806%_
                                             (reverse _%args226876227796%_)))
                                        (let ((_%g226835227808%_
                                               _%args226877227806%_)
                                              (_%g226836227809%_
                                               _%hd226867227781%_)
                                              (_%g226837227810%_
                                               _%hd226858227757%_)
                                              (_%g226838227811%_
                                               _%hd226849227733%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g226838227811%_
                                                      'call-method))
                                                   (let ((__tmp232415
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self226824%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g226837227810%_
                                                      __tmp232415)))
                                              (_%__kont231254231255%_
                                               _%g226835227808%_
                                               _%g226836227809%_
                                               _%g226837227810%_
                                               _%g226838227811%_)
                                              (_%__match231545231546%_
                                               _%e226839227706%_
                                               _%hd226840227709%_
                                               _%tl226841227711%_
                                               _%e226842227714%_
                                               _%hd226843227717%_
                                               _%tl226844227719%_
                                               _%e226845227722%_
                                               _%hd226846227725%_
                                               _%tl226847227727%_
                                               _%e226848227730%_
                                               _%hd226849227733%_
                                               _%tl226850227735%_
                                               _%e226851227738%_
                                               _%hd226852227741%_
                                               _%tl226853227743%_
                                               _%e226854227746%_
                                               _%hd226855227749%_
                                               _%tl226856227751%_
                                               _%e226857227754%_
                                               _%hd226858227757%_
                                               _%tl226859227759%_
                                               _%e226860227762%_
                                               _%hd226861227765%_
                                               _%tl226862227767%_
                                               _%e226863227770%_
                                               _%hd226864227773%_
                                               _%tl226865227775%_
                                               _%e226866227778%_
                                               _%hd226867227781%_
                                               _%tl226868227783%_))))))))
                        (_%loop226872227791%_ _%target226869227786%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx231252231253%_))
                  (let ((_%e226839227706%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx231252231253%_))))
                    (let ((_%tl226841227711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226839227706%_)))
                          (_%hd226840227709%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226839227706%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226841227711%_))
                          (let ((_%e226842227714%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl226841227711%_))))
                            (let ((_%tl226844227719%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226842227714%_)))
                                  (_%hd226843227717%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226842227714%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd226843227717%_))
                                  (let ((_%e226845227722%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd226843227717%_))))
                                    (let ((_%tl226847227727%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e226845227722%_)))
                                          (_%hd226846227725%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e226845227722%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd226846227725%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd226846227725%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl226847227727%_))
                                                  (let ((_%e226848227730%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl226847227727%_))))
                                                    (let ((_%tl226850227735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226848227730%_)))
                                                          (_%hd226849227733%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226848227730%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl226850227735%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl226844227719%_))
                      (let ((_%e226851227738%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl226844227719%_))))
                        (let ((_%tl226853227743%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226851227738%_)))
                              (_%hd226852227741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226851227738%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd226852227741%_))
                              (let ((_%e226854227746%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd226852227741%_))))
                                (let ((_%tl226856227751%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226854227746%_)))
                                      (_%hd226855227749%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226854227746%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd226855227749%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd226855227749%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl226856227751%_))
                                              (let ((_%e226857227754%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl226856227751%_))))
                                                (let ((_%tl226859227759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e226857227754%_)))
                                                      (_%hd226858227757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e226857227754%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226859227759%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl226853227743%_))
                                                          (let ((_%e226860227762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl226853227743%_))))
                    (let ((_%tl226862227767%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226860227762%_)))
                          (_%hd226861227765%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226860227762%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd226861227765%_))
                          (let ((_%e226863227770%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd226861227765%_))))
                            (let ((_%tl226865227775%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226863227770%_)))
                                  (_%hd226864227773%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226863227770%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd226864227773%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd226864227773%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226865227775%_))
                                          (let ((_%e226866227778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl226865227775%_))))
                                            (let ((_%tl226868227783%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226866227778%_)))
                                                  (_%hd226867227781%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226866227778%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl226868227783%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl226862227767%_))
                                                      (let ((_%__splice231256231257%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl226862227767%_
                        '0))))
                (let ((_%tl226871227788%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice231256231257%_ '1)))
                      (_%target226869227786%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice231256231257%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl226871227788%_))
                      (_%__match231357231358%_
                       _%e226839227706%_
                       _%hd226840227709%_
                       _%tl226841227711%_
                       _%e226842227714%_
                       _%hd226843227717%_
                       _%tl226844227719%_
                       _%e226845227722%_
                       _%hd226846227725%_
                       _%tl226847227727%_
                       _%e226848227730%_
                       _%hd226849227733%_
                       _%tl226850227735%_
                       _%e226851227738%_
                       _%hd226852227741%_
                       _%tl226853227743%_
                       _%e226854227746%_
                       _%hd226855227749%_
                       _%tl226856227751%_
                       _%e226857227754%_
                       _%hd226858227757%_
                       _%tl226859227759%_
                       _%e226860227762%_
                       _%hd226861227765%_
                       _%tl226862227767%_
                       _%e226863227770%_
                       _%hd226864227773%_
                       _%tl226865227775%_
                       _%e226866227778%_
                       _%hd226867227781%_
                       _%tl226868227783%_
                       _%__splice231256231257%_
                       _%target226869227786%_
                       _%tl226871227788%_)
                      (_%__match231545231546%_
                       _%e226839227706%_
                       _%hd226840227709%_
                       _%tl226841227711%_
                       _%e226842227714%_
                       _%hd226843227717%_
                       _%tl226844227719%_
                       _%e226845227722%_
                       _%hd226846227725%_
                       _%tl226847227727%_
                       _%e226848227730%_
                       _%hd226849227733%_
                       _%tl226850227735%_
                       _%e226851227738%_
                       _%hd226852227741%_
                       _%tl226853227743%_
                       _%e226854227746%_
                       _%hd226855227749%_
                       _%tl226856227751%_
                       _%e226857227754%_
                       _%hd226858227757%_
                       _%tl226859227759%_
                       _%e226860227762%_
                       _%hd226861227765%_
                       _%tl226862227767%_
                       _%e226863227770%_
                       _%hd226864227773%_
                       _%tl226865227775%_
                       _%e226866227778%_
                       _%hd226867227781%_
                       _%tl226868227783%_))))
              (_%__match231545231546%_
               _%e226839227706%_
               _%hd226840227709%_
               _%tl226841227711%_
               _%e226842227714%_
               _%hd226843227717%_
               _%tl226844227719%_
               _%e226845227722%_
               _%hd226846227725%_
               _%tl226847227727%_
               _%e226848227730%_
               _%hd226849227733%_
               _%tl226850227735%_
               _%e226851227738%_
               _%hd226852227741%_
               _%tl226853227743%_
               _%e226854227746%_
               _%hd226855227749%_
               _%tl226856227751%_
               _%e226857227754%_
               _%hd226858227757%_
               _%tl226859227759%_
               _%e226860227762%_
               _%hd226861227765%_
               _%tl226862227767%_
               _%e226863227770%_
               _%hd226864227773%_
               _%tl226865227775%_
               _%e226866227778%_
               _%hd226867227781%_
               _%tl226868227783%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match231749231750%_
                                                   _%e226839227706%_
                                                   _%hd226840227709%_
                                                   _%tl226841227711%_
                                                   _%e226842227714%_
                                                   _%hd226843227717%_
                                                   _%tl226844227719%_
                                                   _%e226845227722%_
                                                   _%hd226846227725%_
                                                   _%tl226847227727%_
                                                   _%e226848227730%_
                                                   _%hd226849227733%_
                                                   _%tl226850227735%_
                                                   _%e226851227738%_
                                                   _%hd226852227741%_
                                                   _%tl226853227743%_
                                                   _%e226854227746%_
                                                   _%hd226855227749%_
                                                   _%tl226856227751%_
                                                   _%e226857227754%_
                                                   _%hd226858227757%_
                                                   _%tl226859227759%_
                                                   _%e226860227762%_
                                                   _%hd226861227765%_
                                                   _%tl226862227767%_))))
                                          (_%__match231749231750%_
                                           _%e226839227706%_
                                           _%hd226840227709%_
                                           _%tl226841227711%_
                                           _%e226842227714%_
                                           _%hd226843227717%_
                                           _%tl226844227719%_
                                           _%e226845227722%_
                                           _%hd226846227725%_
                                           _%tl226847227727%_
                                           _%e226848227730%_
                                           _%hd226849227733%_
                                           _%tl226850227735%_
                                           _%e226851227738%_
                                           _%hd226852227741%_
                                           _%tl226853227743%_
                                           _%e226854227746%_
                                           _%hd226855227749%_
                                           _%tl226856227751%_
                                           _%e226857227754%_
                                           _%hd226858227757%_
                                           _%tl226859227759%_
                                           _%e226860227762%_
                                           _%hd226861227765%_
                                           _%tl226862227767%_))
                                      (_%__match231425231426%_
                                       _%e226839227706%_
                                       _%hd226840227709%_
                                       _%tl226841227711%_
                                       _%e226842227714%_
                                       _%hd226843227717%_
                                       _%tl226844227719%_
                                       _%e226845227722%_
                                       _%hd226846227725%_
                                       _%tl226847227727%_
                                       _%e226848227730%_
                                       _%hd226849227733%_
                                       _%tl226850227735%_
                                       _%e226851227738%_
                                       _%hd226852227741%_
                                       _%tl226853227743%_
                                       _%e226854227746%_
                                       _%hd226855227749%_
                                       _%tl226856227751%_
                                       _%e226857227754%_
                                       _%hd226858227757%_
                                       _%tl226859227759%_
                                       _%e226860227762%_
                                       _%hd226861227765%_
                                       _%tl226862227767%_
                                       _%e226863227770%_
                                       _%hd226864227773%_
                                       _%tl226865227775%_))
                                  (_%__match231749231750%_
                                   _%e226839227706%_
                                   _%hd226840227709%_
                                   _%tl226841227711%_
                                   _%e226842227714%_
                                   _%hd226843227717%_
                                   _%tl226844227719%_
                                   _%e226845227722%_
                                   _%hd226846227725%_
                                   _%tl226847227727%_
                                   _%e226848227730%_
                                   _%hd226849227733%_
                                   _%tl226850227735%_
                                   _%e226851227738%_
                                   _%hd226852227741%_
                                   _%tl226853227743%_
                                   _%e226854227746%_
                                   _%hd226855227749%_
                                   _%tl226856227751%_
                                   _%e226857227754%_
                                   _%hd226858227757%_
                                   _%tl226859227759%_
                                   _%e226860227762%_
                                   _%hd226861227765%_
                                   _%tl226862227767%_))))
                          (_%__match231749231750%_
                           _%e226839227706%_
                           _%hd226840227709%_
                           _%tl226841227711%_
                           _%e226842227714%_
                           _%hd226843227717%_
                           _%tl226844227719%_
                           _%e226845227722%_
                           _%hd226846227725%_
                           _%tl226847227727%_
                           _%e226848227730%_
                           _%hd226849227733%_
                           _%tl226850227735%_
                           _%e226851227738%_
                           _%hd226852227741%_
                           _%tl226853227743%_
                           _%e226854227746%_
                           _%hd226855227749%_
                           _%tl226856227751%_
                           _%e226857227754%_
                           _%hd226858227757%_
                           _%tl226859227759%_
                           _%e226860227762%_
                           _%hd226861227765%_
                           _%tl226862227767%_))))
                  (_%__match231687231688%_
                   _%e226839227706%_
                   _%hd226840227709%_
                   _%tl226841227711%_
                   _%e226842227714%_
                   _%hd226843227717%_
                   _%tl226844227719%_
                   _%e226845227722%_
                   _%hd226846227725%_
                   _%tl226847227727%_
                   _%e226848227730%_
                   _%hd226849227733%_
                   _%tl226850227735%_
                   _%e226851227738%_
                   _%hd226852227741%_
                   _%tl226853227743%_
                   _%e226854227746%_
                   _%hd226855227749%_
                   _%tl226856227751%_
                   _%e226857227754%_
                   _%hd226858227757%_
                   _%tl226859227759%_))
              (_%__kont231270231271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont231270231271%_))
                                          (_%__kont231270231271%_))
                                      (_%__kont231270231271%_))))
                              (_%__kont231270231271%_))))
                      (_%__kont231270231271%_))
                  (_%__kont231270231271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231270231271%_))
                                              (_%__kont231270231271%_))
                                          (_%__kont231270231271%_))))
                                  (_%__kont231270231271%_))))
                          (_%__kont231270231271%_))))
                  (_%__kont231270231271%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self225767%_ _%stx225768%_)
        (letrec ((_%force-e225770%_
                  (lambda (_%target226822%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target226822%_ '()))
                                      '()))))))
          (let* ((_%__stx231754231755%_ _%stx225768%_)
                 (_%g225778226000%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx231754231755%_)))))
            (let ((_%__kont231756231757%_
                   (lambda (_%g225780226768%_
                            _%g225781226769%_
                            _%g225782226770%_
                            _%g225783226771%_)
                     (let ((_%$method226816%_
                            (let ((__tmp232417
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self225767%_ 'methods)))
                                  (__tmp232416
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g225781226769%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp232417 __tmp232416)))
                           (_%args226817%_
                            (map (lambda (_%g226804226806%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self225767%_
                                      _%g226804226806%_)))
                                 (let ((__tmp232418
                                        (lambda (_%g226808226811%_
                                                 _%g226809226813%_)
                                          (cons _%g226808226811%_
                                                _%g226809226813%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp232418
                                    '()
                                    _%g225780226768%_)))))
                       (let ((__tmp232419
                              (cons '%#call
                                    (cons (_%force-e225770%_ _%$method226816%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self225767%_
                                                               'receiver))
                                                            '()))
                                                _%args226817%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp232419 _%stx225768%_)))))
                  (_%__kont231760231761%_
                   (lambda (_%g225823226602%_
                            _%g225824226603%_
                            _%g225825226604%_
                            _%g225826226605%_
                            _%g225827226606%_)
                     (let ((_%$method226658%_
                            (let ((__tmp232421
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self225767%_ 'methods)))
                                  (__tmp232420
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g225824226603%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp232421 __tmp232420)))
                           (_%args226659%_
                            (map (lambda (_%g226646226648%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self225767%_
                                      _%g226646226648%_)))
                                 (let ((__tmp232422
                                        (lambda (_%g226650226653%_
                                                 _%g226651226655%_)
                                          (cons _%g226650226653%_
                                                _%g226651226655%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp232422
                                    '()
                                    _%g225823226602%_)))))
                       (let ((__tmp232423
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e225770%_
                                                 _%$method226658%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self225767%_ 'receiver))
                          '()))
              _%args226659%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp232423 _%stx225768%_)))))
                  (_%__kont231764231765%_
                   (lambda (_%g225876226435%_
                            _%g225877226436%_
                            _%g225878226437%_)
                     (let* ((_%$field226469%_
                             (let ((__tmp232425
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self225767%_ 'slots)))
                                   (__tmp232424
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g225876226435%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp232425 __tmp232424)))
                            (__tmp232426
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self225767%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field226469%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self225767%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp232426 _%stx225768%_))))
                  (_%__kont231766231767%_
                   (lambda (_%g225909226309%_
                            _%g225910226310%_
                            _%g225911226311%_
                            _%g225912226312%_)
                     (let ((_%$field226347%_
                            (let ((__tmp232428
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self225767%_ 'slots)))
                                  (__tmp232427
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g225910226310%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp232428 __tmp232427)))
                           (_%expr226348%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self225767%_
                               _%g225909226309%_))))
                       (let ((__tmp232429
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self225767%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field226347%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self225767%_ 'receiver))
                          '()))
              (cons _%expr226348%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp232429 _%stx225768%_)))))
                  (_%__kont231768231769%_
                   (lambda (_%g225946226181%_ _%g225947226182%_)
                     (let* ((_%accessor226204%_
                             (let ((__tmp232430
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g225947226182%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp232430)))
                            (_%klass226206%_
                             (let ((__tmp232431
                                    (##structure-ref
                                     _%accessor226204%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx225768%_
                                __tmp232431)))
                            (_%slot226208%_
                             (##structure-ref
                              _%accessor226204%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor226204%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass226206%_
                                      _%slot226208%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass226206%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx225768%_
                           (let* ((_%$field226214%_
                                   (let ((__tmp232432
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225767%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp232432 _%slot226208%_)))
                                  (__tmp232433
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self225767%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field226214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self225767%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp232433
                              _%stx225768%_))))))
                  (_%__kont231770231771%_
                   (lambda (_%g225969226076%_
                            _%g225970226077%_
                            _%g225971226078%_)
                     (let* ((_%mutator226106%_
                             (let ((__tmp232434
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g225971226078%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp232434)))
                            (_%klass226108%_
                             (let ((__tmp232435
                                    (##structure-ref
                                     _%mutator226106%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx225768%_
                                __tmp232435)))
                            (_%slot226110%_
                             (##structure-ref
                              _%mutator226106%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr226112%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self225767%_
                                _%g225969226076%_))))
                       (if (if (##structure-ref
                                _%mutator226106%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass226108%_
                                      _%slot226110%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass226108%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp232436
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g225971226078%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g225970226077%_
                                                                '()))
                                                    (cons _%expr226112%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp232436 _%stx225768%_))
                           (let* ((_%$field226118%_
                                   (let ((__tmp232437
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225767%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp232437 _%slot226110%_)))
                                  (__tmp232438
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self225767%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field226118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self225767%_ 'receiver))
                               '()))
                   (cons _%expr226112%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp232438
                              _%stx225768%_))))))
                  (_%__kont231772231773%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self225767%_ _%stx225768%_)))))
              (let* ((_%__match232253232254%_
                      (lambda (_%e225972226012%_
                               _%hd225973226015%_
                               _%tl225974226017%_
                               _%e225975226020%_
                               _%hd225976226023%_
                               _%tl225977226025%_
                               _%e225978226028%_
                               _%hd225979226031%_
                               _%tl225980226033%_
                               _%e225981226036%_
                               _%hd225982226039%_
                               _%tl225983226041%_
                               _%e225984226044%_
                               _%hd225985226047%_
                               _%tl225986226049%_
                               _%e225987226052%_
                               _%hd225988226055%_
                               _%tl225989226057%_
                               _%e225990226060%_
                               _%hd225991226063%_
                               _%tl225992226065%_
                               _%e225993226068%_
                               _%hd225994226071%_
                               _%tl225995226073%_)
                        (let ((_%g225969226076%_ _%hd225994226071%_)
                              (_%g225970226077%_ _%hd225991226063%_)
                              (_%g225971226078%_ _%hd225982226039%_))
                          (if (and (let ((__tmp232439
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225767%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225970226077%_
                                      __tmp232439))
                                   (let ((__tmp232440
                                          (let ((__tmp232441
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g225971226078%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp232441))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp232440
                                      'gxc#!mutator::t)))
                              (_%__kont231770231771%_
                               _%g225969226076%_
                               _%g225970226077%_
                               _%g225971226078%_)
                              (_%__kont231772231773%_)))))
                     (_%__match232251232252%_
                      (lambda (_%e225972226012%_
                               _%hd225973226015%_
                               _%tl225974226017%_
                               _%e225975226020%_
                               _%hd225976226023%_
                               _%tl225977226025%_
                               _%e225978226028%_
                               _%hd225979226031%_
                               _%tl225980226033%_
                               _%e225981226036%_
                               _%hd225982226039%_
                               _%tl225983226041%_
                               _%e225984226044%_
                               _%hd225985226047%_
                               _%tl225986226049%_
                               _%e225987226052%_
                               _%hd225988226055%_
                               _%tl225989226057%_
                               _%e225990226060%_
                               _%hd225991226063%_
                               _%tl225992226065%_
                               _%e225993226068%_
                               _%hd225994226071%_
                               _%tl225995226073%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl225995226073%_))
                            (_%__match232253232254%_
                             _%e225972226012%_
                             _%hd225973226015%_
                             _%tl225974226017%_
                             _%e225975226020%_
                             _%hd225976226023%_
                             _%tl225977226025%_
                             _%e225978226028%_
                             _%hd225979226031%_
                             _%tl225980226033%_
                             _%e225981226036%_
                             _%hd225982226039%_
                             _%tl225983226041%_
                             _%e225984226044%_
                             _%hd225985226047%_
                             _%tl225986226049%_
                             _%e225987226052%_
                             _%hd225988226055%_
                             _%tl225989226057%_
                             _%e225990226060%_
                             _%hd225991226063%_
                             _%tl225992226065%_
                             _%e225993226068%_
                             _%hd225994226071%_
                             _%tl225995226073%_)
                            (_%__kont231772231773%_))))
                     (_%__match232245232246%_
                      (lambda (_%e225972226012%_
                               _%hd225973226015%_
                               _%tl225974226017%_
                               _%e225975226020%_
                               _%hd225976226023%_
                               _%tl225977226025%_
                               _%e225978226028%_
                               _%hd225979226031%_
                               _%tl225980226033%_
                               _%e225981226036%_
                               _%hd225982226039%_
                               _%tl225983226041%_
                               _%e225984226044%_
                               _%hd225985226047%_
                               _%tl225986226049%_
                               _%e225987226052%_
                               _%hd225988226055%_
                               _%tl225989226057%_
                               _%e225990226060%_
                               _%hd225991226063%_
                               _%tl225992226065%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225986226049%_))
                            (let ((_%e225993226068%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225986226049%_))))
                              (let ((_%tl225995226073%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225993226068%_)))
                                    (_%hd225994226071%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225993226068%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl225995226073%_))
                                    (_%__match232253232254%_
                                     _%e225972226012%_
                                     _%hd225973226015%_
                                     _%tl225974226017%_
                                     _%e225975226020%_
                                     _%hd225976226023%_
                                     _%tl225977226025%_
                                     _%e225978226028%_
                                     _%hd225979226031%_
                                     _%tl225980226033%_
                                     _%e225981226036%_
                                     _%hd225982226039%_
                                     _%tl225983226041%_
                                     _%e225984226044%_
                                     _%hd225985226047%_
                                     _%tl225986226049%_
                                     _%e225987226052%_
                                     _%hd225988226055%_
                                     _%tl225989226057%_
                                     _%e225990226060%_
                                     _%hd225991226063%_
                                     _%tl225992226065%_
                                     _%e225993226068%_
                                     _%hd225994226071%_
                                     _%tl225995226073%_)
                                    (_%__kont231772231773%_))))
                            (_%__kont231772231773%_))))
                     (_%__match232191232192%_
                      (lambda (_%e225948226125%_
                               _%hd225949226128%_
                               _%tl225950226130%_
                               _%e225951226133%_
                               _%hd225952226136%_
                               _%tl225953226138%_
                               _%e225954226141%_
                               _%hd225955226144%_
                               _%tl225956226146%_
                               _%e225957226149%_
                               _%hd225958226152%_
                               _%tl225959226154%_
                               _%e225960226157%_
                               _%hd225961226160%_
                               _%tl225962226162%_
                               _%e225963226165%_
                               _%hd225964226168%_
                               _%tl225965226170%_
                               _%e225966226173%_
                               _%hd225967226176%_
                               _%tl225968226178%_)
                        (let ((_%g225946226181%_ _%hd225967226176%_)
                              (_%g225947226182%_ _%hd225958226152%_))
                          (if (and (let ((__tmp232442
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225767%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225946226181%_
                                      __tmp232442))
                                   (let ((__tmp232443
                                          (let ((__tmp232444
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g225947226182%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp232444))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp232443
                                      'gxc#!accessor::t)))
                              (_%__kont231768231769%_
                               _%g225946226181%_
                               _%g225947226182%_)
                              (_%__kont231772231773%_)))))
                     (_%__match232189232190%_
                      (lambda (_%e225948226125%_
                               _%hd225949226128%_
                               _%tl225950226130%_
                               _%e225951226133%_
                               _%hd225952226136%_
                               _%tl225953226138%_
                               _%e225954226141%_
                               _%hd225955226144%_
                               _%tl225956226146%_
                               _%e225957226149%_
                               _%hd225958226152%_
                               _%tl225959226154%_
                               _%e225960226157%_
                               _%hd225961226160%_
                               _%tl225962226162%_
                               _%e225963226165%_
                               _%hd225964226168%_
                               _%tl225965226170%_
                               _%e225966226173%_
                               _%hd225967226176%_
                               _%tl225968226178%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl225962226162%_))
                            (_%__match232191232192%_
                             _%e225948226125%_
                             _%hd225949226128%_
                             _%tl225950226130%_
                             _%e225951226133%_
                             _%hd225952226136%_
                             _%tl225953226138%_
                             _%e225954226141%_
                             _%hd225955226144%_
                             _%tl225956226146%_
                             _%e225957226149%_
                             _%hd225958226152%_
                             _%tl225959226154%_
                             _%e225960226157%_
                             _%hd225961226160%_
                             _%tl225962226162%_
                             _%e225963226165%_
                             _%hd225964226168%_
                             _%tl225965226170%_
                             _%e225966226173%_
                             _%hd225967226176%_
                             _%tl225968226178%_)
                            (_%__match232245232246%_
                             _%e225948226125%_
                             _%hd225949226128%_
                             _%tl225950226130%_
                             _%e225951226133%_
                             _%hd225952226136%_
                             _%tl225953226138%_
                             _%e225954226141%_
                             _%hd225955226144%_
                             _%tl225956226146%_
                             _%e225957226149%_
                             _%hd225958226152%_
                             _%tl225959226154%_
                             _%e225960226157%_
                             _%hd225961226160%_
                             _%tl225962226162%_
                             _%e225963226165%_
                             _%hd225964226168%_
                             _%tl225965226170%_
                             _%e225966226173%_
                             _%hd225967226176%_
                             _%tl225968226178%_))))
                     (_%__match232135232136%_
                      (lambda (_%e225913226221%_
                               _%hd225914226224%_
                               _%tl225915226226%_
                               _%e225916226229%_
                               _%hd225917226232%_
                               _%tl225918226234%_
                               _%e225919226237%_
                               _%hd225920226240%_
                               _%tl225921226242%_
                               _%e225922226245%_
                               _%hd225923226248%_
                               _%tl225924226250%_
                               _%e225925226253%_
                               _%hd225926226256%_
                               _%tl225927226258%_
                               _%e225928226261%_
                               _%hd225929226264%_
                               _%tl225930226266%_
                               _%e225931226269%_
                               _%hd225932226272%_
                               _%tl225933226274%_
                               _%e225934226277%_
                               _%hd225935226280%_
                               _%tl225936226282%_
                               _%e225937226285%_
                               _%hd225938226288%_
                               _%tl225939226290%_
                               _%e225940226293%_
                               _%hd225941226296%_
                               _%tl225942226298%_
                               _%e225943226301%_
                               _%hd225944226304%_
                               _%tl225945226306%_)
                        (let ((_%g225909226309%_ _%hd225944226304%_)
                              (_%g225910226310%_ _%hd225941226296%_)
                              (_%g225911226311%_ _%hd225932226272%_)
                              (_%g225912226312%_ _%hd225923226248%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225912226312%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225912226312%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp232445
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225767%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225911226311%_
                                      __tmp232445)))
                              (_%__kont231766231767%_
                               _%g225909226309%_
                               _%g225910226310%_
                               _%g225911226311%_
                               _%g225912226312%_)
                              (_%__kont231772231773%_)))))
                     (_%__match232127232128%_
                      (lambda (_%e225913226221%_
                               _%hd225914226224%_
                               _%tl225915226226%_
                               _%e225916226229%_
                               _%hd225917226232%_
                               _%tl225918226234%_
                               _%e225919226237%_
                               _%hd225920226240%_
                               _%tl225921226242%_
                               _%e225922226245%_
                               _%hd225923226248%_
                               _%tl225924226250%_
                               _%e225925226253%_
                               _%hd225926226256%_
                               _%tl225927226258%_
                               _%e225928226261%_
                               _%hd225929226264%_
                               _%tl225930226266%_
                               _%e225931226269%_
                               _%hd225932226272%_
                               _%tl225933226274%_
                               _%e225934226277%_
                               _%hd225935226280%_
                               _%tl225936226282%_
                               _%e225937226285%_
                               _%hd225938226288%_
                               _%tl225939226290%_
                               _%e225940226293%_
                               _%hd225941226296%_
                               _%tl225942226298%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225936226282%_))
                            (let ((_%e225943226301%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225936226282%_))))
                              (let ((_%tl225945226306%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225943226301%_)))
                                    (_%hd225944226304%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225943226301%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl225945226306%_))
                                    (_%__match232135232136%_
                                     _%e225913226221%_
                                     _%hd225914226224%_
                                     _%tl225915226226%_
                                     _%e225916226229%_
                                     _%hd225917226232%_
                                     _%tl225918226234%_
                                     _%e225919226237%_
                                     _%hd225920226240%_
                                     _%tl225921226242%_
                                     _%e225922226245%_
                                     _%hd225923226248%_
                                     _%tl225924226250%_
                                     _%e225925226253%_
                                     _%hd225926226256%_
                                     _%tl225927226258%_
                                     _%e225928226261%_
                                     _%hd225929226264%_
                                     _%tl225930226266%_
                                     _%e225931226269%_
                                     _%hd225932226272%_
                                     _%tl225933226274%_
                                     _%e225934226277%_
                                     _%hd225935226280%_
                                     _%tl225936226282%_
                                     _%e225937226285%_
                                     _%hd225938226288%_
                                     _%tl225939226290%_
                                     _%e225940226293%_
                                     _%hd225941226296%_
                                     _%tl225942226298%_
                                     _%e225943226301%_
                                     _%hd225944226304%_
                                     _%tl225945226306%_)
                                    (_%__kont231772231773%_))))
                            (_%__match232251232252%_
                             _%e225913226221%_
                             _%hd225914226224%_
                             _%tl225915226226%_
                             _%e225916226229%_
                             _%hd225917226232%_
                             _%tl225918226234%_
                             _%e225919226237%_
                             _%hd225920226240%_
                             _%tl225921226242%_
                             _%e225922226245%_
                             _%hd225923226248%_
                             _%tl225924226250%_
                             _%e225925226253%_
                             _%hd225926226256%_
                             _%tl225927226258%_
                             _%e225928226261%_
                             _%hd225929226264%_
                             _%tl225930226266%_
                             _%e225931226269%_
                             _%hd225932226272%_
                             _%tl225933226274%_
                             _%e225934226277%_
                             _%hd225935226280%_
                             _%tl225936226282%_))))
                     (_%__match232049232050%_
                      (lambda (_%e225879226355%_
                               _%hd225880226358%_
                               _%tl225881226360%_
                               _%e225882226363%_
                               _%hd225883226366%_
                               _%tl225884226368%_
                               _%e225885226371%_
                               _%hd225886226374%_
                               _%tl225887226376%_
                               _%e225888226379%_
                               _%hd225889226382%_
                               _%tl225890226384%_
                               _%e225891226387%_
                               _%hd225892226390%_
                               _%tl225893226392%_
                               _%e225894226395%_
                               _%hd225895226398%_
                               _%tl225896226400%_
                               _%e225897226403%_
                               _%hd225898226406%_
                               _%tl225899226408%_
                               _%e225900226411%_
                               _%hd225901226414%_
                               _%tl225902226416%_
                               _%e225903226419%_
                               _%hd225904226422%_
                               _%tl225905226424%_
                               _%e225906226427%_
                               _%hd225907226430%_
                               _%tl225908226432%_)
                        (let ((_%g225876226435%_ _%hd225907226430%_)
                              (_%g225877226436%_ _%hd225898226406%_)
                              (_%g225878226437%_ _%hd225889226382%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225878226437%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225878226437%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp232446
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225767%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225877226436%_
                                      __tmp232446)))
                              (_%__kont231764231765%_
                               _%g225876226435%_
                               _%g225877226436%_
                               _%g225878226437%_)
                              (_%__match232253232254%_
                               _%e225879226355%_
                               _%hd225880226358%_
                               _%tl225881226360%_
                               _%e225882226363%_
                               _%hd225883226366%_
                               _%tl225884226368%_
                               _%e225885226371%_
                               _%hd225886226374%_
                               _%tl225887226376%_
                               _%e225888226379%_
                               _%hd225889226382%_
                               _%tl225890226384%_
                               _%e225891226387%_
                               _%hd225892226390%_
                               _%tl225893226392%_
                               _%e225894226395%_
                               _%hd225895226398%_
                               _%tl225896226400%_
                               _%e225897226403%_
                               _%hd225898226406%_
                               _%tl225899226408%_
                               _%e225900226411%_
                               _%hd225901226414%_
                               _%tl225902226416%_)))))
                     (_%__match232047232048%_
                      (lambda (_%e225879226355%_
                               _%hd225880226358%_
                               _%tl225881226360%_
                               _%e225882226363%_
                               _%hd225883226366%_
                               _%tl225884226368%_
                               _%e225885226371%_
                               _%hd225886226374%_
                               _%tl225887226376%_
                               _%e225888226379%_
                               _%hd225889226382%_
                               _%tl225890226384%_
                               _%e225891226387%_
                               _%hd225892226390%_
                               _%tl225893226392%_
                               _%e225894226395%_
                               _%hd225895226398%_
                               _%tl225896226400%_
                               _%e225897226403%_
                               _%hd225898226406%_
                               _%tl225899226408%_
                               _%e225900226411%_
                               _%hd225901226414%_
                               _%tl225902226416%_
                               _%e225903226419%_
                               _%hd225904226422%_
                               _%tl225905226424%_
                               _%e225906226427%_
                               _%hd225907226430%_
                               _%tl225908226432%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl225902226416%_))
                            (_%__match232049232050%_
                             _%e225879226355%_
                             _%hd225880226358%_
                             _%tl225881226360%_
                             _%e225882226363%_
                             _%hd225883226366%_
                             _%tl225884226368%_
                             _%e225885226371%_
                             _%hd225886226374%_
                             _%tl225887226376%_
                             _%e225888226379%_
                             _%hd225889226382%_
                             _%tl225890226384%_
                             _%e225891226387%_
                             _%hd225892226390%_
                             _%tl225893226392%_
                             _%e225894226395%_
                             _%hd225895226398%_
                             _%tl225896226400%_
                             _%e225897226403%_
                             _%hd225898226406%_
                             _%tl225899226408%_
                             _%e225900226411%_
                             _%hd225901226414%_
                             _%tl225902226416%_
                             _%e225903226419%_
                             _%hd225904226422%_
                             _%tl225905226424%_
                             _%e225906226427%_
                             _%hd225907226430%_
                             _%tl225908226432%_)
                            (_%__match232127232128%_
                             _%e225879226355%_
                             _%hd225880226358%_
                             _%tl225881226360%_
                             _%e225882226363%_
                             _%hd225883226366%_
                             _%tl225884226368%_
                             _%e225885226371%_
                             _%hd225886226374%_
                             _%tl225887226376%_
                             _%e225888226379%_
                             _%hd225889226382%_
                             _%tl225890226384%_
                             _%e225891226387%_
                             _%hd225892226390%_
                             _%tl225893226392%_
                             _%e225894226395%_
                             _%hd225895226398%_
                             _%tl225896226400%_
                             _%e225897226403%_
                             _%hd225898226406%_
                             _%tl225899226408%_
                             _%e225900226411%_
                             _%hd225901226414%_
                             _%tl225902226416%_
                             _%e225903226419%_
                             _%hd225904226422%_
                             _%tl225905226424%_
                             _%e225906226427%_
                             _%hd225907226430%_
                             _%tl225908226432%_))))
                     (_%__match232037232038%_
                      (lambda (_%e225879226355%_
                               _%hd225880226358%_
                               _%tl225881226360%_
                               _%e225882226363%_
                               _%hd225883226366%_
                               _%tl225884226368%_
                               _%e225885226371%_
                               _%hd225886226374%_
                               _%tl225887226376%_
                               _%e225888226379%_
                               _%hd225889226382%_
                               _%tl225890226384%_
                               _%e225891226387%_
                               _%hd225892226390%_
                               _%tl225893226392%_
                               _%e225894226395%_
                               _%hd225895226398%_
                               _%tl225896226400%_
                               _%e225897226403%_
                               _%hd225898226406%_
                               _%tl225899226408%_
                               _%e225900226411%_
                               _%hd225901226414%_
                               _%tl225902226416%_
                               _%e225903226419%_
                               _%hd225904226422%_
                               _%tl225905226424%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd225904226422%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl225905226424%_))
                                (let ((_%e225906226427%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl225905226424%_))))
                                  (let ((_%tl225908226432%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225906226427%_)))
                                        (_%hd225907226430%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225906226427%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl225908226432%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl225902226416%_))
                                            (_%__match232049232050%_
                                             _%e225879226355%_
                                             _%hd225880226358%_
                                             _%tl225881226360%_
                                             _%e225882226363%_
                                             _%hd225883226366%_
                                             _%tl225884226368%_
                                             _%e225885226371%_
                                             _%hd225886226374%_
                                             _%tl225887226376%_
                                             _%e225888226379%_
                                             _%hd225889226382%_
                                             _%tl225890226384%_
                                             _%e225891226387%_
                                             _%hd225892226390%_
                                             _%tl225893226392%_
                                             _%e225894226395%_
                                             _%hd225895226398%_
                                             _%tl225896226400%_
                                             _%e225897226403%_
                                             _%hd225898226406%_
                                             _%tl225899226408%_
                                             _%e225900226411%_
                                             _%hd225901226414%_
                                             _%tl225902226416%_
                                             _%e225903226419%_
                                             _%hd225904226422%_
                                             _%tl225905226424%_
                                             _%e225906226427%_
                                             _%hd225907226430%_
                                             _%tl225908226432%_)
                                            (_%__match232127232128%_
                                             _%e225879226355%_
                                             _%hd225880226358%_
                                             _%tl225881226360%_
                                             _%e225882226363%_
                                             _%hd225883226366%_
                                             _%tl225884226368%_
                                             _%e225885226371%_
                                             _%hd225886226374%_
                                             _%tl225887226376%_
                                             _%e225888226379%_
                                             _%hd225889226382%_
                                             _%tl225890226384%_
                                             _%e225891226387%_
                                             _%hd225892226390%_
                                             _%tl225893226392%_
                                             _%e225894226395%_
                                             _%hd225895226398%_
                                             _%tl225896226400%_
                                             _%e225897226403%_
                                             _%hd225898226406%_
                                             _%tl225899226408%_
                                             _%e225900226411%_
                                             _%hd225901226414%_
                                             _%tl225902226416%_
                                             _%e225903226419%_
                                             _%hd225904226422%_
                                             _%tl225905226424%_
                                             _%e225906226427%_
                                             _%hd225907226430%_
                                             _%tl225908226432%_))
                                        (_%__match232251232252%_
                                         _%e225879226355%_
                                         _%hd225880226358%_
                                         _%tl225881226360%_
                                         _%e225882226363%_
                                         _%hd225883226366%_
                                         _%tl225884226368%_
                                         _%e225885226371%_
                                         _%hd225886226374%_
                                         _%tl225887226376%_
                                         _%e225888226379%_
                                         _%hd225889226382%_
                                         _%tl225890226384%_
                                         _%e225891226387%_
                                         _%hd225892226390%_
                                         _%tl225893226392%_
                                         _%e225894226395%_
                                         _%hd225895226398%_
                                         _%tl225896226400%_
                                         _%e225897226403%_
                                         _%hd225898226406%_
                                         _%tl225899226408%_
                                         _%e225900226411%_
                                         _%hd225901226414%_
                                         _%tl225902226416%_))))
                                (_%__match232251232252%_
                                 _%e225879226355%_
                                 _%hd225880226358%_
                                 _%tl225881226360%_
                                 _%e225882226363%_
                                 _%hd225883226366%_
                                 _%tl225884226368%_
                                 _%e225885226371%_
                                 _%hd225886226374%_
                                 _%tl225887226376%_
                                 _%e225888226379%_
                                 _%hd225889226382%_
                                 _%tl225890226384%_
                                 _%e225891226387%_
                                 _%hd225892226390%_
                                 _%tl225893226392%_
                                 _%e225894226395%_
                                 _%hd225895226398%_
                                 _%tl225896226400%_
                                 _%e225897226403%_
                                 _%hd225898226406%_
                                 _%tl225899226408%_
                                 _%e225900226411%_
                                 _%hd225901226414%_
                                 _%tl225902226416%_))
                            (_%__match232251232252%_
                             _%e225879226355%_
                             _%hd225880226358%_
                             _%tl225881226360%_
                             _%e225882226363%_
                             _%hd225883226366%_
                             _%tl225884226368%_
                             _%e225885226371%_
                             _%hd225886226374%_
                             _%tl225887226376%_
                             _%e225888226379%_
                             _%hd225889226382%_
                             _%tl225890226384%_
                             _%e225891226387%_
                             _%hd225892226390%_
                             _%tl225893226392%_
                             _%e225894226395%_
                             _%hd225895226398%_
                             _%tl225896226400%_
                             _%e225897226403%_
                             _%hd225898226406%_
                             _%tl225899226408%_
                             _%e225900226411%_
                             _%hd225901226414%_
                             _%tl225902226416%_))))
                     (_%__match231969231970%_
                      (lambda (_%e225828226476%_
                               _%hd225829226479%_
                               _%tl225830226481%_
                               _%e225831226484%_
                               _%hd225832226487%_
                               _%tl225833226489%_
                               _%e225834226492%_
                               _%hd225835226495%_
                               _%tl225836226497%_
                               _%e225837226500%_
                               _%hd225838226503%_
                               _%tl225839226505%_
                               _%e225840226508%_
                               _%hd225841226511%_
                               _%tl225842226513%_
                               _%e225843226516%_
                               _%hd225844226519%_
                               _%tl225845226521%_
                               _%e225846226524%_
                               _%hd225847226527%_
                               _%tl225848226529%_
                               _%e225849226532%_
                               _%hd225850226535%_
                               _%tl225851226537%_
                               _%e225852226540%_
                               _%hd225853226543%_
                               _%tl225854226545%_
                               _%e225855226548%_
                               _%hd225856226551%_
                               _%tl225857226553%_
                               _%e225858226556%_
                               _%hd225859226559%_
                               _%tl225860226561%_
                               _%e225861226564%_
                               _%hd225862226567%_
                               _%tl225863226569%_
                               _%e225864226572%_
                               _%hd225865226575%_
                               _%tl225866226577%_
                               _%__splice231762231763%_
                               _%target225867226580%_
                               _%tl225869226582%_)
                        (letrec ((_%loop225870226585%_
                                  (lambda (_%hd225868226588%_
                                           _%args225874226590%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd225868226588%_))
                                        (let ((_%e225871226592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd225868226588%_))))
                                          (let ((_%lp-tl225873226597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e225871226592%_)))
                                                (_%lp-hd225872226595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e225871226592%_))))
                                            (_%loop225870226585%_
                                             _%lp-tl225873226597%_
                                             (cons _%lp-hd225872226595%_
                                                   _%args225874226590%_))))
                                        (let ((_%args225875226600%_
                                               (reverse _%args225874226590%_)))
                                          (let ((_%g225823226602%_
                                                 _%args225875226600%_)
                                                (_%g225824226603%_
                                                 _%hd225865226575%_)
                                                (_%g225825226604%_
                                                 _%hd225856226551%_)
                                                (_%g225826226605%_
                                                 _%hd225847226527%_)
                                                (_%g225827226606%_
                                                 _%hd225838226503%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g225827226606%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g225826226605%_
                                                        'call-method))
                                                     (let ((__tmp232447
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self225767%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g225825226604%_
                                                        __tmp232447)))
                                                (_%__kont231760231761%_
                                                 _%g225823226602%_
                                                 _%g225824226603%_
                                                 _%g225825226604%_
                                                 _%g225826226605%_
                                                 _%g225827226606%_)
                                                (_%__kont231772231773%_))))))))
                          (_%loop225870226585%_ _%target225867226580%_ '()))))
                     (_%__match231927231928%_
                      (lambda (_%e225828226476%_
                               _%hd225829226479%_
                               _%tl225830226481%_
                               _%e225831226484%_
                               _%hd225832226487%_
                               _%tl225833226489%_
                               _%e225834226492%_
                               _%hd225835226495%_
                               _%tl225836226497%_
                               _%e225837226500%_
                               _%hd225838226503%_
                               _%tl225839226505%_
                               _%e225840226508%_
                               _%hd225841226511%_
                               _%tl225842226513%_
                               _%e225843226516%_
                               _%hd225844226519%_
                               _%tl225845226521%_
                               _%e225846226524%_
                               _%hd225847226527%_
                               _%tl225848226529%_
                               _%e225849226532%_
                               _%hd225850226535%_
                               _%tl225851226537%_
                               _%e225852226540%_
                               _%hd225853226543%_
                               _%tl225854226545%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd225853226543%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl225854226545%_))
                                (let ((_%e225855226548%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl225854226545%_))))
                                  (let ((_%tl225857226553%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225855226548%_)))
                                        (_%hd225856226551%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225855226548%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl225857226553%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl225851226537%_))
                                            (let ((_%e225858226556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl225851226537%_))))
                                              (let ((_%tl225860226561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e225858226556%_)))
                                                    (_%hd225859226559%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e225858226556%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd225859226559%_))
                                                    (let ((_%e225861226564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd225859226559%_))))
                                                      (let ((_%tl225863226569%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e225861226564%_)))
                    (_%hd225862226567%_
                     (let () (declare (not safe)) (##car _%e225861226564%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd225862226567%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd225862226567%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225863226569%_))
                            (let ((_%e225864226572%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225863226569%_))))
                              (let ((_%tl225866226577%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225864226572%_)))
                                    (_%hd225865226575%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225864226572%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl225866226577%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl225860226561%_))
                                        (let ((_%__splice231762231763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl225860226561%_
                                                  '0))))
                                          (let ((_%tl225869226582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice231762231763%_
                                                    '1)))
                                                (_%target225867226580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice231762231763%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl225869226582%_))
                                                (_%__match231969231970%_
                                                 _%e225828226476%_
                                                 _%hd225829226479%_
                                                 _%tl225830226481%_
                                                 _%e225831226484%_
                                                 _%hd225832226487%_
                                                 _%tl225833226489%_
                                                 _%e225834226492%_
                                                 _%hd225835226495%_
                                                 _%tl225836226497%_
                                                 _%e225837226500%_
                                                 _%hd225838226503%_
                                                 _%tl225839226505%_
                                                 _%e225840226508%_
                                                 _%hd225841226511%_
                                                 _%tl225842226513%_
                                                 _%e225843226516%_
                                                 _%hd225844226519%_
                                                 _%tl225845226521%_
                                                 _%e225846226524%_
                                                 _%hd225847226527%_
                                                 _%tl225848226529%_
                                                 _%e225849226532%_
                                                 _%hd225850226535%_
                                                 _%tl225851226537%_
                                                 _%e225852226540%_
                                                 _%hd225853226543%_
                                                 _%tl225854226545%_
                                                 _%e225855226548%_
                                                 _%hd225856226551%_
                                                 _%tl225857226553%_
                                                 _%e225858226556%_
                                                 _%hd225859226559%_
                                                 _%tl225860226561%_
                                                 _%e225861226564%_
                                                 _%hd225862226567%_
                                                 _%tl225863226569%_
                                                 _%e225864226572%_
                                                 _%hd225865226575%_
                                                 _%tl225866226577%_
                                                 _%__splice231762231763%_
                                                 _%target225867226580%_
                                                 _%tl225869226582%_)
                                                (_%__kont231772231773%_))))
                                        (_%__kont231772231773%_))
                                    (_%__kont231772231773%_))))
                            (_%__kont231772231773%_))
                        (_%__kont231772231773%_))
                    (_%__kont231772231773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont231772231773%_))))
                                            (_%__match232251232252%_
                                             _%e225828226476%_
                                             _%hd225829226479%_
                                             _%tl225830226481%_
                                             _%e225831226484%_
                                             _%hd225832226487%_
                                             _%tl225833226489%_
                                             _%e225834226492%_
                                             _%hd225835226495%_
                                             _%tl225836226497%_
                                             _%e225837226500%_
                                             _%hd225838226503%_
                                             _%tl225839226505%_
                                             _%e225840226508%_
                                             _%hd225841226511%_
                                             _%tl225842226513%_
                                             _%e225843226516%_
                                             _%hd225844226519%_
                                             _%tl225845226521%_
                                             _%e225846226524%_
                                             _%hd225847226527%_
                                             _%tl225848226529%_
                                             _%e225849226532%_
                                             _%hd225850226535%_
                                             _%tl225851226537%_))
                                        (_%__match232251232252%_
                                         _%e225828226476%_
                                         _%hd225829226479%_
                                         _%tl225830226481%_
                                         _%e225831226484%_
                                         _%hd225832226487%_
                                         _%tl225833226489%_
                                         _%e225834226492%_
                                         _%hd225835226495%_
                                         _%tl225836226497%_
                                         _%e225837226500%_
                                         _%hd225838226503%_
                                         _%tl225839226505%_
                                         _%e225840226508%_
                                         _%hd225841226511%_
                                         _%tl225842226513%_
                                         _%e225843226516%_
                                         _%hd225844226519%_
                                         _%tl225845226521%_
                                         _%e225846226524%_
                                         _%hd225847226527%_
                                         _%tl225848226529%_
                                         _%e225849226532%_
                                         _%hd225850226535%_
                                         _%tl225851226537%_))))
                                (_%__match232251232252%_
                                 _%e225828226476%_
                                 _%hd225829226479%_
                                 _%tl225830226481%_
                                 _%e225831226484%_
                                 _%hd225832226487%_
                                 _%tl225833226489%_
                                 _%e225834226492%_
                                 _%hd225835226495%_
                                 _%tl225836226497%_
                                 _%e225837226500%_
                                 _%hd225838226503%_
                                 _%tl225839226505%_
                                 _%e225840226508%_
                                 _%hd225841226511%_
                                 _%tl225842226513%_
                                 _%e225843226516%_
                                 _%hd225844226519%_
                                 _%tl225845226521%_
                                 _%e225846226524%_
                                 _%hd225847226527%_
                                 _%tl225848226529%_
                                 _%e225849226532%_
                                 _%hd225850226535%_
                                 _%tl225851226537%_))
                            (_%__match232037232038%_
                             _%e225828226476%_
                             _%hd225829226479%_
                             _%tl225830226481%_
                             _%e225831226484%_
                             _%hd225832226487%_
                             _%tl225833226489%_
                             _%e225834226492%_
                             _%hd225835226495%_
                             _%tl225836226497%_
                             _%e225837226500%_
                             _%hd225838226503%_
                             _%tl225839226505%_
                             _%e225840226508%_
                             _%hd225841226511%_
                             _%tl225842226513%_
                             _%e225843226516%_
                             _%hd225844226519%_
                             _%tl225845226521%_
                             _%e225846226524%_
                             _%hd225847226527%_
                             _%tl225848226529%_
                             _%e225849226532%_
                             _%hd225850226535%_
                             _%tl225851226537%_
                             _%e225852226540%_
                             _%hd225853226543%_
                             _%tl225854226545%_))))
                     (_%__match231859231860%_
                      (lambda (_%e225784226666%_
                               _%hd225785226669%_
                               _%tl225786226671%_
                               _%e225787226674%_
                               _%hd225788226677%_
                               _%tl225789226679%_
                               _%e225790226682%_
                               _%hd225791226685%_
                               _%tl225792226687%_
                               _%e225793226690%_
                               _%hd225794226693%_
                               _%tl225795226695%_
                               _%e225796226698%_
                               _%hd225797226701%_
                               _%tl225798226703%_
                               _%e225799226706%_
                               _%hd225800226709%_
                               _%tl225801226711%_
                               _%e225802226714%_
                               _%hd225803226717%_
                               _%tl225804226719%_
                               _%e225805226722%_
                               _%hd225806226725%_
                               _%tl225807226727%_
                               _%e225808226730%_
                               _%hd225809226733%_
                               _%tl225810226735%_
                               _%e225811226738%_
                               _%hd225812226741%_
                               _%tl225813226743%_
                               _%__splice231758231759%_
                               _%target225814226746%_
                               _%tl225816226748%_)
                        (letrec ((_%loop225817226751%_
                                  (lambda (_%hd225815226754%_
                                           _%args225821226756%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd225815226754%_))
                                        (let ((_%e225818226758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd225815226754%_))))
                                          (let ((_%lp-tl225820226763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e225818226758%_)))
                                                (_%lp-hd225819226761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e225818226758%_))))
                                            (_%loop225817226751%_
                                             _%lp-tl225820226763%_
                                             (cons _%lp-hd225819226761%_
                                                   _%args225821226756%_))))
                                        (let ((_%args225822226766%_
                                               (reverse _%args225821226756%_)))
                                          (let ((_%g225780226768%_
                                                 _%args225822226766%_)
                                                (_%g225781226769%_
                                                 _%hd225812226741%_)
                                                (_%g225782226770%_
                                                 _%hd225803226717%_)
                                                (_%g225783226771%_
                                                 _%hd225794226693%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g225783226771%_
                                                        'call-method))
                                                     (let ((__tmp232448
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self225767%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g225782226770%_
                                                        __tmp232448)))
                                                (_%__kont231756231757%_
                                                 _%g225780226768%_
                                                 _%g225781226769%_
                                                 _%g225782226770%_
                                                 _%g225783226771%_)
                                                (_%__match232047232048%_
                                                 _%e225784226666%_
                                                 _%hd225785226669%_
                                                 _%tl225786226671%_
                                                 _%e225787226674%_
                                                 _%hd225788226677%_
                                                 _%tl225789226679%_
                                                 _%e225790226682%_
                                                 _%hd225791226685%_
                                                 _%tl225792226687%_
                                                 _%e225793226690%_
                                                 _%hd225794226693%_
                                                 _%tl225795226695%_
                                                 _%e225796226698%_
                                                 _%hd225797226701%_
                                                 _%tl225798226703%_
                                                 _%e225799226706%_
                                                 _%hd225800226709%_
                                                 _%tl225801226711%_
                                                 _%e225802226714%_
                                                 _%hd225803226717%_
                                                 _%tl225804226719%_
                                                 _%e225805226722%_
                                                 _%hd225806226725%_
                                                 _%tl225807226727%_
                                                 _%e225808226730%_
                                                 _%hd225809226733%_
                                                 _%tl225810226735%_
                                                 _%e225811226738%_
                                                 _%hd225812226741%_
                                                 _%tl225813226743%_))))))))
                          (_%loop225817226751%_ _%target225814226746%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx231754231755%_))
                    (let ((_%e225784226666%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx231754231755%_))))
                      (let ((_%tl225786226671%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e225784226666%_)))
                            (_%hd225785226669%_
                             (let ()
                               (declare (not safe))
                               (##car _%e225784226666%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225786226671%_))
                            (let ((_%e225787226674%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225786226671%_))))
                              (let ((_%tl225789226679%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225787226674%_)))
                                    (_%hd225788226677%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225787226674%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd225788226677%_))
                                    (let ((_%e225790226682%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd225788226677%_))))
                                      (let ((_%tl225792226687%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e225790226682%_)))
                                            (_%hd225791226685%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e225790226682%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd225791226685%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd225791226685%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl225792226687%_))
                                                    (let ((_%e225793226690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl225792226687%_))))
                                                      (let ((_%tl225795226695%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e225793226690%_)))
                    (_%hd225794226693%_
                     (let () (declare (not safe)) (##car _%e225793226690%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl225795226695%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl225789226679%_))
                        (let ((_%e225796226698%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl225789226679%_))))
                          (let ((_%tl225798226703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e225796226698%_)))
                                (_%hd225797226701%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e225796226698%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd225797226701%_))
                                (let ((_%e225799226706%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd225797226701%_))))
                                  (let ((_%tl225801226711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225799226706%_)))
                                        (_%hd225800226709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225799226706%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd225800226709%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd225800226709%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl225801226711%_))
                                                (let ((_%e225802226714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl225801226711%_))))
                                                  (let ((_%tl225804226719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e225802226714%_)))
                                                        (_%hd225803226717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e225802226714%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl225804226719%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl225798226703%_))
                                                            (let ((_%e225805226722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl225798226703%_))))
                      (let ((_%tl225807226727%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e225805226722%_)))
                            (_%hd225806226725%_
                             (let ()
                               (declare (not safe))
                               (##car _%e225805226722%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd225806226725%_))
                            (let ((_%e225808226730%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd225806226725%_))))
                              (let ((_%tl225810226735%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225808226730%_)))
                                    (_%hd225809226733%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225808226730%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd225809226733%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd225809226733%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl225810226735%_))
                                            (let ((_%e225811226738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl225810226735%_))))
                                              (let ((_%tl225813226743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e225811226738%_)))
                                                    (_%hd225812226741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e225811226738%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl225813226743%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl225807226727%_))
                                                        (let ((_%__splice231758231759%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl225807226727%_
                          '0))))
                  (let ((_%tl225816226748%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice231758231759%_ '1)))
                        (_%target225814226746%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice231758231759%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl225816226748%_))
                        (_%__match231859231860%_
                         _%e225784226666%_
                         _%hd225785226669%_
                         _%tl225786226671%_
                         _%e225787226674%_
                         _%hd225788226677%_
                         _%tl225789226679%_
                         _%e225790226682%_
                         _%hd225791226685%_
                         _%tl225792226687%_
                         _%e225793226690%_
                         _%hd225794226693%_
                         _%tl225795226695%_
                         _%e225796226698%_
                         _%hd225797226701%_
                         _%tl225798226703%_
                         _%e225799226706%_
                         _%hd225800226709%_
                         _%tl225801226711%_
                         _%e225802226714%_
                         _%hd225803226717%_
                         _%tl225804226719%_
                         _%e225805226722%_
                         _%hd225806226725%_
                         _%tl225807226727%_
                         _%e225808226730%_
                         _%hd225809226733%_
                         _%tl225810226735%_
                         _%e225811226738%_
                         _%hd225812226741%_
                         _%tl225813226743%_
                         _%__splice231758231759%_
                         _%target225814226746%_
                         _%tl225816226748%_)
                        (_%__match232047232048%_
                         _%e225784226666%_
                         _%hd225785226669%_
                         _%tl225786226671%_
                         _%e225787226674%_
                         _%hd225788226677%_
                         _%tl225789226679%_
                         _%e225790226682%_
                         _%hd225791226685%_
                         _%tl225792226687%_
                         _%e225793226690%_
                         _%hd225794226693%_
                         _%tl225795226695%_
                         _%e225796226698%_
                         _%hd225797226701%_
                         _%tl225798226703%_
                         _%e225799226706%_
                         _%hd225800226709%_
                         _%tl225801226711%_
                         _%e225802226714%_
                         _%hd225803226717%_
                         _%tl225804226719%_
                         _%e225805226722%_
                         _%hd225806226725%_
                         _%tl225807226727%_
                         _%e225808226730%_
                         _%hd225809226733%_
                         _%tl225810226735%_
                         _%e225811226738%_
                         _%hd225812226741%_
                         _%tl225813226743%_))))
                (_%__match232047232048%_
                 _%e225784226666%_
                 _%hd225785226669%_
                 _%tl225786226671%_
                 _%e225787226674%_
                 _%hd225788226677%_
                 _%tl225789226679%_
                 _%e225790226682%_
                 _%hd225791226685%_
                 _%tl225792226687%_
                 _%e225793226690%_
                 _%hd225794226693%_
                 _%tl225795226695%_
                 _%e225796226698%_
                 _%hd225797226701%_
                 _%tl225798226703%_
                 _%e225799226706%_
                 _%hd225800226709%_
                 _%tl225801226711%_
                 _%e225802226714%_
                 _%hd225803226717%_
                 _%tl225804226719%_
                 _%e225805226722%_
                 _%hd225806226725%_
                 _%tl225807226727%_
                 _%e225808226730%_
                 _%hd225809226733%_
                 _%tl225810226735%_
                 _%e225811226738%_
                 _%hd225812226741%_
                 _%tl225813226743%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match232251232252%_
                                                     _%e225784226666%_
                                                     _%hd225785226669%_
                                                     _%tl225786226671%_
                                                     _%e225787226674%_
                                                     _%hd225788226677%_
                                                     _%tl225789226679%_
                                                     _%e225790226682%_
                                                     _%hd225791226685%_
                                                     _%tl225792226687%_
                                                     _%e225793226690%_
                                                     _%hd225794226693%_
                                                     _%tl225795226695%_
                                                     _%e225796226698%_
                                                     _%hd225797226701%_
                                                     _%tl225798226703%_
                                                     _%e225799226706%_
                                                     _%hd225800226709%_
                                                     _%tl225801226711%_
                                                     _%e225802226714%_
                                                     _%hd225803226717%_
                                                     _%tl225804226719%_
                                                     _%e225805226722%_
                                                     _%hd225806226725%_
                                                     _%tl225807226727%_))))
                                            (_%__match232251232252%_
                                             _%e225784226666%_
                                             _%hd225785226669%_
                                             _%tl225786226671%_
                                             _%e225787226674%_
                                             _%hd225788226677%_
                                             _%tl225789226679%_
                                             _%e225790226682%_
                                             _%hd225791226685%_
                                             _%tl225792226687%_
                                             _%e225793226690%_
                                             _%hd225794226693%_
                                             _%tl225795226695%_
                                             _%e225796226698%_
                                             _%hd225797226701%_
                                             _%tl225798226703%_
                                             _%e225799226706%_
                                             _%hd225800226709%_
                                             _%tl225801226711%_
                                             _%e225802226714%_
                                             _%hd225803226717%_
                                             _%tl225804226719%_
                                             _%e225805226722%_
                                             _%hd225806226725%_
                                             _%tl225807226727%_))
                                        (_%__match231927231928%_
                                         _%e225784226666%_
                                         _%hd225785226669%_
                                         _%tl225786226671%_
                                         _%e225787226674%_
                                         _%hd225788226677%_
                                         _%tl225789226679%_
                                         _%e225790226682%_
                                         _%hd225791226685%_
                                         _%tl225792226687%_
                                         _%e225793226690%_
                                         _%hd225794226693%_
                                         _%tl225795226695%_
                                         _%e225796226698%_
                                         _%hd225797226701%_
                                         _%tl225798226703%_
                                         _%e225799226706%_
                                         _%hd225800226709%_
                                         _%tl225801226711%_
                                         _%e225802226714%_
                                         _%hd225803226717%_
                                         _%tl225804226719%_
                                         _%e225805226722%_
                                         _%hd225806226725%_
                                         _%tl225807226727%_
                                         _%e225808226730%_
                                         _%hd225809226733%_
                                         _%tl225810226735%_))
                                    (_%__match232251232252%_
                                     _%e225784226666%_
                                     _%hd225785226669%_
                                     _%tl225786226671%_
                                     _%e225787226674%_
                                     _%hd225788226677%_
                                     _%tl225789226679%_
                                     _%e225790226682%_
                                     _%hd225791226685%_
                                     _%tl225792226687%_
                                     _%e225793226690%_
                                     _%hd225794226693%_
                                     _%tl225795226695%_
                                     _%e225796226698%_
                                     _%hd225797226701%_
                                     _%tl225798226703%_
                                     _%e225799226706%_
                                     _%hd225800226709%_
                                     _%tl225801226711%_
                                     _%e225802226714%_
                                     _%hd225803226717%_
                                     _%tl225804226719%_
                                     _%e225805226722%_
                                     _%hd225806226725%_
                                     _%tl225807226727%_))))
                            (_%__match232251232252%_
                             _%e225784226666%_
                             _%hd225785226669%_
                             _%tl225786226671%_
                             _%e225787226674%_
                             _%hd225788226677%_
                             _%tl225789226679%_
                             _%e225790226682%_
                             _%hd225791226685%_
                             _%tl225792226687%_
                             _%e225793226690%_
                             _%hd225794226693%_
                             _%tl225795226695%_
                             _%e225796226698%_
                             _%hd225797226701%_
                             _%tl225798226703%_
                             _%e225799226706%_
                             _%hd225800226709%_
                             _%tl225801226711%_
                             _%e225802226714%_
                             _%hd225803226717%_
                             _%tl225804226719%_
                             _%e225805226722%_
                             _%hd225806226725%_
                             _%tl225807226727%_))))
                    (_%__match232189232190%_
                     _%e225784226666%_
                     _%hd225785226669%_
                     _%tl225786226671%_
                     _%e225787226674%_
                     _%hd225788226677%_
                     _%tl225789226679%_
                     _%e225790226682%_
                     _%hd225791226685%_
                     _%tl225792226687%_
                     _%e225793226690%_
                     _%hd225794226693%_
                     _%tl225795226695%_
                     _%e225796226698%_
                     _%hd225797226701%_
                     _%tl225798226703%_
                     _%e225799226706%_
                     _%hd225800226709%_
                     _%tl225801226711%_
                     _%e225802226714%_
                     _%hd225803226717%_
                     _%tl225804226719%_))
                (_%__kont231772231773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont231772231773%_))
                                            (_%__kont231772231773%_))
                                        (_%__kont231772231773%_))))
                                (_%__kont231772231773%_))))
                        (_%__kont231772231773%_))
                    (_%__kont231772231773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont231772231773%_))
                                                (_%__kont231772231773%_))
                                            (_%__kont231772231773%_))))
                                    (_%__kont231772231773%_))))
                            (_%__kont231772231773%_))))
                    (_%__kont231772231773%_))))))))))
