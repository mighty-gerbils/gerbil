(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712155165)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171523 (list gxc#::identity::t))
            (__tmp171522 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171523
         '()
         __tmp171522
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args170388%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args170388%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171524
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
        (__make-promise __tmp171524)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx170380%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self170383%_
                (let ((__obj171517
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171517))
               (__tmp171525
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self170383%_ _%stx170380%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171525
           gxc#current-compile-method
           _%self170383%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171527 (list gxc#::void::t))
            (__tmp171526 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171527
         '(receiver methods slots)
         __tmp171526
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args170377%_
        (apply make-instance gxc#::collect-object-refs::t _%$args170377%_)))
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
      (let ((__tmp171528
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
        (__make-promise __tmp171528)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%_170342%_
               _%receiver170337170344%_
               _%methods170338170346%_
               _%slots170339170348%_
               _%stx170350%_)
        (let* ((_%receiver170353%_
                (if (eq? _%receiver170337170344%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170337170344%_))
               (_%methods170355%_
                (if (eq? _%methods170338170346%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170338170346%_))
               (_%slots170357%_
                (if (eq? _%slots170339170348%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170339170348%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self170359%_
                  (let ((__obj171519
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
                       __obj171519
                       _%receiver170353%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171519
                       _%methods170355%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171519
                       _%slots170357%_
                       '3
                       '#f
                       '#f))
                    __obj171519))
                 (__tmp171529
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170359%_ _%stx170350%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171529
             gxc#current-compile-method
             _%self170359%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords170366%_ . _%args170367%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords170366%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170366%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170366%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170366%_
                  'slots:
                  absent-value))
               _%args170367%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args170340170373%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args170340170373%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171531 (list gxc#::basic-xform-expression::t))
            (__tmp171530 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171531
         '(receiver klass methods slots)
         __tmp171530
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args170333%_
        (apply make-instance gxc#::subst-object-refs::t _%$args170333%_)))
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
      (let ((__tmp171532
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
        (__make-promise __tmp171532)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%_170294%_
               _%receiver170288170296%_
               _%klass170289170298%_
               _%methods170290170300%_
               _%slots170291170302%_
               _%stx170304%_)
        (let* ((_%receiver170307%_
                (if (eq? _%receiver170288170296%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170288170296%_))
               (_%klass170309%_
                (if (eq? _%klass170289170298%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass170289170298%_))
               (_%methods170311%_
                (if (eq? _%methods170290170300%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170290170300%_))
               (_%slots170313%_
                (if (eq? _%slots170291170302%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170291170302%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self170315%_
                  (let ((__obj171521
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
                       __obj171521
                       _%receiver170307%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171521
                       _%klass170309%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171521
                       _%methods170311%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171521
                       _%slots170313%_
                       '4
                       '#f
                       '#f))
                    __obj171521))
                 (__tmp171533
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170315%_ _%stx170304%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171533
             gxc#current-compile-method
             _%self170315%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords170322%_ . _%args170323%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords170322%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170322%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170322%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170322%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170322%_
                  'slots:
                  absent-value))
               _%args170323%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args170292170329%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args170292170329%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167469%_ _%stx167470%_)
        (letrec ((_%generate-method-bind167472%_
                  (lambda (_%$klass170280%_
                           _%$method-table170281%_
                           _%id170282%_
                           _%$id170283%_)
                    (let ((_%$tmp170285%_
                           (let ((__tmp171534
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171534))))
                      (cons (cons _%$id170283%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp170285%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table170281%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id170282%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp170285%_ '()))
                    (cons (cons '%#ref (cons _%$tmp170285%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id170282%_
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
                 (_%generate-slot-bind167473%_
                  (lambda (_%$klass170274%_ _%id170275%_ _%$id170276%_)
                    (let ((_%$tmp170278%_
                           (let ((__tmp171535
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171535))))
                      (cons (cons _%$id170276%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp170278%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass170274%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id170275%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp170278%_ '()))
                        (cons (cons '%#ref (cons _%$tmp170278%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id170275%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167474%_
                  (lambda (_%$klass170268%_
                           _%$method-table170269%_
                           _%methods-bind170270%_
                           _%slots-bind170271%_
                           _%specializer-impl170272%_)
                    (let ((__tmp171536
                           (cons '%#lambda
                                 (cons (cons _%$klass170268%_
                                             (cons _%$method-table170269%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind170271%_
                                                            _%methods-bind170270%_))
                                                         (cons _%specializer-impl170272%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171536 _%stx167470%_))))
                 (_%generate-specializer-def167475%_
                  (lambda (_%id170264%_
                           _%specializer-id170265%_
                           _%specializer-impl170266%_)
                    (let ((__tmp171537
                           (cons '%#begin
                                 (cons _%stx167470%_
                                       (cons (let ((__tmp171538
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id170265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl170266%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171538
                                                _%stx167470%_))
                                             (cons (let ((__tmp171539
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id170264%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id170265%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171539
                                                      _%stx167470%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171537 _%stx167470%_)))))
          (let* ((_%__stx170477170478%_ _%stx167470%_)
                 (_%g167478167498%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170477170478%_)))))
            (let ((_%__kont170479170480%_
                   (lambda (_%L167542%_ _%L167543%_)
                     (let ((_%method-calls167562%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167563%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167564%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167566%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167562%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167563%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167542%_))
                             (let ()
                               (let* ((_%__stx170391170392%_ _%L167542%_)
                                      (_%g167954167972%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx170391170392%_)))))
                                 (let ((_%__kont170393170394%_
                                        (lambda (_%L168008%_
                                                 _%L168009%_
                                                 _%L168010%_)
                                          (for-each
                                           (lambda (_%g168026168028%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs__%
                                                '#f
                                                _%L168010%_
                                                _%method-calls167562%_
                                                _%slot-refs167563%_
                                                _%g168026168028%_)))
                                           _%L168008%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?167566%_))
                                              _%stx167470%_
                                              (let* ((_%specializer-id168037%_
                                                      (let* ((_%id168031%_
                                                              (let ((__tmp171540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167543%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171540 '"::specialize")))
                     (_%specializer-id168034%_
                      (let ((__tmp171541
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167470%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id168031%_ __tmp171541))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id168034%_))
                _%specializer-id168034%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass168039%_
                                                      (let ((__tmp171542
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171542)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table168041%_
                                                      (let ((__tmp171543
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171543)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods168043%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167562%_)))
                                                     (_%$methods168047%_
                                                      (map (lambda (_%id168045%_)
                                                             (let ((__tmp171544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168045%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171544)))
                   _%methods168043%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168056%_
                                                      (for-each
                                                       (lambda (_%g168048168051%_
                                                                _%g168049168053%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167562%_
                                                            _%g168048168051%_
                                                            _%g168049168053%_)))
                                                       _%methods168043%_
                                                       _%$methods168047%_))
                                                     (_%methods-bind168066%_
                                                      (map (lambda (_%g168058168061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168059168063%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind167472%_
                        _%$klass168039%_
                        _%$method-table168041%_
                        _%g168058168061%_
                        _%g168059168063%_)))
                   _%methods168043%_
                   _%$methods168047%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots168068%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167563%_)))
                                                     (_%$slots168072%_
                                                      (map (lambda (_%id168070%_)
                                                             (let ((__tmp171545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168070%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171545)))
                   _%slots168068%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168081%_
                                                      (for-each
                                                       (lambda (_%g168073168076%_
                                                                _%g168074168078%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167563%_
                                                            _%g168073168076%_
                                                            _%g168074168078%_)))
                                                       _%slots168068%_
                                                       _%$slots168072%_))
                                                     (_%slots-bind168090%_
                                                      (map (lambda (_%g168082168085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168083168087%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind167473%_
                        _%$klass168039%_
                        _%g168082168085%_
                        _%g168083168087%_)))
                   _%slots168068%_
                   _%$slots168072%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body168096%_
                                                      (map (lambda (_%g168091168093%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs__%
                        '#f
                        _%L168010%_
                        _%$klass168039%_
                        _%method-calls167562%_
                        _%slot-refs167563%_
                        _%g168091168093%_)))
                   _%L168008%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl168098%_
                                                      (let ((__tmp171546
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L168010%_ _%L168009%_)
                                 _%specializer-body168096%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171546 _%stx167470%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl168100%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl167474%_
                                                         _%$klass168039%_
                                                         _%$method-table168041%_
                                                         _%methods-bind168066%_
                                                         _%slots-bind168090%_
                                                         _%specializer-impl168098%_))))
                                                (let ((__tmp171548
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167543%_)))
                                                      (__tmp171547
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id168037%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171548
                                                   '" => "
                                                   __tmp171547))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def167475%_
                                                   _%L167543%_
                                                   _%specializer-id168037%_
                                                   _%specializer-impl168100%_))))))
                                       (_%__kont170395170396%_
                                        (lambda () _%stx167470%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx170391170392%_))
                                       (let ((_%e167961167984%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx170391170392%_))))
                                         (let ((_%tl167959167989%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e167961167984%_)))
                                               (_%hd167960167987%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e167961167984%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl167959167989%_))
                                               (let ((_%e167964167992%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl167959167989%_))))
                                                 (let ((_%tl167962167997%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e167964167992%_)))
                                                       (_%hd167963167995%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e167964167992%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd167963167995%_))
                                                       (let ((_%e167967168000%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd167963167995%_))))
                 (let ((_%tl167965168005%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e167967168000%_)))
                       (_%hd167966168003%_
                        (let ()
                          (declare (not safe))
                          (##car _%e167967168000%_))))
                   (_%__kont170393170394%_
                    _%tl167962167997%_
                    _%tl167965168005%_
                    _%hd167966168003%_)))
               (_%__kont170395170396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont170395170396%_))))
                                       (_%__kont170395170396%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167542%_))
                                 (let ()
                                   (let* ((_%g168107168126%_
                                           (lambda (_%g168108168123%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g168108168123%_))))
                                          (_%g168106168413%_
                                           (lambda (_%g168108168129%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g168108168129%_))
                                                 (let ((_%e168112168131%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g168108168129%_))))
                                                   (let ((_%hd168111168134%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168112168131%_)))
                                                         (_%tl168110168136%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168112168131%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl168110168136%_))
                                                         (let ((_g171549_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl168110168136%_ '0))))
                   (begin
                     (let ((_g171550_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g171549_)
                                  (##vector-length _g171549_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g171550_ 2)))
                           (error "Context expects 2 values" _g171550_)))
                     (let ((_%target168113168139%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171549_ 0)))
                           (_%tl168115168141%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171549_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl168115168141%_))
                           (letrec ((_%loop168116168144%_
                                     (lambda (_%hd168114168147%_
                                              _%clause168120168149%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd168114168147%_))
                                           (let ((_%e168117168152%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd168114168147%_))))
                                             (let ((_%lp-hd168118168155%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e168117168152%_)))
                                                   (_%lp-tl168119168157%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e168117168152%_))))
                                               (let ((__tmp171551
                                                      (cons _%lp-hd168118168155%_
                                                            _%clause168120168149%_)))
                                                 (declare (not safe))
                                                 (_%loop168116168144%_
                                                  _%lp-tl168119168157%_
                                                  __tmp171551))))
                                           (let ((_%clause168121168160%_
                                                  (reverse _%clause168120168149%_)))
                                             ((lambda (_%L168163%_)
                                                (for-each
                                                 (lambda (_%clause168177%_)
                                                   (let* ((_%__stx170417170418%_
                                                           _%clause168177%_)
                                                          (_%g168180168195%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx170417170418%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont170419170420%_
                                                            (lambda (_%L168223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L168224%_
                             _%L168225%_)
                      (for-each
                       (lambda (_%g168240168242%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs__%
                            '#f
                            _%L168225%_
                            _%method-calls167562%_
                            _%slot-refs167563%_
                            _%g168240168242%_)))
                       _%L168223%_)))
                   (_%__kont170421170422%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx170417170418%_))
                   (let ((_%e168187168207%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx170417170418%_))))
                     (let ((_%tl168185168212%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e168187168207%_)))
                           (_%hd168186168210%_
                            (let ()
                              (declare (not safe))
                              (##car _%e168187168207%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd168186168210%_))
                           (let ((_%e168190168215%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd168186168210%_))))
                             (let ((_%tl168188168220%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e168190168215%_)))
                                   (_%hd168189168218%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e168190168215%_))))
                               (_%__kont170419170420%_
                                _%tl168185168212%_
                                _%tl168188168220%_
                                _%hd168189168218%_)))
                           (_%__kont170421170422%_))))
                   (_%__kont170421170422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp171552
                                                        (lambda (_%g168247168250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g168248168252%_)
                  (cons _%g168247168250%_ _%g168248168252%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171552
                                                    '()
                                                    _%L168163%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?167566%_))
                                                    _%stx167470%_
                                                    (let* ((_%specializer-id168261%_
                                                            (let* ((_%id168255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp171553
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167543%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp171553 '"::specialize")))
                           (_%specializer-id168258%_
                            (let ((__tmp171554
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx167470%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id168255%_
                               __tmp171554))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id168258%_))
                      _%specializer-id168258%_))
                   (_%$klass168263%_
                    (let ((__tmp171555
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171555)))
                   (_%$method-table168265%_
                    (let ((__tmp171556
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171556)))
                   (_%methods168267%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls167562%_)))
                   (_%$methods168271%_
                    (map (lambda (_%id168269%_)
                           (let ((__tmp171557 (gensym _%id168269%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171557)))
                         _%methods168267%_))
                   (_%_168280%_
                    (for-each
                     (lambda (_%g168272168275%_ _%g168273168277%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls167562%_
                          _%g168272168275%_
                          _%g168273168277%_)))
                     _%methods168267%_
                     _%$methods168271%_))
                   (_%methods-bind168290%_
                    (map (lambda (_%g168282168285%_ _%g168283168287%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind167472%_
                              _%$klass168263%_
                              _%$method-table168265%_
                              _%g168282168285%_
                              _%g168283168287%_)))
                         _%methods168267%_
                         _%$methods168271%_))
                   (_%slots168292%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs167563%_)))
                   (_%$slots168296%_
                    (map (lambda (_%id168294%_)
                           (let ((__tmp171558 (gensym _%id168294%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171558)))
                         _%slots168292%_))
                   (_%_168305%_
                    (for-each
                     (lambda (_%g168297168300%_ _%g168298168302%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs167563%_
                          _%g168297168300%_
                          _%g168298168302%_)))
                     _%slots168292%_
                     _%$slots168296%_))
                   (_%slots-bind168314%_
                    (map (lambda (_%g168306168309%_ _%g168307168311%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind167473%_
                              _%$klass168263%_
                              _%g168306168309%_
                              _%g168307168311%_)))
                         _%slots168292%_
                         _%$slots168296%_))
                   (_%specializer-clauses168406%_
                    (map (lambda (_%clause168316%_)
                           (let* ((_%__stx170437170438%_ _%clause168316%_)
                                  (_%g168319168334%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx170437170438%_)))))
                             (let ((_%__kont170439170440%_
                                    (lambda (_%L168362%_
                                             _%L168363%_
                                             _%L168364%_)
                                      (let ((_%body168394%_
                                             (map (lambda (_%g168389168391%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs__%
                                                       '#f
                                                       _%L168364%_
                                                       _%$klass168263%_
                                                       _%method-calls167562%_
                                                       _%slot-refs167563%_
                                                       _%g168389168391%_)))
                                                  _%L168362%_)))
                                        (cons (cons _%L168364%_ _%L168363%_)
                                              _%body168394%_))))
                                   (_%__kont170441170442%_
                                    (lambda () _%clause168316%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx170437170438%_))
                                   (let ((_%e168326168346%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx170437170438%_))))
                                     (let ((_%tl168324168351%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e168326168346%_)))
                                           (_%hd168325168349%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e168326168346%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd168325168349%_))
                                           (let ((_%e168329168354%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd168325168349%_))))
                                             (let ((_%tl168327168359%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e168329168354%_)))
                                                   (_%hd168328168357%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e168329168354%_))))
                                               (_%__kont170439170440%_
                                                _%tl168324168351%_
                                                _%tl168327168359%_
                                                _%hd168328168357%_)))
                                           (_%__kont170441170442%_))))
                                   (_%__kont170441170442%_)))))
                         (let ((__tmp171559
                                (lambda (_%g168398168401%_ _%g168399168403%_)
                                  (cons _%g168398168401%_ _%g168399168403%_))))
                           (declare (not safe))
                           (__foldr1 __tmp171559 '() _%L168163%_))))
                   (_%specializer-impl168408%_
                    (let ((__tmp171560
                           (cons '%#case-lambda
                                 _%specializer-clauses168406%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171560 _%stx167470%_)))
                   (_%specializer-impl168410%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl167474%_
                       _%$klass168263%_
                       _%$method-table168265%_
                       _%methods-bind168290%_
                       _%slots-bind168314%_
                       _%specializer-impl168408%_))))
              (let ((__tmp171562
                     (let () (declare (not safe)) (gx#stx-e _%L167543%_)))
                    (__tmp171561
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id168261%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp171562
                 '" => "
                 __tmp171561))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def167475%_
                 _%L167543%_
                 _%specializer-id168261%_
                 _%specializer-impl168410%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause168121168160%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop168116168144%_
                                _%target168113168139%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g168107168126%_ _%g168108168129%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g168107168126%_ _%g168108168129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168107168126%_
                                                    _%g168108168129%_))))))
                                     (declare (not safe))
                                     (_%g168106168413%_ _%L167542%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167542%_))
                                     (let ()
                                       (let* ((_%g168417168447%_
                                               (lambda (_%g168418168444%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g168418168444%_))))
                                              (_%g168416169056%_
                                               (lambda (_%g168418168450%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g168418168450%_))
                                                     (let ((_%e168424168452%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g168418168450%_))))
                                                       (let ((_%hd168423168455%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e168424168452%_)))
                     (_%tl168422168457%_
                      (let () (declare (not safe)) (##cdr _%e168424168452%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl168422168457%_))
                     (let ((_%e168427168460%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168422168457%_))))
                       (let ((_%hd168426168463%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168427168460%_)))
                             (_%tl168425168465%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168427168460%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd168426168463%_))
                             (let ((_%e168430168468%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd168426168463%_))))
                               (let ((_%hd168429168471%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168430168468%_)))
                                     (_%tl168428168473%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168430168468%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168429168471%_))
                                     (let ((_%e168433168476%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168429168471%_))))
                                       (let ((_%hd168432168479%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168433168476%_)))
                                             (_%tl168431168481%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168433168476%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd168432168479%_))
                                             (let ((_%e168436168484%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd168432168479%_))))
                                               (let ((_%hd168435168487%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168436168484%_)))
                                                     (_%tl168434168489%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168436168484%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl168434168489%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl168431168481%_))
                                                         (let ((_%e168439168492%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl168431168481%_))))
                   (let ((_%hd168438168495%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168439168492%_)))
                         (_%tl168437168497%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168439168492%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168437168497%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168428168473%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl168425168465%_))
                                 (let ((_%e168442168500%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl168425168465%_))))
                                   (let ((_%hd168441168503%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168442168500%_)))
                                         (_%tl168440168505%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168442168500%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl168440168505%_))
                                         ((lambda (_%L168508%_
                                                   _%L168509%_
                                                   _%L168510%_)
                                            (let* ((_%g168534168552%_
                                                    (lambda (_%g168535168549%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168535168549%_))))
                                                   (_%g168533168603%_
                                                    (lambda (_%g168535168555%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168535168555%_))
                                                          (let ((_%e168541168557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168535168555%_))))
                    (let ((_%hd168540168560%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168541168557%_)))
                          (_%tl168539168562%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168541168557%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168539168562%_))
                          (let ((_%e168544168565%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168539168562%_))))
                            (let ((_%hd168543168568%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168544168565%_)))
                                  (_%tl168542168570%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168544168565%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168543168568%_))
                                  (let ((_%e168547168573%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168543168568%_))))
                                    (let ((_%hd168546168576%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168547168573%_)))
                                          (_%tl168545168578%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168547168573%_))))
                                      ((lambda (_%L168581%_
                                                _%L168582%_
                                                _%L168583%_)
                                         (for-each
                                          (lambda (_%g168598168600%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%L168583%_
                                               _%method-calls167562%_
                                               _%slot-refs167563%_
                                               _%g168598168600%_)))
                                          _%L168581%_))
                                       _%tl168542168570%_
                                       _%tl168545168578%_
                                       _%hd168546168576%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168534168552%_ _%g168535168555%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g168534168552%_ _%g168535168555%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168534168552%_ _%g168535168555%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168533168603%_ _%L168509%_))
                                            (let* ((_%g168606168625%_
                                                    (lambda (_%g168607168622%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168607168622%_))))
                                                   (_%g168605168744%_
                                                    (lambda (_%g168607168628%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168607168628%_))
                                                          (let ((_%e168611168630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168607168628%_))))
                    (let ((_%hd168610168633%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168611168630%_)))
                          (_%tl168609168635%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168611168630%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168609168635%_))
                          (let ((_g171563_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl168609168635%_
                                    '0))))
                            (begin
                              (let ((_g171564_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g171563_)
                                           (##vector-length _g171563_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g171564_ 2)))
                                    (error "Context expects 2 values"
                                           _g171564_)))
                              (let ((_%target168612168638%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171563_ 0)))
                                    (_%tl168614168640%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171563_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168614168640%_))
                                    (letrec ((_%loop168615168643%_
                                              (lambda (_%hd168613168646%_
                                                       _%clause168619168648%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd168613168646%_))
                                                    (let ((_%e168616168651%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd168613168646%_))))
                                                      (let ((_%lp-hd168617168654%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e168616168651%_)))
                    (_%lp-tl168618168656%_
                     (let () (declare (not safe)) (##cdr _%e168616168651%_))))
                (let ((__tmp171565
                       (cons _%lp-hd168617168654%_ _%clause168619168648%_)))
                  (declare (not safe))
                  (_%loop168615168643%_ _%lp-tl168618168656%_ __tmp171565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause168620168659%_
                                                           (reverse _%clause168619168648%_)))
                                                      ((lambda (_%L168662%_)
                                                         (for-each
                                                          (lambda (_%clause168675%_)
                                                            (let* ((_%g168677168692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g168678168689%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g168678168689%_))))
                           (_%g168676168734%_
                            (lambda (_%g168678168695%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g168678168695%_))
                                  (let ((_%e168684168697%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g168678168695%_))))
                                    (let ((_%hd168683168700%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168684168697%_)))
                                          (_%tl168682168702%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168684168697%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168683168700%_))
                                          (let ((_%e168687168705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168683168700%_))))
                                            (let ((_%hd168686168708%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168687168705%_)))
                                                  (_%tl168685168710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168687168705%_))))
                                              ((lambda (_%L168713%_
                                                        _%L168714%_
                                                        _%L168715%_)
                                                 (for-each
                                                  (lambda (_%g168729168731%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%L168715%_
                                                       _%method-calls167562%_
                                                       _%slot-refs167563%_
                                                       _%g168729168731%_)))
                                                  _%L168713%_))
                                               _%tl168682168702%_
                                               _%tl168685168710%_
                                               _%hd168686168708%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168677168692%_
                                             _%g168678168695%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168677168692%_ _%g168678168695%_))))))
                      (declare (not safe))
                      (_%g168676168734%_ _%clause168675%_)))
                  (let ((__tmp171566
                         (lambda (_%g168736168739%_ _%g168737168741%_)
                           (cons _%g168736168739%_ _%g168737168741%_))))
                    (declare (not safe))
                    (__foldr1 __tmp171566 '() _%L168662%_))))
               _%clause168620168659%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop168615168643%_
                                         _%target168612168638%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168606168625%_
                                       _%g168607168628%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g168606168625%_ _%g168607168628%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168606168625%_ _%g168607168628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168605168744%_ _%L168508%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?167566%_))
                                                _%stx167470%_
                                                (let* ((_%specializer-id168753%_
                                                        (let* ((_%id168747%_
                                                                (let ((__tmp171567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L167543%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp171567 '"::specialize")))
                       (_%specializer-id168750%_
                        (let ((__tmp171568
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx167470%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id168747%_ __tmp171568))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id168750%_))
                  _%specializer-id168750%_))
               (_%$klass168755%_
                (let ((__tmp171569
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171569)))
               (_%$method-table168757%_
                (let ((__tmp171570
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171570)))
               (_%methods168759%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls167562%_)))
               (_%$methods168763%_
                (map (lambda (_%id168761%_)
                       (let ((__tmp171571 (gensym _%id168761%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171571)))
                     _%methods168759%_))
               (_%_168772%_
                (for-each
                 (lambda (_%g168764168767%_ _%g168765168769%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls167562%_
                      _%g168764168767%_
                      _%g168765168769%_)))
                 _%methods168759%_
                 _%$methods168763%_))
               (_%methods-bind168782%_
                (map (lambda (_%g168774168777%_ _%g168775168779%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind167472%_
                          _%$klass168755%_
                          _%$method-table168757%_
                          _%g168774168777%_
                          _%g168775168779%_)))
                     _%methods168759%_
                     _%$methods168763%_))
               (_%slots168784%_
                (let () (declare (not safe)) (hash-keys _%slot-refs167563%_)))
               (_%$slots168788%_
                (map (lambda (_%id168786%_)
                       (let ((__tmp171572 (gensym _%id168786%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171572)))
                     _%slots168784%_))
               (_%_168797%_
                (for-each
                 (lambda (_%g168789168792%_ _%g168790168794%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs167563%_
                      _%g168789168792%_
                      _%g168790168794%_)))
                 _%slots168784%_
                 _%$slots168788%_))
               (_%slots-bind168806%_
                (map (lambda (_%g168798168801%_ _%g168799168803%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind167473%_
                          _%$klass168755%_
                          _%g168798168801%_
                          _%g168799168803%_)))
                     _%slots168784%_
                     _%$slots168788%_))
               (_%specializer-lambda-expr168892%_
                (let* ((_%g168808168826%_
                        (lambda (_%g168809168823%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168809168823%_))))
                       (_%g168807168889%_
                        (lambda (_%g168809168829%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168809168829%_))
                              (let ((_%e168815168831%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168809168829%_))))
                                (let ((_%hd168814168834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168815168831%_)))
                                      (_%tl168813168836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168815168831%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168813168836%_))
                                      (let ((_%e168818168839%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168813168836%_))))
                                        (let ((_%hd168817168842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168818168839%_)))
                                              (_%tl168816168844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168818168839%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168817168842%_))
                                              (let ((_%e168821168847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168817168842%_))))
                                                (let ((_%hd168820168850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168821168847%_)))
                                                      (_%tl168819168852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168821168847%_))))
                                                  ((lambda (_%L168855%_
                                                            _%L168856%_
                                                            _%L168857%_)
                                                     (let* ((_%body168887%_
                                                             (map (lambda (_%g168882168884%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs__%
                               '#f
                               _%L168857%_
                               _%$klass168755%_
                               _%method-calls167562%_
                               _%slot-refs167563%_
                               _%g168882168884%_)))
                          _%L168855%_))
                    (__tmp171573
                     (cons '%#lambda
                           (cons (cons _%L168857%_ _%L168856%_)
                                 _%body168887%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp171573 _%L168509%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl168816168844%_
                                                   _%tl168819168852%_
                                                   _%hd168820168850%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168808168826%_
                                                 _%g168809168829%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168808168826%_
                                         _%g168809168829%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168808168826%_ _%g168809168829%_))))))
                  (declare (not safe))
                  (_%g168807168889%_ _%L168509%_)))
               (_%specializer-case-lambda-expr169049%_
                (let* ((_%g168894168913%_
                        (lambda (_%g168895168910%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168895168910%_))))
                       (_%g168893169046%_
                        (lambda (_%g168895168916%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168895168916%_))
                              (let ((_%e168899168918%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168895168916%_))))
                                (let ((_%hd168898168921%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168899168918%_)))
                                      (_%tl168897168923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168899168918%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl168897168923%_))
                                      (let ((_g171574_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl168897168923%_
                                                '0))))
                                        (begin
                                          (let ((_g171575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g171574_)
                                                       (##vector-length
                                                        _g171574_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g171575_ 2)))
                                                (error "Context expects 2 values"
                                                       _g171575_)))
                                          (let ((_%target168900168926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g171574_ 0)))
                                                (_%tl168902168928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g171574_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168902168928%_))
                                                (letrec ((_%loop168903168931%_
                                                          (lambda (_%hd168901168934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause168907168936%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168901168934%_))
                        (let ((_%e168904168939%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168901168934%_))))
                          (let ((_%lp-hd168905168942%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168904168939%_)))
                                (_%lp-tl168906168944%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168904168939%_))))
                            (let ((__tmp171576
                                   (cons _%lp-hd168905168942%_
                                         _%clause168907168936%_)))
                              (declare (not safe))
                              (_%loop168903168931%_
                               _%lp-tl168906168944%_
                               __tmp171576))))
                        (let ((_%clause168908168947%_
                               (reverse _%clause168907168936%_)))
                          ((lambda (_%L168950%_)
                             (let* ((_%clauses169044%_
                                     (map (lambda (_%clause168964%_)
                                            (let* ((_%__stx170457170458%_
                                                    _%clause168964%_)
                                                   (_%g168967168982%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx170457170458%_)))))
                                              (let ((_%__kont170459170460%_
                                                     (lambda (_%L169010%_
                                                              _%L169011%_
                                                              _%L169012%_)
                                                       (let ((_%body169032%_
                                                              (map (lambda (_%g169027169029%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs__%
                                '#f
                                _%L169012%_
                                _%$klass168755%_
                                _%method-calls167562%_
                                _%slot-refs167563%_
                                _%g169027169029%_)))
                           _%L169010%_)))
                 (cons (cons _%L169012%_ _%L169011%_) _%body169032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170461170462%_
                                                     (lambda ()
                                                       _%clause168964%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx170457170458%_))
                                                    (let ((_%e168974168994%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx170457170458%_))))
                                                      (let ((_%tl168972168999%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168974168994%_)))
                    (_%hd168973168997%_
                     (let () (declare (not safe)) (##car _%e168974168994%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd168973168997%_))
                    (let ((_%e168977169002%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168973168997%_))))
                      (let ((_%tl168975169007%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168977169002%_)))
                            (_%hd168976169005%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168977169002%_))))
                        (_%__kont170459170460%_
                         _%tl168972168999%_
                         _%tl168975169007%_
                         _%hd168976169005%_)))
                    (_%__kont170461170462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170461170462%_)))))
                                          (let ((__tmp171577
                                                 (lambda (_%g169036169039%_
                                                          _%g169037169041%_)
                                                   (cons _%g169036169039%_
                                                         _%g169037169041%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp171577
                                             '()
                                             _%L168950%_))))
                                    (__tmp171578
                                     (cons '%#case-lambda _%clauses169044%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp171578
                                _%L168508%_)))
                           _%clause168908168947%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop168903168931%_
                                                     _%target168900168926%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168894168913%_
                                                   _%g168895168916%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168894168913%_
                                         _%g168895168916%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168894168913%_ _%g168895168916%_))))))
                  (declare (not safe))
                  (_%g168893169046%_ _%L168508%_)))
               (_%specializer-impl169051%_
                (let ((__tmp171579
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L168510%_ '())
                                               (cons _%specializer-lambda-expr168892%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr169049%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp171579 _%stx167470%_)))
               (_%specializer-impl169053%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl167474%_
                   _%$klass168755%_
                   _%$method-table168757%_
                   _%methods-bind168782%_
                   _%slots-bind168806%_
                   _%specializer-impl169051%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp171581
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L167543%_)))
                                                        (__tmp171580
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id168753%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp171581
                                                     '" => "
                                                     __tmp171580))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def167475%_
                                                     _%L167543%_
                                                     _%specializer-id168753%_
                                                     _%specializer-impl169053%_)))))
                                          _%hd168441168503%_
                                          _%hd168438168495%_
                                          _%hd168435168487%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g168417168447%_
                                            _%g168418168450%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168417168447%_ _%g168418168450%_)))
                             (let ()
                               (declare (not safe))
                               (_%g168417168447%_ _%g168418168450%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168417168447%_ _%g168418168450%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168417168447%_ _%g168418168450%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168417168447%_
                                                        _%g168418168450%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168417168447%_
                                                _%g168418168450%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168417168447%_
                                        _%g168418168450%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168417168447%_ _%g168418168450%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g168417168447%_ _%g168418168450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168417168447%_
                                                        _%g168418168450%_))))))
                                         (declare (not safe))
                                         (_%g168416169056%_ _%L167542%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167542%_))
                                         (let ()
                                           (let* ((_%g169060169113%_
                                                   (lambda (_%g169061169110%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g169061169110%_))))
                                                  (_%g169059170256%_
                                                   (lambda (_%g169061169116%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g169061169116%_))
                                                         (let ((_%e169069169118%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g169061169116%_))))
                   (let ((_%hd169068169121%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169069169118%_)))
                         (_%tl169067169123%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169069169118%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd169068169121%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd169068169121%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl169067169123%_))
                                 (let ((_%e169072169126%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl169067169123%_))))
                                   (let ((_%hd169071169129%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e169072169126%_)))
                                         (_%tl169070169131%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e169072169126%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd169071169129%_))
                                         (let ((_%e169075169134%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd169071169129%_))))
                                           (let ((_%hd169074169137%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e169075169134%_)))
                                                 (_%tl169073169139%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e169075169134%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd169074169137%_))
                                                 (let ((_%e169078169142%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd169074169137%_))))
                                                   (let ((_%hd169077169145%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169078169142%_)))
                                                         (_%tl169076169147%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169078169142%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd169077169145%_))
                                                         (let ((_%e169081169150%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd169077169145%_))))
                   (let ((_%hd169080169153%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169081169150%_)))
                         (_%tl169079169155%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169081169150%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl169079169155%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl169076169147%_))
                             (let ((_%e169084169158%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl169076169147%_))))
                               (let ((_%hd169083169161%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e169084169158%_)))
                                     (_%tl169082169163%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e169084169158%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd169083169161%_))
                                     (let ((_%e169087169166%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd169083169161%_))))
                                       (let ((_%hd169086169169%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e169087169166%_)))
                                             (_%tl169085169171%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e169087169166%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd169086169169%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd169086169169%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl169085169171%_))
                                                     (let ((_%e169090169174%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl169085169171%_))))
                                                       (let ((_%hd169089169177%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e169090169174%_)))
                     (_%tl169088169179%_
                      (let () (declare (not safe)) (##cdr _%e169090169174%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd169089169177%_))
                     (let ((_%e169093169182%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd169089169177%_))))
                       (let ((_%hd169092169185%_
                              (let ()
                                (declare (not safe))
                                (##car _%e169093169182%_)))
                             (_%tl169091169187%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e169093169182%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd169092169185%_))
                             (let ((_%e169096169190%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd169092169185%_))))
                               (let ((_%hd169095169193%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e169096169190%_)))
                                     (_%tl169094169195%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e169096169190%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd169095169193%_))
                                     (let ((_%e169099169198%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd169095169193%_))))
                                       (let ((_%hd169098169201%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e169099169198%_)))
                                             (_%tl169097169203%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e169099169198%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl169097169203%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl169094169195%_))
                                                 (let ((_%e169102169206%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl169094169195%_))))
                                                   (let ((_%hd169101169209%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169102169206%_)))
                                                         (_%tl169100169211%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169102169206%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl169100169211%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl169091169187%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl169088169179%_))
                         (let ((_%e169105169214%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl169088169179%_))))
                           (let ((_%hd169104169217%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e169105169214%_)))
                                 (_%tl169103169219%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e169105169214%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl169103169219%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl169082169163%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl169073169139%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl169070169131%_))
                                             (let ((_%e169108169222%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl169070169131%_))))
                                               (let ((_%hd169107169225%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e169108169222%_)))
                                                     (_%tl169106169227%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e169108169222%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl169106169227%_))
                                                     ((lambda (_%L169230%_
                                                               _%L169231%_
                                                               _%L169232%_
                                                               _%L169233%_
                                                               _%L169234%_)
                                                        (let* ((_%g169274169336%_
                                                                (lambda (_%g169275169333%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169275169333%_))))
                       (_%g169273170253%_
                        (lambda (_%g169275169339%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169275169339%_))
                              (let ((_%e169283169341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169275169339%_))))
                                (let ((_%hd169282169344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169283169341%_)))
                                      (_%tl169281169346%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169283169341%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169282169344%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd169282169344%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169281169346%_))
                                              (let ((_%e169286169349%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169281169346%_))))
                                                (let ((_%hd169285169352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169286169349%_)))
                                                      (_%tl169284169354%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169286169349%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl169284169354%_))
                                                      (let ((_%e169289169357%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl169284169354%_))))
                (let ((_%hd169288169360%_
                       (let () (declare (not safe)) (##car _%e169289169357%_)))
                      (_%tl169287169362%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e169289169357%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169288169360%_))
                      (let ((_%e169292169365%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169288169360%_))))
                        (let ((_%hd169291169368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169292169365%_)))
                              (_%tl169290169370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169292169365%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd169291169368%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd169291169368%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169290169370%_))
                                      (let ((_%e169295169373%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169290169370%_))))
                                        (let ((_%hd169294169376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169295169373%_)))
                                              (_%tl169293169378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169295169373%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169294169376%_))
                                              (let ((_%e169298169381%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169294169376%_))))
                                                (let ((_%hd169297169384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169298169381%_)))
                                                      (_%tl169296169386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169298169381%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd169297169384%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd169297169384%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169296169386%_))
                      (let ((_%e169301169389%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169296169386%_))))
                        (let ((_%hd169300169392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169301169389%_)))
                              (_%tl169299169394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169301169389%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169299169394%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl169293169378%_))
                                  (let ((_%e169304169397%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl169293169378%_))))
                                    (let ((_%hd169303169400%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169304169397%_)))
                                          (_%tl169302169402%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169304169397%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd169303169400%_))
                                          (let ((_%e169307169405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd169303169400%_))))
                                            (let ((_%hd169306169408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169307169405%_)))
                                                  (_%tl169305169410%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169307169405%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd169306169408%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd169306169408%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169305169410%_))
                                                          (let ((_%e169310169413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169305169410%_))))
                    (let ((_%hd169309169416%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169310169413%_)))
                          (_%tl169308169418%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169310169413%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169308169418%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl169302169402%_))
                              (let ((_%e169313169421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl169302169402%_))))
                                (let ((_%hd169312169424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169313169421%_)))
                                      (_%tl169311169426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169313169421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd169312169424%_))
                                      (let ((_%e169316169429%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd169312169424%_))))
                                        (let ((_%hd169315169432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169316169429%_)))
                                              (_%tl169314169434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169316169429%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd169315169432%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd169315169432%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl169314169434%_))
                                                      (let ((_%e169319169437%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl169314169434%_))))
                (let ((_%hd169318169440%_
                       (let () (declare (not safe)) (##car _%e169319169437%_)))
                      (_%tl169317169442%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e169319169437%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169317169442%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl169311169426%_))
                          (if (let ((__tmp171582
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl169311169426%_))))
                                (declare (not safe))
                                (##fx>= __tmp171582 '1))
                              (let ((_g171583_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl169311169426%_
                                        '1))))
                                (begin
                                  (let ((_g171584_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g171583_)
                                               (##vector-length _g171583_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g171584_ 2)))
                                        (error "Context expects 2 values"
                                               _g171584_)))
                                  (let ((_%target169320169445%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171583_ 0)))
                                        (_%tl169322169447%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171583_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169322169447%_))
                                        (let ((_%e169331169450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169322169447%_))))
                                          (let ((_%hd169330169453%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169331169450%_)))
                                                (_%tl169329169455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169331169450%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169329169455%_))
                                                (letrec ((_%loop169323169458%_
                                                          (lambda (_%hd169321169461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref169327169463%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169321169461%_))
                        (let ((_%e169324169466%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169321169461%_))))
                          (let ((_%lp-hd169325169469%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169324169466%_)))
                                (_%lp-tl169326169471%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169324169466%_))))
                            (let ((__tmp171585
                                   (cons _%lp-hd169325169469%_
                                         _%kw-ref169327169463%_)))
                              (declare (not safe))
                              (_%loop169323169458%_
                               _%lp-tl169326169471%_
                               __tmp171585))))
                        (let ((_%kw-ref169328169474%_
                               (reverse _%kw-ref169327169463%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169287169362%_))
                              ((lambda (_%L169477%_
                                        _%L169478%_
                                        _%L169479%_
                                        _%L169480%_
                                        _%L169481%_)
                                 (let* ((_%kw-count169532%_
                                         (length (let ((__tmp171586
                                                        (lambda (_%g169524169527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169525169529%_)
                  (cons _%g169524169527%_ _%g169525169529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171586
                                                    '()
                                                    _%L169478%_))))
                                        (_%self-index169534%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count169532%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L169232%_))
                                       (let ()
                                         (let* ((_%g169538169552%_
                                                 (lambda (_%g169539169549%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169539169549%_))))
                                                (_%g169537169669%_
                                                 (lambda (_%g169539169555%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169539169555%_))
                                                       (let ((_%e169544169557%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169539169555%_))))
                 (let ((_%hd169543169560%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169544169557%_)))
                       (_%tl169542169562%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169544169557%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169542169562%_))
                       (let ((_%e169547169565%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169542169562%_))))
                         (let ((_%hd169546169568%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169547169565%_)))
                               (_%tl169545169570%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169547169565%_))))
                           ((lambda (_%L169573%_ _%L169574%_)
                              (let ((_%self169591%_
                                     (list-ref
                                      _%L169574%_
                                      _%self-index169534%_)))
                                (for-each
                                 (lambda (_%g169592169594%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs__%
                                      '#f
                                      _%self169591%_
                                      _%method-calls167562%_
                                      _%slot-refs167563%_
                                      _%g169592169594%_)))
                                 _%L169573%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?167566%_))
                                    _%stx167470%_
                                    (let* ((_%specializer-id169603%_
                                            (let* ((_%id169597%_
                                                    (let ((__tmp171587
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167543%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp171587
                                                       '"::specialize")))
                                                   (_%specializer-id169600%_
                                                    (let ((__tmp171588
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx167470%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id169597%_
                                                       __tmp171588))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id169600%_))
                                              _%specializer-id169600%_))
                                           (_%$klass169605%_
                                            (let ((__tmp171589
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171589)))
                                           (_%$method-table169607%_
                                            (let ((__tmp171590
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171590)))
                                           (_%methods169609%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls167562%_)))
                                           (_%$methods169613%_
                                            (map (lambda (_%id169611%_)
                                                   (let ((__tmp171591
                                                          (gensym _%id169611%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171591)))
                                                 _%methods169609%_))
                                           (_%_169622%_
                                            (for-each
                                             (lambda (_%g169614169617%_
                                                      _%g169615169619%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls167562%_
                                                  _%g169614169617%_
                                                  _%g169615169619%_)))
                                             _%methods169609%_
                                             _%$methods169613%_))
                                           (_%methods-bind169632%_
                                            (map (lambda (_%g169624169627%_
                                                          _%g169625169629%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind167472%_
                                                      _%$klass169605%_
                                                      _%$method-table169607%_
                                                      _%g169624169627%_
                                                      _%g169625169629%_)))
                                                 _%methods169609%_
                                                 _%$methods169613%_))
                                           (_%slots169634%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs167563%_)))
                                           (_%$slots169638%_
                                            (map (lambda (_%id169636%_)
                                                   (let ((__tmp171592
                                                          (gensym _%id169636%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171592)))
                                                 _%slots169634%_))
                                           (_%_169647%_
                                            (for-each
                                             (lambda (_%g169639169642%_
                                                      _%g169640169644%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs167563%_
                                                  _%g169639169642%_
                                                  _%g169640169644%_)))
                                             _%slots169634%_
                                             _%$slots169638%_))
                                           (_%slots-bind169656%_
                                            (map (lambda (_%g169648169651%_
                                                          _%g169649169653%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind167473%_
                                                      _%$klass169605%_
                                                      _%g169648169651%_
                                                      _%g169649169653%_)))
                                                 _%slots169634%_
                                                 _%$slots169638%_))
                                           (_%specializer-impl169664%_
                                            (let* ((_%specializer-body169662%_
                                                    (map (lambda (_%g169657169659%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%self169591%_
                                                              _%$klass169605%_
                                                              _%method-calls167562%_
                                                              _%slot-refs167563%_
                                                              _%g169657169659%_)))
                                                         _%L169573%_))
                                                   (__tmp171593
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L169234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L169233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp171594
                                       (cons '%#lambda
                                             (cons _%L169574%_
                                                   _%specializer-body169662%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp171594
                                   _%L169232%_))
                                '()))
                    '())
              (cons _%L169231%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L169230%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp171593
                                               _%stx167470%_)))
                                           (_%specializer-impl169666%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl167474%_
                                               _%$klass169605%_
                                               _%$method-table169607%_
                                               _%methods-bind169632%_
                                               _%slots-bind169656%_
                                               _%specializer-impl169664%_))))
                                      (let ((__tmp171596
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L167543%_)))
                                            (__tmp171595
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id169603%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp171596
                                         '" => "
                                         __tmp171595))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def167475%_
                                         _%L167543%_
                                         _%specializer-id169603%_
                                         _%specializer-impl169666%_))))))
                            _%tl169545169570%_
                            _%hd169546169568%_)))
                       (let ()
                         (declare (not safe))
                         (_%g169538169552%_ _%g169539169555%_)))))
               (let ()
                 (declare (not safe))
                 (_%g169538169552%_ _%g169539169555%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g169537169669%_ _%L169232%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L169232%_))
                                           (let ()
                                             (let* ((_%g169673169703%_
                                                     (lambda (_%g169674169700%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g169674169700%_))))
                                                    (_%g169672170249%_
                                                     (lambda (_%g169674169706%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g169674169706%_))
                                                           (let ((_%e169680169708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g169674169706%_))))
                     (let ((_%hd169679169711%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169680169708%_)))
                           (_%tl169678169713%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169680169708%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169678169713%_))
                           (let ((_%e169683169716%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169678169713%_))))
                             (let ((_%hd169682169719%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169683169716%_)))
                                   (_%tl169681169721%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169683169716%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169682169719%_))
                                   (let ((_%e169686169724%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169682169719%_))))
                                     (let ((_%hd169685169727%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169686169724%_)))
                                           (_%tl169684169729%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169686169724%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169685169727%_))
                                           (let ((_%e169689169732%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169685169727%_))))
                                             (let ((_%hd169688169735%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169689169732%_)))
                                                   (_%tl169687169737%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169689169732%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd169688169735%_))
                                                   (let ((_%e169692169740%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd169688169735%_))))
                                                     (let ((_%hd169691169743%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169692169740%_)))
                                                           (_%tl169690169745%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169692169740%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169690169745%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169687169737%_))
                       (let ((_%e169695169748%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169687169737%_))))
                         (let ((_%hd169694169751%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169695169748%_)))
                               (_%tl169693169753%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169695169748%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169693169753%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169684169729%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl169681169721%_))
                                       (let ((_%e169698169756%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl169681169721%_))))
                                         (let ((_%hd169697169759%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169698169756%_)))
                                               (_%tl169696169761%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169698169756%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl169696169761%_))
                                               ((lambda (_%L169764%_
                                                         _%L169765%_
                                                         _%L169766%_)
                                                  (let* ((_%g169790169804%_
                                                          (lambda (_%g169791169801%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169791169801%_))))
                                                         (_%g169789169845%_
                                                          (lambda (_%g169791169807%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169791169807%_))
                        (let ((_%e169796169809%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169791169807%_))))
                          (let ((_%hd169795169812%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169796169809%_)))
                                (_%tl169794169814%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169796169809%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169794169814%_))
                                (let ((_%e169799169817%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169794169814%_))))
                                  (let ((_%hd169798169820%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169799169817%_)))
                                        (_%tl169797169822%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169799169817%_))))
                                    ((lambda (_%L169825%_ _%L169826%_)
                                       (let ((_%self169839%_
                                              (list-ref
                                               _%L169826%_
                                               _%self-index169534%_)))
                                         (for-each
                                          (lambda (_%g169840169842%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%self169839%_
                                               _%method-calls167562%_
                                               _%slot-refs167563%_
                                               _%g169840169842%_)))
                                          _%L169825%_)))
                                     _%tl169797169822%_
                                     _%hd169798169820%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g169790169804%_ _%g169791169807%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169790169804%_ _%g169791169807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169789169845%_
                                                     _%L169765%_))
                                                  (let* ((_%g169848169867%_
                                                          (lambda (_%g169849169864%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169849169864%_))))
                                                         (_%g169847169972%_
                                                          (lambda (_%g169849169870%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169849169870%_))
                        (let ((_%e169853169872%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169849169870%_))))
                          (let ((_%hd169852169875%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169853169872%_)))
                                (_%tl169851169877%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169853169872%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169851169877%_))
                                (let ((_g171597_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl169851169877%_
                                          '0))))
                                  (begin
                                    (let ((_g171598_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g171597_)
                                                 (##vector-length _g171597_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g171598_ 2)))
                                          (error "Context expects 2 values"
                                                 _g171598_)))
                                    (let ((_%target169854169880%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171597_ 0)))
                                          (_%tl169856169882%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171597_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl169856169882%_))
                                          (letrec ((_%loop169857169885%_
                                                    (lambda (_%hd169855169888%_
                                                             _%clause169861169890%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169855169888%_))
                                                          (let ((_%e169858169893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169855169888%_))))
                    (let ((_%lp-hd169859169896%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169858169893%_)))
                          (_%lp-tl169860169898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169858169893%_))))
                      (let ((__tmp171599
                             (cons _%lp-hd169859169896%_
                                   _%clause169861169890%_)))
                        (declare (not safe))
                        (_%loop169857169885%_
                         _%lp-tl169860169898%_
                         __tmp171599))))
                  (let ((_%clause169862169901%_
                         (reverse _%clause169861169890%_)))
                    ((lambda (_%L169904%_)
                       (for-each
                        (lambda (_%clause169917%_)
                          (let* ((_%g169919169930%_
                                  (lambda (_%g169920169927%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g169920169927%_))))
                                 (_%g169918169962%_
                                  (lambda (_%g169920169933%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g169920169933%_))
                                        (let ((_%e169925169935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g169920169933%_))))
                                          (let ((_%hd169924169938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169925169935%_)))
                                                (_%tl169923169940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169925169935%_))))
                                            ((lambda (_%L169943%_ _%L169944%_)
                                               (let ((_%self169956%_
                                                      (list-ref
                                                       _%L169944%_
                                                       _%self-index169534%_)))
                                                 (for-each
                                                  (lambda (_%g169957169959%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%self169956%_
                                                       _%method-calls167562%_
                                                       _%slot-refs167563%_
                                                       _%g169957169959%_)))
                                                  _%L169943%_)))
                                             _%tl169923169940%_
                                             _%hd169924169938%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g169919169930%_
                                           _%g169920169933%_))))))
                            (declare (not safe))
                            (_%g169918169962%_ _%clause169917%_)))
                        (let ((__tmp171600
                               (lambda (_%g169964169967%_ _%g169965169969%_)
                                 (cons _%g169964169967%_ _%g169965169969%_))))
                          (declare (not safe))
                          (__foldr1 __tmp171600 '() _%L169904%_))))
                     _%clause169862169901%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop169857169885%_
                                               _%target169854169880%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169848169867%_
                                             _%g169849169870%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g169848169867%_ _%g169849169870%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169848169867%_ _%g169849169870%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169847169972%_
                                                     _%L169764%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?167566%_))
                                                      _%stx167470%_
                                                      (let* ((_%specializer-id169981%_
                                                              (let* ((_%id169975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp171601
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L167543%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp171601 '"::specialize")))
                             (_%specializer-id169978%_
                              (let ((__tmp171602
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx167470%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id169975%_
                                 __tmp171602))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id169978%_))
                        _%specializer-id169978%_))
                     (_%$klass169983%_
                      (let ((__tmp171603
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171603)))
                     (_%$method-table169985%_
                      (let ((__tmp171604
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171604)))
                     (_%methods169987%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls167562%_)))
                     (_%$methods169991%_
                      (map (lambda (_%id169989%_)
                             (let ((__tmp171605 (gensym _%id169989%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171605)))
                           _%methods169987%_))
                     (_%_170000%_
                      (for-each
                       (lambda (_%g169992169995%_ _%g169993169997%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls167562%_
                            _%g169992169995%_
                            _%g169993169997%_)))
                       _%methods169987%_
                       _%$methods169991%_))
                     (_%methods-bind170010%_
                      (map (lambda (_%g170002170005%_ _%g170003170007%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind167472%_
                                _%$klass169983%_
                                _%$method-table169985%_
                                _%g170002170005%_
                                _%g170003170007%_)))
                           _%methods169987%_
                           _%$methods169991%_))
                     (_%slots170012%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs167563%_)))
                     (_%$slots170016%_
                      (map (lambda (_%id170014%_)
                             (let ((__tmp171606 (gensym _%id170014%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171606)))
                           _%slots170012%_))
                     (_%_170025%_
                      (for-each
                       (lambda (_%g170017170020%_ _%g170018170022%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs167563%_
                            _%g170017170020%_
                            _%g170018170022%_)))
                       _%slots170012%_
                       _%$slots170016%_))
                     (_%slots-bind170034%_
                      (map (lambda (_%g170026170029%_ _%g170027170031%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind167473%_
                                _%$klass169983%_
                                _%g170026170029%_
                                _%g170027170031%_)))
                           _%slots170012%_
                           _%$slots170016%_))
                     (_%specializer-lambda-expr170107%_
                      (let* ((_%g170036170050%_
                              (lambda (_%g170037170047%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170037170047%_))))
                             (_%g170035170104%_
                              (lambda (_%g170037170053%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g170037170053%_))
                                    (let ((_%e170042170055%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g170037170053%_))))
                                      (let ((_%hd170041170058%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170042170055%_)))
                                            (_%tl170040170060%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170042170055%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170040170060%_))
                                            (let ((_%e170045170063%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170040170060%_))))
                                              (let ((_%hd170044170066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170045170063%_)))
                                                    (_%tl170043170068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170045170063%_))))
                                                ((lambda (_%L170071%_
                                                          _%L170072%_)
                                                   (let* ((_%self170095%_
                                                           (list-ref
                                                            _%L170072%_
                                                            _%self-index169534%_))
                                                          (_%body170101%_
                                                           (map (lambda (_%g170096170098%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%self170095%_
                             _%$klass169983%_
                             _%method-calls167562%_
                             _%slot-refs167563%_
                             _%g170096170098%_)))
                        _%L170071%_))
                  (__tmp171607
                   (cons '%#lambda (cons _%L170072%_ _%body170101%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171607
                                                      _%L169765%_)))
                                                 _%tl170043170068%_
                                                 _%hd170044170066%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g170036170050%_
                                               _%g170037170053%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g170036170050%_
                                       _%g170037170053%_))))))
                        (declare (not safe))
                        (_%g170035170104%_ _%L169765%_)))
                     (_%specializer-case-lambda-expr170242%_
                      (let* ((_%g170109170128%_
                              (lambda (_%g170110170125%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170110170125%_))))
                             (_%g170108170239%_
                              (lambda (_%g170110170131%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g170110170131%_))
                                    (let ((_%e170114170133%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g170110170131%_))))
                                      (let ((_%hd170113170136%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170114170133%_)))
                                            (_%tl170112170138%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170114170133%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl170112170138%_))
                                            (let ((_g171608_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl170112170138%_
                                                      '0))))
                                              (begin
                                                (let ((_g171609_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g171608_)
                                                             (##vector-length
                                                              _g171608_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g171609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g171609_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target170115170141%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171608_
                                                          0)))
                                                      (_%tl170117170143%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171608_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170117170143%_))
                                                      (letrec ((_%loop170118170146%_
                                                                (lambda (_%hd170116170149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause170122170151%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd170116170149%_))
                              (let ((_%e170119170154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd170116170149%_))))
                                (let ((_%lp-hd170120170157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170119170154%_)))
                                      (_%lp-tl170121170159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170119170154%_))))
                                  (let ((__tmp171610
                                         (cons _%lp-hd170120170157%_
                                               _%clause170122170151%_)))
                                    (declare (not safe))
                                    (_%loop170118170146%_
                                     _%lp-tl170121170159%_
                                     __tmp171610))))
                              (let ((_%clause170123170162%_
                                     (reverse _%clause170122170151%_)))
                                ((lambda (_%L170165%_)
                                   (let* ((_%clauses170237%_
                                           (map (lambda (_%clause170179%_)
                                                  (let* ((_%g170181170192%_
                                                          (lambda (_%g170182170189%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170182170189%_))))
                                                         (_%g170180170227%_
                                                          (lambda (_%g170182170195%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170182170195%_))
                        (let ((_%e170187170197%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170182170195%_))))
                          (let ((_%hd170186170200%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170187170197%_)))
                                (_%tl170185170202%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170187170197%_))))
                            ((lambda (_%L170205%_ _%L170206%_)
                               (let* ((_%self170218%_
                                       (list-ref
                                        _%L170206%_
                                        _%self-index169534%_))
                                      (_%body170224%_
                                       (map (lambda (_%g170219170221%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%self170218%_
                                                 _%$klass169983%_
                                                 _%method-calls167562%_
                                                 _%slot-refs167563%_
                                                 _%g170219170221%_)))
                                            _%L170205%_)))
                                 (cons _%L170206%_ _%body170224%_)))
                             _%tl170185170202%_
                             _%hd170186170200%_)))
                        (let ()
                          (declare (not safe))
                          (_%g170181170192%_ _%g170182170195%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170180170227%_
                                                     _%clause170179%_)))
                                                (let ((__tmp171611
                                                       (lambda (_%g170229170232%_
                                                                _%g170230170234%_)
                                                         (cons _%g170229170232%_
                                                               _%g170230170234%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp171611
                                                   '()
                                                   _%L170165%_))))
                                          (__tmp171612
                                           (cons '%#case-lambda
                                                 _%clauses170237%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp171612
                                      _%L169764%_)))
                                 _%clause170123170162%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop170118170146%_ _%target170115170141%_ '())))
              (let ()
                (declare (not safe))
                (_%g170109170128%_ _%g170110170131%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g170109170128%_
                                               _%g170110170131%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g170109170128%_
                                       _%g170110170131%_))))))
                        (declare (not safe))
                        (_%g170108170239%_ _%L169764%_)))
                     (_%specializer-impl170244%_
                      (let ((__tmp171613
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L169234%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L169233%_ '())
                                           (cons (let ((__tmp171614
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L169766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr170107%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr170242%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp171614
                                                    _%stx167470%_))
                                                 '()))
                                     '())
                               (cons _%L169231%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L169230%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp171613 _%stx167470%_)))
                     (_%specializer-impl170246%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl167474%_
                         _%$klass169983%_
                         _%$method-table169985%_
                         _%methods-bind170010%_
                         _%slots-bind170034%_
                         _%specializer-impl170244%_))))
                (let ((__tmp171616
                       (let () (declare (not safe)) (gx#stx-e _%L167543%_)))
                      (__tmp171615
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id169981%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp171616
                   '" => "
                   __tmp171615))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def167475%_
                   _%L167543%_
                   _%specializer-id169981%_
                   _%specializer-impl170246%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd169697169759%_
                                                _%hd169694169751%_
                                                _%hd169691169743%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g169673169703%_
                                                  _%g169674169706%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g169673169703%_
                                          _%g169674169706%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169673169703%_ _%g169674169706%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g169673169703%_ _%g169674169706%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g169673169703%_ _%g169674169706%_)))
                   (let ()
                     (declare (not safe))
                     (_%g169673169703%_ _%g169674169706%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g169673169703%_
                                                      _%g169674169706%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g169673169703%_
                                              _%g169674169706%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169673169703%_ _%g169674169706%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g169673169703%_ _%g169674169706%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g169673169703%_ _%g169674169706%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g169672170249%_
                                                _%L169232%_)))
                                           (let () _%stx167470%_)))))
                               _%hd169330169453%_
                               _%kw-ref169328169474%_
                               _%hd169318169440%_
                               _%hd169309169416%_
                               _%hd169300169392%_)
                              (let ()
                                (declare (not safe))
                                (_%g169274169336%_ _%g169275169339%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop169323169458%_
                                                     _%target169320169445%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g169274169336%_
                                                   _%g169275169339%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g169274169336%_
                                           _%g169275169339%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g169274169336%_ _%g169275169339%_)))
                          (let ()
                            (declare (not safe))
                            (_%g169274169336%_ _%g169275169339%_)))
                      (let ()
                        (declare (not safe))
                        (_%g169274169336%_ _%g169275169339%_)))))
              (let ()
                (declare (not safe))
                (_%g169274169336%_ _%g169275169339%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g169274169336%_
                                                     _%g169275169339%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g169274169336%_
                                                 _%g169275169339%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169274169336%_
                                         _%g169275169339%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169274169336%_ _%g169275169339%_)))
                          (let ()
                            (declare (not safe))
                            (_%g169274169336%_ _%g169275169339%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169274169336%_ _%g169275169339%_)))
              (let ()
                (declare (not safe))
                (_%g169274169336%_ _%g169275169339%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g169274169336%_
                                                     _%g169275169339%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169274169336%_
                                             _%g169275169339%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169274169336%_ _%g169275169339%_)))
                              (let ()
                                (declare (not safe))
                                (_%g169274169336%_ _%g169275169339%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g169274169336%_ _%g169275169339%_)))
                  (let ()
                    (declare (not safe))
                    (_%g169274169336%_ _%g169275169339%_)))
              (let ()
                (declare (not safe))
                (_%g169274169336%_ _%g169275169339%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g169274169336%_
                                                 _%g169275169339%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169274169336%_ _%g169275169339%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169274169336%_ _%g169275169339%_)))
                              (let ()
                                (declare (not safe))
                                (_%g169274169336%_ _%g169275169339%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g169274169336%_ _%g169275169339%_)))))
              (let ()
                (declare (not safe))
                (_%g169274169336%_ _%g169275169339%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g169274169336%_
                                                 _%g169275169339%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169274169336%_
                                             _%g169275169339%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169274169336%_
                                         _%g169275169339%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169274169336%_ _%g169275169339%_))))))
                  (declare (not safe))
                  (_%g169273170253%_ _%L169231%_)))
              _%hd169107169225%_
              _%hd169104169217%_
              _%hd169101169209%_
              _%hd169098169201%_
              _%hd169080169153%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169060169113%_
                                                        _%g169061169116%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169060169113%_
                                                _%g169061169116%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g169060169113%_
                                            _%g169061169116%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169060169113%_ _%g169061169116%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g169060169113%_ _%g169061169116%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g169060169113%_ _%g169061169116%_)))
                     (let ()
                       (declare (not safe))
                       (_%g169060169113%_ _%g169061169116%_)))
                 (let ()
                   (declare (not safe))
                   (_%g169060169113%_ _%g169061169116%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169060169113%_
                                                    _%g169061169116%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169060169113%_
                                                _%g169061169116%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169060169113%_
                                        _%g169061169116%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g169060169113%_ _%g169061169116%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g169060169113%_ _%g169061169116%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169060169113%_
                                                        _%g169061169116%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169060169113%_
                                                    _%g169061169116%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169060169113%_
                                                _%g169061169116%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169060169113%_
                                        _%g169061169116%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g169060169113%_ _%g169061169116%_)))
                         (let ()
                           (declare (not safe))
                           (_%g169060169113%_ _%g169061169116%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g169060169113%_ _%g169061169116%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169060169113%_
                                                    _%g169061169116%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g169060169113%_
                                            _%g169061169116%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g169060169113%_ _%g169061169116%_)))
                             (let ()
                               (declare (not safe))
                               (_%g169060169113%_ _%g169061169116%_)))
                         (let ()
                           (declare (not safe))
                           (_%g169060169113%_ _%g169061169116%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g169060169113%_ _%g169061169116%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g169059170256%_ _%L167542%_)))
                                         (let () _%stx167470%_)))))))))
                  (_%__kont170481170482%_ (lambda () _%stx167470%_)))
              (let ((_%__match170510170511%_
                     (lambda (_%e167484167510%_
                              _%hd167483167513%_
                              _%tl167482167515%_
                              _%e167487167518%_
                              _%hd167486167521%_
                              _%tl167485167523%_
                              _%e167490167526%_
                              _%hd167489167529%_
                              _%tl167488167531%_
                              _%e167493167534%_
                              _%hd167492167537%_
                              _%tl167491167539%_)
                       (let ((_%L167542%_ _%hd167492167537%_)
                             (_%L167543%_ _%hd167489167529%_))
                         (if (let ((__tmp171617
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167543%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171617))
                             (_%__kont170479170480%_ _%L167542%_ _%L167543%_)
                             (_%__kont170481170482%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170477170478%_))
                    (let ((_%e167484167510%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170477170478%_))))
                      (let ((_%tl167482167515%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167484167510%_)))
                            (_%hd167483167513%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167484167510%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167482167515%_))
                            (let ((_%e167487167518%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167482167515%_))))
                              (let ((_%tl167485167523%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167487167518%_)))
                                    (_%hd167486167521%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167487167518%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167486167521%_))
                                    (let ((_%e167490167526%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167486167521%_))))
                                      (let ((_%tl167488167531%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167490167526%_)))
                                            (_%hd167489167529%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167490167526%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167488167531%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167485167523%_))
                                                (let ((_%e167493167534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167485167523%_))))
                                                  (let ((_%tl167491167539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167493167534%_)))
                                                        (_%hd167492167537%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167493167534%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167491167539%_))
                                                        (_%__match170510170511%_
                                                         _%e167484167510%_
                                                         _%hd167483167513%_
                                                         _%tl167482167515%_
                                                         _%e167487167518%_
                                                         _%hd167486167521%_
                                                         _%tl167485167523%_
                                                         _%e167490167526%_
                                                         _%hd167489167529%_
                                                         _%tl167488167531%_
                                                         _%e167493167534%_
                                                         _%hd167492167537%_
                                                         _%tl167491167539%_)
                                                        (_%__kont170481170482%_))))
                                                (_%__kont170481170482%_))
                                            (_%__kont170481170482%_))))
                                    (_%__kont170481170482%_))))
                            (_%__kont170481170482%_))))
                    (_%__kont170481170482%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self166430%_ _%stx166431%_)
        (let* ((_%__stx170513170514%_ _%stx166431%_)
               (_%g166439166661%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170513170514%_)))))
          (let ((_%__kont170515170516%_
                 (lambda (_%L167418%_ _%L167419%_ _%L167420%_ _%L167421%_)
                   (let ((__tmp171619
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166430%_ 'methods)))
                         (__tmp171618
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167419%_))))
                     (declare (not safe))
                     (hash-put! __tmp171619 __tmp171618 '#t))
                   (for-each
                    (lambda (_%g167454167456%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166430%_ _%g167454167456%_)))
                    (let ((__tmp171620
                           (lambda (_%g167458167461%_ _%g167459167463%_)
                             (cons _%g167458167461%_ _%g167459167463%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171620 '() _%L167418%_)))))
                (_%__kont170519170520%_
                 (lambda (_%L167253%_
                          _%L167254%_
                          _%L167255%_
                          _%L167256%_
                          _%L167257%_)
                   (let ((__tmp171622
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166430%_ 'methods)))
                         (__tmp171621
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167254%_))))
                     (declare (not safe))
                     (hash-put! __tmp171622 __tmp171621 '#t))
                   (for-each
                    (lambda (_%g167297167299%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166430%_ _%g167297167299%_)))
                    (let ((__tmp171623
                           (lambda (_%g167301167304%_ _%g167302167306%_)
                             (cons _%g167301167304%_ _%g167302167306%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171623 '() _%L167253%_)))))
                (_%__kont170523170524%_
                 (lambda (_%L167086%_ _%L167087%_ _%L167088%_)
                   (let ((__tmp171625
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166430%_ 'slots)))
                         (__tmp171624
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167086%_))))
                     (declare (not safe))
                     (hash-put! __tmp171625 __tmp171624 '#t))))
                (_%__kont170525170526%_
                 (lambda (_%L166963%_ _%L166964%_ _%L166965%_ _%L166966%_)
                   (let ((__tmp171627
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166430%_ 'slots)))
                         (__tmp171626
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166964%_))))
                     (declare (not safe))
                     (hash-put! __tmp171627 __tmp171626 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self166430%_ _%L166963%_))))
                (_%__kont170527170528%_
                 (lambda (_%L166837%_ _%L166838%_)
                   (let* ((_%accessor166860%_
                           (let ((__tmp171628
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166838%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171628)))
                          (_%klass166862%_
                           (let ((__tmp171629
                                  (##structure-ref
                                   _%accessor166860%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166431%_
                              __tmp171629)))
                          (_%slot166864%_
                           (##structure-ref
                            _%accessor166860%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp171630
                                     (##structure-ref
                                      _%accessor166860%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171630))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166862%_
                                     _%slot166864%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166862%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171632
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166430%_ 'slots)))
                               (__tmp171631
                                (##structure-ref
                                 _%accessor166860%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171632 __tmp171631 '#t))))))
                (_%__kont170529170530%_
                 (lambda (_%L166737%_ _%L166738%_ _%L166739%_)
                   (let* ((_%mutator166766%_
                           (let ((__tmp171633
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166739%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171633)))
                          (_%klass166768%_
                           (let ((__tmp171634
                                  (##structure-ref
                                   _%mutator166766%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166431%_
                              __tmp171634)))
                          (_%slot166770%_
                           (##structure-ref
                            _%mutator166766%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp171635
                                     (##structure-ref
                                      _%mutator166766%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171635))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166768%_
                                     _%slot166770%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166768%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171636
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166430%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171636 _%slot166770%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self166430%_ _%L166737%_)))))
                (_%__kont170531170532%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self166430%_ _%stx166431%_)))))
            (let* ((_%__match171012171013%_
                    (lambda (_%e166635166673%_
                             _%hd166634166676%_
                             _%tl166633166678%_
                             _%e166638166681%_
                             _%hd166637166684%_
                             _%tl166636166686%_
                             _%e166641166689%_
                             _%hd166640166692%_
                             _%tl166639166694%_
                             _%e166644166697%_
                             _%hd166643166700%_
                             _%tl166642166702%_
                             _%e166647166705%_
                             _%hd166646166708%_
                             _%tl166645166710%_
                             _%e166650166713%_
                             _%hd166649166716%_
                             _%tl166648166718%_
                             _%e166653166721%_
                             _%hd166652166724%_
                             _%tl166651166726%_
                             _%e166656166729%_
                             _%hd166655166732%_
                             _%tl166654166734%_)
                      (let ((_%L166737%_ _%hd166655166732%_)
                            (_%L166738%_ _%hd166652166724%_)
                            (_%L166739%_ _%hd166643166700%_))
                        (if (and (let ((__tmp171637
                                        (let ((__tmp171638
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166739%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171638))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171637
                                    'gxc#!mutator::t))
                                 (let ((__tmp171639
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166430%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166738%_
                                    __tmp171639)))
                            (_%__kont170529170530%_
                             _%L166737%_
                             _%L166738%_
                             _%L166739%_)
                            (_%__kont170531170532%_)))))
                   (_%__match171010171011%_
                    (lambda (_%e166635166673%_
                             _%hd166634166676%_
                             _%tl166633166678%_
                             _%e166638166681%_
                             _%hd166637166684%_
                             _%tl166636166686%_
                             _%e166641166689%_
                             _%hd166640166692%_
                             _%tl166639166694%_
                             _%e166644166697%_
                             _%hd166643166700%_
                             _%tl166642166702%_
                             _%e166647166705%_
                             _%hd166646166708%_
                             _%tl166645166710%_
                             _%e166650166713%_
                             _%hd166649166716%_
                             _%tl166648166718%_
                             _%e166653166721%_
                             _%hd166652166724%_
                             _%tl166651166726%_
                             _%e166656166729%_
                             _%hd166655166732%_
                             _%tl166654166734%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166654166734%_))
                          (_%__match171012171013%_
                           _%e166635166673%_
                           _%hd166634166676%_
                           _%tl166633166678%_
                           _%e166638166681%_
                           _%hd166637166684%_
                           _%tl166636166686%_
                           _%e166641166689%_
                           _%hd166640166692%_
                           _%tl166639166694%_
                           _%e166644166697%_
                           _%hd166643166700%_
                           _%tl166642166702%_
                           _%e166647166705%_
                           _%hd166646166708%_
                           _%tl166645166710%_
                           _%e166650166713%_
                           _%hd166649166716%_
                           _%tl166648166718%_
                           _%e166653166721%_
                           _%hd166652166724%_
                           _%tl166651166726%_
                           _%e166656166729%_
                           _%hd166655166732%_
                           _%tl166654166734%_)
                          (_%__kont170531170532%_))))
                   (_%__match171004171005%_
                    (lambda (_%e166635166673%_
                             _%hd166634166676%_
                             _%tl166633166678%_
                             _%e166638166681%_
                             _%hd166637166684%_
                             _%tl166636166686%_
                             _%e166641166689%_
                             _%hd166640166692%_
                             _%tl166639166694%_
                             _%e166644166697%_
                             _%hd166643166700%_
                             _%tl166642166702%_
                             _%e166647166705%_
                             _%hd166646166708%_
                             _%tl166645166710%_
                             _%e166650166713%_
                             _%hd166649166716%_
                             _%tl166648166718%_
                             _%e166653166721%_
                             _%hd166652166724%_
                             _%tl166651166726%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166645166710%_))
                          (let ((_%e166656166729%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166645166710%_))))
                            (let ((_%tl166654166734%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166656166729%_)))
                                  (_%hd166655166732%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166656166729%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166654166734%_))
                                  (_%__match171012171013%_
                                   _%e166635166673%_
                                   _%hd166634166676%_
                                   _%tl166633166678%_
                                   _%e166638166681%_
                                   _%hd166637166684%_
                                   _%tl166636166686%_
                                   _%e166641166689%_
                                   _%hd166640166692%_
                                   _%tl166639166694%_
                                   _%e166644166697%_
                                   _%hd166643166700%_
                                   _%tl166642166702%_
                                   _%e166647166705%_
                                   _%hd166646166708%_
                                   _%tl166645166710%_
                                   _%e166650166713%_
                                   _%hd166649166716%_
                                   _%tl166648166718%_
                                   _%e166653166721%_
                                   _%hd166652166724%_
                                   _%tl166651166726%_
                                   _%e166656166729%_
                                   _%hd166655166732%_
                                   _%tl166654166734%_)
                                  (_%__kont170531170532%_))))
                          (_%__kont170531170532%_))))
                   (_%__match170950170951%_
                    (lambda (_%e166611166781%_
                             _%hd166610166784%_
                             _%tl166609166786%_
                             _%e166614166789%_
                             _%hd166613166792%_
                             _%tl166612166794%_
                             _%e166617166797%_
                             _%hd166616166800%_
                             _%tl166615166802%_
                             _%e166620166805%_
                             _%hd166619166808%_
                             _%tl166618166810%_
                             _%e166623166813%_
                             _%hd166622166816%_
                             _%tl166621166818%_
                             _%e166626166821%_
                             _%hd166625166824%_
                             _%tl166624166826%_
                             _%e166629166829%_
                             _%hd166628166832%_
                             _%tl166627166834%_)
                      (let ((_%L166837%_ _%hd166628166832%_)
                            (_%L166838%_ _%hd166619166808%_))
                        (if (and (let ((__tmp171640
                                        (let ((__tmp171641
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166838%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171641))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171640
                                    'gxc#!accessor::t))
                                 (let ((__tmp171642
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166430%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166837%_
                                    __tmp171642)))
                            (_%__kont170527170528%_ _%L166837%_ _%L166838%_)
                            (_%__kont170531170532%_)))))
                   (_%__match170948170949%_
                    (lambda (_%e166611166781%_
                             _%hd166610166784%_
                             _%tl166609166786%_
                             _%e166614166789%_
                             _%hd166613166792%_
                             _%tl166612166794%_
                             _%e166617166797%_
                             _%hd166616166800%_
                             _%tl166615166802%_
                             _%e166620166805%_
                             _%hd166619166808%_
                             _%tl166618166810%_
                             _%e166623166813%_
                             _%hd166622166816%_
                             _%tl166621166818%_
                             _%e166626166821%_
                             _%hd166625166824%_
                             _%tl166624166826%_
                             _%e166629166829%_
                             _%hd166628166832%_
                             _%tl166627166834%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166621166818%_))
                          (_%__match170950170951%_
                           _%e166611166781%_
                           _%hd166610166784%_
                           _%tl166609166786%_
                           _%e166614166789%_
                           _%hd166613166792%_
                           _%tl166612166794%_
                           _%e166617166797%_
                           _%hd166616166800%_
                           _%tl166615166802%_
                           _%e166620166805%_
                           _%hd166619166808%_
                           _%tl166618166810%_
                           _%e166623166813%_
                           _%hd166622166816%_
                           _%tl166621166818%_
                           _%e166626166821%_
                           _%hd166625166824%_
                           _%tl166624166826%_
                           _%e166629166829%_
                           _%hd166628166832%_
                           _%tl166627166834%_)
                          (_%__match171004171005%_
                           _%e166611166781%_
                           _%hd166610166784%_
                           _%tl166609166786%_
                           _%e166614166789%_
                           _%hd166613166792%_
                           _%tl166612166794%_
                           _%e166617166797%_
                           _%hd166616166800%_
                           _%tl166615166802%_
                           _%e166620166805%_
                           _%hd166619166808%_
                           _%tl166618166810%_
                           _%e166623166813%_
                           _%hd166622166816%_
                           _%tl166621166818%_
                           _%e166626166821%_
                           _%hd166625166824%_
                           _%tl166624166826%_
                           _%e166629166829%_
                           _%hd166628166832%_
                           _%tl166627166834%_))))
                   (_%__match170894170895%_
                    (lambda (_%e166576166875%_
                             _%hd166575166878%_
                             _%tl166574166880%_
                             _%e166579166883%_
                             _%hd166578166886%_
                             _%tl166577166888%_
                             _%e166582166891%_
                             _%hd166581166894%_
                             _%tl166580166896%_
                             _%e166585166899%_
                             _%hd166584166902%_
                             _%tl166583166904%_
                             _%e166588166907%_
                             _%hd166587166910%_
                             _%tl166586166912%_
                             _%e166591166915%_
                             _%hd166590166918%_
                             _%tl166589166920%_
                             _%e166594166923%_
                             _%hd166593166926%_
                             _%tl166592166928%_
                             _%e166597166931%_
                             _%hd166596166934%_
                             _%tl166595166936%_
                             _%e166600166939%_
                             _%hd166599166942%_
                             _%tl166598166944%_
                             _%e166603166947%_
                             _%hd166602166950%_
                             _%tl166601166952%_
                             _%e166606166955%_
                             _%hd166605166958%_
                             _%tl166604166960%_)
                      (let ((_%L166963%_ _%hd166605166958%_)
                            (_%L166964%_ _%hd166602166950%_)
                            (_%L166965%_ _%hd166593166926%_)
                            (_%L166966%_ _%hd166584166902%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166966%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166966%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171643
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166430%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166965%_
                                    __tmp171643)))
                            (_%__kont170525170526%_
                             _%L166963%_
                             _%L166964%_
                             _%L166965%_
                             _%L166966%_)
                            (_%__kont170531170532%_)))))
                   (_%__match170886170887%_
                    (lambda (_%e166576166875%_
                             _%hd166575166878%_
                             _%tl166574166880%_
                             _%e166579166883%_
                             _%hd166578166886%_
                             _%tl166577166888%_
                             _%e166582166891%_
                             _%hd166581166894%_
                             _%tl166580166896%_
                             _%e166585166899%_
                             _%hd166584166902%_
                             _%tl166583166904%_
                             _%e166588166907%_
                             _%hd166587166910%_
                             _%tl166586166912%_
                             _%e166591166915%_
                             _%hd166590166918%_
                             _%tl166589166920%_
                             _%e166594166923%_
                             _%hd166593166926%_
                             _%tl166592166928%_
                             _%e166597166931%_
                             _%hd166596166934%_
                             _%tl166595166936%_
                             _%e166600166939%_
                             _%hd166599166942%_
                             _%tl166598166944%_
                             _%e166603166947%_
                             _%hd166602166950%_
                             _%tl166601166952%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166595166936%_))
                          (let ((_%e166606166955%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166595166936%_))))
                            (let ((_%tl166604166960%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166606166955%_)))
                                  (_%hd166605166958%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166606166955%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166604166960%_))
                                  (_%__match170894170895%_
                                   _%e166576166875%_
                                   _%hd166575166878%_
                                   _%tl166574166880%_
                                   _%e166579166883%_
                                   _%hd166578166886%_
                                   _%tl166577166888%_
                                   _%e166582166891%_
                                   _%hd166581166894%_
                                   _%tl166580166896%_
                                   _%e166585166899%_
                                   _%hd166584166902%_
                                   _%tl166583166904%_
                                   _%e166588166907%_
                                   _%hd166587166910%_
                                   _%tl166586166912%_
                                   _%e166591166915%_
                                   _%hd166590166918%_
                                   _%tl166589166920%_
                                   _%e166594166923%_
                                   _%hd166593166926%_
                                   _%tl166592166928%_
                                   _%e166597166931%_
                                   _%hd166596166934%_
                                   _%tl166595166936%_
                                   _%e166600166939%_
                                   _%hd166599166942%_
                                   _%tl166598166944%_
                                   _%e166603166947%_
                                   _%hd166602166950%_
                                   _%tl166601166952%_
                                   _%e166606166955%_
                                   _%hd166605166958%_
                                   _%tl166604166960%_)
                                  (_%__kont170531170532%_))))
                          (_%__match171010171011%_
                           _%e166576166875%_
                           _%hd166575166878%_
                           _%tl166574166880%_
                           _%e166579166883%_
                           _%hd166578166886%_
                           _%tl166577166888%_
                           _%e166582166891%_
                           _%hd166581166894%_
                           _%tl166580166896%_
                           _%e166585166899%_
                           _%hd166584166902%_
                           _%tl166583166904%_
                           _%e166588166907%_
                           _%hd166587166910%_
                           _%tl166586166912%_
                           _%e166591166915%_
                           _%hd166590166918%_
                           _%tl166589166920%_
                           _%e166594166923%_
                           _%hd166593166926%_
                           _%tl166592166928%_
                           _%e166597166931%_
                           _%hd166596166934%_
                           _%tl166595166936%_))))
                   (_%__match170808170809%_
                    (lambda (_%e166542167006%_
                             _%hd166541167009%_
                             _%tl166540167011%_
                             _%e166545167014%_
                             _%hd166544167017%_
                             _%tl166543167019%_
                             _%e166548167022%_
                             _%hd166547167025%_
                             _%tl166546167027%_
                             _%e166551167030%_
                             _%hd166550167033%_
                             _%tl166549167035%_
                             _%e166554167038%_
                             _%hd166553167041%_
                             _%tl166552167043%_
                             _%e166557167046%_
                             _%hd166556167049%_
                             _%tl166555167051%_
                             _%e166560167054%_
                             _%hd166559167057%_
                             _%tl166558167059%_
                             _%e166563167062%_
                             _%hd166562167065%_
                             _%tl166561167067%_
                             _%e166566167070%_
                             _%hd166565167073%_
                             _%tl166564167075%_
                             _%e166569167078%_
                             _%hd166568167081%_
                             _%tl166567167083%_)
                      (let ((_%L167086%_ _%hd166568167081%_)
                            (_%L167087%_ _%hd166559167057%_)
                            (_%L167088%_ _%hd166550167033%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167088%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167088%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171644
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166430%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167087%_
                                    __tmp171644)))
                            (_%__kont170523170524%_
                             _%L167086%_
                             _%L167087%_
                             _%L167088%_)
                            (_%__match171012171013%_
                             _%e166542167006%_
                             _%hd166541167009%_
                             _%tl166540167011%_
                             _%e166545167014%_
                             _%hd166544167017%_
                             _%tl166543167019%_
                             _%e166548167022%_
                             _%hd166547167025%_
                             _%tl166546167027%_
                             _%e166551167030%_
                             _%hd166550167033%_
                             _%tl166549167035%_
                             _%e166554167038%_
                             _%hd166553167041%_
                             _%tl166552167043%_
                             _%e166557167046%_
                             _%hd166556167049%_
                             _%tl166555167051%_
                             _%e166560167054%_
                             _%hd166559167057%_
                             _%tl166558167059%_
                             _%e166563167062%_
                             _%hd166562167065%_
                             _%tl166561167067%_)))))
                   (_%__match170806170807%_
                    (lambda (_%e166542167006%_
                             _%hd166541167009%_
                             _%tl166540167011%_
                             _%e166545167014%_
                             _%hd166544167017%_
                             _%tl166543167019%_
                             _%e166548167022%_
                             _%hd166547167025%_
                             _%tl166546167027%_
                             _%e166551167030%_
                             _%hd166550167033%_
                             _%tl166549167035%_
                             _%e166554167038%_
                             _%hd166553167041%_
                             _%tl166552167043%_
                             _%e166557167046%_
                             _%hd166556167049%_
                             _%tl166555167051%_
                             _%e166560167054%_
                             _%hd166559167057%_
                             _%tl166558167059%_
                             _%e166563167062%_
                             _%hd166562167065%_
                             _%tl166561167067%_
                             _%e166566167070%_
                             _%hd166565167073%_
                             _%tl166564167075%_
                             _%e166569167078%_
                             _%hd166568167081%_
                             _%tl166567167083%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166561167067%_))
                          (_%__match170808170809%_
                           _%e166542167006%_
                           _%hd166541167009%_
                           _%tl166540167011%_
                           _%e166545167014%_
                           _%hd166544167017%_
                           _%tl166543167019%_
                           _%e166548167022%_
                           _%hd166547167025%_
                           _%tl166546167027%_
                           _%e166551167030%_
                           _%hd166550167033%_
                           _%tl166549167035%_
                           _%e166554167038%_
                           _%hd166553167041%_
                           _%tl166552167043%_
                           _%e166557167046%_
                           _%hd166556167049%_
                           _%tl166555167051%_
                           _%e166560167054%_
                           _%hd166559167057%_
                           _%tl166558167059%_
                           _%e166563167062%_
                           _%hd166562167065%_
                           _%tl166561167067%_
                           _%e166566167070%_
                           _%hd166565167073%_
                           _%tl166564167075%_
                           _%e166569167078%_
                           _%hd166568167081%_
                           _%tl166567167083%_)
                          (_%__match170886170887%_
                           _%e166542167006%_
                           _%hd166541167009%_
                           _%tl166540167011%_
                           _%e166545167014%_
                           _%hd166544167017%_
                           _%tl166543167019%_
                           _%e166548167022%_
                           _%hd166547167025%_
                           _%tl166546167027%_
                           _%e166551167030%_
                           _%hd166550167033%_
                           _%tl166549167035%_
                           _%e166554167038%_
                           _%hd166553167041%_
                           _%tl166552167043%_
                           _%e166557167046%_
                           _%hd166556167049%_
                           _%tl166555167051%_
                           _%e166560167054%_
                           _%hd166559167057%_
                           _%tl166558167059%_
                           _%e166563167062%_
                           _%hd166562167065%_
                           _%tl166561167067%_
                           _%e166566167070%_
                           _%hd166565167073%_
                           _%tl166564167075%_
                           _%e166569167078%_
                           _%hd166568167081%_
                           _%tl166567167083%_))))
                   (_%__match170796170797%_
                    (lambda (_%e166542167006%_
                             _%hd166541167009%_
                             _%tl166540167011%_
                             _%e166545167014%_
                             _%hd166544167017%_
                             _%tl166543167019%_
                             _%e166548167022%_
                             _%hd166547167025%_
                             _%tl166546167027%_
                             _%e166551167030%_
                             _%hd166550167033%_
                             _%tl166549167035%_
                             _%e166554167038%_
                             _%hd166553167041%_
                             _%tl166552167043%_
                             _%e166557167046%_
                             _%hd166556167049%_
                             _%tl166555167051%_
                             _%e166560167054%_
                             _%hd166559167057%_
                             _%tl166558167059%_
                             _%e166563167062%_
                             _%hd166562167065%_
                             _%tl166561167067%_
                             _%e166566167070%_
                             _%hd166565167073%_
                             _%tl166564167075%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166565167073%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166564167075%_))
                              (let ((_%e166569167078%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166564167075%_))))
                                (let ((_%tl166567167083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166569167078%_)))
                                      (_%hd166568167081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166569167078%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166567167083%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166561167067%_))
                                          (_%__match170808170809%_
                                           _%e166542167006%_
                                           _%hd166541167009%_
                                           _%tl166540167011%_
                                           _%e166545167014%_
                                           _%hd166544167017%_
                                           _%tl166543167019%_
                                           _%e166548167022%_
                                           _%hd166547167025%_
                                           _%tl166546167027%_
                                           _%e166551167030%_
                                           _%hd166550167033%_
                                           _%tl166549167035%_
                                           _%e166554167038%_
                                           _%hd166553167041%_
                                           _%tl166552167043%_
                                           _%e166557167046%_
                                           _%hd166556167049%_
                                           _%tl166555167051%_
                                           _%e166560167054%_
                                           _%hd166559167057%_
                                           _%tl166558167059%_
                                           _%e166563167062%_
                                           _%hd166562167065%_
                                           _%tl166561167067%_
                                           _%e166566167070%_
                                           _%hd166565167073%_
                                           _%tl166564167075%_
                                           _%e166569167078%_
                                           _%hd166568167081%_
                                           _%tl166567167083%_)
                                          (_%__match170886170887%_
                                           _%e166542167006%_
                                           _%hd166541167009%_
                                           _%tl166540167011%_
                                           _%e166545167014%_
                                           _%hd166544167017%_
                                           _%tl166543167019%_
                                           _%e166548167022%_
                                           _%hd166547167025%_
                                           _%tl166546167027%_
                                           _%e166551167030%_
                                           _%hd166550167033%_
                                           _%tl166549167035%_
                                           _%e166554167038%_
                                           _%hd166553167041%_
                                           _%tl166552167043%_
                                           _%e166557167046%_
                                           _%hd166556167049%_
                                           _%tl166555167051%_
                                           _%e166560167054%_
                                           _%hd166559167057%_
                                           _%tl166558167059%_
                                           _%e166563167062%_
                                           _%hd166562167065%_
                                           _%tl166561167067%_
                                           _%e166566167070%_
                                           _%hd166565167073%_
                                           _%tl166564167075%_
                                           _%e166569167078%_
                                           _%hd166568167081%_
                                           _%tl166567167083%_))
                                      (_%__match171010171011%_
                                       _%e166542167006%_
                                       _%hd166541167009%_
                                       _%tl166540167011%_
                                       _%e166545167014%_
                                       _%hd166544167017%_
                                       _%tl166543167019%_
                                       _%e166548167022%_
                                       _%hd166547167025%_
                                       _%tl166546167027%_
                                       _%e166551167030%_
                                       _%hd166550167033%_
                                       _%tl166549167035%_
                                       _%e166554167038%_
                                       _%hd166553167041%_
                                       _%tl166552167043%_
                                       _%e166557167046%_
                                       _%hd166556167049%_
                                       _%tl166555167051%_
                                       _%e166560167054%_
                                       _%hd166559167057%_
                                       _%tl166558167059%_
                                       _%e166563167062%_
                                       _%hd166562167065%_
                                       _%tl166561167067%_))))
                              (_%__match171010171011%_
                               _%e166542167006%_
                               _%hd166541167009%_
                               _%tl166540167011%_
                               _%e166545167014%_
                               _%hd166544167017%_
                               _%tl166543167019%_
                               _%e166548167022%_
                               _%hd166547167025%_
                               _%tl166546167027%_
                               _%e166551167030%_
                               _%hd166550167033%_
                               _%tl166549167035%_
                               _%e166554167038%_
                               _%hd166553167041%_
                               _%tl166552167043%_
                               _%e166557167046%_
                               _%hd166556167049%_
                               _%tl166555167051%_
                               _%e166560167054%_
                               _%hd166559167057%_
                               _%tl166558167059%_
                               _%e166563167062%_
                               _%hd166562167065%_
                               _%tl166561167067%_))
                          (_%__match171010171011%_
                           _%e166542167006%_
                           _%hd166541167009%_
                           _%tl166540167011%_
                           _%e166545167014%_
                           _%hd166544167017%_
                           _%tl166543167019%_
                           _%e166548167022%_
                           _%hd166547167025%_
                           _%tl166546167027%_
                           _%e166551167030%_
                           _%hd166550167033%_
                           _%tl166549167035%_
                           _%e166554167038%_
                           _%hd166553167041%_
                           _%tl166552167043%_
                           _%e166557167046%_
                           _%hd166556167049%_
                           _%tl166555167051%_
                           _%e166560167054%_
                           _%hd166559167057%_
                           _%tl166558167059%_
                           _%e166563167062%_
                           _%hd166562167065%_
                           _%tl166561167067%_))))
                   (_%__match170728170729%_
                    (lambda (_%e166491167125%_
                             _%hd166490167128%_
                             _%tl166489167130%_
                             _%e166494167133%_
                             _%hd166493167136%_
                             _%tl166492167138%_
                             _%e166497167141%_
                             _%hd166496167144%_
                             _%tl166495167146%_
                             _%e166500167149%_
                             _%hd166499167152%_
                             _%tl166498167154%_
                             _%e166503167157%_
                             _%hd166502167160%_
                             _%tl166501167162%_
                             _%e166506167165%_
                             _%hd166505167168%_
                             _%tl166504167170%_
                             _%e166509167173%_
                             _%hd166508167176%_
                             _%tl166507167178%_
                             _%e166512167181%_
                             _%hd166511167184%_
                             _%tl166510167186%_
                             _%e166515167189%_
                             _%hd166514167192%_
                             _%tl166513167194%_
                             _%e166518167197%_
                             _%hd166517167200%_
                             _%tl166516167202%_
                             _%e166521167205%_
                             _%hd166520167208%_
                             _%tl166519167210%_
                             _%e166524167213%_
                             _%hd166523167216%_
                             _%tl166522167218%_
                             _%e166527167221%_
                             _%hd166526167224%_
                             _%tl166525167226%_
                             _%__splice170521170522%_
                             _%target166528167229%_
                             _%tl166530167231%_)
                      (letrec ((_%loop166531167234%_
                                (lambda (_%hd166529167237%_
                                         _%args166535167239%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166529167237%_))
                                      (let ((_%e166532167242%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166529167237%_))))
                                        (let ((_%lp-tl166534167247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166532167242%_)))
                                              (_%lp-hd166533167245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166532167242%_))))
                                          (let ((__tmp171645
                                                 (cons _%lp-hd166533167245%_
                                                       _%args166535167239%_)))
                                            (declare (not safe))
                                            (_%loop166531167234%_
                                             _%lp-tl166534167247%_
                                             __tmp171645))))
                                      (let ((_%args166536167250%_
                                             (reverse _%args166535167239%_)))
                                        (let ((_%L167253%_
                                               _%args166536167250%_)
                                              (_%L167254%_ _%hd166526167224%_)
                                              (_%L167255%_ _%hd166517167200%_)
                                              (_%L167256%_ _%hd166508167176%_)
                                              (_%L167257%_ _%hd166499167152%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167257%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167256%_
                                                      'call-method))
                                                   (let ((__tmp171646
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166430%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167255%_
                                                      __tmp171646)))
                                              (_%__kont170519170520%_
                                               _%L167253%_
                                               _%L167254%_
                                               _%L167255%_
                                               _%L167256%_
                                               _%L167257%_)
                                              (_%__kont170531170532%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166531167234%_ _%target166528167229%_ '())))))
                   (_%__match170686170687%_
                    (lambda (_%e166491167125%_
                             _%hd166490167128%_
                             _%tl166489167130%_
                             _%e166494167133%_
                             _%hd166493167136%_
                             _%tl166492167138%_
                             _%e166497167141%_
                             _%hd166496167144%_
                             _%tl166495167146%_
                             _%e166500167149%_
                             _%hd166499167152%_
                             _%tl166498167154%_
                             _%e166503167157%_
                             _%hd166502167160%_
                             _%tl166501167162%_
                             _%e166506167165%_
                             _%hd166505167168%_
                             _%tl166504167170%_
                             _%e166509167173%_
                             _%hd166508167176%_
                             _%tl166507167178%_
                             _%e166512167181%_
                             _%hd166511167184%_
                             _%tl166510167186%_
                             _%e166515167189%_
                             _%hd166514167192%_
                             _%tl166513167194%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166514167192%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166513167194%_))
                              (let ((_%e166518167197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166513167194%_))))
                                (let ((_%tl166516167202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166518167197%_)))
                                      (_%hd166517167200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166518167197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166516167202%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166510167186%_))
                                          (let ((_%e166521167205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166510167186%_))))
                                            (let ((_%tl166519167210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166521167205%_)))
                                                  (_%hd166520167208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166521167205%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166520167208%_))
                                                  (let ((_%e166524167213%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166520167208%_))))
                                                    (let ((_%tl166522167218%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166524167213%_)))
                                                          (_%hd166523167216%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166524167213%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166523167216%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166523167216%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166522167218%_))
                          (let ((_%e166527167221%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166522167218%_))))
                            (let ((_%tl166525167226%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166527167221%_)))
                                  (_%hd166526167224%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166527167221%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166525167226%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166519167210%_))
                                      (let ((_%__splice170521170522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166519167210%_
                                                '0))))
                                        (let ((_%tl166530167231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170521170522%_
                                                  '1)))
                                              (_%target166528167229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170521170522%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166530167231%_))
                                              (_%__match170728170729%_
                                               _%e166491167125%_
                                               _%hd166490167128%_
                                               _%tl166489167130%_
                                               _%e166494167133%_
                                               _%hd166493167136%_
                                               _%tl166492167138%_
                                               _%e166497167141%_
                                               _%hd166496167144%_
                                               _%tl166495167146%_
                                               _%e166500167149%_
                                               _%hd166499167152%_
                                               _%tl166498167154%_
                                               _%e166503167157%_
                                               _%hd166502167160%_
                                               _%tl166501167162%_
                                               _%e166506167165%_
                                               _%hd166505167168%_
                                               _%tl166504167170%_
                                               _%e166509167173%_
                                               _%hd166508167176%_
                                               _%tl166507167178%_
                                               _%e166512167181%_
                                               _%hd166511167184%_
                                               _%tl166510167186%_
                                               _%e166515167189%_
                                               _%hd166514167192%_
                                               _%tl166513167194%_
                                               _%e166518167197%_
                                               _%hd166517167200%_
                                               _%tl166516167202%_
                                               _%e166521167205%_
                                               _%hd166520167208%_
                                               _%tl166519167210%_
                                               _%e166524167213%_
                                               _%hd166523167216%_
                                               _%tl166522167218%_
                                               _%e166527167221%_
                                               _%hd166526167224%_
                                               _%tl166525167226%_
                                               _%__splice170521170522%_
                                               _%target166528167229%_
                                               _%tl166530167231%_)
                                              (_%__kont170531170532%_))))
                                      (_%__kont170531170532%_))
                                  (_%__kont170531170532%_))))
                          (_%__kont170531170532%_))
                      (_%__kont170531170532%_))
                  (_%__kont170531170532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170531170532%_))))
                                          (_%__match171010171011%_
                                           _%e166491167125%_
                                           _%hd166490167128%_
                                           _%tl166489167130%_
                                           _%e166494167133%_
                                           _%hd166493167136%_
                                           _%tl166492167138%_
                                           _%e166497167141%_
                                           _%hd166496167144%_
                                           _%tl166495167146%_
                                           _%e166500167149%_
                                           _%hd166499167152%_
                                           _%tl166498167154%_
                                           _%e166503167157%_
                                           _%hd166502167160%_
                                           _%tl166501167162%_
                                           _%e166506167165%_
                                           _%hd166505167168%_
                                           _%tl166504167170%_
                                           _%e166509167173%_
                                           _%hd166508167176%_
                                           _%tl166507167178%_
                                           _%e166512167181%_
                                           _%hd166511167184%_
                                           _%tl166510167186%_))
                                      (_%__match171010171011%_
                                       _%e166491167125%_
                                       _%hd166490167128%_
                                       _%tl166489167130%_
                                       _%e166494167133%_
                                       _%hd166493167136%_
                                       _%tl166492167138%_
                                       _%e166497167141%_
                                       _%hd166496167144%_
                                       _%tl166495167146%_
                                       _%e166500167149%_
                                       _%hd166499167152%_
                                       _%tl166498167154%_
                                       _%e166503167157%_
                                       _%hd166502167160%_
                                       _%tl166501167162%_
                                       _%e166506167165%_
                                       _%hd166505167168%_
                                       _%tl166504167170%_
                                       _%e166509167173%_
                                       _%hd166508167176%_
                                       _%tl166507167178%_
                                       _%e166512167181%_
                                       _%hd166511167184%_
                                       _%tl166510167186%_))))
                              (_%__match171010171011%_
                               _%e166491167125%_
                               _%hd166490167128%_
                               _%tl166489167130%_
                               _%e166494167133%_
                               _%hd166493167136%_
                               _%tl166492167138%_
                               _%e166497167141%_
                               _%hd166496167144%_
                               _%tl166495167146%_
                               _%e166500167149%_
                               _%hd166499167152%_
                               _%tl166498167154%_
                               _%e166503167157%_
                               _%hd166502167160%_
                               _%tl166501167162%_
                               _%e166506167165%_
                               _%hd166505167168%_
                               _%tl166504167170%_
                               _%e166509167173%_
                               _%hd166508167176%_
                               _%tl166507167178%_
                               _%e166512167181%_
                               _%hd166511167184%_
                               _%tl166510167186%_))
                          (_%__match170796170797%_
                           _%e166491167125%_
                           _%hd166490167128%_
                           _%tl166489167130%_
                           _%e166494167133%_
                           _%hd166493167136%_
                           _%tl166492167138%_
                           _%e166497167141%_
                           _%hd166496167144%_
                           _%tl166495167146%_
                           _%e166500167149%_
                           _%hd166499167152%_
                           _%tl166498167154%_
                           _%e166503167157%_
                           _%hd166502167160%_
                           _%tl166501167162%_
                           _%e166506167165%_
                           _%hd166505167168%_
                           _%tl166504167170%_
                           _%e166509167173%_
                           _%hd166508167176%_
                           _%tl166507167178%_
                           _%e166512167181%_
                           _%hd166511167184%_
                           _%tl166510167186%_
                           _%e166515167189%_
                           _%hd166514167192%_
                           _%tl166513167194%_))))
                   (_%__match170618170619%_
                    (lambda (_%e166447167314%_
                             _%hd166446167317%_
                             _%tl166445167319%_
                             _%e166450167322%_
                             _%hd166449167325%_
                             _%tl166448167327%_
                             _%e166453167330%_
                             _%hd166452167333%_
                             _%tl166451167335%_
                             _%e166456167338%_
                             _%hd166455167341%_
                             _%tl166454167343%_
                             _%e166459167346%_
                             _%hd166458167349%_
                             _%tl166457167351%_
                             _%e166462167354%_
                             _%hd166461167357%_
                             _%tl166460167359%_
                             _%e166465167362%_
                             _%hd166464167365%_
                             _%tl166463167367%_
                             _%e166468167370%_
                             _%hd166467167373%_
                             _%tl166466167375%_
                             _%e166471167378%_
                             _%hd166470167381%_
                             _%tl166469167383%_
                             _%e166474167386%_
                             _%hd166473167389%_
                             _%tl166472167391%_
                             _%__splice170517170518%_
                             _%target166475167394%_
                             _%tl166477167396%_)
                      (letrec ((_%loop166478167399%_
                                (lambda (_%hd166476167402%_
                                         _%args166482167404%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166476167402%_))
                                      (let ((_%e166479167407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166476167402%_))))
                                        (let ((_%lp-tl166481167412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166479167407%_)))
                                              (_%lp-hd166480167410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166479167407%_))))
                                          (let ((__tmp171647
                                                 (cons _%lp-hd166480167410%_
                                                       _%args166482167404%_)))
                                            (declare (not safe))
                                            (_%loop166478167399%_
                                             _%lp-tl166481167412%_
                                             __tmp171647))))
                                      (let ((_%args166483167415%_
                                             (reverse _%args166482167404%_)))
                                        (let ((_%L167418%_
                                               _%args166483167415%_)
                                              (_%L167419%_ _%hd166473167389%_)
                                              (_%L167420%_ _%hd166464167365%_)
                                              (_%L167421%_ _%hd166455167341%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167421%_
                                                      'call-method))
                                                   (let ((__tmp171648
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166430%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167420%_
                                                      __tmp171648)))
                                              (_%__kont170515170516%_
                                               _%L167418%_
                                               _%L167419%_
                                               _%L167420%_
                                               _%L167421%_)
                                              (_%__match170806170807%_
                                               _%e166447167314%_
                                               _%hd166446167317%_
                                               _%tl166445167319%_
                                               _%e166450167322%_
                                               _%hd166449167325%_
                                               _%tl166448167327%_
                                               _%e166453167330%_
                                               _%hd166452167333%_
                                               _%tl166451167335%_
                                               _%e166456167338%_
                                               _%hd166455167341%_
                                               _%tl166454167343%_
                                               _%e166459167346%_
                                               _%hd166458167349%_
                                               _%tl166457167351%_
                                               _%e166462167354%_
                                               _%hd166461167357%_
                                               _%tl166460167359%_
                                               _%e166465167362%_
                                               _%hd166464167365%_
                                               _%tl166463167367%_
                                               _%e166468167370%_
                                               _%hd166467167373%_
                                               _%tl166466167375%_
                                               _%e166471167378%_
                                               _%hd166470167381%_
                                               _%tl166469167383%_
                                               _%e166474167386%_
                                               _%hd166473167389%_
                                               _%tl166472167391%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166478167399%_
                           _%target166475167394%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170513170514%_))
                  (let ((_%e166447167314%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170513170514%_))))
                    (let ((_%tl166445167319%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166447167314%_)))
                          (_%hd166446167317%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166447167314%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166445167319%_))
                          (let ((_%e166450167322%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166445167319%_))))
                            (let ((_%tl166448167327%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166450167322%_)))
                                  (_%hd166449167325%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166450167322%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166449167325%_))
                                  (let ((_%e166453167330%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166449167325%_))))
                                    (let ((_%tl166451167335%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166453167330%_)))
                                          (_%hd166452167333%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166453167330%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166452167333%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166452167333%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166451167335%_))
                                                  (let ((_%e166456167338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166451167335%_))))
                                                    (let ((_%tl166454167343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166456167338%_)))
                                                          (_%hd166455167341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166456167338%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166454167343%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl166448167327%_))
                      (let ((_%e166459167346%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl166448167327%_))))
                        (let ((_%tl166457167351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e166459167346%_)))
                              (_%hd166458167349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e166459167346%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd166458167349%_))
                              (let ((_%e166462167354%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd166458167349%_))))
                                (let ((_%tl166460167359%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166462167354%_)))
                                      (_%hd166461167357%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166462167354%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd166461167357%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd166461167357%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl166460167359%_))
                                              (let ((_%e166465167362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl166460167359%_))))
                                                (let ((_%tl166463167367%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e166465167362%_)))
                                                      (_%hd166464167365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e166465167362%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl166463167367%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl166457167351%_))
                                                          (let ((_%e166468167370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl166457167351%_))))
                    (let ((_%tl166466167375%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166468167370%_)))
                          (_%hd166467167373%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166468167370%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166467167373%_))
                          (let ((_%e166471167378%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166467167373%_))))
                            (let ((_%tl166469167383%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166471167378%_)))
                                  (_%hd166470167381%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166471167378%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166470167381%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166470167381%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166469167383%_))
                                          (let ((_%e166474167386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166469167383%_))))
                                            (let ((_%tl166472167391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166474167386%_)))
                                                  (_%hd166473167389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166474167386%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166472167391%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl166466167375%_))
                                                      (let ((_%__splice170517170518%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl166466167375%_ '0))))
                (let ((_%tl166477167396%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170517170518%_ '1)))
                      (_%target166475167394%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170517170518%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166477167396%_))
                      (_%__match170618170619%_
                       _%e166447167314%_
                       _%hd166446167317%_
                       _%tl166445167319%_
                       _%e166450167322%_
                       _%hd166449167325%_
                       _%tl166448167327%_
                       _%e166453167330%_
                       _%hd166452167333%_
                       _%tl166451167335%_
                       _%e166456167338%_
                       _%hd166455167341%_
                       _%tl166454167343%_
                       _%e166459167346%_
                       _%hd166458167349%_
                       _%tl166457167351%_
                       _%e166462167354%_
                       _%hd166461167357%_
                       _%tl166460167359%_
                       _%e166465167362%_
                       _%hd166464167365%_
                       _%tl166463167367%_
                       _%e166468167370%_
                       _%hd166467167373%_
                       _%tl166466167375%_
                       _%e166471167378%_
                       _%hd166470167381%_
                       _%tl166469167383%_
                       _%e166474167386%_
                       _%hd166473167389%_
                       _%tl166472167391%_
                       _%__splice170517170518%_
                       _%target166475167394%_
                       _%tl166477167396%_)
                      (_%__match170806170807%_
                       _%e166447167314%_
                       _%hd166446167317%_
                       _%tl166445167319%_
                       _%e166450167322%_
                       _%hd166449167325%_
                       _%tl166448167327%_
                       _%e166453167330%_
                       _%hd166452167333%_
                       _%tl166451167335%_
                       _%e166456167338%_
                       _%hd166455167341%_
                       _%tl166454167343%_
                       _%e166459167346%_
                       _%hd166458167349%_
                       _%tl166457167351%_
                       _%e166462167354%_
                       _%hd166461167357%_
                       _%tl166460167359%_
                       _%e166465167362%_
                       _%hd166464167365%_
                       _%tl166463167367%_
                       _%e166468167370%_
                       _%hd166467167373%_
                       _%tl166466167375%_
                       _%e166471167378%_
                       _%hd166470167381%_
                       _%tl166469167383%_
                       _%e166474167386%_
                       _%hd166473167389%_
                       _%tl166472167391%_))))
              (_%__match170806170807%_
               _%e166447167314%_
               _%hd166446167317%_
               _%tl166445167319%_
               _%e166450167322%_
               _%hd166449167325%_
               _%tl166448167327%_
               _%e166453167330%_
               _%hd166452167333%_
               _%tl166451167335%_
               _%e166456167338%_
               _%hd166455167341%_
               _%tl166454167343%_
               _%e166459167346%_
               _%hd166458167349%_
               _%tl166457167351%_
               _%e166462167354%_
               _%hd166461167357%_
               _%tl166460167359%_
               _%e166465167362%_
               _%hd166464167365%_
               _%tl166463167367%_
               _%e166468167370%_
               _%hd166467167373%_
               _%tl166466167375%_
               _%e166471167378%_
               _%hd166470167381%_
               _%tl166469167383%_
               _%e166474167386%_
               _%hd166473167389%_
               _%tl166472167391%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match171010171011%_
                                                   _%e166447167314%_
                                                   _%hd166446167317%_
                                                   _%tl166445167319%_
                                                   _%e166450167322%_
                                                   _%hd166449167325%_
                                                   _%tl166448167327%_
                                                   _%e166453167330%_
                                                   _%hd166452167333%_
                                                   _%tl166451167335%_
                                                   _%e166456167338%_
                                                   _%hd166455167341%_
                                                   _%tl166454167343%_
                                                   _%e166459167346%_
                                                   _%hd166458167349%_
                                                   _%tl166457167351%_
                                                   _%e166462167354%_
                                                   _%hd166461167357%_
                                                   _%tl166460167359%_
                                                   _%e166465167362%_
                                                   _%hd166464167365%_
                                                   _%tl166463167367%_
                                                   _%e166468167370%_
                                                   _%hd166467167373%_
                                                   _%tl166466167375%_))))
                                          (_%__match171010171011%_
                                           _%e166447167314%_
                                           _%hd166446167317%_
                                           _%tl166445167319%_
                                           _%e166450167322%_
                                           _%hd166449167325%_
                                           _%tl166448167327%_
                                           _%e166453167330%_
                                           _%hd166452167333%_
                                           _%tl166451167335%_
                                           _%e166456167338%_
                                           _%hd166455167341%_
                                           _%tl166454167343%_
                                           _%e166459167346%_
                                           _%hd166458167349%_
                                           _%tl166457167351%_
                                           _%e166462167354%_
                                           _%hd166461167357%_
                                           _%tl166460167359%_
                                           _%e166465167362%_
                                           _%hd166464167365%_
                                           _%tl166463167367%_
                                           _%e166468167370%_
                                           _%hd166467167373%_
                                           _%tl166466167375%_))
                                      (_%__match170686170687%_
                                       _%e166447167314%_
                                       _%hd166446167317%_
                                       _%tl166445167319%_
                                       _%e166450167322%_
                                       _%hd166449167325%_
                                       _%tl166448167327%_
                                       _%e166453167330%_
                                       _%hd166452167333%_
                                       _%tl166451167335%_
                                       _%e166456167338%_
                                       _%hd166455167341%_
                                       _%tl166454167343%_
                                       _%e166459167346%_
                                       _%hd166458167349%_
                                       _%tl166457167351%_
                                       _%e166462167354%_
                                       _%hd166461167357%_
                                       _%tl166460167359%_
                                       _%e166465167362%_
                                       _%hd166464167365%_
                                       _%tl166463167367%_
                                       _%e166468167370%_
                                       _%hd166467167373%_
                                       _%tl166466167375%_
                                       _%e166471167378%_
                                       _%hd166470167381%_
                                       _%tl166469167383%_))
                                  (_%__match171010171011%_
                                   _%e166447167314%_
                                   _%hd166446167317%_
                                   _%tl166445167319%_
                                   _%e166450167322%_
                                   _%hd166449167325%_
                                   _%tl166448167327%_
                                   _%e166453167330%_
                                   _%hd166452167333%_
                                   _%tl166451167335%_
                                   _%e166456167338%_
                                   _%hd166455167341%_
                                   _%tl166454167343%_
                                   _%e166459167346%_
                                   _%hd166458167349%_
                                   _%tl166457167351%_
                                   _%e166462167354%_
                                   _%hd166461167357%_
                                   _%tl166460167359%_
                                   _%e166465167362%_
                                   _%hd166464167365%_
                                   _%tl166463167367%_
                                   _%e166468167370%_
                                   _%hd166467167373%_
                                   _%tl166466167375%_))))
                          (_%__match171010171011%_
                           _%e166447167314%_
                           _%hd166446167317%_
                           _%tl166445167319%_
                           _%e166450167322%_
                           _%hd166449167325%_
                           _%tl166448167327%_
                           _%e166453167330%_
                           _%hd166452167333%_
                           _%tl166451167335%_
                           _%e166456167338%_
                           _%hd166455167341%_
                           _%tl166454167343%_
                           _%e166459167346%_
                           _%hd166458167349%_
                           _%tl166457167351%_
                           _%e166462167354%_
                           _%hd166461167357%_
                           _%tl166460167359%_
                           _%e166465167362%_
                           _%hd166464167365%_
                           _%tl166463167367%_
                           _%e166468167370%_
                           _%hd166467167373%_
                           _%tl166466167375%_))))
                  (_%__match170948170949%_
                   _%e166447167314%_
                   _%hd166446167317%_
                   _%tl166445167319%_
                   _%e166450167322%_
                   _%hd166449167325%_
                   _%tl166448167327%_
                   _%e166453167330%_
                   _%hd166452167333%_
                   _%tl166451167335%_
                   _%e166456167338%_
                   _%hd166455167341%_
                   _%tl166454167343%_
                   _%e166459167346%_
                   _%hd166458167349%_
                   _%tl166457167351%_
                   _%e166462167354%_
                   _%hd166461167357%_
                   _%tl166460167359%_
                   _%e166465167362%_
                   _%hd166464167365%_
                   _%tl166463167367%_))
              (_%__kont170531170532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170531170532%_))
                                          (_%__kont170531170532%_))
                                      (_%__kont170531170532%_))))
                              (_%__kont170531170532%_))))
                      (_%__kont170531170532%_))
                  (_%__kont170531170532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170531170532%_))
                                              (_%__kont170531170532%_))
                                          (_%__kont170531170532%_))))
                                  (_%__kont170531170532%_))))
                          (_%__kont170531170532%_))))
                  (_%__kont170531170532%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self165369%_ _%stx165370%_)
        (letrec ((_%force-e165372%_
                  (lambda (_%target166428%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target166428%_ '()))
                                      '()))))))
          (let* ((_%__stx171015171016%_ _%stx165370%_)
                 (_%g165380165602%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171015171016%_)))))
            (let ((_%__kont171017171018%_
                   (lambda (_%L166374%_ _%L166375%_ _%L166376%_ _%L166377%_)
                     (let ((_%$method166422%_
                            (let ((__tmp171650
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165369%_ 'methods)))
                                  (__tmp171649
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166375%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171650 __tmp171649)))
                           (_%args166423%_
                            (map (lambda (_%g166410166412%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165369%_
                                      _%g166410166412%_)))
                                 (let ((__tmp171651
                                        (lambda (_%g166414166417%_
                                                 _%g166415166419%_)
                                          (cons _%g166414166417%_
                                                _%g166415166419%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171651 '() _%L166374%_)))))
                       (let ((__tmp171652
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e165372%_
                                             _%$method166422%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165369%_
                                                               'receiver))
                                                            '()))
                                                _%args166423%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171652 _%stx165370%_)))))
                  (_%__kont171021171022%_
                   (lambda (_%L166206%_
                            _%L166207%_
                            _%L166208%_
                            _%L166209%_
                            _%L166210%_)
                     (let ((_%$method166262%_
                            (let ((__tmp171654
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165369%_ 'methods)))
                                  (__tmp171653
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166207%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171654 __tmp171653)))
                           (_%args166263%_
                            (map (lambda (_%g166250166252%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165369%_
                                      _%g166250166252%_)))
                                 (let ((__tmp171655
                                        (lambda (_%g166254166257%_
                                                 _%g166255166259%_)
                                          (cons _%g166254166257%_
                                                _%g166255166259%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171655 '() _%L166206%_)))))
                       (let ((__tmp171656
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e165372%_
                                                   _%$method166262%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165369%_ 'receiver))
                          '()))
              _%args166263%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171656 _%stx165370%_)))))
                  (_%__kont171025171026%_
                   (lambda (_%L166037%_ _%L166038%_ _%L166039%_)
                     (let* ((_%$field166071%_
                             (let ((__tmp171658
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self165369%_ 'slots)))
                                   (__tmp171657
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L166037%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171658 __tmp171657)))
                            (__tmp171659
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self165369%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field166071%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self165369%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171659 _%stx165370%_))))
                  (_%__kont171027171028%_
                   (lambda (_%L165911%_ _%L165912%_ _%L165913%_ _%L165914%_)
                     (let ((_%$field165949%_
                            (let ((__tmp171661
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165369%_ 'slots)))
                                  (__tmp171660
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165912%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171661 __tmp171660)))
                           (_%expr165950%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self165369%_ _%L165911%_))))
                       (let ((__tmp171662
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self165369%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field165949%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165369%_ 'receiver))
                          '()))
              (cons _%expr165950%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171662 _%stx165370%_)))))
                  (_%__kont171029171030%_
                   (lambda (_%L165783%_ _%L165784%_)
                     (let* ((_%accessor165806%_
                             (let ((__tmp171663
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165784%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171663)))
                            (_%klass165808%_
                             (let ((__tmp171664
                                    (##structure-ref
                                     _%accessor165806%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165370%_
                                __tmp171664)))
                            (_%slot165810%_
                             (##structure-ref
                              _%accessor165806%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp171665
                                       (##structure-ref
                                        _%accessor165806%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171665))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165808%_
                                       _%slot165810%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165808%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx165370%_
                           (let* ((_%$field165816%_
                                   (let ((__tmp171666
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165369%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171666 _%slot165810%_)))
                                  (__tmp171667
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165369%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165369%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171667
                              _%stx165370%_))))))
                  (_%__kont171031171032%_
                   (lambda (_%L165678%_ _%L165679%_ _%L165680%_)
                     (let* ((_%mutator165708%_
                             (let ((__tmp171668
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165680%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171668)))
                            (_%klass165710%_
                             (let ((__tmp171669
                                    (##structure-ref
                                     _%mutator165708%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165370%_
                                __tmp171669)))
                            (_%slot165712%_
                             (##structure-ref
                              _%mutator165708%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165714%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self165369%_ _%L165678%_))))
                       (if (and (let ((__tmp171670
                                       (##structure-ref
                                        _%mutator165708%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171670))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165710%_
                                       _%slot165712%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165710%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171671
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165680%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165679%_
                                                                '()))
                                                    (cons _%expr165714%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171671 _%stx165370%_))
                           (let* ((_%$field165720%_
                                   (let ((__tmp171672
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165369%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171672 _%slot165712%_)))
                                  (__tmp171673
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165369%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165369%_ 'receiver))
                               '()))
                   (cons _%expr165714%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171673
                              _%stx165370%_))))))
                  (_%__kont171033171034%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self165369%_ _%stx165370%_)))))
              (let* ((_%__match171514171515%_
                      (lambda (_%e165576165614%_
                               _%hd165575165617%_
                               _%tl165574165619%_
                               _%e165579165622%_
                               _%hd165578165625%_
                               _%tl165577165627%_
                               _%e165582165630%_
                               _%hd165581165633%_
                               _%tl165580165635%_
                               _%e165585165638%_
                               _%hd165584165641%_
                               _%tl165583165643%_
                               _%e165588165646%_
                               _%hd165587165649%_
                               _%tl165586165651%_
                               _%e165591165654%_
                               _%hd165590165657%_
                               _%tl165589165659%_
                               _%e165594165662%_
                               _%hd165593165665%_
                               _%tl165592165667%_
                               _%e165597165670%_
                               _%hd165596165673%_
                               _%tl165595165675%_)
                        (let ((_%L165678%_ _%hd165596165673%_)
                              (_%L165679%_ _%hd165593165665%_)
                              (_%L165680%_ _%hd165584165641%_))
                          (if (and (let ((__tmp171674
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165369%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165679%_
                                      __tmp171674))
                                   (let ((__tmp171675
                                          (let ((__tmp171676
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165680%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171676))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171675
                                      'gxc#!mutator::t)))
                              (_%__kont171031171032%_
                               _%L165678%_
                               _%L165679%_
                               _%L165680%_)
                              (_%__kont171033171034%_)))))
                     (_%__match171512171513%_
                      (lambda (_%e165576165614%_
                               _%hd165575165617%_
                               _%tl165574165619%_
                               _%e165579165622%_
                               _%hd165578165625%_
                               _%tl165577165627%_
                               _%e165582165630%_
                               _%hd165581165633%_
                               _%tl165580165635%_
                               _%e165585165638%_
                               _%hd165584165641%_
                               _%tl165583165643%_
                               _%e165588165646%_
                               _%hd165587165649%_
                               _%tl165586165651%_
                               _%e165591165654%_
                               _%hd165590165657%_
                               _%tl165589165659%_
                               _%e165594165662%_
                               _%hd165593165665%_
                               _%tl165592165667%_
                               _%e165597165670%_
                               _%hd165596165673%_
                               _%tl165595165675%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165595165675%_))
                            (_%__match171514171515%_
                             _%e165576165614%_
                             _%hd165575165617%_
                             _%tl165574165619%_
                             _%e165579165622%_
                             _%hd165578165625%_
                             _%tl165577165627%_
                             _%e165582165630%_
                             _%hd165581165633%_
                             _%tl165580165635%_
                             _%e165585165638%_
                             _%hd165584165641%_
                             _%tl165583165643%_
                             _%e165588165646%_
                             _%hd165587165649%_
                             _%tl165586165651%_
                             _%e165591165654%_
                             _%hd165590165657%_
                             _%tl165589165659%_
                             _%e165594165662%_
                             _%hd165593165665%_
                             _%tl165592165667%_
                             _%e165597165670%_
                             _%hd165596165673%_
                             _%tl165595165675%_)
                            (_%__kont171033171034%_))))
                     (_%__match171506171507%_
                      (lambda (_%e165576165614%_
                               _%hd165575165617%_
                               _%tl165574165619%_
                               _%e165579165622%_
                               _%hd165578165625%_
                               _%tl165577165627%_
                               _%e165582165630%_
                               _%hd165581165633%_
                               _%tl165580165635%_
                               _%e165585165638%_
                               _%hd165584165641%_
                               _%tl165583165643%_
                               _%e165588165646%_
                               _%hd165587165649%_
                               _%tl165586165651%_
                               _%e165591165654%_
                               _%hd165590165657%_
                               _%tl165589165659%_
                               _%e165594165662%_
                               _%hd165593165665%_
                               _%tl165592165667%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165586165651%_))
                            (let ((_%e165597165670%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165586165651%_))))
                              (let ((_%tl165595165675%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165597165670%_)))
                                    (_%hd165596165673%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165597165670%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165595165675%_))
                                    (_%__match171514171515%_
                                     _%e165576165614%_
                                     _%hd165575165617%_
                                     _%tl165574165619%_
                                     _%e165579165622%_
                                     _%hd165578165625%_
                                     _%tl165577165627%_
                                     _%e165582165630%_
                                     _%hd165581165633%_
                                     _%tl165580165635%_
                                     _%e165585165638%_
                                     _%hd165584165641%_
                                     _%tl165583165643%_
                                     _%e165588165646%_
                                     _%hd165587165649%_
                                     _%tl165586165651%_
                                     _%e165591165654%_
                                     _%hd165590165657%_
                                     _%tl165589165659%_
                                     _%e165594165662%_
                                     _%hd165593165665%_
                                     _%tl165592165667%_
                                     _%e165597165670%_
                                     _%hd165596165673%_
                                     _%tl165595165675%_)
                                    (_%__kont171033171034%_))))
                            (_%__kont171033171034%_))))
                     (_%__match171452171453%_
                      (lambda (_%e165552165727%_
                               _%hd165551165730%_
                               _%tl165550165732%_
                               _%e165555165735%_
                               _%hd165554165738%_
                               _%tl165553165740%_
                               _%e165558165743%_
                               _%hd165557165746%_
                               _%tl165556165748%_
                               _%e165561165751%_
                               _%hd165560165754%_
                               _%tl165559165756%_
                               _%e165564165759%_
                               _%hd165563165762%_
                               _%tl165562165764%_
                               _%e165567165767%_
                               _%hd165566165770%_
                               _%tl165565165772%_
                               _%e165570165775%_
                               _%hd165569165778%_
                               _%tl165568165780%_)
                        (let ((_%L165783%_ _%hd165569165778%_)
                              (_%L165784%_ _%hd165560165754%_))
                          (if (and (let ((__tmp171677
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165369%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165783%_
                                      __tmp171677))
                                   (let ((__tmp171678
                                          (let ((__tmp171679
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165784%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171679))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171678
                                      'gxc#!accessor::t)))
                              (_%__kont171029171030%_ _%L165783%_ _%L165784%_)
                              (_%__kont171033171034%_)))))
                     (_%__match171450171451%_
                      (lambda (_%e165552165727%_
                               _%hd165551165730%_
                               _%tl165550165732%_
                               _%e165555165735%_
                               _%hd165554165738%_
                               _%tl165553165740%_
                               _%e165558165743%_
                               _%hd165557165746%_
                               _%tl165556165748%_
                               _%e165561165751%_
                               _%hd165560165754%_
                               _%tl165559165756%_
                               _%e165564165759%_
                               _%hd165563165762%_
                               _%tl165562165764%_
                               _%e165567165767%_
                               _%hd165566165770%_
                               _%tl165565165772%_
                               _%e165570165775%_
                               _%hd165569165778%_
                               _%tl165568165780%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165562165764%_))
                            (_%__match171452171453%_
                             _%e165552165727%_
                             _%hd165551165730%_
                             _%tl165550165732%_
                             _%e165555165735%_
                             _%hd165554165738%_
                             _%tl165553165740%_
                             _%e165558165743%_
                             _%hd165557165746%_
                             _%tl165556165748%_
                             _%e165561165751%_
                             _%hd165560165754%_
                             _%tl165559165756%_
                             _%e165564165759%_
                             _%hd165563165762%_
                             _%tl165562165764%_
                             _%e165567165767%_
                             _%hd165566165770%_
                             _%tl165565165772%_
                             _%e165570165775%_
                             _%hd165569165778%_
                             _%tl165568165780%_)
                            (_%__match171506171507%_
                             _%e165552165727%_
                             _%hd165551165730%_
                             _%tl165550165732%_
                             _%e165555165735%_
                             _%hd165554165738%_
                             _%tl165553165740%_
                             _%e165558165743%_
                             _%hd165557165746%_
                             _%tl165556165748%_
                             _%e165561165751%_
                             _%hd165560165754%_
                             _%tl165559165756%_
                             _%e165564165759%_
                             _%hd165563165762%_
                             _%tl165562165764%_
                             _%e165567165767%_
                             _%hd165566165770%_
                             _%tl165565165772%_
                             _%e165570165775%_
                             _%hd165569165778%_
                             _%tl165568165780%_))))
                     (_%__match171396171397%_
                      (lambda (_%e165517165823%_
                               _%hd165516165826%_
                               _%tl165515165828%_
                               _%e165520165831%_
                               _%hd165519165834%_
                               _%tl165518165836%_
                               _%e165523165839%_
                               _%hd165522165842%_
                               _%tl165521165844%_
                               _%e165526165847%_
                               _%hd165525165850%_
                               _%tl165524165852%_
                               _%e165529165855%_
                               _%hd165528165858%_
                               _%tl165527165860%_
                               _%e165532165863%_
                               _%hd165531165866%_
                               _%tl165530165868%_
                               _%e165535165871%_
                               _%hd165534165874%_
                               _%tl165533165876%_
                               _%e165538165879%_
                               _%hd165537165882%_
                               _%tl165536165884%_
                               _%e165541165887%_
                               _%hd165540165890%_
                               _%tl165539165892%_
                               _%e165544165895%_
                               _%hd165543165898%_
                               _%tl165542165900%_
                               _%e165547165903%_
                               _%hd165546165906%_
                               _%tl165545165908%_)
                        (let ((_%L165911%_ _%hd165546165906%_)
                              (_%L165912%_ _%hd165543165898%_)
                              (_%L165913%_ _%hd165534165874%_)
                              (_%L165914%_ _%hd165525165850%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165914%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165914%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171680
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165369%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165913%_
                                      __tmp171680)))
                              (_%__kont171027171028%_
                               _%L165911%_
                               _%L165912%_
                               _%L165913%_
                               _%L165914%_)
                              (_%__kont171033171034%_)))))
                     (_%__match171388171389%_
                      (lambda (_%e165517165823%_
                               _%hd165516165826%_
                               _%tl165515165828%_
                               _%e165520165831%_
                               _%hd165519165834%_
                               _%tl165518165836%_
                               _%e165523165839%_
                               _%hd165522165842%_
                               _%tl165521165844%_
                               _%e165526165847%_
                               _%hd165525165850%_
                               _%tl165524165852%_
                               _%e165529165855%_
                               _%hd165528165858%_
                               _%tl165527165860%_
                               _%e165532165863%_
                               _%hd165531165866%_
                               _%tl165530165868%_
                               _%e165535165871%_
                               _%hd165534165874%_
                               _%tl165533165876%_
                               _%e165538165879%_
                               _%hd165537165882%_
                               _%tl165536165884%_
                               _%e165541165887%_
                               _%hd165540165890%_
                               _%tl165539165892%_
                               _%e165544165895%_
                               _%hd165543165898%_
                               _%tl165542165900%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165536165884%_))
                            (let ((_%e165547165903%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165536165884%_))))
                              (let ((_%tl165545165908%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165547165903%_)))
                                    (_%hd165546165906%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165547165903%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165545165908%_))
                                    (_%__match171396171397%_
                                     _%e165517165823%_
                                     _%hd165516165826%_
                                     _%tl165515165828%_
                                     _%e165520165831%_
                                     _%hd165519165834%_
                                     _%tl165518165836%_
                                     _%e165523165839%_
                                     _%hd165522165842%_
                                     _%tl165521165844%_
                                     _%e165526165847%_
                                     _%hd165525165850%_
                                     _%tl165524165852%_
                                     _%e165529165855%_
                                     _%hd165528165858%_
                                     _%tl165527165860%_
                                     _%e165532165863%_
                                     _%hd165531165866%_
                                     _%tl165530165868%_
                                     _%e165535165871%_
                                     _%hd165534165874%_
                                     _%tl165533165876%_
                                     _%e165538165879%_
                                     _%hd165537165882%_
                                     _%tl165536165884%_
                                     _%e165541165887%_
                                     _%hd165540165890%_
                                     _%tl165539165892%_
                                     _%e165544165895%_
                                     _%hd165543165898%_
                                     _%tl165542165900%_
                                     _%e165547165903%_
                                     _%hd165546165906%_
                                     _%tl165545165908%_)
                                    (_%__kont171033171034%_))))
                            (_%__match171512171513%_
                             _%e165517165823%_
                             _%hd165516165826%_
                             _%tl165515165828%_
                             _%e165520165831%_
                             _%hd165519165834%_
                             _%tl165518165836%_
                             _%e165523165839%_
                             _%hd165522165842%_
                             _%tl165521165844%_
                             _%e165526165847%_
                             _%hd165525165850%_
                             _%tl165524165852%_
                             _%e165529165855%_
                             _%hd165528165858%_
                             _%tl165527165860%_
                             _%e165532165863%_
                             _%hd165531165866%_
                             _%tl165530165868%_
                             _%e165535165871%_
                             _%hd165534165874%_
                             _%tl165533165876%_
                             _%e165538165879%_
                             _%hd165537165882%_
                             _%tl165536165884%_))))
                     (_%__match171310171311%_
                      (lambda (_%e165483165957%_
                               _%hd165482165960%_
                               _%tl165481165962%_
                               _%e165486165965%_
                               _%hd165485165968%_
                               _%tl165484165970%_
                               _%e165489165973%_
                               _%hd165488165976%_
                               _%tl165487165978%_
                               _%e165492165981%_
                               _%hd165491165984%_
                               _%tl165490165986%_
                               _%e165495165989%_
                               _%hd165494165992%_
                               _%tl165493165994%_
                               _%e165498165997%_
                               _%hd165497166000%_
                               _%tl165496166002%_
                               _%e165501166005%_
                               _%hd165500166008%_
                               _%tl165499166010%_
                               _%e165504166013%_
                               _%hd165503166016%_
                               _%tl165502166018%_
                               _%e165507166021%_
                               _%hd165506166024%_
                               _%tl165505166026%_
                               _%e165510166029%_
                               _%hd165509166032%_
                               _%tl165508166034%_)
                        (let ((_%L166037%_ _%hd165509166032%_)
                              (_%L166038%_ _%hd165500166008%_)
                              (_%L166039%_ _%hd165491165984%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166039%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166039%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171681
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165369%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166038%_
                                      __tmp171681)))
                              (_%__kont171025171026%_
                               _%L166037%_
                               _%L166038%_
                               _%L166039%_)
                              (_%__match171514171515%_
                               _%e165483165957%_
                               _%hd165482165960%_
                               _%tl165481165962%_
                               _%e165486165965%_
                               _%hd165485165968%_
                               _%tl165484165970%_
                               _%e165489165973%_
                               _%hd165488165976%_
                               _%tl165487165978%_
                               _%e165492165981%_
                               _%hd165491165984%_
                               _%tl165490165986%_
                               _%e165495165989%_
                               _%hd165494165992%_
                               _%tl165493165994%_
                               _%e165498165997%_
                               _%hd165497166000%_
                               _%tl165496166002%_
                               _%e165501166005%_
                               _%hd165500166008%_
                               _%tl165499166010%_
                               _%e165504166013%_
                               _%hd165503166016%_
                               _%tl165502166018%_)))))
                     (_%__match171308171309%_
                      (lambda (_%e165483165957%_
                               _%hd165482165960%_
                               _%tl165481165962%_
                               _%e165486165965%_
                               _%hd165485165968%_
                               _%tl165484165970%_
                               _%e165489165973%_
                               _%hd165488165976%_
                               _%tl165487165978%_
                               _%e165492165981%_
                               _%hd165491165984%_
                               _%tl165490165986%_
                               _%e165495165989%_
                               _%hd165494165992%_
                               _%tl165493165994%_
                               _%e165498165997%_
                               _%hd165497166000%_
                               _%tl165496166002%_
                               _%e165501166005%_
                               _%hd165500166008%_
                               _%tl165499166010%_
                               _%e165504166013%_
                               _%hd165503166016%_
                               _%tl165502166018%_
                               _%e165507166021%_
                               _%hd165506166024%_
                               _%tl165505166026%_
                               _%e165510166029%_
                               _%hd165509166032%_
                               _%tl165508166034%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165502166018%_))
                            (_%__match171310171311%_
                             _%e165483165957%_
                             _%hd165482165960%_
                             _%tl165481165962%_
                             _%e165486165965%_
                             _%hd165485165968%_
                             _%tl165484165970%_
                             _%e165489165973%_
                             _%hd165488165976%_
                             _%tl165487165978%_
                             _%e165492165981%_
                             _%hd165491165984%_
                             _%tl165490165986%_
                             _%e165495165989%_
                             _%hd165494165992%_
                             _%tl165493165994%_
                             _%e165498165997%_
                             _%hd165497166000%_
                             _%tl165496166002%_
                             _%e165501166005%_
                             _%hd165500166008%_
                             _%tl165499166010%_
                             _%e165504166013%_
                             _%hd165503166016%_
                             _%tl165502166018%_
                             _%e165507166021%_
                             _%hd165506166024%_
                             _%tl165505166026%_
                             _%e165510166029%_
                             _%hd165509166032%_
                             _%tl165508166034%_)
                            (_%__match171388171389%_
                             _%e165483165957%_
                             _%hd165482165960%_
                             _%tl165481165962%_
                             _%e165486165965%_
                             _%hd165485165968%_
                             _%tl165484165970%_
                             _%e165489165973%_
                             _%hd165488165976%_
                             _%tl165487165978%_
                             _%e165492165981%_
                             _%hd165491165984%_
                             _%tl165490165986%_
                             _%e165495165989%_
                             _%hd165494165992%_
                             _%tl165493165994%_
                             _%e165498165997%_
                             _%hd165497166000%_
                             _%tl165496166002%_
                             _%e165501166005%_
                             _%hd165500166008%_
                             _%tl165499166010%_
                             _%e165504166013%_
                             _%hd165503166016%_
                             _%tl165502166018%_
                             _%e165507166021%_
                             _%hd165506166024%_
                             _%tl165505166026%_
                             _%e165510166029%_
                             _%hd165509166032%_
                             _%tl165508166034%_))))
                     (_%__match171298171299%_
                      (lambda (_%e165483165957%_
                               _%hd165482165960%_
                               _%tl165481165962%_
                               _%e165486165965%_
                               _%hd165485165968%_
                               _%tl165484165970%_
                               _%e165489165973%_
                               _%hd165488165976%_
                               _%tl165487165978%_
                               _%e165492165981%_
                               _%hd165491165984%_
                               _%tl165490165986%_
                               _%e165495165989%_
                               _%hd165494165992%_
                               _%tl165493165994%_
                               _%e165498165997%_
                               _%hd165497166000%_
                               _%tl165496166002%_
                               _%e165501166005%_
                               _%hd165500166008%_
                               _%tl165499166010%_
                               _%e165504166013%_
                               _%hd165503166016%_
                               _%tl165502166018%_
                               _%e165507166021%_
                               _%hd165506166024%_
                               _%tl165505166026%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165506166024%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165505166026%_))
                                (let ((_%e165510166029%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165505166026%_))))
                                  (let ((_%tl165508166034%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165510166029%_)))
                                        (_%hd165509166032%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165510166029%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165508166034%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165502166018%_))
                                            (_%__match171310171311%_
                                             _%e165483165957%_
                                             _%hd165482165960%_
                                             _%tl165481165962%_
                                             _%e165486165965%_
                                             _%hd165485165968%_
                                             _%tl165484165970%_
                                             _%e165489165973%_
                                             _%hd165488165976%_
                                             _%tl165487165978%_
                                             _%e165492165981%_
                                             _%hd165491165984%_
                                             _%tl165490165986%_
                                             _%e165495165989%_
                                             _%hd165494165992%_
                                             _%tl165493165994%_
                                             _%e165498165997%_
                                             _%hd165497166000%_
                                             _%tl165496166002%_
                                             _%e165501166005%_
                                             _%hd165500166008%_
                                             _%tl165499166010%_
                                             _%e165504166013%_
                                             _%hd165503166016%_
                                             _%tl165502166018%_
                                             _%e165507166021%_
                                             _%hd165506166024%_
                                             _%tl165505166026%_
                                             _%e165510166029%_
                                             _%hd165509166032%_
                                             _%tl165508166034%_)
                                            (_%__match171388171389%_
                                             _%e165483165957%_
                                             _%hd165482165960%_
                                             _%tl165481165962%_
                                             _%e165486165965%_
                                             _%hd165485165968%_
                                             _%tl165484165970%_
                                             _%e165489165973%_
                                             _%hd165488165976%_
                                             _%tl165487165978%_
                                             _%e165492165981%_
                                             _%hd165491165984%_
                                             _%tl165490165986%_
                                             _%e165495165989%_
                                             _%hd165494165992%_
                                             _%tl165493165994%_
                                             _%e165498165997%_
                                             _%hd165497166000%_
                                             _%tl165496166002%_
                                             _%e165501166005%_
                                             _%hd165500166008%_
                                             _%tl165499166010%_
                                             _%e165504166013%_
                                             _%hd165503166016%_
                                             _%tl165502166018%_
                                             _%e165507166021%_
                                             _%hd165506166024%_
                                             _%tl165505166026%_
                                             _%e165510166029%_
                                             _%hd165509166032%_
                                             _%tl165508166034%_))
                                        (_%__match171512171513%_
                                         _%e165483165957%_
                                         _%hd165482165960%_
                                         _%tl165481165962%_
                                         _%e165486165965%_
                                         _%hd165485165968%_
                                         _%tl165484165970%_
                                         _%e165489165973%_
                                         _%hd165488165976%_
                                         _%tl165487165978%_
                                         _%e165492165981%_
                                         _%hd165491165984%_
                                         _%tl165490165986%_
                                         _%e165495165989%_
                                         _%hd165494165992%_
                                         _%tl165493165994%_
                                         _%e165498165997%_
                                         _%hd165497166000%_
                                         _%tl165496166002%_
                                         _%e165501166005%_
                                         _%hd165500166008%_
                                         _%tl165499166010%_
                                         _%e165504166013%_
                                         _%hd165503166016%_
                                         _%tl165502166018%_))))
                                (_%__match171512171513%_
                                 _%e165483165957%_
                                 _%hd165482165960%_
                                 _%tl165481165962%_
                                 _%e165486165965%_
                                 _%hd165485165968%_
                                 _%tl165484165970%_
                                 _%e165489165973%_
                                 _%hd165488165976%_
                                 _%tl165487165978%_
                                 _%e165492165981%_
                                 _%hd165491165984%_
                                 _%tl165490165986%_
                                 _%e165495165989%_
                                 _%hd165494165992%_
                                 _%tl165493165994%_
                                 _%e165498165997%_
                                 _%hd165497166000%_
                                 _%tl165496166002%_
                                 _%e165501166005%_
                                 _%hd165500166008%_
                                 _%tl165499166010%_
                                 _%e165504166013%_
                                 _%hd165503166016%_
                                 _%tl165502166018%_))
                            (_%__match171512171513%_
                             _%e165483165957%_
                             _%hd165482165960%_
                             _%tl165481165962%_
                             _%e165486165965%_
                             _%hd165485165968%_
                             _%tl165484165970%_
                             _%e165489165973%_
                             _%hd165488165976%_
                             _%tl165487165978%_
                             _%e165492165981%_
                             _%hd165491165984%_
                             _%tl165490165986%_
                             _%e165495165989%_
                             _%hd165494165992%_
                             _%tl165493165994%_
                             _%e165498165997%_
                             _%hd165497166000%_
                             _%tl165496166002%_
                             _%e165501166005%_
                             _%hd165500166008%_
                             _%tl165499166010%_
                             _%e165504166013%_
                             _%hd165503166016%_
                             _%tl165502166018%_))))
                     (_%__match171230171231%_
                      (lambda (_%e165432166078%_
                               _%hd165431166081%_
                               _%tl165430166083%_
                               _%e165435166086%_
                               _%hd165434166089%_
                               _%tl165433166091%_
                               _%e165438166094%_
                               _%hd165437166097%_
                               _%tl165436166099%_
                               _%e165441166102%_
                               _%hd165440166105%_
                               _%tl165439166107%_
                               _%e165444166110%_
                               _%hd165443166113%_
                               _%tl165442166115%_
                               _%e165447166118%_
                               _%hd165446166121%_
                               _%tl165445166123%_
                               _%e165450166126%_
                               _%hd165449166129%_
                               _%tl165448166131%_
                               _%e165453166134%_
                               _%hd165452166137%_
                               _%tl165451166139%_
                               _%e165456166142%_
                               _%hd165455166145%_
                               _%tl165454166147%_
                               _%e165459166150%_
                               _%hd165458166153%_
                               _%tl165457166155%_
                               _%e165462166158%_
                               _%hd165461166161%_
                               _%tl165460166163%_
                               _%e165465166166%_
                               _%hd165464166169%_
                               _%tl165463166171%_
                               _%e165468166174%_
                               _%hd165467166177%_
                               _%tl165466166179%_
                               _%__splice171023171024%_
                               _%target165469166182%_
                               _%tl165471166184%_)
                        (letrec ((_%loop165472166187%_
                                  (lambda (_%hd165470166190%_
                                           _%args165476166192%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165470166190%_))
                                        (let ((_%e165473166195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165470166190%_))))
                                          (let ((_%lp-tl165475166200%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165473166195%_)))
                                                (_%lp-hd165474166198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165473166195%_))))
                                            (let ((__tmp171682
                                                   (cons _%lp-hd165474166198%_
                                                         _%args165476166192%_)))
                                              (declare (not safe))
                                              (_%loop165472166187%_
                                               _%lp-tl165475166200%_
                                               __tmp171682))))
                                        (let ((_%args165477166203%_
                                               (reverse _%args165476166192%_)))
                                          (let ((_%L166206%_
                                                 _%args165477166203%_)
                                                (_%L166207%_
                                                 _%hd165467166177%_)
                                                (_%L166208%_
                                                 _%hd165458166153%_)
                                                (_%L166209%_
                                                 _%hd165449166129%_)
                                                (_%L166210%_
                                                 _%hd165440166105%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166210%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166209%_
                                                        'call-method))
                                                     (let ((__tmp171683
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165369%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166208%_
                                                        __tmp171683)))
                                                (_%__kont171021171022%_
                                                 _%L166206%_
                                                 _%L166207%_
                                                 _%L166208%_
                                                 _%L166209%_
                                                 _%L166210%_)
                                                (_%__kont171033171034%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop165472166187%_
                             _%target165469166182%_
                             '())))))
                     (_%__match171188171189%_
                      (lambda (_%e165432166078%_
                               _%hd165431166081%_
                               _%tl165430166083%_
                               _%e165435166086%_
                               _%hd165434166089%_
                               _%tl165433166091%_
                               _%e165438166094%_
                               _%hd165437166097%_
                               _%tl165436166099%_
                               _%e165441166102%_
                               _%hd165440166105%_
                               _%tl165439166107%_
                               _%e165444166110%_
                               _%hd165443166113%_
                               _%tl165442166115%_
                               _%e165447166118%_
                               _%hd165446166121%_
                               _%tl165445166123%_
                               _%e165450166126%_
                               _%hd165449166129%_
                               _%tl165448166131%_
                               _%e165453166134%_
                               _%hd165452166137%_
                               _%tl165451166139%_
                               _%e165456166142%_
                               _%hd165455166145%_
                               _%tl165454166147%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd165455166145%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165454166147%_))
                                (let ((_%e165459166150%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165454166147%_))))
                                  (let ((_%tl165457166155%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165459166150%_)))
                                        (_%hd165458166153%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165459166150%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165457166155%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165451166139%_))
                                            (let ((_%e165462166158%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165451166139%_))))
                                              (let ((_%tl165460166163%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165462166158%_)))
                                                    (_%hd165461166161%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165462166158%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd165461166161%_))
                                                    (let ((_%e165465166166%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd165461166161%_))))
                                                      (let ((_%tl165463166171%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165465166166%_)))
                    (_%hd165464166169%_
                     (let () (declare (not safe)) (##car _%e165465166166%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd165464166169%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd165464166169%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165463166171%_))
                            (let ((_%e165468166174%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165463166171%_))))
                              (let ((_%tl165466166179%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165468166174%_)))
                                    (_%hd165467166177%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165468166174%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165466166179%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl165460166163%_))
                                        (let ((_%__splice171023171024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl165460166163%_
                                                  '0))))
                                          (let ((_%tl165471166184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171023171024%_
                                                    '1)))
                                                (_%target165469166182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171023171024%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165471166184%_))
                                                (_%__match171230171231%_
                                                 _%e165432166078%_
                                                 _%hd165431166081%_
                                                 _%tl165430166083%_
                                                 _%e165435166086%_
                                                 _%hd165434166089%_
                                                 _%tl165433166091%_
                                                 _%e165438166094%_
                                                 _%hd165437166097%_
                                                 _%tl165436166099%_
                                                 _%e165441166102%_
                                                 _%hd165440166105%_
                                                 _%tl165439166107%_
                                                 _%e165444166110%_
                                                 _%hd165443166113%_
                                                 _%tl165442166115%_
                                                 _%e165447166118%_
                                                 _%hd165446166121%_
                                                 _%tl165445166123%_
                                                 _%e165450166126%_
                                                 _%hd165449166129%_
                                                 _%tl165448166131%_
                                                 _%e165453166134%_
                                                 _%hd165452166137%_
                                                 _%tl165451166139%_
                                                 _%e165456166142%_
                                                 _%hd165455166145%_
                                                 _%tl165454166147%_
                                                 _%e165459166150%_
                                                 _%hd165458166153%_
                                                 _%tl165457166155%_
                                                 _%e165462166158%_
                                                 _%hd165461166161%_
                                                 _%tl165460166163%_
                                                 _%e165465166166%_
                                                 _%hd165464166169%_
                                                 _%tl165463166171%_
                                                 _%e165468166174%_
                                                 _%hd165467166177%_
                                                 _%tl165466166179%_
                                                 _%__splice171023171024%_
                                                 _%target165469166182%_
                                                 _%tl165471166184%_)
                                                (_%__kont171033171034%_))))
                                        (_%__kont171033171034%_))
                                    (_%__kont171033171034%_))))
                            (_%__kont171033171034%_))
                        (_%__kont171033171034%_))
                    (_%__kont171033171034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171033171034%_))))
                                            (_%__match171512171513%_
                                             _%e165432166078%_
                                             _%hd165431166081%_
                                             _%tl165430166083%_
                                             _%e165435166086%_
                                             _%hd165434166089%_
                                             _%tl165433166091%_
                                             _%e165438166094%_
                                             _%hd165437166097%_
                                             _%tl165436166099%_
                                             _%e165441166102%_
                                             _%hd165440166105%_
                                             _%tl165439166107%_
                                             _%e165444166110%_
                                             _%hd165443166113%_
                                             _%tl165442166115%_
                                             _%e165447166118%_
                                             _%hd165446166121%_
                                             _%tl165445166123%_
                                             _%e165450166126%_
                                             _%hd165449166129%_
                                             _%tl165448166131%_
                                             _%e165453166134%_
                                             _%hd165452166137%_
                                             _%tl165451166139%_))
                                        (_%__match171512171513%_
                                         _%e165432166078%_
                                         _%hd165431166081%_
                                         _%tl165430166083%_
                                         _%e165435166086%_
                                         _%hd165434166089%_
                                         _%tl165433166091%_
                                         _%e165438166094%_
                                         _%hd165437166097%_
                                         _%tl165436166099%_
                                         _%e165441166102%_
                                         _%hd165440166105%_
                                         _%tl165439166107%_
                                         _%e165444166110%_
                                         _%hd165443166113%_
                                         _%tl165442166115%_
                                         _%e165447166118%_
                                         _%hd165446166121%_
                                         _%tl165445166123%_
                                         _%e165450166126%_
                                         _%hd165449166129%_
                                         _%tl165448166131%_
                                         _%e165453166134%_
                                         _%hd165452166137%_
                                         _%tl165451166139%_))))
                                (_%__match171512171513%_
                                 _%e165432166078%_
                                 _%hd165431166081%_
                                 _%tl165430166083%_
                                 _%e165435166086%_
                                 _%hd165434166089%_
                                 _%tl165433166091%_
                                 _%e165438166094%_
                                 _%hd165437166097%_
                                 _%tl165436166099%_
                                 _%e165441166102%_
                                 _%hd165440166105%_
                                 _%tl165439166107%_
                                 _%e165444166110%_
                                 _%hd165443166113%_
                                 _%tl165442166115%_
                                 _%e165447166118%_
                                 _%hd165446166121%_
                                 _%tl165445166123%_
                                 _%e165450166126%_
                                 _%hd165449166129%_
                                 _%tl165448166131%_
                                 _%e165453166134%_
                                 _%hd165452166137%_
                                 _%tl165451166139%_))
                            (_%__match171298171299%_
                             _%e165432166078%_
                             _%hd165431166081%_
                             _%tl165430166083%_
                             _%e165435166086%_
                             _%hd165434166089%_
                             _%tl165433166091%_
                             _%e165438166094%_
                             _%hd165437166097%_
                             _%tl165436166099%_
                             _%e165441166102%_
                             _%hd165440166105%_
                             _%tl165439166107%_
                             _%e165444166110%_
                             _%hd165443166113%_
                             _%tl165442166115%_
                             _%e165447166118%_
                             _%hd165446166121%_
                             _%tl165445166123%_
                             _%e165450166126%_
                             _%hd165449166129%_
                             _%tl165448166131%_
                             _%e165453166134%_
                             _%hd165452166137%_
                             _%tl165451166139%_
                             _%e165456166142%_
                             _%hd165455166145%_
                             _%tl165454166147%_))))
                     (_%__match171120171121%_
                      (lambda (_%e165388166270%_
                               _%hd165387166273%_
                               _%tl165386166275%_
                               _%e165391166278%_
                               _%hd165390166281%_
                               _%tl165389166283%_
                               _%e165394166286%_
                               _%hd165393166289%_
                               _%tl165392166291%_
                               _%e165397166294%_
                               _%hd165396166297%_
                               _%tl165395166299%_
                               _%e165400166302%_
                               _%hd165399166305%_
                               _%tl165398166307%_
                               _%e165403166310%_
                               _%hd165402166313%_
                               _%tl165401166315%_
                               _%e165406166318%_
                               _%hd165405166321%_
                               _%tl165404166323%_
                               _%e165409166326%_
                               _%hd165408166329%_
                               _%tl165407166331%_
                               _%e165412166334%_
                               _%hd165411166337%_
                               _%tl165410166339%_
                               _%e165415166342%_
                               _%hd165414166345%_
                               _%tl165413166347%_
                               _%__splice171019171020%_
                               _%target165416166350%_
                               _%tl165418166352%_)
                        (letrec ((_%loop165419166355%_
                                  (lambda (_%hd165417166358%_
                                           _%args165423166360%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165417166358%_))
                                        (let ((_%e165420166363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165417166358%_))))
                                          (let ((_%lp-tl165422166368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165420166363%_)))
                                                (_%lp-hd165421166366%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165420166363%_))))
                                            (let ((__tmp171684
                                                   (cons _%lp-hd165421166366%_
                                                         _%args165423166360%_)))
                                              (declare (not safe))
                                              (_%loop165419166355%_
                                               _%lp-tl165422166368%_
                                               __tmp171684))))
                                        (let ((_%args165424166371%_
                                               (reverse _%args165423166360%_)))
                                          (let ((_%L166374%_
                                                 _%args165424166371%_)
                                                (_%L166375%_
                                                 _%hd165414166345%_)
                                                (_%L166376%_
                                                 _%hd165405166321%_)
                                                (_%L166377%_
                                                 _%hd165396166297%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166377%_
                                                        'call-method))
                                                     (let ((__tmp171685
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165369%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166376%_
                                                        __tmp171685)))
                                                (_%__kont171017171018%_
                                                 _%L166374%_
                                                 _%L166375%_
                                                 _%L166376%_
                                                 _%L166377%_)
                                                (_%__match171308171309%_
                                                 _%e165388166270%_
                                                 _%hd165387166273%_
                                                 _%tl165386166275%_
                                                 _%e165391166278%_
                                                 _%hd165390166281%_
                                                 _%tl165389166283%_
                                                 _%e165394166286%_
                                                 _%hd165393166289%_
                                                 _%tl165392166291%_
                                                 _%e165397166294%_
                                                 _%hd165396166297%_
                                                 _%tl165395166299%_
                                                 _%e165400166302%_
                                                 _%hd165399166305%_
                                                 _%tl165398166307%_
                                                 _%e165403166310%_
                                                 _%hd165402166313%_
                                                 _%tl165401166315%_
                                                 _%e165406166318%_
                                                 _%hd165405166321%_
                                                 _%tl165404166323%_
                                                 _%e165409166326%_
                                                 _%hd165408166329%_
                                                 _%tl165407166331%_
                                                 _%e165412166334%_
                                                 _%hd165411166337%_
                                                 _%tl165410166339%_
                                                 _%e165415166342%_
                                                 _%hd165414166345%_
                                                 _%tl165413166347%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop165419166355%_
                             _%target165416166350%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171015171016%_))
                    (let ((_%e165388166270%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171015171016%_))))
                      (let ((_%tl165386166275%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165388166270%_)))
                            (_%hd165387166273%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165388166270%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165386166275%_))
                            (let ((_%e165391166278%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165386166275%_))))
                              (let ((_%tl165389166283%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165391166278%_)))
                                    (_%hd165390166281%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165391166278%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd165390166281%_))
                                    (let ((_%e165394166286%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd165390166281%_))))
                                      (let ((_%tl165392166291%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e165394166286%_)))
                                            (_%hd165393166289%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e165394166286%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd165393166289%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd165393166289%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl165392166291%_))
                                                    (let ((_%e165397166294%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl165392166291%_))))
                                                      (let ((_%tl165395166299%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165397166294%_)))
                    (_%hd165396166297%_
                     (let () (declare (not safe)) (##car _%e165397166294%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl165395166299%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl165389166283%_))
                        (let ((_%e165400166302%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl165389166283%_))))
                          (let ((_%tl165398166307%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165400166302%_)))
                                (_%hd165399166305%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165400166302%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd165399166305%_))
                                (let ((_%e165403166310%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd165399166305%_))))
                                  (let ((_%tl165401166315%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165403166310%_)))
                                        (_%hd165402166313%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165403166310%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd165402166313%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd165402166313%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165401166315%_))
                                                (let ((_%e165406166318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165401166315%_))))
                                                  (let ((_%tl165404166323%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165406166318%_)))
                                                        (_%hd165405166321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165406166318%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165404166323%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl165398166307%_))
                                                            (let ((_%e165409166326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165398166307%_))))
                      (let ((_%tl165407166331%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165409166326%_)))
                            (_%hd165408166329%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165409166326%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd165408166329%_))
                            (let ((_%e165412166334%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd165408166329%_))))
                              (let ((_%tl165410166339%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165412166334%_)))
                                    (_%hd165411166337%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165412166334%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd165411166337%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd165411166337%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165410166339%_))
                                            (let ((_%e165415166342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165410166339%_))))
                                              (let ((_%tl165413166347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165415166342%_)))
                                                    (_%hd165414166345%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165415166342%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl165413166347%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl165407166331%_))
                                                        (let ((_%__splice171019171020%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl165407166331%_ '0))))
                  (let ((_%tl165418166352%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171019171020%_ '1)))
                        (_%target165416166350%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171019171020%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl165418166352%_))
                        (_%__match171120171121%_
                         _%e165388166270%_
                         _%hd165387166273%_
                         _%tl165386166275%_
                         _%e165391166278%_
                         _%hd165390166281%_
                         _%tl165389166283%_
                         _%e165394166286%_
                         _%hd165393166289%_
                         _%tl165392166291%_
                         _%e165397166294%_
                         _%hd165396166297%_
                         _%tl165395166299%_
                         _%e165400166302%_
                         _%hd165399166305%_
                         _%tl165398166307%_
                         _%e165403166310%_
                         _%hd165402166313%_
                         _%tl165401166315%_
                         _%e165406166318%_
                         _%hd165405166321%_
                         _%tl165404166323%_
                         _%e165409166326%_
                         _%hd165408166329%_
                         _%tl165407166331%_
                         _%e165412166334%_
                         _%hd165411166337%_
                         _%tl165410166339%_
                         _%e165415166342%_
                         _%hd165414166345%_
                         _%tl165413166347%_
                         _%__splice171019171020%_
                         _%target165416166350%_
                         _%tl165418166352%_)
                        (_%__match171308171309%_
                         _%e165388166270%_
                         _%hd165387166273%_
                         _%tl165386166275%_
                         _%e165391166278%_
                         _%hd165390166281%_
                         _%tl165389166283%_
                         _%e165394166286%_
                         _%hd165393166289%_
                         _%tl165392166291%_
                         _%e165397166294%_
                         _%hd165396166297%_
                         _%tl165395166299%_
                         _%e165400166302%_
                         _%hd165399166305%_
                         _%tl165398166307%_
                         _%e165403166310%_
                         _%hd165402166313%_
                         _%tl165401166315%_
                         _%e165406166318%_
                         _%hd165405166321%_
                         _%tl165404166323%_
                         _%e165409166326%_
                         _%hd165408166329%_
                         _%tl165407166331%_
                         _%e165412166334%_
                         _%hd165411166337%_
                         _%tl165410166339%_
                         _%e165415166342%_
                         _%hd165414166345%_
                         _%tl165413166347%_))))
                (_%__match171308171309%_
                 _%e165388166270%_
                 _%hd165387166273%_
                 _%tl165386166275%_
                 _%e165391166278%_
                 _%hd165390166281%_
                 _%tl165389166283%_
                 _%e165394166286%_
                 _%hd165393166289%_
                 _%tl165392166291%_
                 _%e165397166294%_
                 _%hd165396166297%_
                 _%tl165395166299%_
                 _%e165400166302%_
                 _%hd165399166305%_
                 _%tl165398166307%_
                 _%e165403166310%_
                 _%hd165402166313%_
                 _%tl165401166315%_
                 _%e165406166318%_
                 _%hd165405166321%_
                 _%tl165404166323%_
                 _%e165409166326%_
                 _%hd165408166329%_
                 _%tl165407166331%_
                 _%e165412166334%_
                 _%hd165411166337%_
                 _%tl165410166339%_
                 _%e165415166342%_
                 _%hd165414166345%_
                 _%tl165413166347%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171512171513%_
                                                     _%e165388166270%_
                                                     _%hd165387166273%_
                                                     _%tl165386166275%_
                                                     _%e165391166278%_
                                                     _%hd165390166281%_
                                                     _%tl165389166283%_
                                                     _%e165394166286%_
                                                     _%hd165393166289%_
                                                     _%tl165392166291%_
                                                     _%e165397166294%_
                                                     _%hd165396166297%_
                                                     _%tl165395166299%_
                                                     _%e165400166302%_
                                                     _%hd165399166305%_
                                                     _%tl165398166307%_
                                                     _%e165403166310%_
                                                     _%hd165402166313%_
                                                     _%tl165401166315%_
                                                     _%e165406166318%_
                                                     _%hd165405166321%_
                                                     _%tl165404166323%_
                                                     _%e165409166326%_
                                                     _%hd165408166329%_
                                                     _%tl165407166331%_))))
                                            (_%__match171512171513%_
                                             _%e165388166270%_
                                             _%hd165387166273%_
                                             _%tl165386166275%_
                                             _%e165391166278%_
                                             _%hd165390166281%_
                                             _%tl165389166283%_
                                             _%e165394166286%_
                                             _%hd165393166289%_
                                             _%tl165392166291%_
                                             _%e165397166294%_
                                             _%hd165396166297%_
                                             _%tl165395166299%_
                                             _%e165400166302%_
                                             _%hd165399166305%_
                                             _%tl165398166307%_
                                             _%e165403166310%_
                                             _%hd165402166313%_
                                             _%tl165401166315%_
                                             _%e165406166318%_
                                             _%hd165405166321%_
                                             _%tl165404166323%_
                                             _%e165409166326%_
                                             _%hd165408166329%_
                                             _%tl165407166331%_))
                                        (_%__match171188171189%_
                                         _%e165388166270%_
                                         _%hd165387166273%_
                                         _%tl165386166275%_
                                         _%e165391166278%_
                                         _%hd165390166281%_
                                         _%tl165389166283%_
                                         _%e165394166286%_
                                         _%hd165393166289%_
                                         _%tl165392166291%_
                                         _%e165397166294%_
                                         _%hd165396166297%_
                                         _%tl165395166299%_
                                         _%e165400166302%_
                                         _%hd165399166305%_
                                         _%tl165398166307%_
                                         _%e165403166310%_
                                         _%hd165402166313%_
                                         _%tl165401166315%_
                                         _%e165406166318%_
                                         _%hd165405166321%_
                                         _%tl165404166323%_
                                         _%e165409166326%_
                                         _%hd165408166329%_
                                         _%tl165407166331%_
                                         _%e165412166334%_
                                         _%hd165411166337%_
                                         _%tl165410166339%_))
                                    (_%__match171512171513%_
                                     _%e165388166270%_
                                     _%hd165387166273%_
                                     _%tl165386166275%_
                                     _%e165391166278%_
                                     _%hd165390166281%_
                                     _%tl165389166283%_
                                     _%e165394166286%_
                                     _%hd165393166289%_
                                     _%tl165392166291%_
                                     _%e165397166294%_
                                     _%hd165396166297%_
                                     _%tl165395166299%_
                                     _%e165400166302%_
                                     _%hd165399166305%_
                                     _%tl165398166307%_
                                     _%e165403166310%_
                                     _%hd165402166313%_
                                     _%tl165401166315%_
                                     _%e165406166318%_
                                     _%hd165405166321%_
                                     _%tl165404166323%_
                                     _%e165409166326%_
                                     _%hd165408166329%_
                                     _%tl165407166331%_))))
                            (_%__match171512171513%_
                             _%e165388166270%_
                             _%hd165387166273%_
                             _%tl165386166275%_
                             _%e165391166278%_
                             _%hd165390166281%_
                             _%tl165389166283%_
                             _%e165394166286%_
                             _%hd165393166289%_
                             _%tl165392166291%_
                             _%e165397166294%_
                             _%hd165396166297%_
                             _%tl165395166299%_
                             _%e165400166302%_
                             _%hd165399166305%_
                             _%tl165398166307%_
                             _%e165403166310%_
                             _%hd165402166313%_
                             _%tl165401166315%_
                             _%e165406166318%_
                             _%hd165405166321%_
                             _%tl165404166323%_
                             _%e165409166326%_
                             _%hd165408166329%_
                             _%tl165407166331%_))))
                    (_%__match171450171451%_
                     _%e165388166270%_
                     _%hd165387166273%_
                     _%tl165386166275%_
                     _%e165391166278%_
                     _%hd165390166281%_
                     _%tl165389166283%_
                     _%e165394166286%_
                     _%hd165393166289%_
                     _%tl165392166291%_
                     _%e165397166294%_
                     _%hd165396166297%_
                     _%tl165395166299%_
                     _%e165400166302%_
                     _%hd165399166305%_
                     _%tl165398166307%_
                     _%e165403166310%_
                     _%hd165402166313%_
                     _%tl165401166315%_
                     _%e165406166318%_
                     _%hd165405166321%_
                     _%tl165404166323%_))
                (_%__kont171033171034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171033171034%_))
                                            (_%__kont171033171034%_))
                                        (_%__kont171033171034%_))))
                                (_%__kont171033171034%_))))
                        (_%__kont171033171034%_))
                    (_%__kont171033171034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171033171034%_))
                                                (_%__kont171033171034%_))
                                            (_%__kont171033171034%_))))
                                    (_%__kont171033171034%_))))
                            (_%__kont171033171034%_))))
                    (_%__kont171033171034%_))))))))))
