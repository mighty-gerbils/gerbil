(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712573434)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171585 (list gxc#::identity::t))
            (__tmp171584 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171585
         '()
         __tmp171584
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args170450%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args170450%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171586
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
        (__make-promise __tmp171586)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx170442%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self170445%_
                (let ((__obj171579
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171579))
               (__tmp171587
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self170445%_ _%stx170442%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171587
           gxc#current-compile-method
           _%self170445%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171589 (list gxc#::void::t))
            (__tmp171588 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171589
         '(receiver methods slots)
         __tmp171588
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args170439%_
        (apply make-instance gxc#::collect-object-refs::t _%$args170439%_)))
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
      (let ((__tmp171590
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
        (__make-promise __tmp171590)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords170405%_
               _%receiver170400170406%_
               _%methods170401170408%_
               _%slots170402170410%_
               _%stx170412%_)
        (let* ((_%receiver170415%_
                (if (eq? _%receiver170400170406%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170400170406%_))
               (_%methods170417%_
                (if (eq? _%methods170401170408%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170401170408%_))
               (_%slots170419%_
                (if (eq? _%slots170402170410%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170402170410%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self170421%_
                  (let ((__obj171581
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
                       __obj171581
                       _%receiver170415%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171581
                       _%methods170417%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171581
                       _%slots170419%_
                       '3
                       '#f
                       '#f))
                    __obj171581))
                 (__tmp171591
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170421%_ _%stx170412%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171591
             gxc#current-compile-method
             _%self170421%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords170428%_ . _%args170429%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords170428%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170428%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170428%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170428%_
                  'slots:
                  absent-value))
               _%args170429%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args170403170435%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args170403170435%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171593 (list gxc#::basic-xform-expression::t))
            (__tmp171592 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171593
         '(receiver klass methods slots)
         __tmp171592
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args170396%_
        (apply make-instance gxc#::subst-object-refs::t _%$args170396%_)))
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
      (let ((__tmp171594
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
        (__make-promise __tmp171594)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords170358%_
               _%receiver170352170359%_
               _%klass170353170361%_
               _%methods170354170363%_
               _%slots170355170365%_
               _%stx170367%_)
        (let* ((_%receiver170370%_
                (if (eq? _%receiver170352170359%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170352170359%_))
               (_%klass170372%_
                (if (eq? _%klass170353170361%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass170353170361%_))
               (_%methods170374%_
                (if (eq? _%methods170354170363%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170354170363%_))
               (_%slots170376%_
                (if (eq? _%slots170355170365%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170355170365%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self170378%_
                  (let ((__obj171583
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
                       __obj171583
                       _%receiver170370%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171583
                       _%klass170372%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171583
                       _%methods170374%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171583
                       _%slots170376%_
                       '4
                       '#f
                       '#f))
                    __obj171583))
                 (__tmp171595
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170378%_ _%stx170367%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171595
             gxc#current-compile-method
             _%self170378%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords170385%_ . _%args170386%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords170385%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170385%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170385%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170385%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170385%_
                  'slots:
                  absent-value))
               _%args170386%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args170356170392%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args170356170392%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167533%_ _%stx167534%_)
        (letrec ((_%generate-method-bind167536%_
                  (lambda (_%$klass170344%_
                           _%$method-table170345%_
                           _%id170346%_
                           _%$id170347%_)
                    (let ((_%$tmp170349%_
                           (let ((__tmp171596
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171596))))
                      (cons (cons _%$id170347%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp170349%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table170345%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id170346%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp170349%_ '()))
                    (cons (cons '%#ref (cons _%$tmp170349%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id170346%_
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
                 (_%generate-slot-bind167537%_
                  (lambda (_%$klass170338%_ _%id170339%_ _%$id170340%_)
                    (let ((_%$tmp170342%_
                           (let ((__tmp171597
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171597))))
                      (cons (cons _%$id170340%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp170342%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass170338%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id170339%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp170342%_ '()))
                        (cons (cons '%#ref (cons _%$tmp170342%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id170339%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167538%_
                  (lambda (_%$klass170332%_
                           _%$method-table170333%_
                           _%methods-bind170334%_
                           _%slots-bind170335%_
                           _%specializer-impl170336%_)
                    (let ((__tmp171598
                           (cons '%#lambda
                                 (cons (cons _%$klass170332%_
                                             (cons _%$method-table170333%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind170335%_
                                                            _%methods-bind170334%_))
                                                         (cons _%specializer-impl170336%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171598 _%stx167534%_))))
                 (_%generate-specializer-def167539%_
                  (lambda (_%id170328%_
                           _%specializer-id170329%_
                           _%specializer-impl170330%_)
                    (let ((__tmp171599
                           (cons '%#begin
                                 (cons _%stx167534%_
                                       (cons (let ((__tmp171600
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id170329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl170330%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171600
                                                _%stx167534%_))
                                             (cons (let ((__tmp171601
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id170328%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id170329%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171601
                                                      _%stx167534%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171599 _%stx167534%_)))))
          (let* ((_%__stx170539170540%_ _%stx167534%_)
                 (_%g167542167562%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170539170540%_)))))
            (let ((_%__kont170541170542%_
                   (lambda (_%L167606%_ _%L167607%_)
                     (let ((_%method-calls167626%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167627%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167628%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167630%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167626%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167627%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167606%_))
                             (let* ((_%__stx170453170454%_ _%L167606%_)
                                    (_%g168018168036%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx170453170454%_)))))
                               (let ((_%__kont170455170456%_
                                      (lambda (_%L168072%_
                                               _%L168073%_
                                               _%L168074%_)
                                        (for-each
                                         (lambda (_%g168090168092%_)
                                           (gxc#apply-collect-object-refs__%
                                            '#f
                                            _%L168074%_
                                            _%method-calls167626%_
                                            _%slot-refs167627%_
                                            _%g168090168092%_))
                                         _%L168072%_)
                                        (if (_%no-specializer?167630%_)
                                            _%stx167534%_
                                            (let* ((_%specializer-id168101%_
                                                    (let* ((_%id168095%_
                                                            (let ((__tmp171602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%L167607%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp171602 '"::specialize")))
                   (_%specializer-id168098%_
                    (let ((__tmp171603
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _%stx167534%_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _%id168095%_ __tmp171603))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _%specializer-id168098%_))
              _%specializer-id168098%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$klass168103%_
                                                    (let ((__tmp171604
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__klass))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171604)))
                                                   (_%$method-table168105%_
                                                    (let ((__tmp171605
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__method-table))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171605)))
                                                   (_%methods168107%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%method-calls167626%_)))
                                                   (_%$methods168111%_
                                                    (map (lambda (_%id168109%_)
                                                           (let ((__tmp171606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168109%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171606)))
                 _%methods168107%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168120%_
                                                    (for-each
                                                     (lambda (_%g168112168115%_
                                                              _%g168113168117%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%method-calls167626%_
                                                          _%g168112168115%_
                                                          _%g168113168117%_)))
                                                     _%methods168107%_
                                                     _%$methods168111%_))
                                                   (_%methods-bind168130%_
                                                    (map (lambda (_%g168122168125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168123168127%_)
                   (_%generate-method-bind167536%_
                    _%$klass168103%_
                    _%$method-table168105%_
                    _%g168122168125%_
                    _%g168123168127%_))
                 _%methods168107%_
                 _%$methods168111%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%slots168132%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%slot-refs167627%_)))
                                                   (_%$slots168136%_
                                                    (map (lambda (_%id168134%_)
                                                           (let ((__tmp171607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168134%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171607)))
                 _%slots168132%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168145%_
                                                    (for-each
                                                     (lambda (_%g168137168140%_
                                                              _%g168138168142%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%slot-refs167627%_
                                                          _%g168137168140%_
                                                          _%g168138168142%_)))
                                                     _%slots168132%_
                                                     _%$slots168136%_))
                                                   (_%slots-bind168154%_
                                                    (map (lambda (_%g168146168149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168147168151%_)
                   (_%generate-slot-bind167537%_
                    _%$klass168103%_
                    _%g168146168149%_
                    _%g168147168151%_))
                 _%slots168132%_
                 _%$slots168136%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-body168160%_
                                                    (map (lambda (_%g168155168157%_)
                                                           (gxc#apply-subst-object-refs__%
                                                            '#f
                                                            _%L168074%_
                                                            _%$klass168103%_
                                                            _%method-calls167626%_
                                                            _%slot-refs167627%_
                                                            _%g168155168157%_))
                                                         _%L168072%_))
                                                   (_%specializer-impl168162%_
                                                    (let ((__tmp171608
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons _%L168074%_ _%L168073%_)
                               _%specializer-body168160%_))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp171608 _%stx167534%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-impl168164%_
                                                    (_%generate-specializer-impl167538%_
                                                     _%$klass168103%_
                                                     _%$method-table168105%_
                                                     _%methods-bind168130%_
                                                     _%slots-bind168154%_
                                                     _%specializer-impl168162%_)))
                                              (let ((__tmp171610
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L167607%_)))
                                                    (__tmp171609
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%specializer-id168101%_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp171610
                                                 '" => "
                                                 __tmp171609))
                                              (_%generate-specializer-def167539%_
                                               _%L167607%_
                                               _%specializer-id168101%_
                                               _%specializer-impl168164%_)))))
                                     (_%__kont170457170458%_
                                      (lambda () _%stx167534%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx170453170454%_))
                                     (let ((_%e168025168048%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx170453170454%_))))
                                       (let ((_%tl168023168053%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168025168048%_)))
                                             (_%hd168024168051%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168025168048%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168023168053%_))
                                             (let ((_%e168028168056%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168023168053%_))))
                                               (let ((_%tl168026168061%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168028168056%_)))
                                                     (_%hd168027168059%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168028168056%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd168027168059%_))
                                                     (let ((_%e168031168064%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd168027168059%_))))
                                                       (let ((_%tl168029168069%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168031168064%_)))
                     (_%hd168030168067%_
                      (let () (declare (not safe)) (##car _%e168031168064%_))))
                 (_%__kont170455170456%_
                  _%tl168026168061%_
                  _%tl168029168069%_
                  _%hd168030168067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont170457170458%_))))
                                             (_%__kont170457170458%_))))
                                     (_%__kont170457170458%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167606%_))
                                 (let* ((_%g168171168190%_
                                         (lambda (_%g168172168187%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g168172168187%_))))
                                        (_%g168170168477%_
                                         (lambda (_%g168172168193%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g168172168193%_))
                                               (let ((_%e168176168195%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g168172168193%_))))
                                                 (let ((_%hd168175168198%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e168176168195%_)))
                                                       (_%tl168174168200%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e168176168195%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl168174168200%_))
                                                       (let ((_g171611_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl168174168200%_ '0))))
                 (begin
                   (let ((_g171612_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g171611_)
                                (##vector-length _g171611_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g171612_ 2)))
                         (error "Context expects 2 values" _g171612_)))
                   (let ((_%target168177168203%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171611_ 0)))
                         (_%tl168179168205%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171611_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168179168205%_))
                         (letrec ((_%loop168180168208%_
                                   (lambda (_%hd168178168211%_
                                            _%clause168184168213%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168178168211%_))
                                         (let ((_%e168181168216%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168178168211%_))))
                                           (let ((_%lp-hd168182168219%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168181168216%_)))
                                                 (_%lp-tl168183168221%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168181168216%_))))
                                             (_%loop168180168208%_
                                              _%lp-tl168183168221%_
                                              (cons _%lp-hd168182168219%_
                                                    _%clause168184168213%_))))
                                         (let ((_%clause168185168224%_
                                                (reverse _%clause168184168213%_)))
                                           ((lambda (_%L168227%_)
                                              (for-each
                                               (lambda (_%clause168241%_)
                                                 (let* ((_%__stx170479170480%_
                                                         _%clause168241%_)
                                                        (_%g168244168259%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx170479170480%_)))))
                                                   (let ((_%__kont170481170482%_
                                                          (lambda (_%L168287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L168288%_
                           _%L168289%_)
                    (for-each
                     (lambda (_%g168304168306%_)
                       (gxc#apply-collect-object-refs__%
                        '#f
                        _%L168289%_
                        _%method-calls167626%_
                        _%slot-refs167627%_
                        _%g168304168306%_))
                     _%L168287%_)))
                 (_%__kont170483170484%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx170479170480%_))
                                                         (let ((_%e168251168271%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx170479170480%_))))
                   (let ((_%tl168249168276%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168251168271%_)))
                         (_%hd168250168274%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168251168271%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd168250168274%_))
                         (let ((_%e168254168279%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd168250168274%_))))
                           (let ((_%tl168252168284%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e168254168279%_)))
                                 (_%hd168253168282%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e168254168279%_))))
                             (_%__kont170481170482%_
                              _%tl168249168276%_
                              _%tl168252168284%_
                              _%hd168253168282%_)))
                         (_%__kont170483170484%_))))
                 (_%__kont170483170484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp171613
                                                      (lambda (_%g168311168314%_
                                                               _%g168312168316%_)
                                                        (cons _%g168311168314%_
                                                              _%g168312168316%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171613
                                                  '()
                                                  _%L168227%_)))
                                              (if (_%no-specializer?167630%_)
                                                  _%stx167534%_
                                                  (let* ((_%specializer-id168325%_
                                                          (let* ((_%id168319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171614
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167607%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171614 '"::specialize")))
                         (_%specializer-id168322%_
                          (let ((__tmp171615
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167534%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id168319%_
                             __tmp171615))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id168322%_))
                    _%specializer-id168322%_))
                 (_%$klass168327%_
                  (let ((__tmp171616
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171616)))
                 (_%$method-table168329%_
                  (let ((__tmp171617
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171617)))
                 (_%methods168331%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167626%_)))
                 (_%$methods168335%_
                  (map (lambda (_%id168333%_)
                         (let ((__tmp171618 (gensym _%id168333%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171618)))
                       _%methods168331%_))
                 (_%_168344%_
                  (for-each
                   (lambda (_%g168336168339%_ _%g168337168341%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167626%_
                        _%g168336168339%_
                        _%g168337168341%_)))
                   _%methods168331%_
                   _%$methods168335%_))
                 (_%methods-bind168354%_
                  (map (lambda (_%g168346168349%_ _%g168347168351%_)
                         (_%generate-method-bind167536%_
                          _%$klass168327%_
                          _%$method-table168329%_
                          _%g168346168349%_
                          _%g168347168351%_))
                       _%methods168331%_
                       _%$methods168335%_))
                 (_%slots168356%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167627%_)))
                 (_%$slots168360%_
                  (map (lambda (_%id168358%_)
                         (let ((__tmp171619 (gensym _%id168358%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171619)))
                       _%slots168356%_))
                 (_%_168369%_
                  (for-each
                   (lambda (_%g168361168364%_ _%g168362168366%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167627%_
                        _%g168361168364%_
                        _%g168362168366%_)))
                   _%slots168356%_
                   _%$slots168360%_))
                 (_%slots-bind168378%_
                  (map (lambda (_%g168370168373%_ _%g168371168375%_)
                         (_%generate-slot-bind167537%_
                          _%$klass168327%_
                          _%g168370168373%_
                          _%g168371168375%_))
                       _%slots168356%_
                       _%$slots168360%_))
                 (_%specializer-clauses168470%_
                  (map (lambda (_%clause168380%_)
                         (let* ((_%__stx170499170500%_ _%clause168380%_)
                                (_%g168383168398%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx170499170500%_)))))
                           (let ((_%__kont170501170502%_
                                  (lambda (_%L168426%_ _%L168427%_ _%L168428%_)
                                    (let ((_%body168458%_
                                           (map (lambda (_%g168453168455%_)
                                                  (gxc#apply-subst-object-refs__%
                                                   '#f
                                                   _%L168428%_
                                                   _%$klass168327%_
                                                   _%method-calls167626%_
                                                   _%slot-refs167627%_
                                                   _%g168453168455%_))
                                                _%L168426%_)))
                                      (cons (cons _%L168428%_ _%L168427%_)
                                            _%body168458%_))))
                                 (_%__kont170503170504%_
                                  (lambda () _%clause168380%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx170499170500%_))
                                 (let ((_%e168390168410%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx170499170500%_))))
                                   (let ((_%tl168388168415%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168390168410%_)))
                                         (_%hd168389168413%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168390168410%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168389168413%_))
                                         (let ((_%e168393168418%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168389168413%_))))
                                           (let ((_%tl168391168423%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168393168418%_)))
                                                 (_%hd168392168421%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168393168418%_))))
                                             (_%__kont170501170502%_
                                              _%tl168388168415%_
                                              _%tl168391168423%_
                                              _%hd168392168421%_)))
                                         (_%__kont170503170504%_))))
                                 (_%__kont170503170504%_)))))
                       (let ((__tmp171620
                              (lambda (_%g168462168465%_ _%g168463168467%_)
                                (cons _%g168462168465%_ _%g168463168467%_))))
                         (declare (not safe))
                         (__foldr1 __tmp171620 '() _%L168227%_))))
                 (_%specializer-impl168472%_
                  (let ((__tmp171621
                         (cons '%#case-lambda _%specializer-clauses168470%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171621 _%stx167534%_)))
                 (_%specializer-impl168474%_
                  (_%generate-specializer-impl167538%_
                   _%$klass168327%_
                   _%$method-table168329%_
                   _%methods-bind168354%_
                   _%slots-bind168378%_
                   _%specializer-impl168472%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171623
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167607%_)))
                                                          (__tmp171622
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id168325%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171623
                                                       '" => "
                                                       __tmp171622))
                                                    (_%generate-specializer-def167539%_
                                                     _%L167607%_
                                                     _%specializer-id168325%_
                                                     _%specializer-impl168474%_))))
                                            _%clause168185168224%_))))))
                           (_%loop168180168208%_ _%target168177168203%_ '()))
                         (_%g168171168190%_ _%g168172168193%_)))))
               (_%g168171168190%_ _%g168172168193%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g168171168190%_
                                                _%g168172168193%_)))))
                                   (_%g168170168477%_ _%L167606%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167606%_))
                                     (let* ((_%g168481168511%_
                                             (lambda (_%g168482168508%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g168482168508%_))))
                                            (_%g168480169120%_
                                             (lambda (_%g168482168514%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g168482168514%_))
                                                   (let ((_%e168488168516%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g168482168514%_))))
                                                     (let ((_%hd168487168519%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e168488168516%_)))
                                                           (_%tl168486168521%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e168488168516%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl168486168521%_))
                                                           (let ((_%e168491168524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl168486168521%_))))
                     (let ((_%hd168490168527%_
                            (let ()
                              (declare (not safe))
                              (##car _%e168491168524%_)))
                           (_%tl168489168529%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e168491168524%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd168490168527%_))
                           (let ((_%e168494168532%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd168490168527%_))))
                             (let ((_%hd168493168535%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e168494168532%_)))
                                   (_%tl168492168537%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e168494168532%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd168493168535%_))
                                   (let ((_%e168497168540%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd168493168535%_))))
                                     (let ((_%hd168496168543%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e168497168540%_)))
                                           (_%tl168495168545%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e168497168540%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd168496168543%_))
                                           (let ((_%e168500168548%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd168496168543%_))))
                                             (let ((_%hd168499168551%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e168500168548%_)))
                                                   (_%tl168498168553%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e168500168548%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl168498168553%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl168495168545%_))
                                                       (let ((_%e168503168556%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl168495168545%_))))
                 (let ((_%hd168502168559%_
                        (let ()
                          (declare (not safe))
                          (##car _%e168503168556%_)))
                       (_%tl168501168561%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e168503168556%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl168501168561%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl168492168537%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl168489168529%_))
                               (let ((_%e168506168564%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl168489168529%_))))
                                 (let ((_%hd168505168567%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e168506168564%_)))
                                       (_%tl168504168569%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e168506168564%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl168504168569%_))
                                       ((lambda (_%L168572%_
                                                 _%L168573%_
                                                 _%L168574%_)
                                          (let* ((_%g168598168616%_
                                                  (lambda (_%g168599168613%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168599168613%_))))
                                                 (_%g168597168667%_
                                                  (lambda (_%g168599168619%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168599168619%_))
                                                        (let ((_%e168605168621%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168599168619%_))))
                  (let ((_%hd168604168624%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168605168621%_)))
                        (_%tl168603168626%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168605168621%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl168603168626%_))
                        (let ((_%e168608168629%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168603168626%_))))
                          (let ((_%hd168607168632%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168608168629%_)))
                                (_%tl168606168634%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168608168629%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd168607168632%_))
                                (let ((_%e168611168637%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd168607168632%_))))
                                  (let ((_%hd168610168640%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168611168637%_)))
                                        (_%tl168609168642%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168611168637%_))))
                                    ((lambda (_%L168645%_
                                              _%L168646%_
                                              _%L168647%_)
                                       (for-each
                                        (lambda (_%g168662168664%_)
                                          (gxc#apply-collect-object-refs__%
                                           '#f
                                           _%L168647%_
                                           _%method-calls167626%_
                                           _%slot-refs167627%_
                                           _%g168662168664%_))
                                        _%L168645%_))
                                     _%tl168606168634%_
                                     _%tl168609168642%_
                                     _%hd168610168640%_)))
                                (_%g168598168616%_ _%g168599168619%_))))
                        (_%g168598168616%_ _%g168599168619%_))))
                (_%g168598168616%_ _%g168599168619%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168597168667%_ _%L168573%_))
                                          (let* ((_%g168670168689%_
                                                  (lambda (_%g168671168686%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168671168686%_))))
                                                 (_%g168669168808%_
                                                  (lambda (_%g168671168692%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168671168692%_))
                                                        (let ((_%e168675168694%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168671168692%_))))
                  (let ((_%hd168674168697%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168675168694%_)))
                        (_%tl168673168699%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168675168694%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl168673168699%_))
                        (let ((_g171624_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl168673168699%_
                                  '0))))
                          (begin
                            (let ((_g171625_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g171624_)
                                         (##vector-length _g171624_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g171625_ 2)))
                                  (error "Context expects 2 values"
                                         _g171625_)))
                            (let ((_%target168676168702%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171624_ 0)))
                                  (_%tl168678168704%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171624_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168678168704%_))
                                  (letrec ((_%loop168679168707%_
                                            (lambda (_%hd168677168710%_
                                                     _%clause168683168712%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168677168710%_))
                                                  (let ((_%e168680168715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168677168710%_))))
                                                    (let ((_%lp-hd168681168718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168680168715%_)))
                                                          (_%lp-tl168682168720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168680168715%_))))
                                                      (_%loop168679168707%_
                                                       _%lp-tl168682168720%_
                                                       (cons _%lp-hd168681168718%_
                                                             _%clause168683168712%_))))
                                                  (let ((_%clause168684168723%_
                                                         (reverse _%clause168683168712%_)))
                                                    ((lambda (_%L168726%_)
                                                       (for-each
                                                        (lambda (_%clause168739%_)
                                                          (let* ((_%g168741168756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g168742168753%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g168742168753%_))))
                         (_%g168740168798%_
                          (lambda (_%g168742168759%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g168742168759%_))
                                (let ((_%e168748168761%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g168742168759%_))))
                                  (let ((_%hd168747168764%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168748168761%_)))
                                        (_%tl168746168766%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168748168761%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd168747168764%_))
                                        (let ((_%e168751168769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd168747168764%_))))
                                          (let ((_%hd168750168772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168751168769%_)))
                                                (_%tl168749168774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168751168769%_))))
                                            ((lambda (_%L168777%_
                                                      _%L168778%_
                                                      _%L168779%_)
                                               (for-each
                                                (lambda (_%g168793168795%_)
                                                  (gxc#apply-collect-object-refs__%
                                                   '#f
                                                   _%L168779%_
                                                   _%method-calls167626%_
                                                   _%slot-refs167627%_
                                                   _%g168793168795%_))
                                                _%L168777%_))
                                             _%tl168746168766%_
                                             _%tl168749168774%_
                                             _%hd168750168772%_)))
                                        (_%g168741168756%_
                                         _%g168742168759%_))))
                                (_%g168741168756%_ _%g168742168759%_)))))
                    (_%g168740168798%_ _%clause168739%_)))
                (let ((__tmp171626
                       (lambda (_%g168800168803%_ _%g168801168805%_)
                         (cons _%g168800168803%_ _%g168801168805%_))))
                  (declare (not safe))
                  (__foldr1 __tmp171626 '() _%L168726%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause168684168723%_))))))
                                    (_%loop168679168707%_
                                     _%target168676168702%_
                                     '()))
                                  (_%g168670168689%_ _%g168671168692%_)))))
                        (_%g168670168689%_ _%g168671168692%_))))
                (_%g168670168689%_ _%g168671168692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168669168808%_ _%L168572%_))
                                          (if (_%no-specializer?167630%_)
                                              _%stx167534%_
                                              (let* ((_%specializer-id168817%_
                                                      (let* ((_%id168811%_
                                                              (let ((__tmp171627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167607%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171627 '"::specialize")))
                     (_%specializer-id168814%_
                      (let ((__tmp171628
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167534%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id168811%_ __tmp171628))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id168814%_))
                _%specializer-id168814%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass168819%_
                                                      (let ((__tmp171629
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171629)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table168821%_
                                                      (let ((__tmp171630
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171630)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods168823%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167626%_)))
                                                     (_%$methods168827%_
                                                      (map (lambda (_%id168825%_)
                                                             (let ((__tmp171631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168825%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171631)))
                   _%methods168823%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168836%_
                                                      (for-each
                                                       (lambda (_%g168828168831%_
                                                                _%g168829168833%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167626%_
                                                            _%g168828168831%_
                                                            _%g168829168833%_)))
                                                       _%methods168823%_
                                                       _%$methods168827%_))
                                                     (_%methods-bind168846%_
                                                      (map (lambda (_%g168838168841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168839168843%_)
                     (_%generate-method-bind167536%_
                      _%$klass168819%_
                      _%$method-table168821%_
                      _%g168838168841%_
                      _%g168839168843%_))
                   _%methods168823%_
                   _%$methods168827%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots168848%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167627%_)))
                                                     (_%$slots168852%_
                                                      (map (lambda (_%id168850%_)
                                                             (let ((__tmp171632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168850%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171632)))
                   _%slots168848%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168861%_
                                                      (for-each
                                                       (lambda (_%g168853168856%_
                                                                _%g168854168858%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167627%_
                                                            _%g168853168856%_
                                                            _%g168854168858%_)))
                                                       _%slots168848%_
                                                       _%$slots168852%_))
                                                     (_%slots-bind168870%_
                                                      (map (lambda (_%g168862168865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168863168867%_)
                     (_%generate-slot-bind167537%_
                      _%$klass168819%_
                      _%g168862168865%_
                      _%g168863168867%_))
                   _%slots168848%_
                   _%$slots168852%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr168956%_
                                                      (let* ((_%g168872168890%_
                                                              (lambda (_%g168873168887%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g168873168887%_))))
                     (_%g168871168953%_
                      (lambda (_%g168873168893%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g168873168893%_))
                            (let ((_%e168879168895%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g168873168893%_))))
                              (let ((_%hd168878168898%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168879168895%_)))
                                    (_%tl168877168900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168879168895%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl168877168900%_))
                                    (let ((_%e168882168903%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl168877168900%_))))
                                      (let ((_%hd168881168906%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168882168903%_)))
                                            (_%tl168880168908%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168882168903%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd168881168906%_))
                                            (let ((_%e168885168911%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd168881168906%_))))
                                              (let ((_%hd168884168914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168885168911%_)))
                                                    (_%tl168883168916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168885168911%_))))
                                                ((lambda (_%L168919%_
                                                          _%L168920%_
                                                          _%L168921%_)
                                                   (let* ((_%body168951%_
                                                           (map (lambda (_%g168946168948%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%L168921%_
                           _%$klass168819%_
                           _%method-calls167626%_
                           _%slot-refs167627%_
                           _%g168946168948%_))
                        _%L168919%_))
                  (__tmp171633
                   (cons '%#lambda
                         (cons (cons _%L168921%_ _%L168920%_)
                               _%body168951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171633
                                                      _%L168573%_)))
                                                 _%tl168880168908%_
                                                 _%tl168883168916%_
                                                 _%hd168884168914%_)))
                                            (_%g168872168890%_
                                             _%g168873168893%_))))
                                    (_%g168872168890%_ _%g168873168893%_))))
                            (_%g168872168890%_ _%g168873168893%_)))))
                (_%g168871168953%_ _%L168573%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr169113%_
                                                      (let* ((_%g168958168977%_
                                                              (lambda (_%g168959168974%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g168959168974%_))))
                     (_%g168957169110%_
                      (lambda (_%g168959168980%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g168959168980%_))
                            (let ((_%e168963168982%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g168959168980%_))))
                              (let ((_%hd168962168985%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168963168982%_)))
                                    (_%tl168961168987%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168963168982%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl168961168987%_))
                                    (let ((_g171634_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl168961168987%_
                                              '0))))
                                      (begin
                                        (let ((_g171635_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g171634_)
                                                     (##vector-length
                                                      _g171634_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g171635_ 2)))
                                              (error "Context expects 2 values"
                                                     _g171635_)))
                                        (let ((_%target168964168990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171634_ 0)))
                                              (_%tl168966168992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171634_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168966168992%_))
                                              (letrec ((_%loop168967168995%_
                                                        (lambda (_%hd168965168998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause168971169000%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd168965168998%_))
                      (let ((_%e168968169003%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd168965168998%_))))
                        (let ((_%lp-hd168969169006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168968169003%_)))
                              (_%lp-tl168970169008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168968169003%_))))
                          (_%loop168967168995%_
                           _%lp-tl168970169008%_
                           (cons _%lp-hd168969169006%_
                                 _%clause168971169000%_))))
                      (let ((_%clause168972169011%_
                             (reverse _%clause168971169000%_)))
                        ((lambda (_%L169014%_)
                           (let* ((_%clauses169108%_
                                   (map (lambda (_%clause169028%_)
                                          (let* ((_%__stx170519170520%_
                                                  _%clause169028%_)
                                                 (_%g169031169046%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx170519170520%_)))))
                                            (let ((_%__kont170521170522%_
                                                   (lambda (_%L169074%_
                                                            _%L169075%_
                                                            _%L169076%_)
                                                     (let ((_%body169096%_
                                                            (map (lambda (_%g169091169093%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%L169076%_
                            _%$klass168819%_
                            _%method-calls167626%_
                            _%slot-refs167627%_
                            _%g169091169093%_))
                         _%L169074%_)))
               (cons (cons _%L169076%_ _%L169075%_) _%body169096%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170523170524%_
                                                   (lambda ()
                                                     _%clause169028%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx170519170520%_))
                                                  (let ((_%e169038169058%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx170519170520%_))))
                                                    (let ((_%tl169036169063%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169038169058%_)))
                                                          (_%hd169037169061%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169038169058%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169037169061%_))
                                                          (let ((_%e169041169066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169037169061%_))))
                    (let ((_%tl169039169071%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169041169066%_)))
                          (_%hd169040169069%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169041169066%_))))
                      (_%__kont170521170522%_
                       _%tl169036169063%_
                       _%tl169039169071%_
                       _%hd169040169069%_)))
                  (_%__kont170523170524%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170523170524%_)))))
                                        (let ((__tmp171636
                                               (lambda (_%g169100169103%_
                                                        _%g169101169105%_)
                                                 (cons _%g169100169103%_
                                                       _%g169101169105%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp171636
                                           '()
                                           _%L169014%_))))
                                  (__tmp171637
                                   (cons '%#case-lambda _%clauses169108%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171637 _%L168572%_)))
                         _%clause168972169011%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop168967168995%_
                                                 _%target168964168990%_
                                                 '()))
                                              (_%g168958168977%_
                                               _%g168959168980%_)))))
                                    (_%g168958168977%_ _%g168959168980%_))))
                            (_%g168958168977%_ _%g168959168980%_)))))
                (_%g168957169110%_ _%L168572%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169115%_
                                                      (let ((__tmp171638
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L168574%_ '())
                                             (cons _%specializer-lambda-expr168956%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr169113%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171638 _%stx167534%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169117%_
                                                      (_%generate-specializer-impl167538%_
                                                       _%$klass168819%_
                                                       _%$method-table168821%_
                                                       _%methods-bind168846%_
                                                       _%slots-bind168870%_
                                                       _%specializer-impl169115%_)))
                                                (let ((__tmp171640
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167607%_)))
                                                      (__tmp171639
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id168817%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171640
                                                   '" => "
                                                   __tmp171639))
                                                (_%generate-specializer-def167539%_
                                                 _%L167607%_
                                                 _%specializer-id168817%_
                                                 _%specializer-impl169117%_))))
                                        _%hd168505168567%_
                                        _%hd168502168559%_
                                        _%hd168499168551%_)
                                       (_%g168481168511%_ _%g168482168514%_))))
                               (_%g168481168511%_ _%g168482168514%_))
                           (_%g168481168511%_ _%g168482168514%_))
                       (_%g168481168511%_ _%g168482168514%_))))
               (_%g168481168511%_ _%g168482168514%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168481168511%_
                                                    _%g168482168514%_))))
                                           (_%g168481168511%_
                                            _%g168482168514%_))))
                                   (_%g168481168511%_ _%g168482168514%_))))
                           (_%g168481168511%_ _%g168482168514%_))))
                   (_%g168481168511%_ _%g168482168514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168481168511%_
                                                    _%g168482168514%_)))))
                                       (_%g168480169120%_ _%L167606%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167606%_))
                                         (let* ((_%g169124169177%_
                                                 (lambda (_%g169125169174%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169125169174%_))))
                                                (_%g169123170320%_
                                                 (lambda (_%g169125169180%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169125169180%_))
                                                       (let ((_%e169133169182%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169125169180%_))))
                 (let ((_%hd169132169185%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169133169182%_)))
                       (_%tl169131169187%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169133169182%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd169132169185%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd169132169185%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl169131169187%_))
                               (let ((_%e169136169190%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl169131169187%_))))
                                 (let ((_%hd169135169193%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169136169190%_)))
                                       (_%tl169134169195%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169136169190%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169135169193%_))
                                       (let ((_%e169139169198%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169135169193%_))))
                                         (let ((_%hd169138169201%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169139169198%_)))
                                               (_%tl169137169203%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169139169198%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169138169201%_))
                                               (let ((_%e169142169206%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169138169201%_))))
                                                 (let ((_%hd169141169209%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169142169206%_)))
                                                       (_%tl169140169211%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169142169206%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd169141169209%_))
                                                       (let ((_%e169145169214%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd169141169209%_))))
                 (let ((_%hd169144169217%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169145169214%_)))
                       (_%tl169143169219%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169145169214%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl169143169219%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169140169211%_))
                           (let ((_%e169148169222%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169140169211%_))))
                             (let ((_%hd169147169225%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169148169222%_)))
                                   (_%tl169146169227%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169148169222%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169147169225%_))
                                   (let ((_%e169151169230%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169147169225%_))))
                                     (let ((_%hd169150169233%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169151169230%_)))
                                           (_%tl169149169235%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169151169230%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd169150169233%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd169150169233%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl169149169235%_))
                                                   (let ((_%e169154169238%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl169149169235%_))))
                                                     (let ((_%hd169153169241%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169154169238%_)))
                                                           (_%tl169152169243%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169154169238%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd169153169241%_))
                                                           (let ((_%e169157169246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd169153169241%_))))
                     (let ((_%hd169156169249%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169157169246%_)))
                           (_%tl169155169251%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169157169246%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169156169249%_))
                           (let ((_%e169160169254%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169156169249%_))))
                             (let ((_%hd169159169257%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169160169254%_)))
                                   (_%tl169158169259%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169160169254%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169159169257%_))
                                   (let ((_%e169163169262%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169159169257%_))))
                                     (let ((_%hd169162169265%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169163169262%_)))
                                           (_%tl169161169267%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169163169262%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169161169267%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl169158169259%_))
                                               (let ((_%e169166169270%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl169158169259%_))))
                                                 (let ((_%hd169165169273%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169166169270%_)))
                                                       (_%tl169164169275%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169166169270%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169164169275%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169155169251%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169152169243%_))
                       (let ((_%e169169169278%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169152169243%_))))
                         (let ((_%hd169168169281%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169169169278%_)))
                               (_%tl169167169283%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169169169278%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169167169283%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169146169227%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl169137169203%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl169134169195%_))
                                           (let ((_%e169172169286%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl169134169195%_))))
                                             (let ((_%hd169171169289%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169172169286%_)))
                                                   (_%tl169170169291%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169172169286%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl169170169291%_))
                                                   ((lambda (_%L169294%_
                                                             _%L169295%_
                                                             _%L169296%_
                                                             _%L169297%_
                                                             _%L169298%_)
                                                      (let* ((_%g169338169400%_
                                                              (lambda (_%g169339169397%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169339169397%_))))
                     (_%g169337170317%_
                      (lambda (_%g169339169403%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169339169403%_))
                            (let ((_%e169347169405%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169339169403%_))))
                              (let ((_%hd169346169408%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169347169405%_)))
                                    (_%tl169345169410%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169347169405%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169346169408%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd169346169408%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169345169410%_))
                                            (let ((_%e169350169413%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169345169410%_))))
                                              (let ((_%hd169349169416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169350169413%_)))
                                                    (_%tl169348169418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169350169413%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169348169418%_))
                                                    (let ((_%e169353169421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169348169418%_))))
                                                      (let ((_%hd169352169424%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169353169421%_)))
                    (_%tl169351169426%_
                     (let () (declare (not safe)) (##cdr _%e169353169421%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd169352169424%_))
                    (let ((_%e169356169429%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169352169424%_))))
                      (let ((_%hd169355169432%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169356169429%_)))
                            (_%tl169354169434%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169356169429%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd169355169432%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd169355169432%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169354169434%_))
                                    (let ((_%e169359169437%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169354169434%_))))
                                      (let ((_%hd169358169440%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169359169437%_)))
                                            (_%tl169357169442%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169359169437%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169358169440%_))
                                            (let ((_%e169362169445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169358169440%_))))
                                              (let ((_%hd169361169448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169362169445%_)))
                                                    (_%tl169360169450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169362169445%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169361169448%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169361169448%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169360169450%_))
                                                            (let ((_%e169365169453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169360169450%_))))
                      (let ((_%hd169364169456%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169365169453%_)))
                            (_%tl169363169458%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169365169453%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169363169458%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169357169442%_))
                                (let ((_%e169368169461%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169357169442%_))))
                                  (let ((_%hd169367169464%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169368169461%_)))
                                        (_%tl169366169466%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169368169461%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169367169464%_))
                                        (let ((_%e169371169469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169367169464%_))))
                                          (let ((_%hd169370169472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169371169469%_)))
                                                (_%tl169369169474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169371169469%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd169370169472%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd169370169472%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169369169474%_))
                                                        (let ((_%e169374169477%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169369169474%_))))
                  (let ((_%hd169373169480%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169374169477%_)))
                        (_%tl169372169482%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169374169477%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169372169482%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169366169466%_))
                            (let ((_%e169377169485%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169366169466%_))))
                              (let ((_%hd169376169488%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169377169485%_)))
                                    (_%tl169375169490%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169377169485%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169376169488%_))
                                    (let ((_%e169380169493%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169376169488%_))))
                                      (let ((_%hd169379169496%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169380169493%_)))
                                            (_%tl169378169498%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169380169493%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169379169496%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169379169496%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169378169498%_))
                                                    (let ((_%e169383169501%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169378169498%_))))
                                                      (let ((_%hd169382169504%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169383169501%_)))
                    (_%tl169381169506%_
                     (let () (declare (not safe)) (##cdr _%e169383169501%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169381169506%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl169375169490%_))
                        (if (let ((__tmp171641
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl169375169490%_))))
                              (declare (not safe))
                              (##fx>= __tmp171641 '1))
                            (let ((_g171642_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl169375169490%_
                                      '1))))
                              (begin
                                (let ((_g171643_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g171642_)
                                             (##vector-length _g171642_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g171643_ 2)))
                                      (error "Context expects 2 values"
                                             _g171643_)))
                                (let ((_%target169384169509%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171642_ 0)))
                                      (_%tl169386169511%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171642_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169386169511%_))
                                      (let ((_%e169395169514%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169386169511%_))))
                                        (let ((_%hd169394169517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169395169514%_)))
                                              (_%tl169393169519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169395169514%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169393169519%_))
                                              (letrec ((_%loop169387169522%_
                                                        (lambda (_%hd169385169525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref169391169527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169385169525%_))
                      (let ((_%e169388169530%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169385169525%_))))
                        (let ((_%lp-hd169389169533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169388169530%_)))
                              (_%lp-tl169390169535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169388169530%_))))
                          (_%loop169387169522%_
                           _%lp-tl169390169535%_
                           (cons _%lp-hd169389169533%_
                                 _%kw-ref169391169527%_))))
                      (let ((_%kw-ref169392169538%_
                             (reverse _%kw-ref169391169527%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169351169426%_))
                            ((lambda (_%L169541%_
                                      _%L169542%_
                                      _%L169543%_
                                      _%L169544%_
                                      _%L169545%_)
                               (let* ((_%kw-count169596%_
                                       (length (let ((__tmp171644
                                                      (lambda (_%g169588169591%_
                                                               _%g169589169593%_)
                                                        (cons _%g169588169591%_
                                                              _%g169589169593%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171644
                                                  '()
                                                  _%L169542%_))))
                                      (_%self-index169598%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count169596%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L169296%_))
                                     (let* ((_%g169602169616%_
                                             (lambda (_%g169603169613%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g169603169613%_))))
                                            (_%g169601169733%_
                                             (lambda (_%g169603169619%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g169603169619%_))
                                                   (let ((_%e169608169621%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g169603169619%_))))
                                                     (let ((_%hd169607169624%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169608169621%_)))
                                                           (_%tl169606169626%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169608169621%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169606169626%_))
                                                           (let ((_%e169611169629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169606169626%_))))
                     (let ((_%hd169610169632%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169611169629%_)))
                           (_%tl169609169634%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169611169629%_))))
                       ((lambda (_%L169637%_ _%L169638%_)
                          (let ((_%self169655%_
                                 (list-ref _%L169638%_ _%self-index169598%_)))
                            (for-each
                             (lambda (_%g169656169658%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%self169655%_
                                _%method-calls167626%_
                                _%slot-refs167627%_
                                _%g169656169658%_))
                             _%L169637%_)
                            (if (_%no-specializer?167630%_)
                                _%stx167534%_
                                (let* ((_%specializer-id169667%_
                                        (let* ((_%id169661%_
                                                (let ((__tmp171645
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167607%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp171645
                                                   '"::specialize")))
                                               (_%specializer-id169664%_
                                                (let ((__tmp171646
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx167534%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id169661%_
                                                   __tmp171646))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id169664%_))
                                          _%specializer-id169664%_))
                                       (_%$klass169669%_
                                        (let ((__tmp171647
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171647)))
                                       (_%$method-table169671%_
                                        (let ((__tmp171648
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171648)))
                                       (_%methods169673%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%method-calls167626%_)))
                                       (_%$methods169677%_
                                        (map (lambda (_%id169675%_)
                                               (let ((__tmp171649
                                                      (gensym _%id169675%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171649)))
                                             _%methods169673%_))
                                       (_%_169686%_
                                        (for-each
                                         (lambda (_%g169678169681%_
                                                  _%g169679169683%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%method-calls167626%_
                                              _%g169678169681%_
                                              _%g169679169683%_)))
                                         _%methods169673%_
                                         _%$methods169677%_))
                                       (_%methods-bind169696%_
                                        (map (lambda (_%g169688169691%_
                                                      _%g169689169693%_)
                                               (_%generate-method-bind167536%_
                                                _%$klass169669%_
                                                _%$method-table169671%_
                                                _%g169688169691%_
                                                _%g169689169693%_))
                                             _%methods169673%_
                                             _%$methods169677%_))
                                       (_%slots169698%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%slot-refs167627%_)))
                                       (_%$slots169702%_
                                        (map (lambda (_%id169700%_)
                                               (let ((__tmp171650
                                                      (gensym _%id169700%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171650)))
                                             _%slots169698%_))
                                       (_%_169711%_
                                        (for-each
                                         (lambda (_%g169703169706%_
                                                  _%g169704169708%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%slot-refs167627%_
                                              _%g169703169706%_
                                              _%g169704169708%_)))
                                         _%slots169698%_
                                         _%$slots169702%_))
                                       (_%slots-bind169720%_
                                        (map (lambda (_%g169712169715%_
                                                      _%g169713169717%_)
                                               (_%generate-slot-bind167537%_
                                                _%$klass169669%_
                                                _%g169712169715%_
                                                _%g169713169717%_))
                                             _%slots169698%_
                                             _%$slots169702%_))
                                       (_%specializer-impl169728%_
                                        (let* ((_%specializer-body169726%_
                                                (map (lambda (_%g169721169723%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%self169655%_
                                                        _%$klass169669%_
                                                        _%method-calls167626%_
                                                        _%slot-refs167627%_
                                                        _%g169721169723%_))
                                                     _%L169637%_))
                                               (__tmp171651
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L169298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L169297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp171652
                                   (cons '%#lambda
                                         (cons _%L169638%_
                                               _%specializer-body169726%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp171652 _%L169296%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L169295%_ '())))
                                      '()))
                          '())
                    (cons _%L169294%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp171651
                                           _%stx167534%_)))
                                       (_%specializer-impl169730%_
                                        (_%generate-specializer-impl167538%_
                                         _%$klass169669%_
                                         _%$method-table169671%_
                                         _%methods-bind169696%_
                                         _%slots-bind169720%_
                                         _%specializer-impl169728%_)))
                                  (let ((__tmp171654
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L167607%_)))
                                        (__tmp171653
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id169667%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp171654
                                     '" => "
                                     __tmp171653))
                                  (_%generate-specializer-def167539%_
                                   _%L167607%_
                                   _%specializer-id169667%_
                                   _%specializer-impl169730%_)))))
                        _%tl169609169634%_
                        _%hd169610169632%_)))
                   (_%g169602169616%_ _%g169603169619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169602169616%_
                                                    _%g169603169619%_)))))
                                       (_%g169601169733%_ _%L169296%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L169296%_))
                                         (let* ((_%g169737169767%_
                                                 (lambda (_%g169738169764%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169738169764%_))))
                                                (_%g169736170313%_
                                                 (lambda (_%g169738169770%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169738169770%_))
                                                       (let ((_%e169744169772%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169738169770%_))))
                 (let ((_%hd169743169775%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169744169772%_)))
                       (_%tl169742169777%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169744169772%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169742169777%_))
                       (let ((_%e169747169780%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169742169777%_))))
                         (let ((_%hd169746169783%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169747169780%_)))
                               (_%tl169745169785%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169747169780%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd169746169783%_))
                               (let ((_%e169750169788%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd169746169783%_))))
                                 (let ((_%hd169749169791%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169750169788%_)))
                                       (_%tl169748169793%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169750169788%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169749169791%_))
                                       (let ((_%e169753169796%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169749169791%_))))
                                         (let ((_%hd169752169799%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169753169796%_)))
                                               (_%tl169751169801%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169753169796%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169752169799%_))
                                               (let ((_%e169756169804%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169752169799%_))))
                                                 (let ((_%hd169755169807%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169756169804%_)))
                                                       (_%tl169754169809%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169756169804%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169754169809%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169751169801%_))
                                                           (let ((_%e169759169812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169751169801%_))))
                     (let ((_%hd169758169815%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169759169812%_)))
                           (_%tl169757169817%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169759169812%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169757169817%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169748169793%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl169745169785%_))
                                   (let ((_%e169762169820%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl169745169785%_))))
                                     (let ((_%hd169761169823%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169762169820%_)))
                                           (_%tl169760169825%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169762169820%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169760169825%_))
                                           ((lambda (_%L169828%_
                                                     _%L169829%_
                                                     _%L169830%_)
                                              (let* ((_%g169854169868%_
                                                      (lambda (_%g169855169865%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g169855169865%_))))
                                                     (_%g169853169909%_
                                                      (lambda (_%g169855169871%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g169855169871%_))
                                                            (let ((_%e169860169873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g169855169871%_))))
                      (let ((_%hd169859169876%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169860169873%_)))
                            (_%tl169858169878%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169860169873%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169858169878%_))
                            (let ((_%e169863169881%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169858169878%_))))
                              (let ((_%hd169862169884%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169863169881%_)))
                                    (_%tl169861169886%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169863169881%_))))
                                ((lambda (_%L169889%_ _%L169890%_)
                                   (let ((_%self169903%_
                                          (list-ref
                                           _%L169890%_
                                           _%self-index169598%_)))
                                     (for-each
                                      (lambda (_%g169904169906%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%self169903%_
                                         _%method-calls167626%_
                                         _%slot-refs167627%_
                                         _%g169904169906%_))
                                      _%L169889%_)))
                                 _%tl169861169886%_
                                 _%hd169862169884%_)))
                            (_%g169854169868%_ _%g169855169871%_))))
                    (_%g169854169868%_ _%g169855169871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g169853169909%_
                                                 _%L169829%_))
                                              (let* ((_%g169912169931%_
                                                      (lambda (_%g169913169928%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g169913169928%_))))
                                                     (_%g169911170036%_
                                                      (lambda (_%g169913169934%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g169913169934%_))
                                                            (let ((_%e169917169936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g169913169934%_))))
                      (let ((_%hd169916169939%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169917169936%_)))
                            (_%tl169915169941%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169917169936%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl169915169941%_))
                            (let ((_g171655_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl169915169941%_
                                      '0))))
                              (begin
                                (let ((_g171656_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g171655_)
                                             (##vector-length _g171655_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g171656_ 2)))
                                      (error "Context expects 2 values"
                                             _g171656_)))
                                (let ((_%target169918169944%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171655_ 0)))
                                      (_%tl169920169946%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171655_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169920169946%_))
                                      (letrec ((_%loop169921169949%_
                                                (lambda (_%hd169919169952%_
                                                         _%clause169925169954%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd169919169952%_))
                                                      (let ((_%e169922169957%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd169919169952%_))))
                (let ((_%lp-hd169923169960%_
                       (let () (declare (not safe)) (##car _%e169922169957%_)))
                      (_%lp-tl169924169962%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e169922169957%_))))
                  (_%loop169921169949%_
                   _%lp-tl169924169962%_
                   (cons _%lp-hd169923169960%_ _%clause169925169954%_))))
              (let ((_%clause169926169965%_ (reverse _%clause169925169954%_)))
                ((lambda (_%L169968%_)
                   (for-each
                    (lambda (_%clause169981%_)
                      (let* ((_%g169983169994%_
                              (lambda (_%g169984169991%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g169984169991%_))))
                             (_%g169982170026%_
                              (lambda (_%g169984169997%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g169984169997%_))
                                    (let ((_%e169989169999%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g169984169997%_))))
                                      (let ((_%hd169988170002%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169989169999%_)))
                                            (_%tl169987170004%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169989169999%_))))
                                        ((lambda (_%L170007%_ _%L170008%_)
                                           (let ((_%self170020%_
                                                  (list-ref
                                                   _%L170008%_
                                                   _%self-index169598%_)))
                                             (for-each
                                              (lambda (_%g170021170023%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%self170020%_
                                                 _%method-calls167626%_
                                                 _%slot-refs167627%_
                                                 _%g170021170023%_))
                                              _%L170007%_)))
                                         _%tl169987170004%_
                                         _%hd169988170002%_)))
                                    (_%g169983169994%_ _%g169984169997%_)))))
                        (_%g169982170026%_ _%clause169981%_)))
                    (let ((__tmp171657
                           (lambda (_%g170028170031%_ _%g170029170033%_)
                             (cons _%g170028170031%_ _%g170029170033%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171657 '() _%L169968%_))))
                 _%clause169926169965%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop169921169949%_
                                         _%target169918169944%_
                                         '()))
                                      (_%g169912169931%_ _%g169913169934%_)))))
                            (_%g169912169931%_ _%g169913169934%_))))
                    (_%g169912169931%_ _%g169913169934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g169911170036%_
                                                 _%L169828%_))
                                              (if (_%no-specializer?167630%_)
                                                  _%stx167534%_
                                                  (let* ((_%specializer-id170045%_
                                                          (let* ((_%id170039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171658
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167607%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171658 '"::specialize")))
                         (_%specializer-id170042%_
                          (let ((__tmp171659
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167534%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id170039%_
                             __tmp171659))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id170042%_))
                    _%specializer-id170042%_))
                 (_%$klass170047%_
                  (let ((__tmp171660
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171660)))
                 (_%$method-table170049%_
                  (let ((__tmp171661
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171661)))
                 (_%methods170051%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167626%_)))
                 (_%$methods170055%_
                  (map (lambda (_%id170053%_)
                         (let ((__tmp171662 (gensym _%id170053%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171662)))
                       _%methods170051%_))
                 (_%_170064%_
                  (for-each
                   (lambda (_%g170056170059%_ _%g170057170061%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167626%_
                        _%g170056170059%_
                        _%g170057170061%_)))
                   _%methods170051%_
                   _%$methods170055%_))
                 (_%methods-bind170074%_
                  (map (lambda (_%g170066170069%_ _%g170067170071%_)
                         (_%generate-method-bind167536%_
                          _%$klass170047%_
                          _%$method-table170049%_
                          _%g170066170069%_
                          _%g170067170071%_))
                       _%methods170051%_
                       _%$methods170055%_))
                 (_%slots170076%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167627%_)))
                 (_%$slots170080%_
                  (map (lambda (_%id170078%_)
                         (let ((__tmp171663 (gensym _%id170078%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171663)))
                       _%slots170076%_))
                 (_%_170089%_
                  (for-each
                   (lambda (_%g170081170084%_ _%g170082170086%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167627%_
                        _%g170081170084%_
                        _%g170082170086%_)))
                   _%slots170076%_
                   _%$slots170080%_))
                 (_%slots-bind170098%_
                  (map (lambda (_%g170090170093%_ _%g170091170095%_)
                         (_%generate-slot-bind167537%_
                          _%$klass170047%_
                          _%g170090170093%_
                          _%g170091170095%_))
                       _%slots170076%_
                       _%$slots170080%_))
                 (_%specializer-lambda-expr170171%_
                  (let* ((_%g170100170114%_
                          (lambda (_%g170101170111%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170101170111%_))))
                         (_%g170099170168%_
                          (lambda (_%g170101170117%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170101170117%_))
                                (let ((_%e170106170119%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170101170117%_))))
                                  (let ((_%hd170105170122%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170106170119%_)))
                                        (_%tl170104170124%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170106170119%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170104170124%_))
                                        (let ((_%e170109170127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170104170124%_))))
                                          (let ((_%hd170108170130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170109170127%_)))
                                                (_%tl170107170132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170109170127%_))))
                                            ((lambda (_%L170135%_ _%L170136%_)
                                               (let* ((_%self170159%_
                                                       (list-ref
                                                        _%L170136%_
                                                        _%self-index169598%_))
                                                      (_%body170165%_
                                                       (map (lambda (_%g170160170162%_)
                                                              (gxc#apply-subst-object-refs__%
                                                               '#f
                                                               _%self170159%_
                                                               _%$klass170047%_
                                                               _%method-calls167626%_
                                                               _%slot-refs167627%_
                                                               _%g170160170162%_))
                                                            _%L170135%_))
                                                      (__tmp171664
                                                       (cons '%#lambda
                                                             (cons _%L170136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body170165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp171664
                                                  _%L169829%_)))
                                             _%tl170107170132%_
                                             _%hd170108170130%_)))
                                        (_%g170100170114%_
                                         _%g170101170117%_))))
                                (_%g170100170114%_ _%g170101170117%_)))))
                    (_%g170099170168%_ _%L169829%_)))
                 (_%specializer-case-lambda-expr170306%_
                  (let* ((_%g170173170192%_
                          (lambda (_%g170174170189%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170174170189%_))))
                         (_%g170172170303%_
                          (lambda (_%g170174170195%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170174170195%_))
                                (let ((_%e170178170197%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170174170195%_))))
                                  (let ((_%hd170177170200%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170178170197%_)))
                                        (_%tl170176170202%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170178170197%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170176170202%_))
                                        (let ((_g171665_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl170176170202%_
                                                  '0))))
                                          (begin
                                            (let ((_g171666_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g171665_)
                                                         (##vector-length
                                                          _g171665_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g171666_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g171666_)))
                                            (let ((_%target170179170205%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171665_
                                                      0)))
                                                  (_%tl170181170207%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171665_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl170181170207%_))
                                                  (letrec ((_%loop170182170210%_
                                                            (lambda (_%hd170180170213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause170186170215%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd170180170213%_))
                          (let ((_%e170183170218%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd170180170213%_))))
                            (let ((_%lp-hd170184170221%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170183170218%_)))
                                  (_%lp-tl170185170223%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170183170218%_))))
                              (_%loop170182170210%_
                               _%lp-tl170185170223%_
                               (cons _%lp-hd170184170221%_
                                     _%clause170186170215%_))))
                          (let ((_%clause170187170226%_
                                 (reverse _%clause170186170215%_)))
                            ((lambda (_%L170229%_)
                               (let* ((_%clauses170301%_
                                       (map (lambda (_%clause170243%_)
                                              (let* ((_%g170245170256%_
                                                      (lambda (_%g170246170253%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170246170253%_))))
                                                     (_%g170244170291%_
                                                      (lambda (_%g170246170259%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170246170259%_))
                                                            (let ((_%e170251170261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170246170259%_))))
                      (let ((_%hd170250170264%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170251170261%_)))
                            (_%tl170249170266%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170251170261%_))))
                        ((lambda (_%L170269%_ _%L170270%_)
                           (let* ((_%self170282%_
                                   (list-ref _%L170270%_ _%self-index169598%_))
                                  (_%body170288%_
                                   (map (lambda (_%g170283170285%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%self170282%_
                                           _%$klass170047%_
                                           _%method-calls167626%_
                                           _%slot-refs167627%_
                                           _%g170283170285%_))
                                        _%L170269%_)))
                             (cons _%L170270%_ _%body170288%_)))
                         _%tl170249170266%_
                         _%hd170250170264%_)))
                    (_%g170245170256%_ _%g170246170259%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170244170291%_
                                                 _%clause170243%_)))
                                            (let ((__tmp171667
                                                   (lambda (_%g170293170296%_
                                                            _%g170294170298%_)
                                                     (cons _%g170293170296%_
                                                           _%g170294170298%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp171667
                                               '()
                                               _%L170229%_))))
                                      (__tmp171668
                                       (cons '%#case-lambda
                                             _%clauses170301%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp171668
                                  _%L169828%_)))
                             _%clause170187170226%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop170182170210%_
                                                     _%target170179170205%_
                                                     '()))
                                                  (_%g170173170192%_
                                                   _%g170174170195%_)))))
                                        (_%g170173170192%_
                                         _%g170174170195%_))))
                                (_%g170173170192%_ _%g170174170195%_)))))
                    (_%g170172170303%_ _%L169828%_)))
                 (_%specializer-impl170308%_
                  (let ((__tmp171669
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L169298%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L169297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp171670
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L169830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr170171%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr170306%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171670
                                                _%stx167534%_))
                                             '()))
                                 '())
                           (cons _%L169295%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L169294%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171669 _%stx167534%_)))
                 (_%specializer-impl170310%_
                  (_%generate-specializer-impl167538%_
                   _%$klass170047%_
                   _%$method-table170049%_
                   _%methods-bind170074%_
                   _%slots-bind170098%_
                   _%specializer-impl170308%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171672
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167607%_)))
                                                          (__tmp171671
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id170045%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171672
                                                       '" => "
                                                       __tmp171671))
                                                    (_%generate-specializer-def167539%_
                                                     _%L167607%_
                                                     _%specializer-id170045%_
                                                     _%specializer-impl170310%_))))
                                            _%hd169761169823%_
                                            _%hd169758169815%_
                                            _%hd169755169807%_)
                                           (_%g169737169767%_
                                            _%g169738169770%_))))
                                   (_%g169737169767%_ _%g169738169770%_))
                               (_%g169737169767%_ _%g169738169770%_))
                           (_%g169737169767%_ _%g169738169770%_))))
                   (_%g169737169767%_ _%g169738169770%_))
               (_%g169737169767%_ _%g169738169770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169737169767%_
                                                _%g169738169770%_))))
                                       (_%g169737169767%_ _%g169738169770%_))))
                               (_%g169737169767%_ _%g169738169770%_))))
                       (_%g169737169767%_ _%g169738169770%_))))
               (_%g169737169767%_ _%g169738169770%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169736170313%_ _%L169296%_))
                                         _%stx167534%_))))
                             _%hd169394169517%_
                             _%kw-ref169392169538%_
                             _%hd169382169504%_
                             _%hd169373169480%_
                             _%hd169364169456%_)
                            (_%g169338169400%_ _%g169339169403%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169387169522%_
                                                 _%target169384169509%_
                                                 '()))
                                              (_%g169338169400%_
                                               _%g169339169403%_))))
                                      (_%g169338169400%_ _%g169339169403%_)))))
                            (_%g169338169400%_ _%g169339169403%_))
                        (_%g169338169400%_ _%g169339169403%_))
                    (_%g169338169400%_ _%g169339169403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169338169400%_
                                                     _%g169339169403%_))
                                                (_%g169338169400%_
                                                 _%g169339169403%_))
                                            (_%g169338169400%_
                                             _%g169339169403%_))))
                                    (_%g169338169400%_ _%g169339169403%_))))
                            (_%g169338169400%_ _%g169339169403%_))
                        (_%g169338169400%_ _%g169339169403%_))))
                (_%g169338169400%_ _%g169339169403%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169338169400%_
                                                     _%g169339169403%_))
                                                (_%g169338169400%_
                                                 _%g169339169403%_))))
                                        (_%g169338169400%_
                                         _%g169339169403%_))))
                                (_%g169338169400%_ _%g169339169403%_))
                            (_%g169338169400%_ _%g169339169403%_))))
                    (_%g169338169400%_ _%g169339169403%_))
                (_%g169338169400%_ _%g169339169403%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169338169400%_
                                                     _%g169339169403%_))))
                                            (_%g169338169400%_
                                             _%g169339169403%_))))
                                    (_%g169338169400%_ _%g169339169403%_))
                                (_%g169338169400%_ _%g169339169403%_))
                            (_%g169338169400%_ _%g169339169403%_))))
                    (_%g169338169400%_ _%g169339169403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169338169400%_
                                                     _%g169339169403%_))))
                                            (_%g169338169400%_
                                             _%g169339169403%_))
                                        (_%g169338169400%_ _%g169339169403%_))
                                    (_%g169338169400%_ _%g169339169403%_))))
                            (_%g169338169400%_ _%g169339169403%_)))))
                (_%g169337170317%_ _%L169295%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd169171169289%_
                                                    _%hd169168169281%_
                                                    _%hd169165169273%_
                                                    _%hd169162169265%_
                                                    _%hd169144169217%_)
                                                   (_%g169124169177%_
                                                    _%g169125169180%_))))
                                           (_%g169124169177%_
                                            _%g169125169180%_))
                                       (_%g169124169177%_ _%g169125169180%_))
                                   (_%g169124169177%_ _%g169125169180%_))
                               (_%g169124169177%_ _%g169125169180%_))))
                       (_%g169124169177%_ _%g169125169180%_))
                   (_%g169124169177%_ _%g169125169180%_))
               (_%g169124169177%_ _%g169125169180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169124169177%_
                                                _%g169125169180%_))
                                           (_%g169124169177%_
                                            _%g169125169180%_))))
                                   (_%g169124169177%_ _%g169125169180%_))))
                           (_%g169124169177%_ _%g169125169180%_))))
                   (_%g169124169177%_ _%g169125169180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169124169177%_
                                                    _%g169125169180%_))
                                               (_%g169124169177%_
                                                _%g169125169180%_))
                                           (_%g169124169177%_
                                            _%g169125169180%_))))
                                   (_%g169124169177%_ _%g169125169180%_))))
                           (_%g169124169177%_ _%g169125169180%_))
                       (_%g169124169177%_ _%g169125169180%_))))
               (_%g169124169177%_ _%g169125169180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169124169177%_
                                                _%g169125169180%_))))
                                       (_%g169124169177%_ _%g169125169180%_))))
                               (_%g169124169177%_ _%g169125169180%_))
                           (_%g169124169177%_ _%g169125169180%_))
                       (_%g169124169177%_ _%g169125169180%_))))
               (_%g169124169177%_ _%g169125169180%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169123170320%_ _%L167606%_))
                                         _%stx167534%_))))))))
                  (_%__kont170543170544%_ (lambda () _%stx167534%_)))
              (let ((_%__match170572170573%_
                     (lambda (_%e167548167574%_
                              _%hd167547167577%_
                              _%tl167546167579%_
                              _%e167551167582%_
                              _%hd167550167585%_
                              _%tl167549167587%_
                              _%e167554167590%_
                              _%hd167553167593%_
                              _%tl167552167595%_
                              _%e167557167598%_
                              _%hd167556167601%_
                              _%tl167555167603%_)
                       (let ((_%L167606%_ _%hd167556167601%_)
                             (_%L167607%_ _%hd167553167593%_))
                         (if (let ((__tmp171673
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167607%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171673))
                             (_%__kont170541170542%_ _%L167606%_ _%L167607%_)
                             (_%__kont170543170544%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170539170540%_))
                    (let ((_%e167548167574%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170539170540%_))))
                      (let ((_%tl167546167579%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167548167574%_)))
                            (_%hd167547167577%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167548167574%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167546167579%_))
                            (let ((_%e167551167582%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167546167579%_))))
                              (let ((_%tl167549167587%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167551167582%_)))
                                    (_%hd167550167585%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167551167582%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167550167585%_))
                                    (let ((_%e167554167590%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167550167585%_))))
                                      (let ((_%tl167552167595%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167554167590%_)))
                                            (_%hd167553167593%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167554167590%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167552167595%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167549167587%_))
                                                (let ((_%e167557167598%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167549167587%_))))
                                                  (let ((_%tl167555167603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167557167598%_)))
                                                        (_%hd167556167601%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167557167598%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167555167603%_))
                                                        (_%__match170572170573%_
                                                         _%e167548167574%_
                                                         _%hd167547167577%_
                                                         _%tl167546167579%_
                                                         _%e167551167582%_
                                                         _%hd167550167585%_
                                                         _%tl167549167587%_
                                                         _%e167554167590%_
                                                         _%hd167553167593%_
                                                         _%tl167552167595%_
                                                         _%e167557167598%_
                                                         _%hd167556167601%_
                                                         _%tl167555167603%_)
                                                        (_%__kont170543170544%_))))
                                                (_%__kont170543170544%_))
                                            (_%__kont170543170544%_))))
                                    (_%__kont170543170544%_))))
                            (_%__kont170543170544%_))))
                    (_%__kont170543170544%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self166494%_ _%stx166495%_)
        (let* ((_%__stx170575170576%_ _%stx166495%_)
               (_%g166503166725%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170575170576%_)))))
          (let ((_%__kont170577170578%_
                 (lambda (_%L167482%_ _%L167483%_ _%L167484%_ _%L167485%_)
                   (let ((__tmp171675
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166494%_ 'methods)))
                         (__tmp171674
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167483%_))))
                     (declare (not safe))
                     (hash-put! __tmp171675 __tmp171674 '#t))
                   (for-each
                    (lambda (_%g167518167520%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166494%_ _%g167518167520%_)))
                    (let ((__tmp171676
                           (lambda (_%g167522167525%_ _%g167523167527%_)
                             (cons _%g167522167525%_ _%g167523167527%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171676 '() _%L167482%_)))))
                (_%__kont170581170582%_
                 (lambda (_%L167317%_
                          _%L167318%_
                          _%L167319%_
                          _%L167320%_
                          _%L167321%_)
                   (let ((__tmp171678
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166494%_ 'methods)))
                         (__tmp171677
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167318%_))))
                     (declare (not safe))
                     (hash-put! __tmp171678 __tmp171677 '#t))
                   (for-each
                    (lambda (_%g167361167363%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166494%_ _%g167361167363%_)))
                    (let ((__tmp171679
                           (lambda (_%g167365167368%_ _%g167366167370%_)
                             (cons _%g167365167368%_ _%g167366167370%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171679 '() _%L167317%_)))))
                (_%__kont170585170586%_
                 (lambda (_%L167150%_ _%L167151%_ _%L167152%_)
                   (let ((__tmp171681
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166494%_ 'slots)))
                         (__tmp171680
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167150%_))))
                     (declare (not safe))
                     (hash-put! __tmp171681 __tmp171680 '#t))))
                (_%__kont170587170588%_
                 (lambda (_%L167027%_ _%L167028%_ _%L167029%_ _%L167030%_)
                   (let ((__tmp171683
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166494%_ 'slots)))
                         (__tmp171682
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167028%_))))
                     (declare (not safe))
                     (hash-put! __tmp171683 __tmp171682 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self166494%_ _%L167027%_))))
                (_%__kont170589170590%_
                 (lambda (_%L166901%_ _%L166902%_)
                   (let* ((_%accessor166924%_
                           (let ((__tmp171684
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166902%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171684)))
                          (_%klass166926%_
                           (let ((__tmp171685
                                  (##structure-ref
                                   _%accessor166924%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166495%_
                              __tmp171685)))
                          (_%slot166928%_
                           (##structure-ref
                            _%accessor166924%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%accessor166924%_
                                    '4
                                    gxc#!accessor::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166926%_
                                     _%slot166928%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166926%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171687
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166494%_ 'slots)))
                               (__tmp171686
                                (##structure-ref
                                 _%accessor166924%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171687 __tmp171686 '#t))))))
                (_%__kont170591170592%_
                 (lambda (_%L166801%_ _%L166802%_ _%L166803%_)
                   (let* ((_%mutator166830%_
                           (let ((__tmp171688
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166803%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171688)))
                          (_%klass166832%_
                           (let ((__tmp171689
                                  (##structure-ref
                                   _%mutator166830%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166495%_
                              __tmp171689)))
                          (_%slot166834%_
                           (##structure-ref
                            _%mutator166830%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%mutator166830%_
                                    '4
                                    gxc#!mutator::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166832%_
                                     _%slot166834%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166832%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171690
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166494%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171690 _%slot166834%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self166494%_ _%L166801%_)))))
                (_%__kont170593170594%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self166494%_ _%stx166495%_)))))
            (let* ((_%__match171074171075%_
                    (lambda (_%e166699166737%_
                             _%hd166698166740%_
                             _%tl166697166742%_
                             _%e166702166745%_
                             _%hd166701166748%_
                             _%tl166700166750%_
                             _%e166705166753%_
                             _%hd166704166756%_
                             _%tl166703166758%_
                             _%e166708166761%_
                             _%hd166707166764%_
                             _%tl166706166766%_
                             _%e166711166769%_
                             _%hd166710166772%_
                             _%tl166709166774%_
                             _%e166714166777%_
                             _%hd166713166780%_
                             _%tl166712166782%_
                             _%e166717166785%_
                             _%hd166716166788%_
                             _%tl166715166790%_
                             _%e166720166793%_
                             _%hd166719166796%_
                             _%tl166718166798%_)
                      (let ((_%L166801%_ _%hd166719166796%_)
                            (_%L166802%_ _%hd166716166788%_)
                            (_%L166803%_ _%hd166707166764%_))
                        (if (and (let ((__tmp171691
                                        (let ((__tmp171692
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166803%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171692))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171691
                                    'gxc#!mutator::t))
                                 (let ((__tmp171693
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166494%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166802%_
                                    __tmp171693)))
                            (_%__kont170591170592%_
                             _%L166801%_
                             _%L166802%_
                             _%L166803%_)
                            (_%__kont170593170594%_)))))
                   (_%__match171072171073%_
                    (lambda (_%e166699166737%_
                             _%hd166698166740%_
                             _%tl166697166742%_
                             _%e166702166745%_
                             _%hd166701166748%_
                             _%tl166700166750%_
                             _%e166705166753%_
                             _%hd166704166756%_
                             _%tl166703166758%_
                             _%e166708166761%_
                             _%hd166707166764%_
                             _%tl166706166766%_
                             _%e166711166769%_
                             _%hd166710166772%_
                             _%tl166709166774%_
                             _%e166714166777%_
                             _%hd166713166780%_
                             _%tl166712166782%_
                             _%e166717166785%_
                             _%hd166716166788%_
                             _%tl166715166790%_
                             _%e166720166793%_
                             _%hd166719166796%_
                             _%tl166718166798%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166718166798%_))
                          (_%__match171074171075%_
                           _%e166699166737%_
                           _%hd166698166740%_
                           _%tl166697166742%_
                           _%e166702166745%_
                           _%hd166701166748%_
                           _%tl166700166750%_
                           _%e166705166753%_
                           _%hd166704166756%_
                           _%tl166703166758%_
                           _%e166708166761%_
                           _%hd166707166764%_
                           _%tl166706166766%_
                           _%e166711166769%_
                           _%hd166710166772%_
                           _%tl166709166774%_
                           _%e166714166777%_
                           _%hd166713166780%_
                           _%tl166712166782%_
                           _%e166717166785%_
                           _%hd166716166788%_
                           _%tl166715166790%_
                           _%e166720166793%_
                           _%hd166719166796%_
                           _%tl166718166798%_)
                          (_%__kont170593170594%_))))
                   (_%__match171066171067%_
                    (lambda (_%e166699166737%_
                             _%hd166698166740%_
                             _%tl166697166742%_
                             _%e166702166745%_
                             _%hd166701166748%_
                             _%tl166700166750%_
                             _%e166705166753%_
                             _%hd166704166756%_
                             _%tl166703166758%_
                             _%e166708166761%_
                             _%hd166707166764%_
                             _%tl166706166766%_
                             _%e166711166769%_
                             _%hd166710166772%_
                             _%tl166709166774%_
                             _%e166714166777%_
                             _%hd166713166780%_
                             _%tl166712166782%_
                             _%e166717166785%_
                             _%hd166716166788%_
                             _%tl166715166790%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166709166774%_))
                          (let ((_%e166720166793%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166709166774%_))))
                            (let ((_%tl166718166798%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166720166793%_)))
                                  (_%hd166719166796%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166720166793%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166718166798%_))
                                  (_%__match171074171075%_
                                   _%e166699166737%_
                                   _%hd166698166740%_
                                   _%tl166697166742%_
                                   _%e166702166745%_
                                   _%hd166701166748%_
                                   _%tl166700166750%_
                                   _%e166705166753%_
                                   _%hd166704166756%_
                                   _%tl166703166758%_
                                   _%e166708166761%_
                                   _%hd166707166764%_
                                   _%tl166706166766%_
                                   _%e166711166769%_
                                   _%hd166710166772%_
                                   _%tl166709166774%_
                                   _%e166714166777%_
                                   _%hd166713166780%_
                                   _%tl166712166782%_
                                   _%e166717166785%_
                                   _%hd166716166788%_
                                   _%tl166715166790%_
                                   _%e166720166793%_
                                   _%hd166719166796%_
                                   _%tl166718166798%_)
                                  (_%__kont170593170594%_))))
                          (_%__kont170593170594%_))))
                   (_%__match171012171013%_
                    (lambda (_%e166675166845%_
                             _%hd166674166848%_
                             _%tl166673166850%_
                             _%e166678166853%_
                             _%hd166677166856%_
                             _%tl166676166858%_
                             _%e166681166861%_
                             _%hd166680166864%_
                             _%tl166679166866%_
                             _%e166684166869%_
                             _%hd166683166872%_
                             _%tl166682166874%_
                             _%e166687166877%_
                             _%hd166686166880%_
                             _%tl166685166882%_
                             _%e166690166885%_
                             _%hd166689166888%_
                             _%tl166688166890%_
                             _%e166693166893%_
                             _%hd166692166896%_
                             _%tl166691166898%_)
                      (let ((_%L166901%_ _%hd166692166896%_)
                            (_%L166902%_ _%hd166683166872%_))
                        (if (and (let ((__tmp171694
                                        (let ((__tmp171695
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166902%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171695))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171694
                                    'gxc#!accessor::t))
                                 (let ((__tmp171696
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166494%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166901%_
                                    __tmp171696)))
                            (_%__kont170589170590%_ _%L166901%_ _%L166902%_)
                            (_%__kont170593170594%_)))))
                   (_%__match171010171011%_
                    (lambda (_%e166675166845%_
                             _%hd166674166848%_
                             _%tl166673166850%_
                             _%e166678166853%_
                             _%hd166677166856%_
                             _%tl166676166858%_
                             _%e166681166861%_
                             _%hd166680166864%_
                             _%tl166679166866%_
                             _%e166684166869%_
                             _%hd166683166872%_
                             _%tl166682166874%_
                             _%e166687166877%_
                             _%hd166686166880%_
                             _%tl166685166882%_
                             _%e166690166885%_
                             _%hd166689166888%_
                             _%tl166688166890%_
                             _%e166693166893%_
                             _%hd166692166896%_
                             _%tl166691166898%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166685166882%_))
                          (_%__match171012171013%_
                           _%e166675166845%_
                           _%hd166674166848%_
                           _%tl166673166850%_
                           _%e166678166853%_
                           _%hd166677166856%_
                           _%tl166676166858%_
                           _%e166681166861%_
                           _%hd166680166864%_
                           _%tl166679166866%_
                           _%e166684166869%_
                           _%hd166683166872%_
                           _%tl166682166874%_
                           _%e166687166877%_
                           _%hd166686166880%_
                           _%tl166685166882%_
                           _%e166690166885%_
                           _%hd166689166888%_
                           _%tl166688166890%_
                           _%e166693166893%_
                           _%hd166692166896%_
                           _%tl166691166898%_)
                          (_%__match171066171067%_
                           _%e166675166845%_
                           _%hd166674166848%_
                           _%tl166673166850%_
                           _%e166678166853%_
                           _%hd166677166856%_
                           _%tl166676166858%_
                           _%e166681166861%_
                           _%hd166680166864%_
                           _%tl166679166866%_
                           _%e166684166869%_
                           _%hd166683166872%_
                           _%tl166682166874%_
                           _%e166687166877%_
                           _%hd166686166880%_
                           _%tl166685166882%_
                           _%e166690166885%_
                           _%hd166689166888%_
                           _%tl166688166890%_
                           _%e166693166893%_
                           _%hd166692166896%_
                           _%tl166691166898%_))))
                   (_%__match170956170957%_
                    (lambda (_%e166640166939%_
                             _%hd166639166942%_
                             _%tl166638166944%_
                             _%e166643166947%_
                             _%hd166642166950%_
                             _%tl166641166952%_
                             _%e166646166955%_
                             _%hd166645166958%_
                             _%tl166644166960%_
                             _%e166649166963%_
                             _%hd166648166966%_
                             _%tl166647166968%_
                             _%e166652166971%_
                             _%hd166651166974%_
                             _%tl166650166976%_
                             _%e166655166979%_
                             _%hd166654166982%_
                             _%tl166653166984%_
                             _%e166658166987%_
                             _%hd166657166990%_
                             _%tl166656166992%_
                             _%e166661166995%_
                             _%hd166660166998%_
                             _%tl166659167000%_
                             _%e166664167003%_
                             _%hd166663167006%_
                             _%tl166662167008%_
                             _%e166667167011%_
                             _%hd166666167014%_
                             _%tl166665167016%_
                             _%e166670167019%_
                             _%hd166669167022%_
                             _%tl166668167024%_)
                      (let ((_%L167027%_ _%hd166669167022%_)
                            (_%L167028%_ _%hd166666167014%_)
                            (_%L167029%_ _%hd166657166990%_)
                            (_%L167030%_ _%hd166648166966%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167030%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167030%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171697
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166494%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167029%_
                                    __tmp171697)))
                            (_%__kont170587170588%_
                             _%L167027%_
                             _%L167028%_
                             _%L167029%_
                             _%L167030%_)
                            (_%__kont170593170594%_)))))
                   (_%__match170948170949%_
                    (lambda (_%e166640166939%_
                             _%hd166639166942%_
                             _%tl166638166944%_
                             _%e166643166947%_
                             _%hd166642166950%_
                             _%tl166641166952%_
                             _%e166646166955%_
                             _%hd166645166958%_
                             _%tl166644166960%_
                             _%e166649166963%_
                             _%hd166648166966%_
                             _%tl166647166968%_
                             _%e166652166971%_
                             _%hd166651166974%_
                             _%tl166650166976%_
                             _%e166655166979%_
                             _%hd166654166982%_
                             _%tl166653166984%_
                             _%e166658166987%_
                             _%hd166657166990%_
                             _%tl166656166992%_
                             _%e166661166995%_
                             _%hd166660166998%_
                             _%tl166659167000%_
                             _%e166664167003%_
                             _%hd166663167006%_
                             _%tl166662167008%_
                             _%e166667167011%_
                             _%hd166666167014%_
                             _%tl166665167016%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166659167000%_))
                          (let ((_%e166670167019%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166659167000%_))))
                            (let ((_%tl166668167024%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166670167019%_)))
                                  (_%hd166669167022%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166670167019%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166668167024%_))
                                  (_%__match170956170957%_
                                   _%e166640166939%_
                                   _%hd166639166942%_
                                   _%tl166638166944%_
                                   _%e166643166947%_
                                   _%hd166642166950%_
                                   _%tl166641166952%_
                                   _%e166646166955%_
                                   _%hd166645166958%_
                                   _%tl166644166960%_
                                   _%e166649166963%_
                                   _%hd166648166966%_
                                   _%tl166647166968%_
                                   _%e166652166971%_
                                   _%hd166651166974%_
                                   _%tl166650166976%_
                                   _%e166655166979%_
                                   _%hd166654166982%_
                                   _%tl166653166984%_
                                   _%e166658166987%_
                                   _%hd166657166990%_
                                   _%tl166656166992%_
                                   _%e166661166995%_
                                   _%hd166660166998%_
                                   _%tl166659167000%_
                                   _%e166664167003%_
                                   _%hd166663167006%_
                                   _%tl166662167008%_
                                   _%e166667167011%_
                                   _%hd166666167014%_
                                   _%tl166665167016%_
                                   _%e166670167019%_
                                   _%hd166669167022%_
                                   _%tl166668167024%_)
                                  (_%__kont170593170594%_))))
                          (_%__match171072171073%_
                           _%e166640166939%_
                           _%hd166639166942%_
                           _%tl166638166944%_
                           _%e166643166947%_
                           _%hd166642166950%_
                           _%tl166641166952%_
                           _%e166646166955%_
                           _%hd166645166958%_
                           _%tl166644166960%_
                           _%e166649166963%_
                           _%hd166648166966%_
                           _%tl166647166968%_
                           _%e166652166971%_
                           _%hd166651166974%_
                           _%tl166650166976%_
                           _%e166655166979%_
                           _%hd166654166982%_
                           _%tl166653166984%_
                           _%e166658166987%_
                           _%hd166657166990%_
                           _%tl166656166992%_
                           _%e166661166995%_
                           _%hd166660166998%_
                           _%tl166659167000%_))))
                   (_%__match170870170871%_
                    (lambda (_%e166606167070%_
                             _%hd166605167073%_
                             _%tl166604167075%_
                             _%e166609167078%_
                             _%hd166608167081%_
                             _%tl166607167083%_
                             _%e166612167086%_
                             _%hd166611167089%_
                             _%tl166610167091%_
                             _%e166615167094%_
                             _%hd166614167097%_
                             _%tl166613167099%_
                             _%e166618167102%_
                             _%hd166617167105%_
                             _%tl166616167107%_
                             _%e166621167110%_
                             _%hd166620167113%_
                             _%tl166619167115%_
                             _%e166624167118%_
                             _%hd166623167121%_
                             _%tl166622167123%_
                             _%e166627167126%_
                             _%hd166626167129%_
                             _%tl166625167131%_
                             _%e166630167134%_
                             _%hd166629167137%_
                             _%tl166628167139%_
                             _%e166633167142%_
                             _%hd166632167145%_
                             _%tl166631167147%_)
                      (let ((_%L167150%_ _%hd166632167145%_)
                            (_%L167151%_ _%hd166623167121%_)
                            (_%L167152%_ _%hd166614167097%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167152%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167152%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171698
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166494%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167151%_
                                    __tmp171698)))
                            (_%__kont170585170586%_
                             _%L167150%_
                             _%L167151%_
                             _%L167152%_)
                            (_%__match171074171075%_
                             _%e166606167070%_
                             _%hd166605167073%_
                             _%tl166604167075%_
                             _%e166609167078%_
                             _%hd166608167081%_
                             _%tl166607167083%_
                             _%e166612167086%_
                             _%hd166611167089%_
                             _%tl166610167091%_
                             _%e166615167094%_
                             _%hd166614167097%_
                             _%tl166613167099%_
                             _%e166618167102%_
                             _%hd166617167105%_
                             _%tl166616167107%_
                             _%e166621167110%_
                             _%hd166620167113%_
                             _%tl166619167115%_
                             _%e166624167118%_
                             _%hd166623167121%_
                             _%tl166622167123%_
                             _%e166627167126%_
                             _%hd166626167129%_
                             _%tl166625167131%_)))))
                   (_%__match170868170869%_
                    (lambda (_%e166606167070%_
                             _%hd166605167073%_
                             _%tl166604167075%_
                             _%e166609167078%_
                             _%hd166608167081%_
                             _%tl166607167083%_
                             _%e166612167086%_
                             _%hd166611167089%_
                             _%tl166610167091%_
                             _%e166615167094%_
                             _%hd166614167097%_
                             _%tl166613167099%_
                             _%e166618167102%_
                             _%hd166617167105%_
                             _%tl166616167107%_
                             _%e166621167110%_
                             _%hd166620167113%_
                             _%tl166619167115%_
                             _%e166624167118%_
                             _%hd166623167121%_
                             _%tl166622167123%_
                             _%e166627167126%_
                             _%hd166626167129%_
                             _%tl166625167131%_
                             _%e166630167134%_
                             _%hd166629167137%_
                             _%tl166628167139%_
                             _%e166633167142%_
                             _%hd166632167145%_
                             _%tl166631167147%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166625167131%_))
                          (_%__match170870170871%_
                           _%e166606167070%_
                           _%hd166605167073%_
                           _%tl166604167075%_
                           _%e166609167078%_
                           _%hd166608167081%_
                           _%tl166607167083%_
                           _%e166612167086%_
                           _%hd166611167089%_
                           _%tl166610167091%_
                           _%e166615167094%_
                           _%hd166614167097%_
                           _%tl166613167099%_
                           _%e166618167102%_
                           _%hd166617167105%_
                           _%tl166616167107%_
                           _%e166621167110%_
                           _%hd166620167113%_
                           _%tl166619167115%_
                           _%e166624167118%_
                           _%hd166623167121%_
                           _%tl166622167123%_
                           _%e166627167126%_
                           _%hd166626167129%_
                           _%tl166625167131%_
                           _%e166630167134%_
                           _%hd166629167137%_
                           _%tl166628167139%_
                           _%e166633167142%_
                           _%hd166632167145%_
                           _%tl166631167147%_)
                          (_%__match170948170949%_
                           _%e166606167070%_
                           _%hd166605167073%_
                           _%tl166604167075%_
                           _%e166609167078%_
                           _%hd166608167081%_
                           _%tl166607167083%_
                           _%e166612167086%_
                           _%hd166611167089%_
                           _%tl166610167091%_
                           _%e166615167094%_
                           _%hd166614167097%_
                           _%tl166613167099%_
                           _%e166618167102%_
                           _%hd166617167105%_
                           _%tl166616167107%_
                           _%e166621167110%_
                           _%hd166620167113%_
                           _%tl166619167115%_
                           _%e166624167118%_
                           _%hd166623167121%_
                           _%tl166622167123%_
                           _%e166627167126%_
                           _%hd166626167129%_
                           _%tl166625167131%_
                           _%e166630167134%_
                           _%hd166629167137%_
                           _%tl166628167139%_
                           _%e166633167142%_
                           _%hd166632167145%_
                           _%tl166631167147%_))))
                   (_%__match170858170859%_
                    (lambda (_%e166606167070%_
                             _%hd166605167073%_
                             _%tl166604167075%_
                             _%e166609167078%_
                             _%hd166608167081%_
                             _%tl166607167083%_
                             _%e166612167086%_
                             _%hd166611167089%_
                             _%tl166610167091%_
                             _%e166615167094%_
                             _%hd166614167097%_
                             _%tl166613167099%_
                             _%e166618167102%_
                             _%hd166617167105%_
                             _%tl166616167107%_
                             _%e166621167110%_
                             _%hd166620167113%_
                             _%tl166619167115%_
                             _%e166624167118%_
                             _%hd166623167121%_
                             _%tl166622167123%_
                             _%e166627167126%_
                             _%hd166626167129%_
                             _%tl166625167131%_
                             _%e166630167134%_
                             _%hd166629167137%_
                             _%tl166628167139%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166629167137%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166628167139%_))
                              (let ((_%e166633167142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166628167139%_))))
                                (let ((_%tl166631167147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166633167142%_)))
                                      (_%hd166632167145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166633167142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166631167147%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166625167131%_))
                                          (_%__match170870170871%_
                                           _%e166606167070%_
                                           _%hd166605167073%_
                                           _%tl166604167075%_
                                           _%e166609167078%_
                                           _%hd166608167081%_
                                           _%tl166607167083%_
                                           _%e166612167086%_
                                           _%hd166611167089%_
                                           _%tl166610167091%_
                                           _%e166615167094%_
                                           _%hd166614167097%_
                                           _%tl166613167099%_
                                           _%e166618167102%_
                                           _%hd166617167105%_
                                           _%tl166616167107%_
                                           _%e166621167110%_
                                           _%hd166620167113%_
                                           _%tl166619167115%_
                                           _%e166624167118%_
                                           _%hd166623167121%_
                                           _%tl166622167123%_
                                           _%e166627167126%_
                                           _%hd166626167129%_
                                           _%tl166625167131%_
                                           _%e166630167134%_
                                           _%hd166629167137%_
                                           _%tl166628167139%_
                                           _%e166633167142%_
                                           _%hd166632167145%_
                                           _%tl166631167147%_)
                                          (_%__match170948170949%_
                                           _%e166606167070%_
                                           _%hd166605167073%_
                                           _%tl166604167075%_
                                           _%e166609167078%_
                                           _%hd166608167081%_
                                           _%tl166607167083%_
                                           _%e166612167086%_
                                           _%hd166611167089%_
                                           _%tl166610167091%_
                                           _%e166615167094%_
                                           _%hd166614167097%_
                                           _%tl166613167099%_
                                           _%e166618167102%_
                                           _%hd166617167105%_
                                           _%tl166616167107%_
                                           _%e166621167110%_
                                           _%hd166620167113%_
                                           _%tl166619167115%_
                                           _%e166624167118%_
                                           _%hd166623167121%_
                                           _%tl166622167123%_
                                           _%e166627167126%_
                                           _%hd166626167129%_
                                           _%tl166625167131%_
                                           _%e166630167134%_
                                           _%hd166629167137%_
                                           _%tl166628167139%_
                                           _%e166633167142%_
                                           _%hd166632167145%_
                                           _%tl166631167147%_))
                                      (_%__match171072171073%_
                                       _%e166606167070%_
                                       _%hd166605167073%_
                                       _%tl166604167075%_
                                       _%e166609167078%_
                                       _%hd166608167081%_
                                       _%tl166607167083%_
                                       _%e166612167086%_
                                       _%hd166611167089%_
                                       _%tl166610167091%_
                                       _%e166615167094%_
                                       _%hd166614167097%_
                                       _%tl166613167099%_
                                       _%e166618167102%_
                                       _%hd166617167105%_
                                       _%tl166616167107%_
                                       _%e166621167110%_
                                       _%hd166620167113%_
                                       _%tl166619167115%_
                                       _%e166624167118%_
                                       _%hd166623167121%_
                                       _%tl166622167123%_
                                       _%e166627167126%_
                                       _%hd166626167129%_
                                       _%tl166625167131%_))))
                              (_%__match171072171073%_
                               _%e166606167070%_
                               _%hd166605167073%_
                               _%tl166604167075%_
                               _%e166609167078%_
                               _%hd166608167081%_
                               _%tl166607167083%_
                               _%e166612167086%_
                               _%hd166611167089%_
                               _%tl166610167091%_
                               _%e166615167094%_
                               _%hd166614167097%_
                               _%tl166613167099%_
                               _%e166618167102%_
                               _%hd166617167105%_
                               _%tl166616167107%_
                               _%e166621167110%_
                               _%hd166620167113%_
                               _%tl166619167115%_
                               _%e166624167118%_
                               _%hd166623167121%_
                               _%tl166622167123%_
                               _%e166627167126%_
                               _%hd166626167129%_
                               _%tl166625167131%_))
                          (_%__match171072171073%_
                           _%e166606167070%_
                           _%hd166605167073%_
                           _%tl166604167075%_
                           _%e166609167078%_
                           _%hd166608167081%_
                           _%tl166607167083%_
                           _%e166612167086%_
                           _%hd166611167089%_
                           _%tl166610167091%_
                           _%e166615167094%_
                           _%hd166614167097%_
                           _%tl166613167099%_
                           _%e166618167102%_
                           _%hd166617167105%_
                           _%tl166616167107%_
                           _%e166621167110%_
                           _%hd166620167113%_
                           _%tl166619167115%_
                           _%e166624167118%_
                           _%hd166623167121%_
                           _%tl166622167123%_
                           _%e166627167126%_
                           _%hd166626167129%_
                           _%tl166625167131%_))))
                   (_%__match170790170791%_
                    (lambda (_%e166555167189%_
                             _%hd166554167192%_
                             _%tl166553167194%_
                             _%e166558167197%_
                             _%hd166557167200%_
                             _%tl166556167202%_
                             _%e166561167205%_
                             _%hd166560167208%_
                             _%tl166559167210%_
                             _%e166564167213%_
                             _%hd166563167216%_
                             _%tl166562167218%_
                             _%e166567167221%_
                             _%hd166566167224%_
                             _%tl166565167226%_
                             _%e166570167229%_
                             _%hd166569167232%_
                             _%tl166568167234%_
                             _%e166573167237%_
                             _%hd166572167240%_
                             _%tl166571167242%_
                             _%e166576167245%_
                             _%hd166575167248%_
                             _%tl166574167250%_
                             _%e166579167253%_
                             _%hd166578167256%_
                             _%tl166577167258%_
                             _%e166582167261%_
                             _%hd166581167264%_
                             _%tl166580167266%_
                             _%e166585167269%_
                             _%hd166584167272%_
                             _%tl166583167274%_
                             _%e166588167277%_
                             _%hd166587167280%_
                             _%tl166586167282%_
                             _%e166591167285%_
                             _%hd166590167288%_
                             _%tl166589167290%_
                             _%__splice170583170584%_
                             _%target166592167293%_
                             _%tl166594167295%_)
                      (letrec ((_%loop166595167298%_
                                (lambda (_%hd166593167301%_
                                         _%args166599167303%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166593167301%_))
                                      (let ((_%e166596167306%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166593167301%_))))
                                        (let ((_%lp-tl166598167311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166596167306%_)))
                                              (_%lp-hd166597167309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166596167306%_))))
                                          (_%loop166595167298%_
                                           _%lp-tl166598167311%_
                                           (cons _%lp-hd166597167309%_
                                                 _%args166599167303%_))))
                                      (let ((_%args166600167314%_
                                             (reverse _%args166599167303%_)))
                                        (let ((_%L167317%_
                                               _%args166600167314%_)
                                              (_%L167318%_ _%hd166590167288%_)
                                              (_%L167319%_ _%hd166581167264%_)
                                              (_%L167320%_ _%hd166572167240%_)
                                              (_%L167321%_ _%hd166563167216%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167321%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167320%_
                                                      'call-method))
                                                   (let ((__tmp171699
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166494%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167319%_
                                                      __tmp171699)))
                                              (_%__kont170581170582%_
                                               _%L167317%_
                                               _%L167318%_
                                               _%L167319%_
                                               _%L167320%_
                                               _%L167321%_)
                                              (_%__kont170593170594%_))))))))
                        (_%loop166595167298%_ _%target166592167293%_ '()))))
                   (_%__match170748170749%_
                    (lambda (_%e166555167189%_
                             _%hd166554167192%_
                             _%tl166553167194%_
                             _%e166558167197%_
                             _%hd166557167200%_
                             _%tl166556167202%_
                             _%e166561167205%_
                             _%hd166560167208%_
                             _%tl166559167210%_
                             _%e166564167213%_
                             _%hd166563167216%_
                             _%tl166562167218%_
                             _%e166567167221%_
                             _%hd166566167224%_
                             _%tl166565167226%_
                             _%e166570167229%_
                             _%hd166569167232%_
                             _%tl166568167234%_
                             _%e166573167237%_
                             _%hd166572167240%_
                             _%tl166571167242%_
                             _%e166576167245%_
                             _%hd166575167248%_
                             _%tl166574167250%_
                             _%e166579167253%_
                             _%hd166578167256%_
                             _%tl166577167258%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166578167256%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166577167258%_))
                              (let ((_%e166582167261%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166577167258%_))))
                                (let ((_%tl166580167266%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166582167261%_)))
                                      (_%hd166581167264%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166582167261%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166580167266%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166574167250%_))
                                          (let ((_%e166585167269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166574167250%_))))
                                            (let ((_%tl166583167274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166585167269%_)))
                                                  (_%hd166584167272%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166585167269%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166584167272%_))
                                                  (let ((_%e166588167277%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166584167272%_))))
                                                    (let ((_%tl166586167282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166588167277%_)))
                                                          (_%hd166587167280%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166588167277%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166587167280%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166587167280%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166586167282%_))
                          (let ((_%e166591167285%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166586167282%_))))
                            (let ((_%tl166589167290%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166591167285%_)))
                                  (_%hd166590167288%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166591167285%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166589167290%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166583167274%_))
                                      (let ((_%__splice170583170584%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166583167274%_
                                                '0))))
                                        (let ((_%tl166594167295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170583170584%_
                                                  '1)))
                                              (_%target166592167293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170583170584%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166594167295%_))
                                              (_%__match170790170791%_
                                               _%e166555167189%_
                                               _%hd166554167192%_
                                               _%tl166553167194%_
                                               _%e166558167197%_
                                               _%hd166557167200%_
                                               _%tl166556167202%_
                                               _%e166561167205%_
                                               _%hd166560167208%_
                                               _%tl166559167210%_
                                               _%e166564167213%_
                                               _%hd166563167216%_
                                               _%tl166562167218%_
                                               _%e166567167221%_
                                               _%hd166566167224%_
                                               _%tl166565167226%_
                                               _%e166570167229%_
                                               _%hd166569167232%_
                                               _%tl166568167234%_
                                               _%e166573167237%_
                                               _%hd166572167240%_
                                               _%tl166571167242%_
                                               _%e166576167245%_
                                               _%hd166575167248%_
                                               _%tl166574167250%_
                                               _%e166579167253%_
                                               _%hd166578167256%_
                                               _%tl166577167258%_
                                               _%e166582167261%_
                                               _%hd166581167264%_
                                               _%tl166580167266%_
                                               _%e166585167269%_
                                               _%hd166584167272%_
                                               _%tl166583167274%_
                                               _%e166588167277%_
                                               _%hd166587167280%_
                                               _%tl166586167282%_
                                               _%e166591167285%_
                                               _%hd166590167288%_
                                               _%tl166589167290%_
                                               _%__splice170583170584%_
                                               _%target166592167293%_
                                               _%tl166594167295%_)
                                              (_%__kont170593170594%_))))
                                      (_%__kont170593170594%_))
                                  (_%__kont170593170594%_))))
                          (_%__kont170593170594%_))
                      (_%__kont170593170594%_))
                  (_%__kont170593170594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170593170594%_))))
                                          (_%__match171072171073%_
                                           _%e166555167189%_
                                           _%hd166554167192%_
                                           _%tl166553167194%_
                                           _%e166558167197%_
                                           _%hd166557167200%_
                                           _%tl166556167202%_
                                           _%e166561167205%_
                                           _%hd166560167208%_
                                           _%tl166559167210%_
                                           _%e166564167213%_
                                           _%hd166563167216%_
                                           _%tl166562167218%_
                                           _%e166567167221%_
                                           _%hd166566167224%_
                                           _%tl166565167226%_
                                           _%e166570167229%_
                                           _%hd166569167232%_
                                           _%tl166568167234%_
                                           _%e166573167237%_
                                           _%hd166572167240%_
                                           _%tl166571167242%_
                                           _%e166576167245%_
                                           _%hd166575167248%_
                                           _%tl166574167250%_))
                                      (_%__match171072171073%_
                                       _%e166555167189%_
                                       _%hd166554167192%_
                                       _%tl166553167194%_
                                       _%e166558167197%_
                                       _%hd166557167200%_
                                       _%tl166556167202%_
                                       _%e166561167205%_
                                       _%hd166560167208%_
                                       _%tl166559167210%_
                                       _%e166564167213%_
                                       _%hd166563167216%_
                                       _%tl166562167218%_
                                       _%e166567167221%_
                                       _%hd166566167224%_
                                       _%tl166565167226%_
                                       _%e166570167229%_
                                       _%hd166569167232%_
                                       _%tl166568167234%_
                                       _%e166573167237%_
                                       _%hd166572167240%_
                                       _%tl166571167242%_
                                       _%e166576167245%_
                                       _%hd166575167248%_
                                       _%tl166574167250%_))))
                              (_%__match171072171073%_
                               _%e166555167189%_
                               _%hd166554167192%_
                               _%tl166553167194%_
                               _%e166558167197%_
                               _%hd166557167200%_
                               _%tl166556167202%_
                               _%e166561167205%_
                               _%hd166560167208%_
                               _%tl166559167210%_
                               _%e166564167213%_
                               _%hd166563167216%_
                               _%tl166562167218%_
                               _%e166567167221%_
                               _%hd166566167224%_
                               _%tl166565167226%_
                               _%e166570167229%_
                               _%hd166569167232%_
                               _%tl166568167234%_
                               _%e166573167237%_
                               _%hd166572167240%_
                               _%tl166571167242%_
                               _%e166576167245%_
                               _%hd166575167248%_
                               _%tl166574167250%_))
                          (_%__match170858170859%_
                           _%e166555167189%_
                           _%hd166554167192%_
                           _%tl166553167194%_
                           _%e166558167197%_
                           _%hd166557167200%_
                           _%tl166556167202%_
                           _%e166561167205%_
                           _%hd166560167208%_
                           _%tl166559167210%_
                           _%e166564167213%_
                           _%hd166563167216%_
                           _%tl166562167218%_
                           _%e166567167221%_
                           _%hd166566167224%_
                           _%tl166565167226%_
                           _%e166570167229%_
                           _%hd166569167232%_
                           _%tl166568167234%_
                           _%e166573167237%_
                           _%hd166572167240%_
                           _%tl166571167242%_
                           _%e166576167245%_
                           _%hd166575167248%_
                           _%tl166574167250%_
                           _%e166579167253%_
                           _%hd166578167256%_
                           _%tl166577167258%_))))
                   (_%__match170680170681%_
                    (lambda (_%e166511167378%_
                             _%hd166510167381%_
                             _%tl166509167383%_
                             _%e166514167386%_
                             _%hd166513167389%_
                             _%tl166512167391%_
                             _%e166517167394%_
                             _%hd166516167397%_
                             _%tl166515167399%_
                             _%e166520167402%_
                             _%hd166519167405%_
                             _%tl166518167407%_
                             _%e166523167410%_
                             _%hd166522167413%_
                             _%tl166521167415%_
                             _%e166526167418%_
                             _%hd166525167421%_
                             _%tl166524167423%_
                             _%e166529167426%_
                             _%hd166528167429%_
                             _%tl166527167431%_
                             _%e166532167434%_
                             _%hd166531167437%_
                             _%tl166530167439%_
                             _%e166535167442%_
                             _%hd166534167445%_
                             _%tl166533167447%_
                             _%e166538167450%_
                             _%hd166537167453%_
                             _%tl166536167455%_
                             _%__splice170579170580%_
                             _%target166539167458%_
                             _%tl166541167460%_)
                      (letrec ((_%loop166542167463%_
                                (lambda (_%hd166540167466%_
                                         _%args166546167468%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166540167466%_))
                                      (let ((_%e166543167471%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166540167466%_))))
                                        (let ((_%lp-tl166545167476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166543167471%_)))
                                              (_%lp-hd166544167474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166543167471%_))))
                                          (_%loop166542167463%_
                                           _%lp-tl166545167476%_
                                           (cons _%lp-hd166544167474%_
                                                 _%args166546167468%_))))
                                      (let ((_%args166547167479%_
                                             (reverse _%args166546167468%_)))
                                        (let ((_%L167482%_
                                               _%args166547167479%_)
                                              (_%L167483%_ _%hd166537167453%_)
                                              (_%L167484%_ _%hd166528167429%_)
                                              (_%L167485%_ _%hd166519167405%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167485%_
                                                      'call-method))
                                                   (let ((__tmp171700
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166494%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167484%_
                                                      __tmp171700)))
                                              (_%__kont170577170578%_
                                               _%L167482%_
                                               _%L167483%_
                                               _%L167484%_
                                               _%L167485%_)
                                              (_%__match170868170869%_
                                               _%e166511167378%_
                                               _%hd166510167381%_
                                               _%tl166509167383%_
                                               _%e166514167386%_
                                               _%hd166513167389%_
                                               _%tl166512167391%_
                                               _%e166517167394%_
                                               _%hd166516167397%_
                                               _%tl166515167399%_
                                               _%e166520167402%_
                                               _%hd166519167405%_
                                               _%tl166518167407%_
                                               _%e166523167410%_
                                               _%hd166522167413%_
                                               _%tl166521167415%_
                                               _%e166526167418%_
                                               _%hd166525167421%_
                                               _%tl166524167423%_
                                               _%e166529167426%_
                                               _%hd166528167429%_
                                               _%tl166527167431%_
                                               _%e166532167434%_
                                               _%hd166531167437%_
                                               _%tl166530167439%_
                                               _%e166535167442%_
                                               _%hd166534167445%_
                                               _%tl166533167447%_
                                               _%e166538167450%_
                                               _%hd166537167453%_
                                               _%tl166536167455%_))))))))
                        (_%loop166542167463%_ _%target166539167458%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170575170576%_))
                  (let ((_%e166511167378%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170575170576%_))))
                    (let ((_%tl166509167383%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166511167378%_)))
                          (_%hd166510167381%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166511167378%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166509167383%_))
                          (let ((_%e166514167386%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166509167383%_))))
                            (let ((_%tl166512167391%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166514167386%_)))
                                  (_%hd166513167389%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166514167386%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166513167389%_))
                                  (let ((_%e166517167394%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166513167389%_))))
                                    (let ((_%tl166515167399%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166517167394%_)))
                                          (_%hd166516167397%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166517167394%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166516167397%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166516167397%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166515167399%_))
                                                  (let ((_%e166520167402%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166515167399%_))))
                                                    (let ((_%tl166518167407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166520167402%_)))
                                                          (_%hd166519167405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166520167402%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166518167407%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl166512167391%_))
                      (let ((_%e166523167410%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl166512167391%_))))
                        (let ((_%tl166521167415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e166523167410%_)))
                              (_%hd166522167413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e166523167410%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd166522167413%_))
                              (let ((_%e166526167418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd166522167413%_))))
                                (let ((_%tl166524167423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166526167418%_)))
                                      (_%hd166525167421%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166526167418%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd166525167421%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd166525167421%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl166524167423%_))
                                              (let ((_%e166529167426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl166524167423%_))))
                                                (let ((_%tl166527167431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e166529167426%_)))
                                                      (_%hd166528167429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e166529167426%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl166527167431%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl166521167415%_))
                                                          (let ((_%e166532167434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl166521167415%_))))
                    (let ((_%tl166530167439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166532167434%_)))
                          (_%hd166531167437%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166532167434%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166531167437%_))
                          (let ((_%e166535167442%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166531167437%_))))
                            (let ((_%tl166533167447%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166535167442%_)))
                                  (_%hd166534167445%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166535167442%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166534167445%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166534167445%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166533167447%_))
                                          (let ((_%e166538167450%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166533167447%_))))
                                            (let ((_%tl166536167455%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166538167450%_)))
                                                  (_%hd166537167453%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166538167450%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166536167455%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl166530167439%_))
                                                      (let ((_%__splice170579170580%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl166530167439%_ '0))))
                (let ((_%tl166541167460%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170579170580%_ '1)))
                      (_%target166539167458%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170579170580%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166541167460%_))
                      (_%__match170680170681%_
                       _%e166511167378%_
                       _%hd166510167381%_
                       _%tl166509167383%_
                       _%e166514167386%_
                       _%hd166513167389%_
                       _%tl166512167391%_
                       _%e166517167394%_
                       _%hd166516167397%_
                       _%tl166515167399%_
                       _%e166520167402%_
                       _%hd166519167405%_
                       _%tl166518167407%_
                       _%e166523167410%_
                       _%hd166522167413%_
                       _%tl166521167415%_
                       _%e166526167418%_
                       _%hd166525167421%_
                       _%tl166524167423%_
                       _%e166529167426%_
                       _%hd166528167429%_
                       _%tl166527167431%_
                       _%e166532167434%_
                       _%hd166531167437%_
                       _%tl166530167439%_
                       _%e166535167442%_
                       _%hd166534167445%_
                       _%tl166533167447%_
                       _%e166538167450%_
                       _%hd166537167453%_
                       _%tl166536167455%_
                       _%__splice170579170580%_
                       _%target166539167458%_
                       _%tl166541167460%_)
                      (_%__match170868170869%_
                       _%e166511167378%_
                       _%hd166510167381%_
                       _%tl166509167383%_
                       _%e166514167386%_
                       _%hd166513167389%_
                       _%tl166512167391%_
                       _%e166517167394%_
                       _%hd166516167397%_
                       _%tl166515167399%_
                       _%e166520167402%_
                       _%hd166519167405%_
                       _%tl166518167407%_
                       _%e166523167410%_
                       _%hd166522167413%_
                       _%tl166521167415%_
                       _%e166526167418%_
                       _%hd166525167421%_
                       _%tl166524167423%_
                       _%e166529167426%_
                       _%hd166528167429%_
                       _%tl166527167431%_
                       _%e166532167434%_
                       _%hd166531167437%_
                       _%tl166530167439%_
                       _%e166535167442%_
                       _%hd166534167445%_
                       _%tl166533167447%_
                       _%e166538167450%_
                       _%hd166537167453%_
                       _%tl166536167455%_))))
              (_%__match170868170869%_
               _%e166511167378%_
               _%hd166510167381%_
               _%tl166509167383%_
               _%e166514167386%_
               _%hd166513167389%_
               _%tl166512167391%_
               _%e166517167394%_
               _%hd166516167397%_
               _%tl166515167399%_
               _%e166520167402%_
               _%hd166519167405%_
               _%tl166518167407%_
               _%e166523167410%_
               _%hd166522167413%_
               _%tl166521167415%_
               _%e166526167418%_
               _%hd166525167421%_
               _%tl166524167423%_
               _%e166529167426%_
               _%hd166528167429%_
               _%tl166527167431%_
               _%e166532167434%_
               _%hd166531167437%_
               _%tl166530167439%_
               _%e166535167442%_
               _%hd166534167445%_
               _%tl166533167447%_
               _%e166538167450%_
               _%hd166537167453%_
               _%tl166536167455%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match171072171073%_
                                                   _%e166511167378%_
                                                   _%hd166510167381%_
                                                   _%tl166509167383%_
                                                   _%e166514167386%_
                                                   _%hd166513167389%_
                                                   _%tl166512167391%_
                                                   _%e166517167394%_
                                                   _%hd166516167397%_
                                                   _%tl166515167399%_
                                                   _%e166520167402%_
                                                   _%hd166519167405%_
                                                   _%tl166518167407%_
                                                   _%e166523167410%_
                                                   _%hd166522167413%_
                                                   _%tl166521167415%_
                                                   _%e166526167418%_
                                                   _%hd166525167421%_
                                                   _%tl166524167423%_
                                                   _%e166529167426%_
                                                   _%hd166528167429%_
                                                   _%tl166527167431%_
                                                   _%e166532167434%_
                                                   _%hd166531167437%_
                                                   _%tl166530167439%_))))
                                          (_%__match171072171073%_
                                           _%e166511167378%_
                                           _%hd166510167381%_
                                           _%tl166509167383%_
                                           _%e166514167386%_
                                           _%hd166513167389%_
                                           _%tl166512167391%_
                                           _%e166517167394%_
                                           _%hd166516167397%_
                                           _%tl166515167399%_
                                           _%e166520167402%_
                                           _%hd166519167405%_
                                           _%tl166518167407%_
                                           _%e166523167410%_
                                           _%hd166522167413%_
                                           _%tl166521167415%_
                                           _%e166526167418%_
                                           _%hd166525167421%_
                                           _%tl166524167423%_
                                           _%e166529167426%_
                                           _%hd166528167429%_
                                           _%tl166527167431%_
                                           _%e166532167434%_
                                           _%hd166531167437%_
                                           _%tl166530167439%_))
                                      (_%__match170748170749%_
                                       _%e166511167378%_
                                       _%hd166510167381%_
                                       _%tl166509167383%_
                                       _%e166514167386%_
                                       _%hd166513167389%_
                                       _%tl166512167391%_
                                       _%e166517167394%_
                                       _%hd166516167397%_
                                       _%tl166515167399%_
                                       _%e166520167402%_
                                       _%hd166519167405%_
                                       _%tl166518167407%_
                                       _%e166523167410%_
                                       _%hd166522167413%_
                                       _%tl166521167415%_
                                       _%e166526167418%_
                                       _%hd166525167421%_
                                       _%tl166524167423%_
                                       _%e166529167426%_
                                       _%hd166528167429%_
                                       _%tl166527167431%_
                                       _%e166532167434%_
                                       _%hd166531167437%_
                                       _%tl166530167439%_
                                       _%e166535167442%_
                                       _%hd166534167445%_
                                       _%tl166533167447%_))
                                  (_%__match171072171073%_
                                   _%e166511167378%_
                                   _%hd166510167381%_
                                   _%tl166509167383%_
                                   _%e166514167386%_
                                   _%hd166513167389%_
                                   _%tl166512167391%_
                                   _%e166517167394%_
                                   _%hd166516167397%_
                                   _%tl166515167399%_
                                   _%e166520167402%_
                                   _%hd166519167405%_
                                   _%tl166518167407%_
                                   _%e166523167410%_
                                   _%hd166522167413%_
                                   _%tl166521167415%_
                                   _%e166526167418%_
                                   _%hd166525167421%_
                                   _%tl166524167423%_
                                   _%e166529167426%_
                                   _%hd166528167429%_
                                   _%tl166527167431%_
                                   _%e166532167434%_
                                   _%hd166531167437%_
                                   _%tl166530167439%_))))
                          (_%__match171072171073%_
                           _%e166511167378%_
                           _%hd166510167381%_
                           _%tl166509167383%_
                           _%e166514167386%_
                           _%hd166513167389%_
                           _%tl166512167391%_
                           _%e166517167394%_
                           _%hd166516167397%_
                           _%tl166515167399%_
                           _%e166520167402%_
                           _%hd166519167405%_
                           _%tl166518167407%_
                           _%e166523167410%_
                           _%hd166522167413%_
                           _%tl166521167415%_
                           _%e166526167418%_
                           _%hd166525167421%_
                           _%tl166524167423%_
                           _%e166529167426%_
                           _%hd166528167429%_
                           _%tl166527167431%_
                           _%e166532167434%_
                           _%hd166531167437%_
                           _%tl166530167439%_))))
                  (_%__match171010171011%_
                   _%e166511167378%_
                   _%hd166510167381%_
                   _%tl166509167383%_
                   _%e166514167386%_
                   _%hd166513167389%_
                   _%tl166512167391%_
                   _%e166517167394%_
                   _%hd166516167397%_
                   _%tl166515167399%_
                   _%e166520167402%_
                   _%hd166519167405%_
                   _%tl166518167407%_
                   _%e166523167410%_
                   _%hd166522167413%_
                   _%tl166521167415%_
                   _%e166526167418%_
                   _%hd166525167421%_
                   _%tl166524167423%_
                   _%e166529167426%_
                   _%hd166528167429%_
                   _%tl166527167431%_))
              (_%__kont170593170594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170593170594%_))
                                          (_%__kont170593170594%_))
                                      (_%__kont170593170594%_))))
                              (_%__kont170593170594%_))))
                      (_%__kont170593170594%_))
                  (_%__kont170593170594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170593170594%_))
                                              (_%__kont170593170594%_))
                                          (_%__kont170593170594%_))))
                                  (_%__kont170593170594%_))))
                          (_%__kont170593170594%_))))
                  (_%__kont170593170594%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self165433%_ _%stx165434%_)
        (letrec ((_%force-e165436%_
                  (lambda (_%target166492%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target166492%_ '()))
                                      '()))))))
          (let* ((_%__stx171077171078%_ _%stx165434%_)
                 (_%g165444165666%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171077171078%_)))))
            (let ((_%__kont171079171080%_
                   (lambda (_%L166438%_ _%L166439%_ _%L166440%_ _%L166441%_)
                     (let ((_%$method166486%_
                            (let ((__tmp171702
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165433%_ 'methods)))
                                  (__tmp171701
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166439%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171702 __tmp171701)))
                           (_%args166487%_
                            (map (lambda (_%g166474166476%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165433%_
                                      _%g166474166476%_)))
                                 (let ((__tmp171703
                                        (lambda (_%g166478166481%_
                                                 _%g166479166483%_)
                                          (cons _%g166478166481%_
                                                _%g166479166483%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171703 '() _%L166438%_)))))
                       (let ((__tmp171704
                              (cons '%#call
                                    (cons (_%force-e165436%_ _%$method166486%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165433%_
                                                               'receiver))
                                                            '()))
                                                _%args166487%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171704 _%stx165434%_)))))
                  (_%__kont171083171084%_
                   (lambda (_%L166270%_
                            _%L166271%_
                            _%L166272%_
                            _%L166273%_
                            _%L166274%_)
                     (let ((_%$method166326%_
                            (let ((__tmp171706
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165433%_ 'methods)))
                                  (__tmp171705
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166271%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171706 __tmp171705)))
                           (_%args166327%_
                            (map (lambda (_%g166314166316%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165433%_
                                      _%g166314166316%_)))
                                 (let ((__tmp171707
                                        (lambda (_%g166318166321%_
                                                 _%g166319166323%_)
                                          (cons _%g166318166321%_
                                                _%g166319166323%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171707 '() _%L166270%_)))))
                       (let ((__tmp171708
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e165436%_
                                                 _%$method166326%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165433%_ 'receiver))
                          '()))
              _%args166327%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171708 _%stx165434%_)))))
                  (_%__kont171087171088%_
                   (lambda (_%L166101%_ _%L166102%_ _%L166103%_)
                     (let* ((_%$field166135%_
                             (let ((__tmp171710
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self165433%_ 'slots)))
                                   (__tmp171709
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L166101%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171710 __tmp171709)))
                            (__tmp171711
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self165433%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field166135%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self165433%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171711 _%stx165434%_))))
                  (_%__kont171089171090%_
                   (lambda (_%L165975%_ _%L165976%_ _%L165977%_ _%L165978%_)
                     (let ((_%$field166013%_
                            (let ((__tmp171713
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165433%_ 'slots)))
                                  (__tmp171712
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165976%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171713 __tmp171712)))
                           (_%expr166014%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self165433%_ _%L165975%_))))
                       (let ((__tmp171714
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self165433%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field166013%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165433%_ 'receiver))
                          '()))
              (cons _%expr166014%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171714 _%stx165434%_)))))
                  (_%__kont171091171092%_
                   (lambda (_%L165847%_ _%L165848%_)
                     (let* ((_%accessor165870%_
                             (let ((__tmp171715
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165848%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171715)))
                            (_%klass165872%_
                             (let ((__tmp171716
                                    (##structure-ref
                                     _%accessor165870%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165434%_
                                __tmp171716)))
                            (_%slot165874%_
                             (##structure-ref
                              _%accessor165870%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (not (##structure-ref
                                      _%accessor165870%_
                                      '4
                                      gxc#!accessor::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165872%_
                                       _%slot165874%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165872%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx165434%_
                           (let* ((_%$field165880%_
                                   (let ((__tmp171717
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165433%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171717 _%slot165874%_)))
                                  (__tmp171718
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165433%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165433%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171718
                              _%stx165434%_))))))
                  (_%__kont171093171094%_
                   (lambda (_%L165742%_ _%L165743%_ _%L165744%_)
                     (let* ((_%mutator165772%_
                             (let ((__tmp171719
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165744%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171719)))
                            (_%klass165774%_
                             (let ((__tmp171720
                                    (##structure-ref
                                     _%mutator165772%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165434%_
                                __tmp171720)))
                            (_%slot165776%_
                             (##structure-ref
                              _%mutator165772%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165778%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self165433%_ _%L165742%_))))
                       (if (and (not (##structure-ref
                                      _%mutator165772%_
                                      '4
                                      gxc#!mutator::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165774%_
                                       _%slot165776%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165774%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171721
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165744%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165743%_
                                                                '()))
                                                    (cons _%expr165778%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171721 _%stx165434%_))
                           (let* ((_%$field165784%_
                                   (let ((__tmp171722
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165433%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171722 _%slot165776%_)))
                                  (__tmp171723
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165433%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165433%_ 'receiver))
                               '()))
                   (cons _%expr165778%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171723
                              _%stx165434%_))))))
                  (_%__kont171095171096%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self165433%_ _%stx165434%_)))))
              (let* ((_%__match171576171577%_
                      (lambda (_%e165640165678%_
                               _%hd165639165681%_
                               _%tl165638165683%_
                               _%e165643165686%_
                               _%hd165642165689%_
                               _%tl165641165691%_
                               _%e165646165694%_
                               _%hd165645165697%_
                               _%tl165644165699%_
                               _%e165649165702%_
                               _%hd165648165705%_
                               _%tl165647165707%_
                               _%e165652165710%_
                               _%hd165651165713%_
                               _%tl165650165715%_
                               _%e165655165718%_
                               _%hd165654165721%_
                               _%tl165653165723%_
                               _%e165658165726%_
                               _%hd165657165729%_
                               _%tl165656165731%_
                               _%e165661165734%_
                               _%hd165660165737%_
                               _%tl165659165739%_)
                        (let ((_%L165742%_ _%hd165660165737%_)
                              (_%L165743%_ _%hd165657165729%_)
                              (_%L165744%_ _%hd165648165705%_))
                          (if (and (let ((__tmp171724
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165433%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165743%_
                                      __tmp171724))
                                   (let ((__tmp171725
                                          (let ((__tmp171726
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165744%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171726))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171725
                                      'gxc#!mutator::t)))
                              (_%__kont171093171094%_
                               _%L165742%_
                               _%L165743%_
                               _%L165744%_)
                              (_%__kont171095171096%_)))))
                     (_%__match171574171575%_
                      (lambda (_%e165640165678%_
                               _%hd165639165681%_
                               _%tl165638165683%_
                               _%e165643165686%_
                               _%hd165642165689%_
                               _%tl165641165691%_
                               _%e165646165694%_
                               _%hd165645165697%_
                               _%tl165644165699%_
                               _%e165649165702%_
                               _%hd165648165705%_
                               _%tl165647165707%_
                               _%e165652165710%_
                               _%hd165651165713%_
                               _%tl165650165715%_
                               _%e165655165718%_
                               _%hd165654165721%_
                               _%tl165653165723%_
                               _%e165658165726%_
                               _%hd165657165729%_
                               _%tl165656165731%_
                               _%e165661165734%_
                               _%hd165660165737%_
                               _%tl165659165739%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165659165739%_))
                            (_%__match171576171577%_
                             _%e165640165678%_
                             _%hd165639165681%_
                             _%tl165638165683%_
                             _%e165643165686%_
                             _%hd165642165689%_
                             _%tl165641165691%_
                             _%e165646165694%_
                             _%hd165645165697%_
                             _%tl165644165699%_
                             _%e165649165702%_
                             _%hd165648165705%_
                             _%tl165647165707%_
                             _%e165652165710%_
                             _%hd165651165713%_
                             _%tl165650165715%_
                             _%e165655165718%_
                             _%hd165654165721%_
                             _%tl165653165723%_
                             _%e165658165726%_
                             _%hd165657165729%_
                             _%tl165656165731%_
                             _%e165661165734%_
                             _%hd165660165737%_
                             _%tl165659165739%_)
                            (_%__kont171095171096%_))))
                     (_%__match171568171569%_
                      (lambda (_%e165640165678%_
                               _%hd165639165681%_
                               _%tl165638165683%_
                               _%e165643165686%_
                               _%hd165642165689%_
                               _%tl165641165691%_
                               _%e165646165694%_
                               _%hd165645165697%_
                               _%tl165644165699%_
                               _%e165649165702%_
                               _%hd165648165705%_
                               _%tl165647165707%_
                               _%e165652165710%_
                               _%hd165651165713%_
                               _%tl165650165715%_
                               _%e165655165718%_
                               _%hd165654165721%_
                               _%tl165653165723%_
                               _%e165658165726%_
                               _%hd165657165729%_
                               _%tl165656165731%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165650165715%_))
                            (let ((_%e165661165734%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165650165715%_))))
                              (let ((_%tl165659165739%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165661165734%_)))
                                    (_%hd165660165737%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165661165734%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165659165739%_))
                                    (_%__match171576171577%_
                                     _%e165640165678%_
                                     _%hd165639165681%_
                                     _%tl165638165683%_
                                     _%e165643165686%_
                                     _%hd165642165689%_
                                     _%tl165641165691%_
                                     _%e165646165694%_
                                     _%hd165645165697%_
                                     _%tl165644165699%_
                                     _%e165649165702%_
                                     _%hd165648165705%_
                                     _%tl165647165707%_
                                     _%e165652165710%_
                                     _%hd165651165713%_
                                     _%tl165650165715%_
                                     _%e165655165718%_
                                     _%hd165654165721%_
                                     _%tl165653165723%_
                                     _%e165658165726%_
                                     _%hd165657165729%_
                                     _%tl165656165731%_
                                     _%e165661165734%_
                                     _%hd165660165737%_
                                     _%tl165659165739%_)
                                    (_%__kont171095171096%_))))
                            (_%__kont171095171096%_))))
                     (_%__match171514171515%_
                      (lambda (_%e165616165791%_
                               _%hd165615165794%_
                               _%tl165614165796%_
                               _%e165619165799%_
                               _%hd165618165802%_
                               _%tl165617165804%_
                               _%e165622165807%_
                               _%hd165621165810%_
                               _%tl165620165812%_
                               _%e165625165815%_
                               _%hd165624165818%_
                               _%tl165623165820%_
                               _%e165628165823%_
                               _%hd165627165826%_
                               _%tl165626165828%_
                               _%e165631165831%_
                               _%hd165630165834%_
                               _%tl165629165836%_
                               _%e165634165839%_
                               _%hd165633165842%_
                               _%tl165632165844%_)
                        (let ((_%L165847%_ _%hd165633165842%_)
                              (_%L165848%_ _%hd165624165818%_))
                          (if (and (let ((__tmp171727
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165433%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165847%_
                                      __tmp171727))
                                   (let ((__tmp171728
                                          (let ((__tmp171729
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165848%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171729))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171728
                                      'gxc#!accessor::t)))
                              (_%__kont171091171092%_ _%L165847%_ _%L165848%_)
                              (_%__kont171095171096%_)))))
                     (_%__match171512171513%_
                      (lambda (_%e165616165791%_
                               _%hd165615165794%_
                               _%tl165614165796%_
                               _%e165619165799%_
                               _%hd165618165802%_
                               _%tl165617165804%_
                               _%e165622165807%_
                               _%hd165621165810%_
                               _%tl165620165812%_
                               _%e165625165815%_
                               _%hd165624165818%_
                               _%tl165623165820%_
                               _%e165628165823%_
                               _%hd165627165826%_
                               _%tl165626165828%_
                               _%e165631165831%_
                               _%hd165630165834%_
                               _%tl165629165836%_
                               _%e165634165839%_
                               _%hd165633165842%_
                               _%tl165632165844%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165626165828%_))
                            (_%__match171514171515%_
                             _%e165616165791%_
                             _%hd165615165794%_
                             _%tl165614165796%_
                             _%e165619165799%_
                             _%hd165618165802%_
                             _%tl165617165804%_
                             _%e165622165807%_
                             _%hd165621165810%_
                             _%tl165620165812%_
                             _%e165625165815%_
                             _%hd165624165818%_
                             _%tl165623165820%_
                             _%e165628165823%_
                             _%hd165627165826%_
                             _%tl165626165828%_
                             _%e165631165831%_
                             _%hd165630165834%_
                             _%tl165629165836%_
                             _%e165634165839%_
                             _%hd165633165842%_
                             _%tl165632165844%_)
                            (_%__match171568171569%_
                             _%e165616165791%_
                             _%hd165615165794%_
                             _%tl165614165796%_
                             _%e165619165799%_
                             _%hd165618165802%_
                             _%tl165617165804%_
                             _%e165622165807%_
                             _%hd165621165810%_
                             _%tl165620165812%_
                             _%e165625165815%_
                             _%hd165624165818%_
                             _%tl165623165820%_
                             _%e165628165823%_
                             _%hd165627165826%_
                             _%tl165626165828%_
                             _%e165631165831%_
                             _%hd165630165834%_
                             _%tl165629165836%_
                             _%e165634165839%_
                             _%hd165633165842%_
                             _%tl165632165844%_))))
                     (_%__match171458171459%_
                      (lambda (_%e165581165887%_
                               _%hd165580165890%_
                               _%tl165579165892%_
                               _%e165584165895%_
                               _%hd165583165898%_
                               _%tl165582165900%_
                               _%e165587165903%_
                               _%hd165586165906%_
                               _%tl165585165908%_
                               _%e165590165911%_
                               _%hd165589165914%_
                               _%tl165588165916%_
                               _%e165593165919%_
                               _%hd165592165922%_
                               _%tl165591165924%_
                               _%e165596165927%_
                               _%hd165595165930%_
                               _%tl165594165932%_
                               _%e165599165935%_
                               _%hd165598165938%_
                               _%tl165597165940%_
                               _%e165602165943%_
                               _%hd165601165946%_
                               _%tl165600165948%_
                               _%e165605165951%_
                               _%hd165604165954%_
                               _%tl165603165956%_
                               _%e165608165959%_
                               _%hd165607165962%_
                               _%tl165606165964%_
                               _%e165611165967%_
                               _%hd165610165970%_
                               _%tl165609165972%_)
                        (let ((_%L165975%_ _%hd165610165970%_)
                              (_%L165976%_ _%hd165607165962%_)
                              (_%L165977%_ _%hd165598165938%_)
                              (_%L165978%_ _%hd165589165914%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165978%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165978%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171730
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165433%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165977%_
                                      __tmp171730)))
                              (_%__kont171089171090%_
                               _%L165975%_
                               _%L165976%_
                               _%L165977%_
                               _%L165978%_)
                              (_%__kont171095171096%_)))))
                     (_%__match171450171451%_
                      (lambda (_%e165581165887%_
                               _%hd165580165890%_
                               _%tl165579165892%_
                               _%e165584165895%_
                               _%hd165583165898%_
                               _%tl165582165900%_
                               _%e165587165903%_
                               _%hd165586165906%_
                               _%tl165585165908%_
                               _%e165590165911%_
                               _%hd165589165914%_
                               _%tl165588165916%_
                               _%e165593165919%_
                               _%hd165592165922%_
                               _%tl165591165924%_
                               _%e165596165927%_
                               _%hd165595165930%_
                               _%tl165594165932%_
                               _%e165599165935%_
                               _%hd165598165938%_
                               _%tl165597165940%_
                               _%e165602165943%_
                               _%hd165601165946%_
                               _%tl165600165948%_
                               _%e165605165951%_
                               _%hd165604165954%_
                               _%tl165603165956%_
                               _%e165608165959%_
                               _%hd165607165962%_
                               _%tl165606165964%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165600165948%_))
                            (let ((_%e165611165967%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165600165948%_))))
                              (let ((_%tl165609165972%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165611165967%_)))
                                    (_%hd165610165970%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165611165967%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165609165972%_))
                                    (_%__match171458171459%_
                                     _%e165581165887%_
                                     _%hd165580165890%_
                                     _%tl165579165892%_
                                     _%e165584165895%_
                                     _%hd165583165898%_
                                     _%tl165582165900%_
                                     _%e165587165903%_
                                     _%hd165586165906%_
                                     _%tl165585165908%_
                                     _%e165590165911%_
                                     _%hd165589165914%_
                                     _%tl165588165916%_
                                     _%e165593165919%_
                                     _%hd165592165922%_
                                     _%tl165591165924%_
                                     _%e165596165927%_
                                     _%hd165595165930%_
                                     _%tl165594165932%_
                                     _%e165599165935%_
                                     _%hd165598165938%_
                                     _%tl165597165940%_
                                     _%e165602165943%_
                                     _%hd165601165946%_
                                     _%tl165600165948%_
                                     _%e165605165951%_
                                     _%hd165604165954%_
                                     _%tl165603165956%_
                                     _%e165608165959%_
                                     _%hd165607165962%_
                                     _%tl165606165964%_
                                     _%e165611165967%_
                                     _%hd165610165970%_
                                     _%tl165609165972%_)
                                    (_%__kont171095171096%_))))
                            (_%__match171574171575%_
                             _%e165581165887%_
                             _%hd165580165890%_
                             _%tl165579165892%_
                             _%e165584165895%_
                             _%hd165583165898%_
                             _%tl165582165900%_
                             _%e165587165903%_
                             _%hd165586165906%_
                             _%tl165585165908%_
                             _%e165590165911%_
                             _%hd165589165914%_
                             _%tl165588165916%_
                             _%e165593165919%_
                             _%hd165592165922%_
                             _%tl165591165924%_
                             _%e165596165927%_
                             _%hd165595165930%_
                             _%tl165594165932%_
                             _%e165599165935%_
                             _%hd165598165938%_
                             _%tl165597165940%_
                             _%e165602165943%_
                             _%hd165601165946%_
                             _%tl165600165948%_))))
                     (_%__match171372171373%_
                      (lambda (_%e165547166021%_
                               _%hd165546166024%_
                               _%tl165545166026%_
                               _%e165550166029%_
                               _%hd165549166032%_
                               _%tl165548166034%_
                               _%e165553166037%_
                               _%hd165552166040%_
                               _%tl165551166042%_
                               _%e165556166045%_
                               _%hd165555166048%_
                               _%tl165554166050%_
                               _%e165559166053%_
                               _%hd165558166056%_
                               _%tl165557166058%_
                               _%e165562166061%_
                               _%hd165561166064%_
                               _%tl165560166066%_
                               _%e165565166069%_
                               _%hd165564166072%_
                               _%tl165563166074%_
                               _%e165568166077%_
                               _%hd165567166080%_
                               _%tl165566166082%_
                               _%e165571166085%_
                               _%hd165570166088%_
                               _%tl165569166090%_
                               _%e165574166093%_
                               _%hd165573166096%_
                               _%tl165572166098%_)
                        (let ((_%L166101%_ _%hd165573166096%_)
                              (_%L166102%_ _%hd165564166072%_)
                              (_%L166103%_ _%hd165555166048%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166103%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166103%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171731
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165433%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166102%_
                                      __tmp171731)))
                              (_%__kont171087171088%_
                               _%L166101%_
                               _%L166102%_
                               _%L166103%_)
                              (_%__match171576171577%_
                               _%e165547166021%_
                               _%hd165546166024%_
                               _%tl165545166026%_
                               _%e165550166029%_
                               _%hd165549166032%_
                               _%tl165548166034%_
                               _%e165553166037%_
                               _%hd165552166040%_
                               _%tl165551166042%_
                               _%e165556166045%_
                               _%hd165555166048%_
                               _%tl165554166050%_
                               _%e165559166053%_
                               _%hd165558166056%_
                               _%tl165557166058%_
                               _%e165562166061%_
                               _%hd165561166064%_
                               _%tl165560166066%_
                               _%e165565166069%_
                               _%hd165564166072%_
                               _%tl165563166074%_
                               _%e165568166077%_
                               _%hd165567166080%_
                               _%tl165566166082%_)))))
                     (_%__match171370171371%_
                      (lambda (_%e165547166021%_
                               _%hd165546166024%_
                               _%tl165545166026%_
                               _%e165550166029%_
                               _%hd165549166032%_
                               _%tl165548166034%_
                               _%e165553166037%_
                               _%hd165552166040%_
                               _%tl165551166042%_
                               _%e165556166045%_
                               _%hd165555166048%_
                               _%tl165554166050%_
                               _%e165559166053%_
                               _%hd165558166056%_
                               _%tl165557166058%_
                               _%e165562166061%_
                               _%hd165561166064%_
                               _%tl165560166066%_
                               _%e165565166069%_
                               _%hd165564166072%_
                               _%tl165563166074%_
                               _%e165568166077%_
                               _%hd165567166080%_
                               _%tl165566166082%_
                               _%e165571166085%_
                               _%hd165570166088%_
                               _%tl165569166090%_
                               _%e165574166093%_
                               _%hd165573166096%_
                               _%tl165572166098%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165566166082%_))
                            (_%__match171372171373%_
                             _%e165547166021%_
                             _%hd165546166024%_
                             _%tl165545166026%_
                             _%e165550166029%_
                             _%hd165549166032%_
                             _%tl165548166034%_
                             _%e165553166037%_
                             _%hd165552166040%_
                             _%tl165551166042%_
                             _%e165556166045%_
                             _%hd165555166048%_
                             _%tl165554166050%_
                             _%e165559166053%_
                             _%hd165558166056%_
                             _%tl165557166058%_
                             _%e165562166061%_
                             _%hd165561166064%_
                             _%tl165560166066%_
                             _%e165565166069%_
                             _%hd165564166072%_
                             _%tl165563166074%_
                             _%e165568166077%_
                             _%hd165567166080%_
                             _%tl165566166082%_
                             _%e165571166085%_
                             _%hd165570166088%_
                             _%tl165569166090%_
                             _%e165574166093%_
                             _%hd165573166096%_
                             _%tl165572166098%_)
                            (_%__match171450171451%_
                             _%e165547166021%_
                             _%hd165546166024%_
                             _%tl165545166026%_
                             _%e165550166029%_
                             _%hd165549166032%_
                             _%tl165548166034%_
                             _%e165553166037%_
                             _%hd165552166040%_
                             _%tl165551166042%_
                             _%e165556166045%_
                             _%hd165555166048%_
                             _%tl165554166050%_
                             _%e165559166053%_
                             _%hd165558166056%_
                             _%tl165557166058%_
                             _%e165562166061%_
                             _%hd165561166064%_
                             _%tl165560166066%_
                             _%e165565166069%_
                             _%hd165564166072%_
                             _%tl165563166074%_
                             _%e165568166077%_
                             _%hd165567166080%_
                             _%tl165566166082%_
                             _%e165571166085%_
                             _%hd165570166088%_
                             _%tl165569166090%_
                             _%e165574166093%_
                             _%hd165573166096%_
                             _%tl165572166098%_))))
                     (_%__match171360171361%_
                      (lambda (_%e165547166021%_
                               _%hd165546166024%_
                               _%tl165545166026%_
                               _%e165550166029%_
                               _%hd165549166032%_
                               _%tl165548166034%_
                               _%e165553166037%_
                               _%hd165552166040%_
                               _%tl165551166042%_
                               _%e165556166045%_
                               _%hd165555166048%_
                               _%tl165554166050%_
                               _%e165559166053%_
                               _%hd165558166056%_
                               _%tl165557166058%_
                               _%e165562166061%_
                               _%hd165561166064%_
                               _%tl165560166066%_
                               _%e165565166069%_
                               _%hd165564166072%_
                               _%tl165563166074%_
                               _%e165568166077%_
                               _%hd165567166080%_
                               _%tl165566166082%_
                               _%e165571166085%_
                               _%hd165570166088%_
                               _%tl165569166090%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165570166088%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165569166090%_))
                                (let ((_%e165574166093%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165569166090%_))))
                                  (let ((_%tl165572166098%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165574166093%_)))
                                        (_%hd165573166096%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165574166093%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165572166098%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165566166082%_))
                                            (_%__match171372171373%_
                                             _%e165547166021%_
                                             _%hd165546166024%_
                                             _%tl165545166026%_
                                             _%e165550166029%_
                                             _%hd165549166032%_
                                             _%tl165548166034%_
                                             _%e165553166037%_
                                             _%hd165552166040%_
                                             _%tl165551166042%_
                                             _%e165556166045%_
                                             _%hd165555166048%_
                                             _%tl165554166050%_
                                             _%e165559166053%_
                                             _%hd165558166056%_
                                             _%tl165557166058%_
                                             _%e165562166061%_
                                             _%hd165561166064%_
                                             _%tl165560166066%_
                                             _%e165565166069%_
                                             _%hd165564166072%_
                                             _%tl165563166074%_
                                             _%e165568166077%_
                                             _%hd165567166080%_
                                             _%tl165566166082%_
                                             _%e165571166085%_
                                             _%hd165570166088%_
                                             _%tl165569166090%_
                                             _%e165574166093%_
                                             _%hd165573166096%_
                                             _%tl165572166098%_)
                                            (_%__match171450171451%_
                                             _%e165547166021%_
                                             _%hd165546166024%_
                                             _%tl165545166026%_
                                             _%e165550166029%_
                                             _%hd165549166032%_
                                             _%tl165548166034%_
                                             _%e165553166037%_
                                             _%hd165552166040%_
                                             _%tl165551166042%_
                                             _%e165556166045%_
                                             _%hd165555166048%_
                                             _%tl165554166050%_
                                             _%e165559166053%_
                                             _%hd165558166056%_
                                             _%tl165557166058%_
                                             _%e165562166061%_
                                             _%hd165561166064%_
                                             _%tl165560166066%_
                                             _%e165565166069%_
                                             _%hd165564166072%_
                                             _%tl165563166074%_
                                             _%e165568166077%_
                                             _%hd165567166080%_
                                             _%tl165566166082%_
                                             _%e165571166085%_
                                             _%hd165570166088%_
                                             _%tl165569166090%_
                                             _%e165574166093%_
                                             _%hd165573166096%_
                                             _%tl165572166098%_))
                                        (_%__match171574171575%_
                                         _%e165547166021%_
                                         _%hd165546166024%_
                                         _%tl165545166026%_
                                         _%e165550166029%_
                                         _%hd165549166032%_
                                         _%tl165548166034%_
                                         _%e165553166037%_
                                         _%hd165552166040%_
                                         _%tl165551166042%_
                                         _%e165556166045%_
                                         _%hd165555166048%_
                                         _%tl165554166050%_
                                         _%e165559166053%_
                                         _%hd165558166056%_
                                         _%tl165557166058%_
                                         _%e165562166061%_
                                         _%hd165561166064%_
                                         _%tl165560166066%_
                                         _%e165565166069%_
                                         _%hd165564166072%_
                                         _%tl165563166074%_
                                         _%e165568166077%_
                                         _%hd165567166080%_
                                         _%tl165566166082%_))))
                                (_%__match171574171575%_
                                 _%e165547166021%_
                                 _%hd165546166024%_
                                 _%tl165545166026%_
                                 _%e165550166029%_
                                 _%hd165549166032%_
                                 _%tl165548166034%_
                                 _%e165553166037%_
                                 _%hd165552166040%_
                                 _%tl165551166042%_
                                 _%e165556166045%_
                                 _%hd165555166048%_
                                 _%tl165554166050%_
                                 _%e165559166053%_
                                 _%hd165558166056%_
                                 _%tl165557166058%_
                                 _%e165562166061%_
                                 _%hd165561166064%_
                                 _%tl165560166066%_
                                 _%e165565166069%_
                                 _%hd165564166072%_
                                 _%tl165563166074%_
                                 _%e165568166077%_
                                 _%hd165567166080%_
                                 _%tl165566166082%_))
                            (_%__match171574171575%_
                             _%e165547166021%_
                             _%hd165546166024%_
                             _%tl165545166026%_
                             _%e165550166029%_
                             _%hd165549166032%_
                             _%tl165548166034%_
                             _%e165553166037%_
                             _%hd165552166040%_
                             _%tl165551166042%_
                             _%e165556166045%_
                             _%hd165555166048%_
                             _%tl165554166050%_
                             _%e165559166053%_
                             _%hd165558166056%_
                             _%tl165557166058%_
                             _%e165562166061%_
                             _%hd165561166064%_
                             _%tl165560166066%_
                             _%e165565166069%_
                             _%hd165564166072%_
                             _%tl165563166074%_
                             _%e165568166077%_
                             _%hd165567166080%_
                             _%tl165566166082%_))))
                     (_%__match171292171293%_
                      (lambda (_%e165496166142%_
                               _%hd165495166145%_
                               _%tl165494166147%_
                               _%e165499166150%_
                               _%hd165498166153%_
                               _%tl165497166155%_
                               _%e165502166158%_
                               _%hd165501166161%_
                               _%tl165500166163%_
                               _%e165505166166%_
                               _%hd165504166169%_
                               _%tl165503166171%_
                               _%e165508166174%_
                               _%hd165507166177%_
                               _%tl165506166179%_
                               _%e165511166182%_
                               _%hd165510166185%_
                               _%tl165509166187%_
                               _%e165514166190%_
                               _%hd165513166193%_
                               _%tl165512166195%_
                               _%e165517166198%_
                               _%hd165516166201%_
                               _%tl165515166203%_
                               _%e165520166206%_
                               _%hd165519166209%_
                               _%tl165518166211%_
                               _%e165523166214%_
                               _%hd165522166217%_
                               _%tl165521166219%_
                               _%e165526166222%_
                               _%hd165525166225%_
                               _%tl165524166227%_
                               _%e165529166230%_
                               _%hd165528166233%_
                               _%tl165527166235%_
                               _%e165532166238%_
                               _%hd165531166241%_
                               _%tl165530166243%_
                               _%__splice171085171086%_
                               _%target165533166246%_
                               _%tl165535166248%_)
                        (letrec ((_%loop165536166251%_
                                  (lambda (_%hd165534166254%_
                                           _%args165540166256%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165534166254%_))
                                        (let ((_%e165537166259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165534166254%_))))
                                          (let ((_%lp-tl165539166264%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165537166259%_)))
                                                (_%lp-hd165538166262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165537166259%_))))
                                            (_%loop165536166251%_
                                             _%lp-tl165539166264%_
                                             (cons _%lp-hd165538166262%_
                                                   _%args165540166256%_))))
                                        (let ((_%args165541166267%_
                                               (reverse _%args165540166256%_)))
                                          (let ((_%L166270%_
                                                 _%args165541166267%_)
                                                (_%L166271%_
                                                 _%hd165531166241%_)
                                                (_%L166272%_
                                                 _%hd165522166217%_)
                                                (_%L166273%_
                                                 _%hd165513166193%_)
                                                (_%L166274%_
                                                 _%hd165504166169%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166274%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166273%_
                                                        'call-method))
                                                     (let ((__tmp171732
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165433%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166272%_
                                                        __tmp171732)))
                                                (_%__kont171083171084%_
                                                 _%L166270%_
                                                 _%L166271%_
                                                 _%L166272%_
                                                 _%L166273%_
                                                 _%L166274%_)
                                                (_%__kont171095171096%_))))))))
                          (_%loop165536166251%_ _%target165533166246%_ '()))))
                     (_%__match171250171251%_
                      (lambda (_%e165496166142%_
                               _%hd165495166145%_
                               _%tl165494166147%_
                               _%e165499166150%_
                               _%hd165498166153%_
                               _%tl165497166155%_
                               _%e165502166158%_
                               _%hd165501166161%_
                               _%tl165500166163%_
                               _%e165505166166%_
                               _%hd165504166169%_
                               _%tl165503166171%_
                               _%e165508166174%_
                               _%hd165507166177%_
                               _%tl165506166179%_
                               _%e165511166182%_
                               _%hd165510166185%_
                               _%tl165509166187%_
                               _%e165514166190%_
                               _%hd165513166193%_
                               _%tl165512166195%_
                               _%e165517166198%_
                               _%hd165516166201%_
                               _%tl165515166203%_
                               _%e165520166206%_
                               _%hd165519166209%_
                               _%tl165518166211%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd165519166209%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165518166211%_))
                                (let ((_%e165523166214%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165518166211%_))))
                                  (let ((_%tl165521166219%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165523166214%_)))
                                        (_%hd165522166217%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165523166214%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165521166219%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165515166203%_))
                                            (let ((_%e165526166222%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165515166203%_))))
                                              (let ((_%tl165524166227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165526166222%_)))
                                                    (_%hd165525166225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165526166222%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd165525166225%_))
                                                    (let ((_%e165529166230%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd165525166225%_))))
                                                      (let ((_%tl165527166235%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165529166230%_)))
                    (_%hd165528166233%_
                     (let () (declare (not safe)) (##car _%e165529166230%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd165528166233%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd165528166233%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165527166235%_))
                            (let ((_%e165532166238%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165527166235%_))))
                              (let ((_%tl165530166243%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165532166238%_)))
                                    (_%hd165531166241%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165532166238%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165530166243%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl165524166227%_))
                                        (let ((_%__splice171085171086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl165524166227%_
                                                  '0))))
                                          (let ((_%tl165535166248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171085171086%_
                                                    '1)))
                                                (_%target165533166246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171085171086%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165535166248%_))
                                                (_%__match171292171293%_
                                                 _%e165496166142%_
                                                 _%hd165495166145%_
                                                 _%tl165494166147%_
                                                 _%e165499166150%_
                                                 _%hd165498166153%_
                                                 _%tl165497166155%_
                                                 _%e165502166158%_
                                                 _%hd165501166161%_
                                                 _%tl165500166163%_
                                                 _%e165505166166%_
                                                 _%hd165504166169%_
                                                 _%tl165503166171%_
                                                 _%e165508166174%_
                                                 _%hd165507166177%_
                                                 _%tl165506166179%_
                                                 _%e165511166182%_
                                                 _%hd165510166185%_
                                                 _%tl165509166187%_
                                                 _%e165514166190%_
                                                 _%hd165513166193%_
                                                 _%tl165512166195%_
                                                 _%e165517166198%_
                                                 _%hd165516166201%_
                                                 _%tl165515166203%_
                                                 _%e165520166206%_
                                                 _%hd165519166209%_
                                                 _%tl165518166211%_
                                                 _%e165523166214%_
                                                 _%hd165522166217%_
                                                 _%tl165521166219%_
                                                 _%e165526166222%_
                                                 _%hd165525166225%_
                                                 _%tl165524166227%_
                                                 _%e165529166230%_
                                                 _%hd165528166233%_
                                                 _%tl165527166235%_
                                                 _%e165532166238%_
                                                 _%hd165531166241%_
                                                 _%tl165530166243%_
                                                 _%__splice171085171086%_
                                                 _%target165533166246%_
                                                 _%tl165535166248%_)
                                                (_%__kont171095171096%_))))
                                        (_%__kont171095171096%_))
                                    (_%__kont171095171096%_))))
                            (_%__kont171095171096%_))
                        (_%__kont171095171096%_))
                    (_%__kont171095171096%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171095171096%_))))
                                            (_%__match171574171575%_
                                             _%e165496166142%_
                                             _%hd165495166145%_
                                             _%tl165494166147%_
                                             _%e165499166150%_
                                             _%hd165498166153%_
                                             _%tl165497166155%_
                                             _%e165502166158%_
                                             _%hd165501166161%_
                                             _%tl165500166163%_
                                             _%e165505166166%_
                                             _%hd165504166169%_
                                             _%tl165503166171%_
                                             _%e165508166174%_
                                             _%hd165507166177%_
                                             _%tl165506166179%_
                                             _%e165511166182%_
                                             _%hd165510166185%_
                                             _%tl165509166187%_
                                             _%e165514166190%_
                                             _%hd165513166193%_
                                             _%tl165512166195%_
                                             _%e165517166198%_
                                             _%hd165516166201%_
                                             _%tl165515166203%_))
                                        (_%__match171574171575%_
                                         _%e165496166142%_
                                         _%hd165495166145%_
                                         _%tl165494166147%_
                                         _%e165499166150%_
                                         _%hd165498166153%_
                                         _%tl165497166155%_
                                         _%e165502166158%_
                                         _%hd165501166161%_
                                         _%tl165500166163%_
                                         _%e165505166166%_
                                         _%hd165504166169%_
                                         _%tl165503166171%_
                                         _%e165508166174%_
                                         _%hd165507166177%_
                                         _%tl165506166179%_
                                         _%e165511166182%_
                                         _%hd165510166185%_
                                         _%tl165509166187%_
                                         _%e165514166190%_
                                         _%hd165513166193%_
                                         _%tl165512166195%_
                                         _%e165517166198%_
                                         _%hd165516166201%_
                                         _%tl165515166203%_))))
                                (_%__match171574171575%_
                                 _%e165496166142%_
                                 _%hd165495166145%_
                                 _%tl165494166147%_
                                 _%e165499166150%_
                                 _%hd165498166153%_
                                 _%tl165497166155%_
                                 _%e165502166158%_
                                 _%hd165501166161%_
                                 _%tl165500166163%_
                                 _%e165505166166%_
                                 _%hd165504166169%_
                                 _%tl165503166171%_
                                 _%e165508166174%_
                                 _%hd165507166177%_
                                 _%tl165506166179%_
                                 _%e165511166182%_
                                 _%hd165510166185%_
                                 _%tl165509166187%_
                                 _%e165514166190%_
                                 _%hd165513166193%_
                                 _%tl165512166195%_
                                 _%e165517166198%_
                                 _%hd165516166201%_
                                 _%tl165515166203%_))
                            (_%__match171360171361%_
                             _%e165496166142%_
                             _%hd165495166145%_
                             _%tl165494166147%_
                             _%e165499166150%_
                             _%hd165498166153%_
                             _%tl165497166155%_
                             _%e165502166158%_
                             _%hd165501166161%_
                             _%tl165500166163%_
                             _%e165505166166%_
                             _%hd165504166169%_
                             _%tl165503166171%_
                             _%e165508166174%_
                             _%hd165507166177%_
                             _%tl165506166179%_
                             _%e165511166182%_
                             _%hd165510166185%_
                             _%tl165509166187%_
                             _%e165514166190%_
                             _%hd165513166193%_
                             _%tl165512166195%_
                             _%e165517166198%_
                             _%hd165516166201%_
                             _%tl165515166203%_
                             _%e165520166206%_
                             _%hd165519166209%_
                             _%tl165518166211%_))))
                     (_%__match171182171183%_
                      (lambda (_%e165452166334%_
                               _%hd165451166337%_
                               _%tl165450166339%_
                               _%e165455166342%_
                               _%hd165454166345%_
                               _%tl165453166347%_
                               _%e165458166350%_
                               _%hd165457166353%_
                               _%tl165456166355%_
                               _%e165461166358%_
                               _%hd165460166361%_
                               _%tl165459166363%_
                               _%e165464166366%_
                               _%hd165463166369%_
                               _%tl165462166371%_
                               _%e165467166374%_
                               _%hd165466166377%_
                               _%tl165465166379%_
                               _%e165470166382%_
                               _%hd165469166385%_
                               _%tl165468166387%_
                               _%e165473166390%_
                               _%hd165472166393%_
                               _%tl165471166395%_
                               _%e165476166398%_
                               _%hd165475166401%_
                               _%tl165474166403%_
                               _%e165479166406%_
                               _%hd165478166409%_
                               _%tl165477166411%_
                               _%__splice171081171082%_
                               _%target165480166414%_
                               _%tl165482166416%_)
                        (letrec ((_%loop165483166419%_
                                  (lambda (_%hd165481166422%_
                                           _%args165487166424%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165481166422%_))
                                        (let ((_%e165484166427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165481166422%_))))
                                          (let ((_%lp-tl165486166432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165484166427%_)))
                                                (_%lp-hd165485166430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165484166427%_))))
                                            (_%loop165483166419%_
                                             _%lp-tl165486166432%_
                                             (cons _%lp-hd165485166430%_
                                                   _%args165487166424%_))))
                                        (let ((_%args165488166435%_
                                               (reverse _%args165487166424%_)))
                                          (let ((_%L166438%_
                                                 _%args165488166435%_)
                                                (_%L166439%_
                                                 _%hd165478166409%_)
                                                (_%L166440%_
                                                 _%hd165469166385%_)
                                                (_%L166441%_
                                                 _%hd165460166361%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166441%_
                                                        'call-method))
                                                     (let ((__tmp171733
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165433%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166440%_
                                                        __tmp171733)))
                                                (_%__kont171079171080%_
                                                 _%L166438%_
                                                 _%L166439%_
                                                 _%L166440%_
                                                 _%L166441%_)
                                                (_%__match171370171371%_
                                                 _%e165452166334%_
                                                 _%hd165451166337%_
                                                 _%tl165450166339%_
                                                 _%e165455166342%_
                                                 _%hd165454166345%_
                                                 _%tl165453166347%_
                                                 _%e165458166350%_
                                                 _%hd165457166353%_
                                                 _%tl165456166355%_
                                                 _%e165461166358%_
                                                 _%hd165460166361%_
                                                 _%tl165459166363%_
                                                 _%e165464166366%_
                                                 _%hd165463166369%_
                                                 _%tl165462166371%_
                                                 _%e165467166374%_
                                                 _%hd165466166377%_
                                                 _%tl165465166379%_
                                                 _%e165470166382%_
                                                 _%hd165469166385%_
                                                 _%tl165468166387%_
                                                 _%e165473166390%_
                                                 _%hd165472166393%_
                                                 _%tl165471166395%_
                                                 _%e165476166398%_
                                                 _%hd165475166401%_
                                                 _%tl165474166403%_
                                                 _%e165479166406%_
                                                 _%hd165478166409%_
                                                 _%tl165477166411%_))))))))
                          (_%loop165483166419%_ _%target165480166414%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171077171078%_))
                    (let ((_%e165452166334%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171077171078%_))))
                      (let ((_%tl165450166339%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165452166334%_)))
                            (_%hd165451166337%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165452166334%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165450166339%_))
                            (let ((_%e165455166342%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165450166339%_))))
                              (let ((_%tl165453166347%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165455166342%_)))
                                    (_%hd165454166345%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165455166342%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd165454166345%_))
                                    (let ((_%e165458166350%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd165454166345%_))))
                                      (let ((_%tl165456166355%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e165458166350%_)))
                                            (_%hd165457166353%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e165458166350%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd165457166353%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd165457166353%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl165456166355%_))
                                                    (let ((_%e165461166358%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl165456166355%_))))
                                                      (let ((_%tl165459166363%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165461166358%_)))
                    (_%hd165460166361%_
                     (let () (declare (not safe)) (##car _%e165461166358%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl165459166363%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl165453166347%_))
                        (let ((_%e165464166366%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl165453166347%_))))
                          (let ((_%tl165462166371%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165464166366%_)))
                                (_%hd165463166369%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165464166366%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd165463166369%_))
                                (let ((_%e165467166374%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd165463166369%_))))
                                  (let ((_%tl165465166379%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165467166374%_)))
                                        (_%hd165466166377%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165467166374%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd165466166377%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd165466166377%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165465166379%_))
                                                (let ((_%e165470166382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165465166379%_))))
                                                  (let ((_%tl165468166387%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165470166382%_)))
                                                        (_%hd165469166385%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165470166382%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165468166387%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl165462166371%_))
                                                            (let ((_%e165473166390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165462166371%_))))
                      (let ((_%tl165471166395%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165473166390%_)))
                            (_%hd165472166393%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165473166390%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd165472166393%_))
                            (let ((_%e165476166398%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd165472166393%_))))
                              (let ((_%tl165474166403%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165476166398%_)))
                                    (_%hd165475166401%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165476166398%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd165475166401%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd165475166401%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165474166403%_))
                                            (let ((_%e165479166406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165474166403%_))))
                                              (let ((_%tl165477166411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165479166406%_)))
                                                    (_%hd165478166409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165479166406%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl165477166411%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl165471166395%_))
                                                        (let ((_%__splice171081171082%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl165471166395%_ '0))))
                  (let ((_%tl165482166416%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171081171082%_ '1)))
                        (_%target165480166414%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171081171082%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl165482166416%_))
                        (_%__match171182171183%_
                         _%e165452166334%_
                         _%hd165451166337%_
                         _%tl165450166339%_
                         _%e165455166342%_
                         _%hd165454166345%_
                         _%tl165453166347%_
                         _%e165458166350%_
                         _%hd165457166353%_
                         _%tl165456166355%_
                         _%e165461166358%_
                         _%hd165460166361%_
                         _%tl165459166363%_
                         _%e165464166366%_
                         _%hd165463166369%_
                         _%tl165462166371%_
                         _%e165467166374%_
                         _%hd165466166377%_
                         _%tl165465166379%_
                         _%e165470166382%_
                         _%hd165469166385%_
                         _%tl165468166387%_
                         _%e165473166390%_
                         _%hd165472166393%_
                         _%tl165471166395%_
                         _%e165476166398%_
                         _%hd165475166401%_
                         _%tl165474166403%_
                         _%e165479166406%_
                         _%hd165478166409%_
                         _%tl165477166411%_
                         _%__splice171081171082%_
                         _%target165480166414%_
                         _%tl165482166416%_)
                        (_%__match171370171371%_
                         _%e165452166334%_
                         _%hd165451166337%_
                         _%tl165450166339%_
                         _%e165455166342%_
                         _%hd165454166345%_
                         _%tl165453166347%_
                         _%e165458166350%_
                         _%hd165457166353%_
                         _%tl165456166355%_
                         _%e165461166358%_
                         _%hd165460166361%_
                         _%tl165459166363%_
                         _%e165464166366%_
                         _%hd165463166369%_
                         _%tl165462166371%_
                         _%e165467166374%_
                         _%hd165466166377%_
                         _%tl165465166379%_
                         _%e165470166382%_
                         _%hd165469166385%_
                         _%tl165468166387%_
                         _%e165473166390%_
                         _%hd165472166393%_
                         _%tl165471166395%_
                         _%e165476166398%_
                         _%hd165475166401%_
                         _%tl165474166403%_
                         _%e165479166406%_
                         _%hd165478166409%_
                         _%tl165477166411%_))))
                (_%__match171370171371%_
                 _%e165452166334%_
                 _%hd165451166337%_
                 _%tl165450166339%_
                 _%e165455166342%_
                 _%hd165454166345%_
                 _%tl165453166347%_
                 _%e165458166350%_
                 _%hd165457166353%_
                 _%tl165456166355%_
                 _%e165461166358%_
                 _%hd165460166361%_
                 _%tl165459166363%_
                 _%e165464166366%_
                 _%hd165463166369%_
                 _%tl165462166371%_
                 _%e165467166374%_
                 _%hd165466166377%_
                 _%tl165465166379%_
                 _%e165470166382%_
                 _%hd165469166385%_
                 _%tl165468166387%_
                 _%e165473166390%_
                 _%hd165472166393%_
                 _%tl165471166395%_
                 _%e165476166398%_
                 _%hd165475166401%_
                 _%tl165474166403%_
                 _%e165479166406%_
                 _%hd165478166409%_
                 _%tl165477166411%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171574171575%_
                                                     _%e165452166334%_
                                                     _%hd165451166337%_
                                                     _%tl165450166339%_
                                                     _%e165455166342%_
                                                     _%hd165454166345%_
                                                     _%tl165453166347%_
                                                     _%e165458166350%_
                                                     _%hd165457166353%_
                                                     _%tl165456166355%_
                                                     _%e165461166358%_
                                                     _%hd165460166361%_
                                                     _%tl165459166363%_
                                                     _%e165464166366%_
                                                     _%hd165463166369%_
                                                     _%tl165462166371%_
                                                     _%e165467166374%_
                                                     _%hd165466166377%_
                                                     _%tl165465166379%_
                                                     _%e165470166382%_
                                                     _%hd165469166385%_
                                                     _%tl165468166387%_
                                                     _%e165473166390%_
                                                     _%hd165472166393%_
                                                     _%tl165471166395%_))))
                                            (_%__match171574171575%_
                                             _%e165452166334%_
                                             _%hd165451166337%_
                                             _%tl165450166339%_
                                             _%e165455166342%_
                                             _%hd165454166345%_
                                             _%tl165453166347%_
                                             _%e165458166350%_
                                             _%hd165457166353%_
                                             _%tl165456166355%_
                                             _%e165461166358%_
                                             _%hd165460166361%_
                                             _%tl165459166363%_
                                             _%e165464166366%_
                                             _%hd165463166369%_
                                             _%tl165462166371%_
                                             _%e165467166374%_
                                             _%hd165466166377%_
                                             _%tl165465166379%_
                                             _%e165470166382%_
                                             _%hd165469166385%_
                                             _%tl165468166387%_
                                             _%e165473166390%_
                                             _%hd165472166393%_
                                             _%tl165471166395%_))
                                        (_%__match171250171251%_
                                         _%e165452166334%_
                                         _%hd165451166337%_
                                         _%tl165450166339%_
                                         _%e165455166342%_
                                         _%hd165454166345%_
                                         _%tl165453166347%_
                                         _%e165458166350%_
                                         _%hd165457166353%_
                                         _%tl165456166355%_
                                         _%e165461166358%_
                                         _%hd165460166361%_
                                         _%tl165459166363%_
                                         _%e165464166366%_
                                         _%hd165463166369%_
                                         _%tl165462166371%_
                                         _%e165467166374%_
                                         _%hd165466166377%_
                                         _%tl165465166379%_
                                         _%e165470166382%_
                                         _%hd165469166385%_
                                         _%tl165468166387%_
                                         _%e165473166390%_
                                         _%hd165472166393%_
                                         _%tl165471166395%_
                                         _%e165476166398%_
                                         _%hd165475166401%_
                                         _%tl165474166403%_))
                                    (_%__match171574171575%_
                                     _%e165452166334%_
                                     _%hd165451166337%_
                                     _%tl165450166339%_
                                     _%e165455166342%_
                                     _%hd165454166345%_
                                     _%tl165453166347%_
                                     _%e165458166350%_
                                     _%hd165457166353%_
                                     _%tl165456166355%_
                                     _%e165461166358%_
                                     _%hd165460166361%_
                                     _%tl165459166363%_
                                     _%e165464166366%_
                                     _%hd165463166369%_
                                     _%tl165462166371%_
                                     _%e165467166374%_
                                     _%hd165466166377%_
                                     _%tl165465166379%_
                                     _%e165470166382%_
                                     _%hd165469166385%_
                                     _%tl165468166387%_
                                     _%e165473166390%_
                                     _%hd165472166393%_
                                     _%tl165471166395%_))))
                            (_%__match171574171575%_
                             _%e165452166334%_
                             _%hd165451166337%_
                             _%tl165450166339%_
                             _%e165455166342%_
                             _%hd165454166345%_
                             _%tl165453166347%_
                             _%e165458166350%_
                             _%hd165457166353%_
                             _%tl165456166355%_
                             _%e165461166358%_
                             _%hd165460166361%_
                             _%tl165459166363%_
                             _%e165464166366%_
                             _%hd165463166369%_
                             _%tl165462166371%_
                             _%e165467166374%_
                             _%hd165466166377%_
                             _%tl165465166379%_
                             _%e165470166382%_
                             _%hd165469166385%_
                             _%tl165468166387%_
                             _%e165473166390%_
                             _%hd165472166393%_
                             _%tl165471166395%_))))
                    (_%__match171512171513%_
                     _%e165452166334%_
                     _%hd165451166337%_
                     _%tl165450166339%_
                     _%e165455166342%_
                     _%hd165454166345%_
                     _%tl165453166347%_
                     _%e165458166350%_
                     _%hd165457166353%_
                     _%tl165456166355%_
                     _%e165461166358%_
                     _%hd165460166361%_
                     _%tl165459166363%_
                     _%e165464166366%_
                     _%hd165463166369%_
                     _%tl165462166371%_
                     _%e165467166374%_
                     _%hd165466166377%_
                     _%tl165465166379%_
                     _%e165470166382%_
                     _%hd165469166385%_
                     _%tl165468166387%_))
                (_%__kont171095171096%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171095171096%_))
                                            (_%__kont171095171096%_))
                                        (_%__kont171095171096%_))))
                                (_%__kont171095171096%_))))
                        (_%__kont171095171096%_))
                    (_%__kont171095171096%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171095171096%_))
                                                (_%__kont171095171096%_))
                                            (_%__kont171095171096%_))))
                                    (_%__kont171095171096%_))))
                            (_%__kont171095171096%_))))
                    (_%__kont171095171096%_))))))))))
