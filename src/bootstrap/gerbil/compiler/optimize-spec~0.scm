(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712757958)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171765 (list gxc#::identity::t))
            (__tmp171764 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171765
         '()
         __tmp171764
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args170630%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args170630%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171766
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
        (__make-promise __tmp171766)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx170622%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self170625%_
                (let ((__obj171759
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171759))
               (__tmp171767
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self170625%_ _%stx170622%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171767
           gxc#current-compile-method
           _%self170625%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171769 (list gxc#::void::t))
            (__tmp171768 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171769
         '(receiver methods slots)
         __tmp171768
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args170619%_
        (apply make-instance gxc#::collect-object-refs::t _%$args170619%_)))
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
      (let ((__tmp171770
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
        (__make-promise __tmp171770)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords170585%_
               _%receiver170580170586%_
               _%methods170581170588%_
               _%slots170582170590%_
               _%stx170592%_)
        (let* ((_%receiver170595%_
                (if (eq? _%receiver170580170586%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170580170586%_))
               (_%methods170597%_
                (if (eq? _%methods170581170588%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170581170588%_))
               (_%slots170599%_
                (if (eq? _%slots170582170590%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170582170590%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self170601%_
                  (let ((__obj171761
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
                       __obj171761
                       _%receiver170595%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171761
                       _%methods170597%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171761
                       _%slots170599%_
                       '3
                       '#f
                       '#f))
                    __obj171761))
                 (__tmp171771
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170601%_ _%stx170592%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171771
             gxc#current-compile-method
             _%self170601%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords170608%_ . _%args170609%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords170608%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170608%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170608%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170608%_
                  'slots:
                  absent-value))
               _%args170609%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args170583170615%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args170583170615%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171773 (list gxc#::basic-xform-expression::t))
            (__tmp171772 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171773
         '(receiver klass methods slots)
         __tmp171772
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args170576%_
        (apply make-instance gxc#::subst-object-refs::t _%$args170576%_)))
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
      (let ((__tmp171774
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
        (__make-promise __tmp171774)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords170538%_
               _%receiver170532170539%_
               _%klass170533170541%_
               _%methods170534170543%_
               _%slots170535170545%_
               _%stx170547%_)
        (let* ((_%receiver170550%_
                (if (eq? _%receiver170532170539%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170532170539%_))
               (_%klass170552%_
                (if (eq? _%klass170533170541%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass170533170541%_))
               (_%methods170554%_
                (if (eq? _%methods170534170543%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170534170543%_))
               (_%slots170556%_
                (if (eq? _%slots170535170545%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170535170545%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self170558%_
                  (let ((__obj171763
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
                       __obj171763
                       _%receiver170550%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171763
                       _%klass170552%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171763
                       _%methods170554%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171763
                       _%slots170556%_
                       '4
                       '#f
                       '#f))
                    __obj171763))
                 (__tmp171775
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170558%_ _%stx170547%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171775
             gxc#current-compile-method
             _%self170558%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords170565%_ . _%args170566%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords170565%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170565%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170565%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170565%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170565%_
                  'slots:
                  absent-value))
               _%args170566%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args170536170572%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args170536170572%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167713%_ _%stx167714%_)
        (letrec ((_%generate-method-bind167716%_
                  (lambda (_%$klass170524%_
                           _%$method-table170525%_
                           _%id170526%_
                           _%$id170527%_)
                    (let ((_%$tmp170529%_
                           (let ((__tmp171776
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171776))))
                      (cons (cons _%$id170527%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp170529%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table170525%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id170526%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp170529%_ '()))
                    (cons (cons '%#ref (cons _%$tmp170529%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id170526%_
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
                 (_%generate-slot-bind167717%_
                  (lambda (_%$klass170518%_ _%id170519%_ _%$id170520%_)
                    (let ((_%$tmp170522%_
                           (let ((__tmp171777
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171777))))
                      (cons (cons _%$id170520%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp170522%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass170518%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id170519%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp170522%_ '()))
                        (cons (cons '%#ref (cons _%$tmp170522%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id170519%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167718%_
                  (lambda (_%$klass170512%_
                           _%$method-table170513%_
                           _%methods-bind170514%_
                           _%slots-bind170515%_
                           _%specializer-impl170516%_)
                    (let ((__tmp171778
                           (cons '%#lambda
                                 (cons (cons _%$klass170512%_
                                             (cons _%$method-table170513%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind170515%_
                                                            _%methods-bind170514%_))
                                                         (cons _%specializer-impl170516%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171778 _%stx167714%_))))
                 (_%generate-specializer-def167719%_
                  (lambda (_%id170508%_
                           _%specializer-id170509%_
                           _%specializer-impl170510%_)
                    (let ((__tmp171779
                           (cons '%#begin
                                 (cons _%stx167714%_
                                       (cons (let ((__tmp171780
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id170509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl170510%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171780
                                                _%stx167714%_))
                                             (cons (let ((__tmp171781
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id170508%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id170509%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171781
                                                      _%stx167714%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171779 _%stx167714%_)))))
          (let* ((_%__stx170719170720%_ _%stx167714%_)
                 (_%g167722167742%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170719170720%_)))))
            (let ((_%__kont170721170722%_
                   (lambda (_%L167786%_ _%L167787%_)
                     (let ((_%method-calls167806%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167807%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167808%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167810%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167806%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167807%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167786%_))
                             (let* ((_%__stx170633170634%_ _%L167786%_)
                                    (_%g168198168216%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx170633170634%_)))))
                               (let ((_%__kont170635170636%_
                                      (lambda (_%L168252%_
                                               _%L168253%_
                                               _%L168254%_)
                                        (for-each
                                         (lambda (_%g168270168272%_)
                                           (gxc#apply-collect-object-refs__%
                                            '#f
                                            _%L168254%_
                                            _%method-calls167806%_
                                            _%slot-refs167807%_
                                            _%g168270168272%_))
                                         _%L168252%_)
                                        (if (_%no-specializer?167810%_)
                                            _%stx167714%_
                                            (let* ((_%specializer-id168281%_
                                                    (let* ((_%id168275%_
                                                            (let ((__tmp171782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%L167787%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp171782 '"::specialize")))
                   (_%specializer-id168278%_
                    (let ((__tmp171783
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _%stx167714%_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _%id168275%_ __tmp171783))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _%specializer-id168278%_))
              _%specializer-id168278%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$klass168283%_
                                                    (let ((__tmp171784
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__klass))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171784)))
                                                   (_%$method-table168285%_
                                                    (let ((__tmp171785
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__method-table))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171785)))
                                                   (_%methods168287%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%method-calls167806%_)))
                                                   (_%$methods168291%_
                                                    (map (lambda (_%id168289%_)
                                                           (let ((__tmp171786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168289%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171786)))
                 _%methods168287%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168300%_
                                                    (for-each
                                                     (lambda (_%g168292168295%_
                                                              _%g168293168297%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%method-calls167806%_
                                                          _%g168292168295%_
                                                          _%g168293168297%_)))
                                                     _%methods168287%_
                                                     _%$methods168291%_))
                                                   (_%methods-bind168310%_
                                                    (map (lambda (_%g168302168305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168303168307%_)
                   (_%generate-method-bind167716%_
                    _%$klass168283%_
                    _%$method-table168285%_
                    _%g168302168305%_
                    _%g168303168307%_))
                 _%methods168287%_
                 _%$methods168291%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%slots168312%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%slot-refs167807%_)))
                                                   (_%$slots168316%_
                                                    (map (lambda (_%id168314%_)
                                                           (let ((__tmp171787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168314%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171787)))
                 _%slots168312%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168325%_
                                                    (for-each
                                                     (lambda (_%g168317168320%_
                                                              _%g168318168322%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%slot-refs167807%_
                                                          _%g168317168320%_
                                                          _%g168318168322%_)))
                                                     _%slots168312%_
                                                     _%$slots168316%_))
                                                   (_%slots-bind168334%_
                                                    (map (lambda (_%g168326168329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168327168331%_)
                   (_%generate-slot-bind167717%_
                    _%$klass168283%_
                    _%g168326168329%_
                    _%g168327168331%_))
                 _%slots168312%_
                 _%$slots168316%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-body168340%_
                                                    (map (lambda (_%g168335168337%_)
                                                           (gxc#apply-subst-object-refs__%
                                                            '#f
                                                            _%L168254%_
                                                            _%$klass168283%_
                                                            _%method-calls167806%_
                                                            _%slot-refs167807%_
                                                            _%g168335168337%_))
                                                         _%L168252%_))
                                                   (_%specializer-impl168342%_
                                                    (let ((__tmp171788
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons _%L168254%_ _%L168253%_)
                               _%specializer-body168340%_))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp171788 _%stx167714%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-impl168344%_
                                                    (_%generate-specializer-impl167718%_
                                                     _%$klass168283%_
                                                     _%$method-table168285%_
                                                     _%methods-bind168310%_
                                                     _%slots-bind168334%_
                                                     _%specializer-impl168342%_)))
                                              (let ((__tmp171790
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L167787%_)))
                                                    (__tmp171789
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%specializer-id168281%_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp171790
                                                 '" => "
                                                 __tmp171789))
                                              (_%generate-specializer-def167719%_
                                               _%L167787%_
                                               _%specializer-id168281%_
                                               _%specializer-impl168344%_)))))
                                     (_%__kont170637170638%_
                                      (lambda () _%stx167714%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx170633170634%_))
                                     (let ((_%e168203168228%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx170633170634%_))))
                                       (let ((_%tl168205168233%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168203168228%_)))
                                             (_%hd168204168231%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168203168228%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168205168233%_))
                                             (let ((_%e168206168236%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168205168233%_))))
                                               (let ((_%tl168208168241%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168206168236%_)))
                                                     (_%hd168207168239%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168206168236%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd168207168239%_))
                                                     (let ((_%e168209168244%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd168207168239%_))))
                                                       (let ((_%tl168211168249%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168209168244%_)))
                     (_%hd168210168247%_
                      (let () (declare (not safe)) (##car _%e168209168244%_))))
                 (_%__kont170635170636%_
                  _%tl168208168241%_
                  _%tl168211168249%_
                  _%hd168210168247%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont170637170638%_))))
                                             (_%__kont170637170638%_))))
                                     (_%__kont170637170638%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167786%_))
                                 (let* ((_%g168351168370%_
                                         (lambda (_%g168352168367%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g168352168367%_))))
                                        (_%g168350168657%_
                                         (lambda (_%g168352168373%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g168352168373%_))
                                               (let ((_%e168354168375%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g168352168373%_))))
                                                 (let ((_%hd168355168378%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e168354168375%_)))
                                                       (_%tl168356168380%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e168354168375%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl168356168380%_))
                                                       (let ((_g171791_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl168356168380%_ '0))))
                 (begin
                   (let ((_g171792_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g171791_)
                                (##vector-length _g171791_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g171792_ 2)))
                         (error "Context expects 2 values" _g171792_)))
                   (let ((_%target168357168383%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171791_ 0)))
                         (_%tl168359168385%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171791_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168359168385%_))
                         (letrec ((_%loop168360168388%_
                                   (lambda (_%hd168358168391%_
                                            _%clause168364168393%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168358168391%_))
                                         (let ((_%e168361168396%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168358168391%_))))
                                           (let ((_%lp-hd168362168399%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168361168396%_)))
                                                 (_%lp-tl168363168401%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168361168396%_))))
                                             (_%loop168360168388%_
                                              _%lp-tl168363168401%_
                                              (cons _%lp-hd168362168399%_
                                                    _%clause168364168393%_))))
                                         (let ((_%clause168365168404%_
                                                (reverse _%clause168364168393%_)))
                                           ((lambda (_%L168407%_)
                                              (for-each
                                               (lambda (_%clause168421%_)
                                                 (let* ((_%__stx170659170660%_
                                                         _%clause168421%_)
                                                        (_%g168424168439%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx170659170660%_)))))
                                                   (let ((_%__kont170661170662%_
                                                          (lambda (_%L168467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L168468%_
                           _%L168469%_)
                    (for-each
                     (lambda (_%g168484168486%_)
                       (gxc#apply-collect-object-refs__%
                        '#f
                        _%L168469%_
                        _%method-calls167806%_
                        _%slot-refs167807%_
                        _%g168484168486%_))
                     _%L168467%_)))
                 (_%__kont170663170664%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx170659170660%_))
                                                         (let ((_%e168429168451%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx170659170660%_))))
                   (let ((_%tl168431168456%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168429168451%_)))
                         (_%hd168430168454%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168429168451%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd168430168454%_))
                         (let ((_%e168432168459%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd168430168454%_))))
                           (let ((_%tl168434168464%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e168432168459%_)))
                                 (_%hd168433168462%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e168432168459%_))))
                             (_%__kont170661170662%_
                              _%tl168431168456%_
                              _%tl168434168464%_
                              _%hd168433168462%_)))
                         (_%__kont170663170664%_))))
                 (_%__kont170663170664%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp171793
                                                      (lambda (_%g168491168494%_
                                                               _%g168492168496%_)
                                                        (cons _%g168491168494%_
                                                              _%g168492168496%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171793
                                                  '()
                                                  _%L168407%_)))
                                              (if (_%no-specializer?167810%_)
                                                  _%stx167714%_
                                                  (let* ((_%specializer-id168505%_
                                                          (let* ((_%id168499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171794
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167787%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171794 '"::specialize")))
                         (_%specializer-id168502%_
                          (let ((__tmp171795
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167714%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id168499%_
                             __tmp171795))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id168502%_))
                    _%specializer-id168502%_))
                 (_%$klass168507%_
                  (let ((__tmp171796
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171796)))
                 (_%$method-table168509%_
                  (let ((__tmp171797
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171797)))
                 (_%methods168511%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167806%_)))
                 (_%$methods168515%_
                  (map (lambda (_%id168513%_)
                         (let ((__tmp171798 (gensym _%id168513%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171798)))
                       _%methods168511%_))
                 (_%_168524%_
                  (for-each
                   (lambda (_%g168516168519%_ _%g168517168521%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167806%_
                        _%g168516168519%_
                        _%g168517168521%_)))
                   _%methods168511%_
                   _%$methods168515%_))
                 (_%methods-bind168534%_
                  (map (lambda (_%g168526168529%_ _%g168527168531%_)
                         (_%generate-method-bind167716%_
                          _%$klass168507%_
                          _%$method-table168509%_
                          _%g168526168529%_
                          _%g168527168531%_))
                       _%methods168511%_
                       _%$methods168515%_))
                 (_%slots168536%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167807%_)))
                 (_%$slots168540%_
                  (map (lambda (_%id168538%_)
                         (let ((__tmp171799 (gensym _%id168538%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171799)))
                       _%slots168536%_))
                 (_%_168549%_
                  (for-each
                   (lambda (_%g168541168544%_ _%g168542168546%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167807%_
                        _%g168541168544%_
                        _%g168542168546%_)))
                   _%slots168536%_
                   _%$slots168540%_))
                 (_%slots-bind168558%_
                  (map (lambda (_%g168550168553%_ _%g168551168555%_)
                         (_%generate-slot-bind167717%_
                          _%$klass168507%_
                          _%g168550168553%_
                          _%g168551168555%_))
                       _%slots168536%_
                       _%$slots168540%_))
                 (_%specializer-clauses168650%_
                  (map (lambda (_%clause168560%_)
                         (let* ((_%__stx170679170680%_ _%clause168560%_)
                                (_%g168563168578%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx170679170680%_)))))
                           (let ((_%__kont170681170682%_
                                  (lambda (_%L168606%_ _%L168607%_ _%L168608%_)
                                    (let ((_%body168638%_
                                           (map (lambda (_%g168633168635%_)
                                                  (gxc#apply-subst-object-refs__%
                                                   '#f
                                                   _%L168608%_
                                                   _%$klass168507%_
                                                   _%method-calls167806%_
                                                   _%slot-refs167807%_
                                                   _%g168633168635%_))
                                                _%L168606%_)))
                                      (cons (cons _%L168608%_ _%L168607%_)
                                            _%body168638%_))))
                                 (_%__kont170683170684%_
                                  (lambda () _%clause168560%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx170679170680%_))
                                 (let ((_%e168568168590%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx170679170680%_))))
                                   (let ((_%tl168570168595%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168568168590%_)))
                                         (_%hd168569168593%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168568168590%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168569168593%_))
                                         (let ((_%e168571168598%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168569168593%_))))
                                           (let ((_%tl168573168603%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168571168598%_)))
                                                 (_%hd168572168601%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168571168598%_))))
                                             (_%__kont170681170682%_
                                              _%tl168570168595%_
                                              _%tl168573168603%_
                                              _%hd168572168601%_)))
                                         (_%__kont170683170684%_))))
                                 (_%__kont170683170684%_)))))
                       (let ((__tmp171800
                              (lambda (_%g168642168645%_ _%g168643168647%_)
                                (cons _%g168642168645%_ _%g168643168647%_))))
                         (declare (not safe))
                         (__foldr1 __tmp171800 '() _%L168407%_))))
                 (_%specializer-impl168652%_
                  (let ((__tmp171801
                         (cons '%#case-lambda _%specializer-clauses168650%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171801 _%stx167714%_)))
                 (_%specializer-impl168654%_
                  (_%generate-specializer-impl167718%_
                   _%$klass168507%_
                   _%$method-table168509%_
                   _%methods-bind168534%_
                   _%slots-bind168558%_
                   _%specializer-impl168652%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171803
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167787%_)))
                                                          (__tmp171802
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id168505%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171803
                                                       '" => "
                                                       __tmp171802))
                                                    (_%generate-specializer-def167719%_
                                                     _%L167787%_
                                                     _%specializer-id168505%_
                                                     _%specializer-impl168654%_))))
                                            _%clause168365168404%_))))))
                           (_%loop168360168388%_ _%target168357168383%_ '()))
                         (_%g168351168370%_ _%g168352168373%_)))))
               (_%g168351168370%_ _%g168352168373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g168351168370%_
                                                _%g168352168373%_)))))
                                   (_%g168350168657%_ _%L167786%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167786%_))
                                     (let* ((_%g168661168691%_
                                             (lambda (_%g168662168688%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g168662168688%_))))
                                            (_%g168660169300%_
                                             (lambda (_%g168662168694%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g168662168694%_))
                                                   (let ((_%e168666168696%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g168662168694%_))))
                                                     (let ((_%hd168667168699%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e168666168696%_)))
                                                           (_%tl168668168701%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e168666168696%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl168668168701%_))
                                                           (let ((_%e168669168704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl168668168701%_))))
                     (let ((_%hd168670168707%_
                            (let ()
                              (declare (not safe))
                              (##car _%e168669168704%_)))
                           (_%tl168671168709%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e168669168704%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd168670168707%_))
                           (let ((_%e168672168712%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd168670168707%_))))
                             (let ((_%hd168673168715%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e168672168712%_)))
                                   (_%tl168674168717%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e168672168712%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd168673168715%_))
                                   (let ((_%e168675168720%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd168673168715%_))))
                                     (let ((_%hd168676168723%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e168675168720%_)))
                                           (_%tl168677168725%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e168675168720%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd168676168723%_))
                                           (let ((_%e168678168728%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd168676168723%_))))
                                             (let ((_%hd168679168731%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e168678168728%_)))
                                                   (_%tl168680168733%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e168678168728%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl168680168733%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl168677168725%_))
                                                       (let ((_%e168681168736%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl168677168725%_))))
                 (let ((_%hd168682168739%_
                        (let ()
                          (declare (not safe))
                          (##car _%e168681168736%_)))
                       (_%tl168683168741%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e168681168736%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl168683168741%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl168674168717%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl168671168709%_))
                               (let ((_%e168684168744%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl168671168709%_))))
                                 (let ((_%hd168685168747%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e168684168744%_)))
                                       (_%tl168686168749%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e168684168744%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl168686168749%_))
                                       ((lambda (_%L168752%_
                                                 _%L168753%_
                                                 _%L168754%_)
                                          (let* ((_%g168778168796%_
                                                  (lambda (_%g168779168793%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168779168793%_))))
                                                 (_%g168777168847%_
                                                  (lambda (_%g168779168799%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168779168799%_))
                                                        (let ((_%e168783168801%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168779168799%_))))
                  (let ((_%hd168784168804%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168783168801%_)))
                        (_%tl168785168806%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168783168801%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl168785168806%_))
                        (let ((_%e168786168809%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168785168806%_))))
                          (let ((_%hd168787168812%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168786168809%_)))
                                (_%tl168788168814%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168786168809%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd168787168812%_))
                                (let ((_%e168789168817%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd168787168812%_))))
                                  (let ((_%hd168790168820%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168789168817%_)))
                                        (_%tl168791168822%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168789168817%_))))
                                    ((lambda (_%L168825%_
                                              _%L168826%_
                                              _%L168827%_)
                                       (for-each
                                        (lambda (_%g168842168844%_)
                                          (gxc#apply-collect-object-refs__%
                                           '#f
                                           _%L168827%_
                                           _%method-calls167806%_
                                           _%slot-refs167807%_
                                           _%g168842168844%_))
                                        _%L168825%_))
                                     _%tl168788168814%_
                                     _%tl168791168822%_
                                     _%hd168790168820%_)))
                                (_%g168778168796%_ _%g168779168799%_))))
                        (_%g168778168796%_ _%g168779168799%_))))
                (_%g168778168796%_ _%g168779168799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168777168847%_ _%L168753%_))
                                          (let* ((_%g168850168869%_
                                                  (lambda (_%g168851168866%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168851168866%_))))
                                                 (_%g168849168988%_
                                                  (lambda (_%g168851168872%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168851168872%_))
                                                        (let ((_%e168853168874%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168851168872%_))))
                  (let ((_%hd168854168877%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168853168874%_)))
                        (_%tl168855168879%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168853168874%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl168855168879%_))
                        (let ((_g171804_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl168855168879%_
                                  '0))))
                          (begin
                            (let ((_g171805_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g171804_)
                                         (##vector-length _g171804_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g171805_ 2)))
                                  (error "Context expects 2 values"
                                         _g171805_)))
                            (let ((_%target168856168882%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171804_ 0)))
                                  (_%tl168858168884%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171804_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168858168884%_))
                                  (letrec ((_%loop168859168887%_
                                            (lambda (_%hd168857168890%_
                                                     _%clause168863168892%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168857168890%_))
                                                  (let ((_%e168860168895%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168857168890%_))))
                                                    (let ((_%lp-hd168861168898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168860168895%_)))
                                                          (_%lp-tl168862168900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168860168895%_))))
                                                      (_%loop168859168887%_
                                                       _%lp-tl168862168900%_
                                                       (cons _%lp-hd168861168898%_
                                                             _%clause168863168892%_))))
                                                  (let ((_%clause168864168903%_
                                                         (reverse _%clause168863168892%_)))
                                                    ((lambda (_%L168906%_)
                                                       (for-each
                                                        (lambda (_%clause168919%_)
                                                          (let* ((_%g168921168936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g168922168933%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g168922168933%_))))
                         (_%g168920168978%_
                          (lambda (_%g168922168939%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g168922168939%_))
                                (let ((_%e168926168941%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g168922168939%_))))
                                  (let ((_%hd168927168944%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168926168941%_)))
                                        (_%tl168928168946%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168926168941%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd168927168944%_))
                                        (let ((_%e168929168949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd168927168944%_))))
                                          (let ((_%hd168930168952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168929168949%_)))
                                                (_%tl168931168954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168929168949%_))))
                                            ((lambda (_%L168957%_
                                                      _%L168958%_
                                                      _%L168959%_)
                                               (for-each
                                                (lambda (_%g168973168975%_)
                                                  (gxc#apply-collect-object-refs__%
                                                   '#f
                                                   _%L168959%_
                                                   _%method-calls167806%_
                                                   _%slot-refs167807%_
                                                   _%g168973168975%_))
                                                _%L168957%_))
                                             _%tl168928168946%_
                                             _%tl168931168954%_
                                             _%hd168930168952%_)))
                                        (_%g168921168936%_
                                         _%g168922168939%_))))
                                (_%g168921168936%_ _%g168922168939%_)))))
                    (_%g168920168978%_ _%clause168919%_)))
                (let ((__tmp171806
                       (lambda (_%g168980168983%_ _%g168981168985%_)
                         (cons _%g168980168983%_ _%g168981168985%_))))
                  (declare (not safe))
                  (__foldr1 __tmp171806 '() _%L168906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause168864168903%_))))))
                                    (_%loop168859168887%_
                                     _%target168856168882%_
                                     '()))
                                  (_%g168850168869%_ _%g168851168872%_)))))
                        (_%g168850168869%_ _%g168851168872%_))))
                (_%g168850168869%_ _%g168851168872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168849168988%_ _%L168752%_))
                                          (if (_%no-specializer?167810%_)
                                              _%stx167714%_
                                              (let* ((_%specializer-id168997%_
                                                      (let* ((_%id168991%_
                                                              (let ((__tmp171807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167787%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171807 '"::specialize")))
                     (_%specializer-id168994%_
                      (let ((__tmp171808
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167714%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id168991%_ __tmp171808))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id168994%_))
                _%specializer-id168994%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass168999%_
                                                      (let ((__tmp171809
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171809)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table169001%_
                                                      (let ((__tmp171810
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171810)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods169003%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167806%_)))
                                                     (_%$methods169007%_
                                                      (map (lambda (_%id169005%_)
                                                             (let ((__tmp171811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169005%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171811)))
                   _%methods169003%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169016%_
                                                      (for-each
                                                       (lambda (_%g169008169011%_
                                                                _%g169009169013%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167806%_
                                                            _%g169008169011%_
                                                            _%g169009169013%_)))
                                                       _%methods169003%_
                                                       _%$methods169007%_))
                                                     (_%methods-bind169026%_
                                                      (map (lambda (_%g169018169021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169019169023%_)
                     (_%generate-method-bind167716%_
                      _%$klass168999%_
                      _%$method-table169001%_
                      _%g169018169021%_
                      _%g169019169023%_))
                   _%methods169003%_
                   _%$methods169007%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots169028%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167807%_)))
                                                     (_%$slots169032%_
                                                      (map (lambda (_%id169030%_)
                                                             (let ((__tmp171812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169030%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171812)))
                   _%slots169028%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169041%_
                                                      (for-each
                                                       (lambda (_%g169033169036%_
                                                                _%g169034169038%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167807%_
                                                            _%g169033169036%_
                                                            _%g169034169038%_)))
                                                       _%slots169028%_
                                                       _%$slots169032%_))
                                                     (_%slots-bind169050%_
                                                      (map (lambda (_%g169042169045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169043169047%_)
                     (_%generate-slot-bind167717%_
                      _%$klass168999%_
                      _%g169042169045%_
                      _%g169043169047%_))
                   _%slots169028%_
                   _%$slots169032%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr169136%_
                                                      (let* ((_%g169052169070%_
                                                              (lambda (_%g169053169067%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169053169067%_))))
                     (_%g169051169133%_
                      (lambda (_%g169053169073%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169053169073%_))
                            (let ((_%e169057169075%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169053169073%_))))
                              (let ((_%hd169058169078%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169057169075%_)))
                                    (_%tl169059169080%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169057169075%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169059169080%_))
                                    (let ((_%e169060169083%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169059169080%_))))
                                      (let ((_%hd169061169086%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169060169083%_)))
                                            (_%tl169062169088%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169060169083%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169061169086%_))
                                            (let ((_%e169063169091%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169061169086%_))))
                                              (let ((_%hd169064169094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169063169091%_)))
                                                    (_%tl169065169096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169063169091%_))))
                                                ((lambda (_%L169099%_
                                                          _%L169100%_
                                                          _%L169101%_)
                                                   (let* ((_%body169131%_
                                                           (map (lambda (_%g169126169128%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%L169101%_
                           _%$klass168999%_
                           _%method-calls167806%_
                           _%slot-refs167807%_
                           _%g169126169128%_))
                        _%L169099%_))
                  (__tmp171813
                   (cons '%#lambda
                         (cons (cons _%L169101%_ _%L169100%_)
                               _%body169131%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171813
                                                      _%L168753%_)))
                                                 _%tl169062169088%_
                                                 _%tl169065169096%_
                                                 _%hd169064169094%_)))
                                            (_%g169052169070%_
                                             _%g169053169073%_))))
                                    (_%g169052169070%_ _%g169053169073%_))))
                            (_%g169052169070%_ _%g169053169073%_)))))
                (_%g169051169133%_ _%L168753%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr169293%_
                                                      (let* ((_%g169138169157%_
                                                              (lambda (_%g169139169154%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169139169154%_))))
                     (_%g169137169290%_
                      (lambda (_%g169139169160%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169139169160%_))
                            (let ((_%e169141169162%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169139169160%_))))
                              (let ((_%hd169142169165%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169141169162%_)))
                                    (_%tl169143169167%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169141169162%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169143169167%_))
                                    (let ((_g171814_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl169143169167%_
                                              '0))))
                                      (begin
                                        (let ((_g171815_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g171814_)
                                                     (##vector-length
                                                      _g171814_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g171815_ 2)))
                                              (error "Context expects 2 values"
                                                     _g171815_)))
                                        (let ((_%target169144169170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171814_ 0)))
                                              (_%tl169146169172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171814_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169146169172%_))
                                              (letrec ((_%loop169147169175%_
                                                        (lambda (_%hd169145169178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause169151169180%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169145169178%_))
                      (let ((_%e169148169183%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169145169178%_))))
                        (let ((_%lp-hd169149169186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169148169183%_)))
                              (_%lp-tl169150169188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169148169183%_))))
                          (_%loop169147169175%_
                           _%lp-tl169150169188%_
                           (cons _%lp-hd169149169186%_
                                 _%clause169151169180%_))))
                      (let ((_%clause169152169191%_
                             (reverse _%clause169151169180%_)))
                        ((lambda (_%L169194%_)
                           (let* ((_%clauses169288%_
                                   (map (lambda (_%clause169208%_)
                                          (let* ((_%__stx170699170700%_
                                                  _%clause169208%_)
                                                 (_%g169211169226%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx170699170700%_)))))
                                            (let ((_%__kont170701170702%_
                                                   (lambda (_%L169254%_
                                                            _%L169255%_
                                                            _%L169256%_)
                                                     (let ((_%body169276%_
                                                            (map (lambda (_%g169271169273%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%L169256%_
                            _%$klass168999%_
                            _%method-calls167806%_
                            _%slot-refs167807%_
                            _%g169271169273%_))
                         _%L169254%_)))
               (cons (cons _%L169256%_ _%L169255%_) _%body169276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170703170704%_
                                                   (lambda ()
                                                     _%clause169208%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx170699170700%_))
                                                  (let ((_%e169216169238%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx170699170700%_))))
                                                    (let ((_%tl169218169243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169216169238%_)))
                                                          (_%hd169217169241%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169216169238%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169217169241%_))
                                                          (let ((_%e169219169246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169217169241%_))))
                    (let ((_%tl169221169251%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169219169246%_)))
                          (_%hd169220169249%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169219169246%_))))
                      (_%__kont170701170702%_
                       _%tl169218169243%_
                       _%tl169221169251%_
                       _%hd169220169249%_)))
                  (_%__kont170703170704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170703170704%_)))))
                                        (let ((__tmp171816
                                               (lambda (_%g169280169283%_
                                                        _%g169281169285%_)
                                                 (cons _%g169280169283%_
                                                       _%g169281169285%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp171816
                                           '()
                                           _%L169194%_))))
                                  (__tmp171817
                                   (cons '%#case-lambda _%clauses169288%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171817 _%L168752%_)))
                         _%clause169152169191%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169147169175%_
                                                 _%target169144169170%_
                                                 '()))
                                              (_%g169138169157%_
                                               _%g169139169160%_)))))
                                    (_%g169138169157%_ _%g169139169160%_))))
                            (_%g169138169157%_ _%g169139169160%_)))))
                (_%g169137169290%_ _%L168752%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169295%_
                                                      (let ((__tmp171818
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L168754%_ '())
                                             (cons _%specializer-lambda-expr169136%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr169293%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171818 _%stx167714%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169297%_
                                                      (_%generate-specializer-impl167718%_
                                                       _%$klass168999%_
                                                       _%$method-table169001%_
                                                       _%methods-bind169026%_
                                                       _%slots-bind169050%_
                                                       _%specializer-impl169295%_)))
                                                (let ((__tmp171820
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167787%_)))
                                                      (__tmp171819
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id168997%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171820
                                                   '" => "
                                                   __tmp171819))
                                                (_%generate-specializer-def167719%_
                                                 _%L167787%_
                                                 _%specializer-id168997%_
                                                 _%specializer-impl169297%_))))
                                        _%hd168685168747%_
                                        _%hd168682168739%_
                                        _%hd168679168731%_)
                                       (_%g168661168691%_ _%g168662168694%_))))
                               (_%g168661168691%_ _%g168662168694%_))
                           (_%g168661168691%_ _%g168662168694%_))
                       (_%g168661168691%_ _%g168662168694%_))))
               (_%g168661168691%_ _%g168662168694%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168661168691%_
                                                    _%g168662168694%_))))
                                           (_%g168661168691%_
                                            _%g168662168694%_))))
                                   (_%g168661168691%_ _%g168662168694%_))))
                           (_%g168661168691%_ _%g168662168694%_))))
                   (_%g168661168691%_ _%g168662168694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168661168691%_
                                                    _%g168662168694%_)))))
                                       (_%g168660169300%_ _%L167786%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167786%_))
                                         (let* ((_%g169304169357%_
                                                 (lambda (_%g169305169354%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169305169354%_))))
                                                (_%g169303170500%_
                                                 (lambda (_%g169305169360%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169305169360%_))
                                                       (let ((_%e169311169362%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169305169360%_))))
                 (let ((_%hd169312169365%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169311169362%_)))
                       (_%tl169313169367%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169311169362%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd169312169365%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd169312169365%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl169313169367%_))
                               (let ((_%e169314169370%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl169313169367%_))))
                                 (let ((_%hd169315169373%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169314169370%_)))
                                       (_%tl169316169375%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169314169370%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169315169373%_))
                                       (let ((_%e169317169378%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169315169373%_))))
                                         (let ((_%hd169318169381%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169317169378%_)))
                                               (_%tl169319169383%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169317169378%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169318169381%_))
                                               (let ((_%e169320169386%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169318169381%_))))
                                                 (let ((_%hd169321169389%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169320169386%_)))
                                                       (_%tl169322169391%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169320169386%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd169321169389%_))
                                                       (let ((_%e169323169394%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd169321169389%_))))
                 (let ((_%hd169324169397%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169323169394%_)))
                       (_%tl169325169399%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169323169394%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl169325169399%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169322169391%_))
                           (let ((_%e169326169402%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169322169391%_))))
                             (let ((_%hd169327169405%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169326169402%_)))
                                   (_%tl169328169407%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169326169402%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169327169405%_))
                                   (let ((_%e169329169410%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169327169405%_))))
                                     (let ((_%hd169330169413%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169329169410%_)))
                                           (_%tl169331169415%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169329169410%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd169330169413%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd169330169413%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl169331169415%_))
                                                   (let ((_%e169332169418%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl169331169415%_))))
                                                     (let ((_%hd169333169421%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169332169418%_)))
                                                           (_%tl169334169423%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169332169418%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd169333169421%_))
                                                           (let ((_%e169335169426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd169333169421%_))))
                     (let ((_%hd169336169429%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169335169426%_)))
                           (_%tl169337169431%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169335169426%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169336169429%_))
                           (let ((_%e169338169434%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169336169429%_))))
                             (let ((_%hd169339169437%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169338169434%_)))
                                   (_%tl169340169439%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169338169434%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169339169437%_))
                                   (let ((_%e169341169442%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169339169437%_))))
                                     (let ((_%hd169342169445%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169341169442%_)))
                                           (_%tl169343169447%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169341169442%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169343169447%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl169340169439%_))
                                               (let ((_%e169344169450%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl169340169439%_))))
                                                 (let ((_%hd169345169453%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169344169450%_)))
                                                       (_%tl169346169455%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169344169450%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169346169455%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169337169431%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169334169423%_))
                       (let ((_%e169347169458%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169334169423%_))))
                         (let ((_%hd169348169461%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169347169458%_)))
                               (_%tl169349169463%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169347169458%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169349169463%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169328169407%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl169319169383%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl169316169375%_))
                                           (let ((_%e169350169466%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl169316169375%_))))
                                             (let ((_%hd169351169469%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169350169466%_)))
                                                   (_%tl169352169471%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169350169466%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl169352169471%_))
                                                   ((lambda (_%L169474%_
                                                             _%L169475%_
                                                             _%L169476%_
                                                             _%L169477%_
                                                             _%L169478%_)
                                                      (let* ((_%g169518169580%_
                                                              (lambda (_%g169519169577%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169519169577%_))))
                     (_%g169517170497%_
                      (lambda (_%g169519169583%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169519169583%_))
                            (let ((_%e169525169585%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169519169583%_))))
                              (let ((_%hd169526169588%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169525169585%_)))
                                    (_%tl169527169590%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169525169585%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169526169588%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd169526169588%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169527169590%_))
                                            (let ((_%e169528169593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169527169590%_))))
                                              (let ((_%hd169529169596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169528169593%_)))
                                                    (_%tl169530169598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169528169593%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169530169598%_))
                                                    (let ((_%e169531169601%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169530169598%_))))
                                                      (let ((_%hd169532169604%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169531169601%_)))
                    (_%tl169533169606%_
                     (let () (declare (not safe)) (##cdr _%e169531169601%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd169532169604%_))
                    (let ((_%e169534169609%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169532169604%_))))
                      (let ((_%hd169535169612%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169534169609%_)))
                            (_%tl169536169614%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169534169609%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd169535169612%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd169535169612%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169536169614%_))
                                    (let ((_%e169537169617%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169536169614%_))))
                                      (let ((_%hd169538169620%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169537169617%_)))
                                            (_%tl169539169622%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169537169617%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169538169620%_))
                                            (let ((_%e169540169625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169538169620%_))))
                                              (let ((_%hd169541169628%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169540169625%_)))
                                                    (_%tl169542169630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169540169625%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169541169628%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169541169628%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169542169630%_))
                                                            (let ((_%e169543169633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169542169630%_))))
                      (let ((_%hd169544169636%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169543169633%_)))
                            (_%tl169545169638%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169543169633%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169545169638%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169539169622%_))
                                (let ((_%e169546169641%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169539169622%_))))
                                  (let ((_%hd169547169644%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169546169641%_)))
                                        (_%tl169548169646%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169546169641%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169547169644%_))
                                        (let ((_%e169549169649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169547169644%_))))
                                          (let ((_%hd169550169652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169549169649%_)))
                                                (_%tl169551169654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169549169649%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd169550169652%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd169550169652%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169551169654%_))
                                                        (let ((_%e169552169657%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169551169654%_))))
                  (let ((_%hd169553169660%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169552169657%_)))
                        (_%tl169554169662%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169552169657%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169554169662%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169548169646%_))
                            (let ((_%e169555169665%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169548169646%_))))
                              (let ((_%hd169556169668%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169555169665%_)))
                                    (_%tl169557169670%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169555169665%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169556169668%_))
                                    (let ((_%e169558169673%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169556169668%_))))
                                      (let ((_%hd169559169676%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169558169673%_)))
                                            (_%tl169560169678%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169558169673%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169559169676%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169559169676%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169560169678%_))
                                                    (let ((_%e169561169681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169560169678%_))))
                                                      (let ((_%hd169562169684%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169561169681%_)))
                    (_%tl169563169686%_
                     (let () (declare (not safe)) (##cdr _%e169561169681%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169563169686%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl169557169670%_))
                        (if (let ((__tmp171821
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl169557169670%_))))
                              (declare (not safe))
                              (##fx>= __tmp171821 '1))
                            (let ((_g171822_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl169557169670%_
                                      '1))))
                              (begin
                                (let ((_g171823_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g171822_)
                                             (##vector-length _g171822_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g171823_ 2)))
                                      (error "Context expects 2 values"
                                             _g171823_)))
                                (let ((_%target169564169689%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171822_ 0)))
                                      (_%tl169566169691%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171822_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169566169691%_))
                                      (let ((_%e169573169694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169566169691%_))))
                                        (let ((_%hd169574169697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169573169694%_)))
                                              (_%tl169575169699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169573169694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169575169699%_))
                                              (letrec ((_%loop169567169702%_
                                                        (lambda (_%hd169565169705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref169571169707%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169565169705%_))
                      (let ((_%e169568169710%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169565169705%_))))
                        (let ((_%lp-hd169569169713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169568169710%_)))
                              (_%lp-tl169570169715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169568169710%_))))
                          (_%loop169567169702%_
                           _%lp-tl169570169715%_
                           (cons _%lp-hd169569169713%_
                                 _%kw-ref169571169707%_))))
                      (let ((_%kw-ref169572169718%_
                             (reverse _%kw-ref169571169707%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169533169606%_))
                            ((lambda (_%L169721%_
                                      _%L169722%_
                                      _%L169723%_
                                      _%L169724%_
                                      _%L169725%_)
                               (let* ((_%kw-count169776%_
                                       (length (let ((__tmp171824
                                                      (lambda (_%g169768169771%_
                                                               _%g169769169773%_)
                                                        (cons _%g169768169771%_
                                                              _%g169769169773%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171824
                                                  '()
                                                  _%L169722%_))))
                                      (_%self-index169778%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count169776%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L169476%_))
                                     (let* ((_%g169782169796%_
                                             (lambda (_%g169783169793%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g169783169793%_))))
                                            (_%g169781169913%_
                                             (lambda (_%g169783169799%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g169783169799%_))
                                                   (let ((_%e169786169801%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g169783169799%_))))
                                                     (let ((_%hd169787169804%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169786169801%_)))
                                                           (_%tl169788169806%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169786169801%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169788169806%_))
                                                           (let ((_%e169789169809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169788169806%_))))
                     (let ((_%hd169790169812%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169789169809%_)))
                           (_%tl169791169814%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169789169809%_))))
                       ((lambda (_%L169817%_ _%L169818%_)
                          (let ((_%self169835%_
                                 (list-ref _%L169818%_ _%self-index169778%_)))
                            (for-each
                             (lambda (_%g169836169838%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%self169835%_
                                _%method-calls167806%_
                                _%slot-refs167807%_
                                _%g169836169838%_))
                             _%L169817%_)
                            (if (_%no-specializer?167810%_)
                                _%stx167714%_
                                (let* ((_%specializer-id169847%_
                                        (let* ((_%id169841%_
                                                (let ((__tmp171825
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167787%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp171825
                                                   '"::specialize")))
                                               (_%specializer-id169844%_
                                                (let ((__tmp171826
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx167714%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id169841%_
                                                   __tmp171826))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id169844%_))
                                          _%specializer-id169844%_))
                                       (_%$klass169849%_
                                        (let ((__tmp171827
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171827)))
                                       (_%$method-table169851%_
                                        (let ((__tmp171828
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171828)))
                                       (_%methods169853%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%method-calls167806%_)))
                                       (_%$methods169857%_
                                        (map (lambda (_%id169855%_)
                                               (let ((__tmp171829
                                                      (gensym _%id169855%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171829)))
                                             _%methods169853%_))
                                       (_%_169866%_
                                        (for-each
                                         (lambda (_%g169858169861%_
                                                  _%g169859169863%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%method-calls167806%_
                                              _%g169858169861%_
                                              _%g169859169863%_)))
                                         _%methods169853%_
                                         _%$methods169857%_))
                                       (_%methods-bind169876%_
                                        (map (lambda (_%g169868169871%_
                                                      _%g169869169873%_)
                                               (_%generate-method-bind167716%_
                                                _%$klass169849%_
                                                _%$method-table169851%_
                                                _%g169868169871%_
                                                _%g169869169873%_))
                                             _%methods169853%_
                                             _%$methods169857%_))
                                       (_%slots169878%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%slot-refs167807%_)))
                                       (_%$slots169882%_
                                        (map (lambda (_%id169880%_)
                                               (let ((__tmp171830
                                                      (gensym _%id169880%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171830)))
                                             _%slots169878%_))
                                       (_%_169891%_
                                        (for-each
                                         (lambda (_%g169883169886%_
                                                  _%g169884169888%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%slot-refs167807%_
                                              _%g169883169886%_
                                              _%g169884169888%_)))
                                         _%slots169878%_
                                         _%$slots169882%_))
                                       (_%slots-bind169900%_
                                        (map (lambda (_%g169892169895%_
                                                      _%g169893169897%_)
                                               (_%generate-slot-bind167717%_
                                                _%$klass169849%_
                                                _%g169892169895%_
                                                _%g169893169897%_))
                                             _%slots169878%_
                                             _%$slots169882%_))
                                       (_%specializer-impl169908%_
                                        (let* ((_%specializer-body169906%_
                                                (map (lambda (_%g169901169903%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%self169835%_
                                                        _%$klass169849%_
                                                        _%method-calls167806%_
                                                        _%slot-refs167807%_
                                                        _%g169901169903%_))
                                                     _%L169817%_))
                                               (__tmp171831
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L169478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L169477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp171832
                                   (cons '%#lambda
                                         (cons _%L169818%_
                                               _%specializer-body169906%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp171832 _%L169476%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L169475%_ '())))
                                      '()))
                          '())
                    (cons _%L169474%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp171831
                                           _%stx167714%_)))
                                       (_%specializer-impl169910%_
                                        (_%generate-specializer-impl167718%_
                                         _%$klass169849%_
                                         _%$method-table169851%_
                                         _%methods-bind169876%_
                                         _%slots-bind169900%_
                                         _%specializer-impl169908%_)))
                                  (let ((__tmp171834
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L167787%_)))
                                        (__tmp171833
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id169847%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp171834
                                     '" => "
                                     __tmp171833))
                                  (_%generate-specializer-def167719%_
                                   _%L167787%_
                                   _%specializer-id169847%_
                                   _%specializer-impl169910%_)))))
                        _%tl169791169814%_
                        _%hd169790169812%_)))
                   (_%g169782169796%_ _%g169783169799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169782169796%_
                                                    _%g169783169799%_)))))
                                       (_%g169781169913%_ _%L169476%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L169476%_))
                                         (let* ((_%g169917169947%_
                                                 (lambda (_%g169918169944%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169918169944%_))))
                                                (_%g169916170493%_
                                                 (lambda (_%g169918169950%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169918169950%_))
                                                       (let ((_%e169922169952%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169918169950%_))))
                 (let ((_%hd169923169955%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169922169952%_)))
                       (_%tl169924169957%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169922169952%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169924169957%_))
                       (let ((_%e169925169960%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169924169957%_))))
                         (let ((_%hd169926169963%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169925169960%_)))
                               (_%tl169927169965%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169925169960%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd169926169963%_))
                               (let ((_%e169928169968%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd169926169963%_))))
                                 (let ((_%hd169929169971%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169928169968%_)))
                                       (_%tl169930169973%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169928169968%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169929169971%_))
                                       (let ((_%e169931169976%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169929169971%_))))
                                         (let ((_%hd169932169979%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169931169976%_)))
                                               (_%tl169933169981%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169931169976%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169932169979%_))
                                               (let ((_%e169934169984%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169932169979%_))))
                                                 (let ((_%hd169935169987%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169934169984%_)))
                                                       (_%tl169936169989%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169934169984%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169936169989%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169933169981%_))
                                                           (let ((_%e169937169992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169933169981%_))))
                     (let ((_%hd169938169995%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169937169992%_)))
                           (_%tl169939169997%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169937169992%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169939169997%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169930169973%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl169927169965%_))
                                   (let ((_%e169940170000%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl169927169965%_))))
                                     (let ((_%hd169941170003%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169940170000%_)))
                                           (_%tl169942170005%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169940170000%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169942170005%_))
                                           ((lambda (_%L170008%_
                                                     _%L170009%_
                                                     _%L170010%_)
                                              (let* ((_%g170034170048%_
                                                      (lambda (_%g170035170045%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170035170045%_))))
                                                     (_%g170033170089%_
                                                      (lambda (_%g170035170051%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170035170051%_))
                                                            (let ((_%e170038170053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170035170051%_))))
                      (let ((_%hd170039170056%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170038170053%_)))
                            (_%tl170040170058%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170038170053%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170040170058%_))
                            (let ((_%e170041170061%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170040170058%_))))
                              (let ((_%hd170042170064%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170041170061%_)))
                                    (_%tl170043170066%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170041170061%_))))
                                ((lambda (_%L170069%_ _%L170070%_)
                                   (let ((_%self170083%_
                                          (list-ref
                                           _%L170070%_
                                           _%self-index169778%_)))
                                     (for-each
                                      (lambda (_%g170084170086%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%self170083%_
                                         _%method-calls167806%_
                                         _%slot-refs167807%_
                                         _%g170084170086%_))
                                      _%L170069%_)))
                                 _%tl170043170066%_
                                 _%hd170042170064%_)))
                            (_%g170034170048%_ _%g170035170051%_))))
                    (_%g170034170048%_ _%g170035170051%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170033170089%_
                                                 _%L170009%_))
                                              (let* ((_%g170092170111%_
                                                      (lambda (_%g170093170108%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170093170108%_))))
                                                     (_%g170091170216%_
                                                      (lambda (_%g170093170114%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170093170114%_))
                                                            (let ((_%e170095170116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170093170114%_))))
                      (let ((_%hd170096170119%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170095170116%_)))
                            (_%tl170097170121%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170095170116%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl170097170121%_))
                            (let ((_g171835_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl170097170121%_
                                      '0))))
                              (begin
                                (let ((_g171836_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g171835_)
                                             (##vector-length _g171835_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g171836_ 2)))
                                      (error "Context expects 2 values"
                                             _g171836_)))
                                (let ((_%target170098170124%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171835_ 0)))
                                      (_%tl170100170126%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171835_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170100170126%_))
                                      (letrec ((_%loop170101170129%_
                                                (lambda (_%hd170099170132%_
                                                         _%clause170105170134%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd170099170132%_))
                                                      (let ((_%e170102170137%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd170099170132%_))))
                (let ((_%lp-hd170103170140%_
                       (let () (declare (not safe)) (##car _%e170102170137%_)))
                      (_%lp-tl170104170142%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170102170137%_))))
                  (_%loop170101170129%_
                   _%lp-tl170104170142%_
                   (cons _%lp-hd170103170140%_ _%clause170105170134%_))))
              (let ((_%clause170106170145%_ (reverse _%clause170105170134%_)))
                ((lambda (_%L170148%_)
                   (for-each
                    (lambda (_%clause170161%_)
                      (let* ((_%g170163170174%_
                              (lambda (_%g170164170171%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170164170171%_))))
                             (_%g170162170206%_
                              (lambda (_%g170164170177%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g170164170177%_))
                                    (let ((_%e170167170179%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g170164170177%_))))
                                      (let ((_%hd170168170182%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170167170179%_)))
                                            (_%tl170169170184%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170167170179%_))))
                                        ((lambda (_%L170187%_ _%L170188%_)
                                           (let ((_%self170200%_
                                                  (list-ref
                                                   _%L170188%_
                                                   _%self-index169778%_)))
                                             (for-each
                                              (lambda (_%g170201170203%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%self170200%_
                                                 _%method-calls167806%_
                                                 _%slot-refs167807%_
                                                 _%g170201170203%_))
                                              _%L170187%_)))
                                         _%tl170169170184%_
                                         _%hd170168170182%_)))
                                    (_%g170163170174%_ _%g170164170177%_)))))
                        (_%g170162170206%_ _%clause170161%_)))
                    (let ((__tmp171837
                           (lambda (_%g170208170211%_ _%g170209170213%_)
                             (cons _%g170208170211%_ _%g170209170213%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171837 '() _%L170148%_))))
                 _%clause170106170145%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop170101170129%_
                                         _%target170098170124%_
                                         '()))
                                      (_%g170092170111%_ _%g170093170114%_)))))
                            (_%g170092170111%_ _%g170093170114%_))))
                    (_%g170092170111%_ _%g170093170114%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170091170216%_
                                                 _%L170008%_))
                                              (if (_%no-specializer?167810%_)
                                                  _%stx167714%_
                                                  (let* ((_%specializer-id170225%_
                                                          (let* ((_%id170219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171838
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167787%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171838 '"::specialize")))
                         (_%specializer-id170222%_
                          (let ((__tmp171839
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167714%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id170219%_
                             __tmp171839))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id170222%_))
                    _%specializer-id170222%_))
                 (_%$klass170227%_
                  (let ((__tmp171840
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171840)))
                 (_%$method-table170229%_
                  (let ((__tmp171841
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171841)))
                 (_%methods170231%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167806%_)))
                 (_%$methods170235%_
                  (map (lambda (_%id170233%_)
                         (let ((__tmp171842 (gensym _%id170233%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171842)))
                       _%methods170231%_))
                 (_%_170244%_
                  (for-each
                   (lambda (_%g170236170239%_ _%g170237170241%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167806%_
                        _%g170236170239%_
                        _%g170237170241%_)))
                   _%methods170231%_
                   _%$methods170235%_))
                 (_%methods-bind170254%_
                  (map (lambda (_%g170246170249%_ _%g170247170251%_)
                         (_%generate-method-bind167716%_
                          _%$klass170227%_
                          _%$method-table170229%_
                          _%g170246170249%_
                          _%g170247170251%_))
                       _%methods170231%_
                       _%$methods170235%_))
                 (_%slots170256%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167807%_)))
                 (_%$slots170260%_
                  (map (lambda (_%id170258%_)
                         (let ((__tmp171843 (gensym _%id170258%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171843)))
                       _%slots170256%_))
                 (_%_170269%_
                  (for-each
                   (lambda (_%g170261170264%_ _%g170262170266%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167807%_
                        _%g170261170264%_
                        _%g170262170266%_)))
                   _%slots170256%_
                   _%$slots170260%_))
                 (_%slots-bind170278%_
                  (map (lambda (_%g170270170273%_ _%g170271170275%_)
                         (_%generate-slot-bind167717%_
                          _%$klass170227%_
                          _%g170270170273%_
                          _%g170271170275%_))
                       _%slots170256%_
                       _%$slots170260%_))
                 (_%specializer-lambda-expr170351%_
                  (let* ((_%g170280170294%_
                          (lambda (_%g170281170291%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170281170291%_))))
                         (_%g170279170348%_
                          (lambda (_%g170281170297%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170281170297%_))
                                (let ((_%e170284170299%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170281170297%_))))
                                  (let ((_%hd170285170302%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170284170299%_)))
                                        (_%tl170286170304%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170284170299%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170286170304%_))
                                        (let ((_%e170287170307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170286170304%_))))
                                          (let ((_%hd170288170310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170287170307%_)))
                                                (_%tl170289170312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170287170307%_))))
                                            ((lambda (_%L170315%_ _%L170316%_)
                                               (let* ((_%self170339%_
                                                       (list-ref
                                                        _%L170316%_
                                                        _%self-index169778%_))
                                                      (_%body170345%_
                                                       (map (lambda (_%g170340170342%_)
                                                              (gxc#apply-subst-object-refs__%
                                                               '#f
                                                               _%self170339%_
                                                               _%$klass170227%_
                                                               _%method-calls167806%_
                                                               _%slot-refs167807%_
                                                               _%g170340170342%_))
                                                            _%L170315%_))
                                                      (__tmp171844
                                                       (cons '%#lambda
                                                             (cons _%L170316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body170345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp171844
                                                  _%L170009%_)))
                                             _%tl170289170312%_
                                             _%hd170288170310%_)))
                                        (_%g170280170294%_
                                         _%g170281170297%_))))
                                (_%g170280170294%_ _%g170281170297%_)))))
                    (_%g170279170348%_ _%L170009%_)))
                 (_%specializer-case-lambda-expr170486%_
                  (let* ((_%g170353170372%_
                          (lambda (_%g170354170369%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170354170369%_))))
                         (_%g170352170483%_
                          (lambda (_%g170354170375%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170354170375%_))
                                (let ((_%e170356170377%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170354170375%_))))
                                  (let ((_%hd170357170380%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170356170377%_)))
                                        (_%tl170358170382%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170356170377%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170358170382%_))
                                        (let ((_g171845_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl170358170382%_
                                                  '0))))
                                          (begin
                                            (let ((_g171846_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g171845_)
                                                         (##vector-length
                                                          _g171845_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g171846_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g171846_)))
                                            (let ((_%target170359170385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171845_
                                                      0)))
                                                  (_%tl170361170387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171845_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl170361170387%_))
                                                  (letrec ((_%loop170362170390%_
                                                            (lambda (_%hd170360170393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause170366170395%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd170360170393%_))
                          (let ((_%e170363170398%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd170360170393%_))))
                            (let ((_%lp-hd170364170401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170363170398%_)))
                                  (_%lp-tl170365170403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170363170398%_))))
                              (_%loop170362170390%_
                               _%lp-tl170365170403%_
                               (cons _%lp-hd170364170401%_
                                     _%clause170366170395%_))))
                          (let ((_%clause170367170406%_
                                 (reverse _%clause170366170395%_)))
                            ((lambda (_%L170409%_)
                               (let* ((_%clauses170481%_
                                       (map (lambda (_%clause170423%_)
                                              (let* ((_%g170425170436%_
                                                      (lambda (_%g170426170433%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170426170433%_))))
                                                     (_%g170424170471%_
                                                      (lambda (_%g170426170439%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170426170439%_))
                                                            (let ((_%e170429170441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170426170439%_))))
                      (let ((_%hd170430170444%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170429170441%_)))
                            (_%tl170431170446%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170429170441%_))))
                        ((lambda (_%L170449%_ _%L170450%_)
                           (let* ((_%self170462%_
                                   (list-ref _%L170450%_ _%self-index169778%_))
                                  (_%body170468%_
                                   (map (lambda (_%g170463170465%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%self170462%_
                                           _%$klass170227%_
                                           _%method-calls167806%_
                                           _%slot-refs167807%_
                                           _%g170463170465%_))
                                        _%L170449%_)))
                             (cons _%L170450%_ _%body170468%_)))
                         _%tl170431170446%_
                         _%hd170430170444%_)))
                    (_%g170425170436%_ _%g170426170439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170424170471%_
                                                 _%clause170423%_)))
                                            (let ((__tmp171847
                                                   (lambda (_%g170473170476%_
                                                            _%g170474170478%_)
                                                     (cons _%g170473170476%_
                                                           _%g170474170478%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp171847
                                               '()
                                               _%L170409%_))))
                                      (__tmp171848
                                       (cons '%#case-lambda
                                             _%clauses170481%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp171848
                                  _%L170008%_)))
                             _%clause170367170406%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop170362170390%_
                                                     _%target170359170385%_
                                                     '()))
                                                  (_%g170353170372%_
                                                   _%g170354170375%_)))))
                                        (_%g170353170372%_
                                         _%g170354170375%_))))
                                (_%g170353170372%_ _%g170354170375%_)))))
                    (_%g170352170483%_ _%L170008%_)))
                 (_%specializer-impl170488%_
                  (let ((__tmp171849
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L169478%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L169477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp171850
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L170010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr170351%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr170486%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171850
                                                _%stx167714%_))
                                             '()))
                                 '())
                           (cons _%L169475%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L169474%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171849 _%stx167714%_)))
                 (_%specializer-impl170490%_
                  (_%generate-specializer-impl167718%_
                   _%$klass170227%_
                   _%$method-table170229%_
                   _%methods-bind170254%_
                   _%slots-bind170278%_
                   _%specializer-impl170488%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171852
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167787%_)))
                                                          (__tmp171851
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id170225%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171852
                                                       '" => "
                                                       __tmp171851))
                                                    (_%generate-specializer-def167719%_
                                                     _%L167787%_
                                                     _%specializer-id170225%_
                                                     _%specializer-impl170490%_))))
                                            _%hd169941170003%_
                                            _%hd169938169995%_
                                            _%hd169935169987%_)
                                           (_%g169917169947%_
                                            _%g169918169950%_))))
                                   (_%g169917169947%_ _%g169918169950%_))
                               (_%g169917169947%_ _%g169918169950%_))
                           (_%g169917169947%_ _%g169918169950%_))))
                   (_%g169917169947%_ _%g169918169950%_))
               (_%g169917169947%_ _%g169918169950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169917169947%_
                                                _%g169918169950%_))))
                                       (_%g169917169947%_ _%g169918169950%_))))
                               (_%g169917169947%_ _%g169918169950%_))))
                       (_%g169917169947%_ _%g169918169950%_))))
               (_%g169917169947%_ _%g169918169950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169916170493%_ _%L169476%_))
                                         _%stx167714%_))))
                             _%hd169574169697%_
                             _%kw-ref169572169718%_
                             _%hd169562169684%_
                             _%hd169553169660%_
                             _%hd169544169636%_)
                            (_%g169518169580%_ _%g169519169583%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169567169702%_
                                                 _%target169564169689%_
                                                 '()))
                                              (_%g169518169580%_
                                               _%g169519169583%_))))
                                      (_%g169518169580%_ _%g169519169583%_)))))
                            (_%g169518169580%_ _%g169519169583%_))
                        (_%g169518169580%_ _%g169519169583%_))
                    (_%g169518169580%_ _%g169519169583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169518169580%_
                                                     _%g169519169583%_))
                                                (_%g169518169580%_
                                                 _%g169519169583%_))
                                            (_%g169518169580%_
                                             _%g169519169583%_))))
                                    (_%g169518169580%_ _%g169519169583%_))))
                            (_%g169518169580%_ _%g169519169583%_))
                        (_%g169518169580%_ _%g169519169583%_))))
                (_%g169518169580%_ _%g169519169583%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169518169580%_
                                                     _%g169519169583%_))
                                                (_%g169518169580%_
                                                 _%g169519169583%_))))
                                        (_%g169518169580%_
                                         _%g169519169583%_))))
                                (_%g169518169580%_ _%g169519169583%_))
                            (_%g169518169580%_ _%g169519169583%_))))
                    (_%g169518169580%_ _%g169519169583%_))
                (_%g169518169580%_ _%g169519169583%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169518169580%_
                                                     _%g169519169583%_))))
                                            (_%g169518169580%_
                                             _%g169519169583%_))))
                                    (_%g169518169580%_ _%g169519169583%_))
                                (_%g169518169580%_ _%g169519169583%_))
                            (_%g169518169580%_ _%g169519169583%_))))
                    (_%g169518169580%_ _%g169519169583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169518169580%_
                                                     _%g169519169583%_))))
                                            (_%g169518169580%_
                                             _%g169519169583%_))
                                        (_%g169518169580%_ _%g169519169583%_))
                                    (_%g169518169580%_ _%g169519169583%_))))
                            (_%g169518169580%_ _%g169519169583%_)))))
                (_%g169517170497%_ _%L169475%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd169351169469%_
                                                    _%hd169348169461%_
                                                    _%hd169345169453%_
                                                    _%hd169342169445%_
                                                    _%hd169324169397%_)
                                                   (_%g169304169357%_
                                                    _%g169305169360%_))))
                                           (_%g169304169357%_
                                            _%g169305169360%_))
                                       (_%g169304169357%_ _%g169305169360%_))
                                   (_%g169304169357%_ _%g169305169360%_))
                               (_%g169304169357%_ _%g169305169360%_))))
                       (_%g169304169357%_ _%g169305169360%_))
                   (_%g169304169357%_ _%g169305169360%_))
               (_%g169304169357%_ _%g169305169360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169304169357%_
                                                _%g169305169360%_))
                                           (_%g169304169357%_
                                            _%g169305169360%_))))
                                   (_%g169304169357%_ _%g169305169360%_))))
                           (_%g169304169357%_ _%g169305169360%_))))
                   (_%g169304169357%_ _%g169305169360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169304169357%_
                                                    _%g169305169360%_))
                                               (_%g169304169357%_
                                                _%g169305169360%_))
                                           (_%g169304169357%_
                                            _%g169305169360%_))))
                                   (_%g169304169357%_ _%g169305169360%_))))
                           (_%g169304169357%_ _%g169305169360%_))
                       (_%g169304169357%_ _%g169305169360%_))))
               (_%g169304169357%_ _%g169305169360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169304169357%_
                                                _%g169305169360%_))))
                                       (_%g169304169357%_ _%g169305169360%_))))
                               (_%g169304169357%_ _%g169305169360%_))
                           (_%g169304169357%_ _%g169305169360%_))
                       (_%g169304169357%_ _%g169305169360%_))))
               (_%g169304169357%_ _%g169305169360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169303170500%_ _%L167786%_))
                                         _%stx167714%_))))))))
                  (_%__kont170723170724%_ (lambda () _%stx167714%_)))
              (let ((_%__match170752170753%_
                     (lambda (_%e167726167754%_
                              _%hd167727167757%_
                              _%tl167728167759%_
                              _%e167729167762%_
                              _%hd167730167765%_
                              _%tl167731167767%_
                              _%e167732167770%_
                              _%hd167733167773%_
                              _%tl167734167775%_
                              _%e167735167778%_
                              _%hd167736167781%_
                              _%tl167737167783%_)
                       (let ((_%L167786%_ _%hd167736167781%_)
                             (_%L167787%_ _%hd167733167773%_))
                         (if (let ((__tmp171853
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167787%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171853))
                             (_%__kont170721170722%_ _%L167786%_ _%L167787%_)
                             (_%__kont170723170724%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170719170720%_))
                    (let ((_%e167726167754%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170719170720%_))))
                      (let ((_%tl167728167759%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167726167754%_)))
                            (_%hd167727167757%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167726167754%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167728167759%_))
                            (let ((_%e167729167762%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167728167759%_))))
                              (let ((_%tl167731167767%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167729167762%_)))
                                    (_%hd167730167765%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167729167762%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167730167765%_))
                                    (let ((_%e167732167770%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167730167765%_))))
                                      (let ((_%tl167734167775%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167732167770%_)))
                                            (_%hd167733167773%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167732167770%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167734167775%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167731167767%_))
                                                (let ((_%e167735167778%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167731167767%_))))
                                                  (let ((_%tl167737167783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167735167778%_)))
                                                        (_%hd167736167781%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167735167778%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167737167783%_))
                                                        (_%__match170752170753%_
                                                         _%e167726167754%_
                                                         _%hd167727167757%_
                                                         _%tl167728167759%_
                                                         _%e167729167762%_
                                                         _%hd167730167765%_
                                                         _%tl167731167767%_
                                                         _%e167732167770%_
                                                         _%hd167733167773%_
                                                         _%tl167734167775%_
                                                         _%e167735167778%_
                                                         _%hd167736167781%_
                                                         _%tl167737167783%_)
                                                        (_%__kont170723170724%_))))
                                                (_%__kont170723170724%_))
                                            (_%__kont170723170724%_))))
                                    (_%__kont170723170724%_))))
                            (_%__kont170723170724%_))))
                    (_%__kont170723170724%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self166674%_ _%stx166675%_)
        (let* ((_%__stx170755170756%_ _%stx166675%_)
               (_%g166683166905%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170755170756%_)))))
          (let ((_%__kont170757170758%_
                 (lambda (_%L167662%_ _%L167663%_ _%L167664%_ _%L167665%_)
                   (let ((__tmp171855
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166674%_ 'methods)))
                         (__tmp171854
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167663%_))))
                     (declare (not safe))
                     (hash-put! __tmp171855 __tmp171854 '#t))
                   (for-each
                    (lambda (_%g167698167700%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166674%_ _%g167698167700%_)))
                    (let ((__tmp171856
                           (lambda (_%g167702167705%_ _%g167703167707%_)
                             (cons _%g167702167705%_ _%g167703167707%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171856 '() _%L167662%_)))))
                (_%__kont170761170762%_
                 (lambda (_%L167497%_
                          _%L167498%_
                          _%L167499%_
                          _%L167500%_
                          _%L167501%_)
                   (let ((__tmp171858
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166674%_ 'methods)))
                         (__tmp171857
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167498%_))))
                     (declare (not safe))
                     (hash-put! __tmp171858 __tmp171857 '#t))
                   (for-each
                    (lambda (_%g167541167543%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166674%_ _%g167541167543%_)))
                    (let ((__tmp171859
                           (lambda (_%g167545167548%_ _%g167546167550%_)
                             (cons _%g167545167548%_ _%g167546167550%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171859 '() _%L167497%_)))))
                (_%__kont170765170766%_
                 (lambda (_%L167330%_ _%L167331%_ _%L167332%_)
                   (let ((__tmp171861
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166674%_ 'slots)))
                         (__tmp171860
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167330%_))))
                     (declare (not safe))
                     (hash-put! __tmp171861 __tmp171860 '#t))))
                (_%__kont170767170768%_
                 (lambda (_%L167207%_ _%L167208%_ _%L167209%_ _%L167210%_)
                   (let ((__tmp171863
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166674%_ 'slots)))
                         (__tmp171862
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167208%_))))
                     (declare (not safe))
                     (hash-put! __tmp171863 __tmp171862 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self166674%_ _%L167207%_))))
                (_%__kont170769170770%_
                 (lambda (_%L167081%_ _%L167082%_)
                   (let* ((_%accessor167104%_
                           (let ((__tmp171864
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167082%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171864)))
                          (_%klass167106%_
                           (let ((__tmp171865
                                  (##structure-ref
                                   _%accessor167104%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166675%_
                              __tmp171865)))
                          (_%slot167108%_
                           (##structure-ref
                            _%accessor167104%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%accessor167104%_
                                    '4
                                    gxc#!accessor::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167106%_
                                     _%slot167108%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167106%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171867
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166674%_ 'slots)))
                               (__tmp171866
                                (##structure-ref
                                 _%accessor167104%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171867 __tmp171866 '#t))))))
                (_%__kont170771170772%_
                 (lambda (_%L166981%_ _%L166982%_ _%L166983%_)
                   (let* ((_%mutator167010%_
                           (let ((__tmp171868
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166983%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171868)))
                          (_%klass167012%_
                           (let ((__tmp171869
                                  (##structure-ref
                                   _%mutator167010%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166675%_
                              __tmp171869)))
                          (_%slot167014%_
                           (##structure-ref
                            _%mutator167010%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%mutator167010%_
                                    '4
                                    gxc#!mutator::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167012%_
                                     _%slot167014%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167012%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171870
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166674%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171870 _%slot167014%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self166674%_ _%L166981%_)))))
                (_%__kont170773170774%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self166674%_ _%stx166675%_)))))
            (let* ((_%__match171254171255%_
                    (lambda (_%e166877166917%_
                             _%hd166878166920%_
                             _%tl166879166922%_
                             _%e166880166925%_
                             _%hd166881166928%_
                             _%tl166882166930%_
                             _%e166883166933%_
                             _%hd166884166936%_
                             _%tl166885166938%_
                             _%e166886166941%_
                             _%hd166887166944%_
                             _%tl166888166946%_
                             _%e166889166949%_
                             _%hd166890166952%_
                             _%tl166891166954%_
                             _%e166892166957%_
                             _%hd166893166960%_
                             _%tl166894166962%_
                             _%e166895166965%_
                             _%hd166896166968%_
                             _%tl166897166970%_
                             _%e166898166973%_
                             _%hd166899166976%_
                             _%tl166900166978%_)
                      (let ((_%L166981%_ _%hd166899166976%_)
                            (_%L166982%_ _%hd166896166968%_)
                            (_%L166983%_ _%hd166887166944%_))
                        (if (and (let ((__tmp171871
                                        (let ((__tmp171872
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166983%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171872))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171871
                                    'gxc#!mutator::t))
                                 (let ((__tmp171873
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166674%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166982%_
                                    __tmp171873)))
                            (_%__kont170771170772%_
                             _%L166981%_
                             _%L166982%_
                             _%L166983%_)
                            (_%__kont170773170774%_)))))
                   (_%__match171252171253%_
                    (lambda (_%e166877166917%_
                             _%hd166878166920%_
                             _%tl166879166922%_
                             _%e166880166925%_
                             _%hd166881166928%_
                             _%tl166882166930%_
                             _%e166883166933%_
                             _%hd166884166936%_
                             _%tl166885166938%_
                             _%e166886166941%_
                             _%hd166887166944%_
                             _%tl166888166946%_
                             _%e166889166949%_
                             _%hd166890166952%_
                             _%tl166891166954%_
                             _%e166892166957%_
                             _%hd166893166960%_
                             _%tl166894166962%_
                             _%e166895166965%_
                             _%hd166896166968%_
                             _%tl166897166970%_
                             _%e166898166973%_
                             _%hd166899166976%_
                             _%tl166900166978%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166900166978%_))
                          (_%__match171254171255%_
                           _%e166877166917%_
                           _%hd166878166920%_
                           _%tl166879166922%_
                           _%e166880166925%_
                           _%hd166881166928%_
                           _%tl166882166930%_
                           _%e166883166933%_
                           _%hd166884166936%_
                           _%tl166885166938%_
                           _%e166886166941%_
                           _%hd166887166944%_
                           _%tl166888166946%_
                           _%e166889166949%_
                           _%hd166890166952%_
                           _%tl166891166954%_
                           _%e166892166957%_
                           _%hd166893166960%_
                           _%tl166894166962%_
                           _%e166895166965%_
                           _%hd166896166968%_
                           _%tl166897166970%_
                           _%e166898166973%_
                           _%hd166899166976%_
                           _%tl166900166978%_)
                          (_%__kont170773170774%_))))
                   (_%__match171246171247%_
                    (lambda (_%e166877166917%_
                             _%hd166878166920%_
                             _%tl166879166922%_
                             _%e166880166925%_
                             _%hd166881166928%_
                             _%tl166882166930%_
                             _%e166883166933%_
                             _%hd166884166936%_
                             _%tl166885166938%_
                             _%e166886166941%_
                             _%hd166887166944%_
                             _%tl166888166946%_
                             _%e166889166949%_
                             _%hd166890166952%_
                             _%tl166891166954%_
                             _%e166892166957%_
                             _%hd166893166960%_
                             _%tl166894166962%_
                             _%e166895166965%_
                             _%hd166896166968%_
                             _%tl166897166970%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166891166954%_))
                          (let ((_%e166898166973%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166891166954%_))))
                            (let ((_%tl166900166978%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166898166973%_)))
                                  (_%hd166899166976%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166898166973%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166900166978%_))
                                  (_%__match171254171255%_
                                   _%e166877166917%_
                                   _%hd166878166920%_
                                   _%tl166879166922%_
                                   _%e166880166925%_
                                   _%hd166881166928%_
                                   _%tl166882166930%_
                                   _%e166883166933%_
                                   _%hd166884166936%_
                                   _%tl166885166938%_
                                   _%e166886166941%_
                                   _%hd166887166944%_
                                   _%tl166888166946%_
                                   _%e166889166949%_
                                   _%hd166890166952%_
                                   _%tl166891166954%_
                                   _%e166892166957%_
                                   _%hd166893166960%_
                                   _%tl166894166962%_
                                   _%e166895166965%_
                                   _%hd166896166968%_
                                   _%tl166897166970%_
                                   _%e166898166973%_
                                   _%hd166899166976%_
                                   _%tl166900166978%_)
                                  (_%__kont170773170774%_))))
                          (_%__kont170773170774%_))))
                   (_%__match171192171193%_
                    (lambda (_%e166853167025%_
                             _%hd166854167028%_
                             _%tl166855167030%_
                             _%e166856167033%_
                             _%hd166857167036%_
                             _%tl166858167038%_
                             _%e166859167041%_
                             _%hd166860167044%_
                             _%tl166861167046%_
                             _%e166862167049%_
                             _%hd166863167052%_
                             _%tl166864167054%_
                             _%e166865167057%_
                             _%hd166866167060%_
                             _%tl166867167062%_
                             _%e166868167065%_
                             _%hd166869167068%_
                             _%tl166870167070%_
                             _%e166871167073%_
                             _%hd166872167076%_
                             _%tl166873167078%_)
                      (let ((_%L167081%_ _%hd166872167076%_)
                            (_%L167082%_ _%hd166863167052%_))
                        (if (and (let ((__tmp171874
                                        (let ((__tmp171875
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167082%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171875))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171874
                                    'gxc#!accessor::t))
                                 (let ((__tmp171876
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166674%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167081%_
                                    __tmp171876)))
                            (_%__kont170769170770%_ _%L167081%_ _%L167082%_)
                            (_%__kont170773170774%_)))))
                   (_%__match171190171191%_
                    (lambda (_%e166853167025%_
                             _%hd166854167028%_
                             _%tl166855167030%_
                             _%e166856167033%_
                             _%hd166857167036%_
                             _%tl166858167038%_
                             _%e166859167041%_
                             _%hd166860167044%_
                             _%tl166861167046%_
                             _%e166862167049%_
                             _%hd166863167052%_
                             _%tl166864167054%_
                             _%e166865167057%_
                             _%hd166866167060%_
                             _%tl166867167062%_
                             _%e166868167065%_
                             _%hd166869167068%_
                             _%tl166870167070%_
                             _%e166871167073%_
                             _%hd166872167076%_
                             _%tl166873167078%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166867167062%_))
                          (_%__match171192171193%_
                           _%e166853167025%_
                           _%hd166854167028%_
                           _%tl166855167030%_
                           _%e166856167033%_
                           _%hd166857167036%_
                           _%tl166858167038%_
                           _%e166859167041%_
                           _%hd166860167044%_
                           _%tl166861167046%_
                           _%e166862167049%_
                           _%hd166863167052%_
                           _%tl166864167054%_
                           _%e166865167057%_
                           _%hd166866167060%_
                           _%tl166867167062%_
                           _%e166868167065%_
                           _%hd166869167068%_
                           _%tl166870167070%_
                           _%e166871167073%_
                           _%hd166872167076%_
                           _%tl166873167078%_)
                          (_%__match171246171247%_
                           _%e166853167025%_
                           _%hd166854167028%_
                           _%tl166855167030%_
                           _%e166856167033%_
                           _%hd166857167036%_
                           _%tl166858167038%_
                           _%e166859167041%_
                           _%hd166860167044%_
                           _%tl166861167046%_
                           _%e166862167049%_
                           _%hd166863167052%_
                           _%tl166864167054%_
                           _%e166865167057%_
                           _%hd166866167060%_
                           _%tl166867167062%_
                           _%e166868167065%_
                           _%hd166869167068%_
                           _%tl166870167070%_
                           _%e166871167073%_
                           _%hd166872167076%_
                           _%tl166873167078%_))))
                   (_%__match171136171137%_
                    (lambda (_%e166818167119%_
                             _%hd166819167122%_
                             _%tl166820167124%_
                             _%e166821167127%_
                             _%hd166822167130%_
                             _%tl166823167132%_
                             _%e166824167135%_
                             _%hd166825167138%_
                             _%tl166826167140%_
                             _%e166827167143%_
                             _%hd166828167146%_
                             _%tl166829167148%_
                             _%e166830167151%_
                             _%hd166831167154%_
                             _%tl166832167156%_
                             _%e166833167159%_
                             _%hd166834167162%_
                             _%tl166835167164%_
                             _%e166836167167%_
                             _%hd166837167170%_
                             _%tl166838167172%_
                             _%e166839167175%_
                             _%hd166840167178%_
                             _%tl166841167180%_
                             _%e166842167183%_
                             _%hd166843167186%_
                             _%tl166844167188%_
                             _%e166845167191%_
                             _%hd166846167194%_
                             _%tl166847167196%_
                             _%e166848167199%_
                             _%hd166849167202%_
                             _%tl166850167204%_)
                      (let ((_%L167207%_ _%hd166849167202%_)
                            (_%L167208%_ _%hd166846167194%_)
                            (_%L167209%_ _%hd166837167170%_)
                            (_%L167210%_ _%hd166828167146%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167210%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167210%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171877
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166674%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167209%_
                                    __tmp171877)))
                            (_%__kont170767170768%_
                             _%L167207%_
                             _%L167208%_
                             _%L167209%_
                             _%L167210%_)
                            (_%__kont170773170774%_)))))
                   (_%__match171128171129%_
                    (lambda (_%e166818167119%_
                             _%hd166819167122%_
                             _%tl166820167124%_
                             _%e166821167127%_
                             _%hd166822167130%_
                             _%tl166823167132%_
                             _%e166824167135%_
                             _%hd166825167138%_
                             _%tl166826167140%_
                             _%e166827167143%_
                             _%hd166828167146%_
                             _%tl166829167148%_
                             _%e166830167151%_
                             _%hd166831167154%_
                             _%tl166832167156%_
                             _%e166833167159%_
                             _%hd166834167162%_
                             _%tl166835167164%_
                             _%e166836167167%_
                             _%hd166837167170%_
                             _%tl166838167172%_
                             _%e166839167175%_
                             _%hd166840167178%_
                             _%tl166841167180%_
                             _%e166842167183%_
                             _%hd166843167186%_
                             _%tl166844167188%_
                             _%e166845167191%_
                             _%hd166846167194%_
                             _%tl166847167196%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166841167180%_))
                          (let ((_%e166848167199%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166841167180%_))))
                            (let ((_%tl166850167204%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166848167199%_)))
                                  (_%hd166849167202%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166848167199%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166850167204%_))
                                  (_%__match171136171137%_
                                   _%e166818167119%_
                                   _%hd166819167122%_
                                   _%tl166820167124%_
                                   _%e166821167127%_
                                   _%hd166822167130%_
                                   _%tl166823167132%_
                                   _%e166824167135%_
                                   _%hd166825167138%_
                                   _%tl166826167140%_
                                   _%e166827167143%_
                                   _%hd166828167146%_
                                   _%tl166829167148%_
                                   _%e166830167151%_
                                   _%hd166831167154%_
                                   _%tl166832167156%_
                                   _%e166833167159%_
                                   _%hd166834167162%_
                                   _%tl166835167164%_
                                   _%e166836167167%_
                                   _%hd166837167170%_
                                   _%tl166838167172%_
                                   _%e166839167175%_
                                   _%hd166840167178%_
                                   _%tl166841167180%_
                                   _%e166842167183%_
                                   _%hd166843167186%_
                                   _%tl166844167188%_
                                   _%e166845167191%_
                                   _%hd166846167194%_
                                   _%tl166847167196%_
                                   _%e166848167199%_
                                   _%hd166849167202%_
                                   _%tl166850167204%_)
                                  (_%__kont170773170774%_))))
                          (_%__match171252171253%_
                           _%e166818167119%_
                           _%hd166819167122%_
                           _%tl166820167124%_
                           _%e166821167127%_
                           _%hd166822167130%_
                           _%tl166823167132%_
                           _%e166824167135%_
                           _%hd166825167138%_
                           _%tl166826167140%_
                           _%e166827167143%_
                           _%hd166828167146%_
                           _%tl166829167148%_
                           _%e166830167151%_
                           _%hd166831167154%_
                           _%tl166832167156%_
                           _%e166833167159%_
                           _%hd166834167162%_
                           _%tl166835167164%_
                           _%e166836167167%_
                           _%hd166837167170%_
                           _%tl166838167172%_
                           _%e166839167175%_
                           _%hd166840167178%_
                           _%tl166841167180%_))))
                   (_%__match171050171051%_
                    (lambda (_%e166784167250%_
                             _%hd166785167253%_
                             _%tl166786167255%_
                             _%e166787167258%_
                             _%hd166788167261%_
                             _%tl166789167263%_
                             _%e166790167266%_
                             _%hd166791167269%_
                             _%tl166792167271%_
                             _%e166793167274%_
                             _%hd166794167277%_
                             _%tl166795167279%_
                             _%e166796167282%_
                             _%hd166797167285%_
                             _%tl166798167287%_
                             _%e166799167290%_
                             _%hd166800167293%_
                             _%tl166801167295%_
                             _%e166802167298%_
                             _%hd166803167301%_
                             _%tl166804167303%_
                             _%e166805167306%_
                             _%hd166806167309%_
                             _%tl166807167311%_
                             _%e166808167314%_
                             _%hd166809167317%_
                             _%tl166810167319%_
                             _%e166811167322%_
                             _%hd166812167325%_
                             _%tl166813167327%_)
                      (let ((_%L167330%_ _%hd166812167325%_)
                            (_%L167331%_ _%hd166803167301%_)
                            (_%L167332%_ _%hd166794167277%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167332%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167332%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171878
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166674%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167331%_
                                    __tmp171878)))
                            (_%__kont170765170766%_
                             _%L167330%_
                             _%L167331%_
                             _%L167332%_)
                            (_%__match171254171255%_
                             _%e166784167250%_
                             _%hd166785167253%_
                             _%tl166786167255%_
                             _%e166787167258%_
                             _%hd166788167261%_
                             _%tl166789167263%_
                             _%e166790167266%_
                             _%hd166791167269%_
                             _%tl166792167271%_
                             _%e166793167274%_
                             _%hd166794167277%_
                             _%tl166795167279%_
                             _%e166796167282%_
                             _%hd166797167285%_
                             _%tl166798167287%_
                             _%e166799167290%_
                             _%hd166800167293%_
                             _%tl166801167295%_
                             _%e166802167298%_
                             _%hd166803167301%_
                             _%tl166804167303%_
                             _%e166805167306%_
                             _%hd166806167309%_
                             _%tl166807167311%_)))))
                   (_%__match171048171049%_
                    (lambda (_%e166784167250%_
                             _%hd166785167253%_
                             _%tl166786167255%_
                             _%e166787167258%_
                             _%hd166788167261%_
                             _%tl166789167263%_
                             _%e166790167266%_
                             _%hd166791167269%_
                             _%tl166792167271%_
                             _%e166793167274%_
                             _%hd166794167277%_
                             _%tl166795167279%_
                             _%e166796167282%_
                             _%hd166797167285%_
                             _%tl166798167287%_
                             _%e166799167290%_
                             _%hd166800167293%_
                             _%tl166801167295%_
                             _%e166802167298%_
                             _%hd166803167301%_
                             _%tl166804167303%_
                             _%e166805167306%_
                             _%hd166806167309%_
                             _%tl166807167311%_
                             _%e166808167314%_
                             _%hd166809167317%_
                             _%tl166810167319%_
                             _%e166811167322%_
                             _%hd166812167325%_
                             _%tl166813167327%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166807167311%_))
                          (_%__match171050171051%_
                           _%e166784167250%_
                           _%hd166785167253%_
                           _%tl166786167255%_
                           _%e166787167258%_
                           _%hd166788167261%_
                           _%tl166789167263%_
                           _%e166790167266%_
                           _%hd166791167269%_
                           _%tl166792167271%_
                           _%e166793167274%_
                           _%hd166794167277%_
                           _%tl166795167279%_
                           _%e166796167282%_
                           _%hd166797167285%_
                           _%tl166798167287%_
                           _%e166799167290%_
                           _%hd166800167293%_
                           _%tl166801167295%_
                           _%e166802167298%_
                           _%hd166803167301%_
                           _%tl166804167303%_
                           _%e166805167306%_
                           _%hd166806167309%_
                           _%tl166807167311%_
                           _%e166808167314%_
                           _%hd166809167317%_
                           _%tl166810167319%_
                           _%e166811167322%_
                           _%hd166812167325%_
                           _%tl166813167327%_)
                          (_%__match171128171129%_
                           _%e166784167250%_
                           _%hd166785167253%_
                           _%tl166786167255%_
                           _%e166787167258%_
                           _%hd166788167261%_
                           _%tl166789167263%_
                           _%e166790167266%_
                           _%hd166791167269%_
                           _%tl166792167271%_
                           _%e166793167274%_
                           _%hd166794167277%_
                           _%tl166795167279%_
                           _%e166796167282%_
                           _%hd166797167285%_
                           _%tl166798167287%_
                           _%e166799167290%_
                           _%hd166800167293%_
                           _%tl166801167295%_
                           _%e166802167298%_
                           _%hd166803167301%_
                           _%tl166804167303%_
                           _%e166805167306%_
                           _%hd166806167309%_
                           _%tl166807167311%_
                           _%e166808167314%_
                           _%hd166809167317%_
                           _%tl166810167319%_
                           _%e166811167322%_
                           _%hd166812167325%_
                           _%tl166813167327%_))))
                   (_%__match171038171039%_
                    (lambda (_%e166784167250%_
                             _%hd166785167253%_
                             _%tl166786167255%_
                             _%e166787167258%_
                             _%hd166788167261%_
                             _%tl166789167263%_
                             _%e166790167266%_
                             _%hd166791167269%_
                             _%tl166792167271%_
                             _%e166793167274%_
                             _%hd166794167277%_
                             _%tl166795167279%_
                             _%e166796167282%_
                             _%hd166797167285%_
                             _%tl166798167287%_
                             _%e166799167290%_
                             _%hd166800167293%_
                             _%tl166801167295%_
                             _%e166802167298%_
                             _%hd166803167301%_
                             _%tl166804167303%_
                             _%e166805167306%_
                             _%hd166806167309%_
                             _%tl166807167311%_
                             _%e166808167314%_
                             _%hd166809167317%_
                             _%tl166810167319%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166809167317%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166810167319%_))
                              (let ((_%e166811167322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166810167319%_))))
                                (let ((_%tl166813167327%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166811167322%_)))
                                      (_%hd166812167325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166811167322%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166813167327%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166807167311%_))
                                          (_%__match171050171051%_
                                           _%e166784167250%_
                                           _%hd166785167253%_
                                           _%tl166786167255%_
                                           _%e166787167258%_
                                           _%hd166788167261%_
                                           _%tl166789167263%_
                                           _%e166790167266%_
                                           _%hd166791167269%_
                                           _%tl166792167271%_
                                           _%e166793167274%_
                                           _%hd166794167277%_
                                           _%tl166795167279%_
                                           _%e166796167282%_
                                           _%hd166797167285%_
                                           _%tl166798167287%_
                                           _%e166799167290%_
                                           _%hd166800167293%_
                                           _%tl166801167295%_
                                           _%e166802167298%_
                                           _%hd166803167301%_
                                           _%tl166804167303%_
                                           _%e166805167306%_
                                           _%hd166806167309%_
                                           _%tl166807167311%_
                                           _%e166808167314%_
                                           _%hd166809167317%_
                                           _%tl166810167319%_
                                           _%e166811167322%_
                                           _%hd166812167325%_
                                           _%tl166813167327%_)
                                          (_%__match171128171129%_
                                           _%e166784167250%_
                                           _%hd166785167253%_
                                           _%tl166786167255%_
                                           _%e166787167258%_
                                           _%hd166788167261%_
                                           _%tl166789167263%_
                                           _%e166790167266%_
                                           _%hd166791167269%_
                                           _%tl166792167271%_
                                           _%e166793167274%_
                                           _%hd166794167277%_
                                           _%tl166795167279%_
                                           _%e166796167282%_
                                           _%hd166797167285%_
                                           _%tl166798167287%_
                                           _%e166799167290%_
                                           _%hd166800167293%_
                                           _%tl166801167295%_
                                           _%e166802167298%_
                                           _%hd166803167301%_
                                           _%tl166804167303%_
                                           _%e166805167306%_
                                           _%hd166806167309%_
                                           _%tl166807167311%_
                                           _%e166808167314%_
                                           _%hd166809167317%_
                                           _%tl166810167319%_
                                           _%e166811167322%_
                                           _%hd166812167325%_
                                           _%tl166813167327%_))
                                      (_%__match171252171253%_
                                       _%e166784167250%_
                                       _%hd166785167253%_
                                       _%tl166786167255%_
                                       _%e166787167258%_
                                       _%hd166788167261%_
                                       _%tl166789167263%_
                                       _%e166790167266%_
                                       _%hd166791167269%_
                                       _%tl166792167271%_
                                       _%e166793167274%_
                                       _%hd166794167277%_
                                       _%tl166795167279%_
                                       _%e166796167282%_
                                       _%hd166797167285%_
                                       _%tl166798167287%_
                                       _%e166799167290%_
                                       _%hd166800167293%_
                                       _%tl166801167295%_
                                       _%e166802167298%_
                                       _%hd166803167301%_
                                       _%tl166804167303%_
                                       _%e166805167306%_
                                       _%hd166806167309%_
                                       _%tl166807167311%_))))
                              (_%__match171252171253%_
                               _%e166784167250%_
                               _%hd166785167253%_
                               _%tl166786167255%_
                               _%e166787167258%_
                               _%hd166788167261%_
                               _%tl166789167263%_
                               _%e166790167266%_
                               _%hd166791167269%_
                               _%tl166792167271%_
                               _%e166793167274%_
                               _%hd166794167277%_
                               _%tl166795167279%_
                               _%e166796167282%_
                               _%hd166797167285%_
                               _%tl166798167287%_
                               _%e166799167290%_
                               _%hd166800167293%_
                               _%tl166801167295%_
                               _%e166802167298%_
                               _%hd166803167301%_
                               _%tl166804167303%_
                               _%e166805167306%_
                               _%hd166806167309%_
                               _%tl166807167311%_))
                          (_%__match171252171253%_
                           _%e166784167250%_
                           _%hd166785167253%_
                           _%tl166786167255%_
                           _%e166787167258%_
                           _%hd166788167261%_
                           _%tl166789167263%_
                           _%e166790167266%_
                           _%hd166791167269%_
                           _%tl166792167271%_
                           _%e166793167274%_
                           _%hd166794167277%_
                           _%tl166795167279%_
                           _%e166796167282%_
                           _%hd166797167285%_
                           _%tl166798167287%_
                           _%e166799167290%_
                           _%hd166800167293%_
                           _%tl166801167295%_
                           _%e166802167298%_
                           _%hd166803167301%_
                           _%tl166804167303%_
                           _%e166805167306%_
                           _%hd166806167309%_
                           _%tl166807167311%_))))
                   (_%__match170970170971%_
                    (lambda (_%e166733167369%_
                             _%hd166734167372%_
                             _%tl166735167374%_
                             _%e166736167377%_
                             _%hd166737167380%_
                             _%tl166738167382%_
                             _%e166739167385%_
                             _%hd166740167388%_
                             _%tl166741167390%_
                             _%e166742167393%_
                             _%hd166743167396%_
                             _%tl166744167398%_
                             _%e166745167401%_
                             _%hd166746167404%_
                             _%tl166747167406%_
                             _%e166748167409%_
                             _%hd166749167412%_
                             _%tl166750167414%_
                             _%e166751167417%_
                             _%hd166752167420%_
                             _%tl166753167422%_
                             _%e166754167425%_
                             _%hd166755167428%_
                             _%tl166756167430%_
                             _%e166757167433%_
                             _%hd166758167436%_
                             _%tl166759167438%_
                             _%e166760167441%_
                             _%hd166761167444%_
                             _%tl166762167446%_
                             _%e166763167449%_
                             _%hd166764167452%_
                             _%tl166765167454%_
                             _%e166766167457%_
                             _%hd166767167460%_
                             _%tl166768167462%_
                             _%e166769167465%_
                             _%hd166770167468%_
                             _%tl166771167470%_
                             _%__splice170763170764%_
                             _%target166772167473%_
                             _%tl166774167475%_)
                      (letrec ((_%loop166775167478%_
                                (lambda (_%hd166773167481%_
                                         _%args166779167483%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166773167481%_))
                                      (let ((_%e166776167486%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166773167481%_))))
                                        (let ((_%lp-tl166778167491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166776167486%_)))
                                              (_%lp-hd166777167489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166776167486%_))))
                                          (_%loop166775167478%_
                                           _%lp-tl166778167491%_
                                           (cons _%lp-hd166777167489%_
                                                 _%args166779167483%_))))
                                      (let ((_%args166780167494%_
                                             (reverse _%args166779167483%_)))
                                        (let ((_%L167497%_
                                               _%args166780167494%_)
                                              (_%L167498%_ _%hd166770167468%_)
                                              (_%L167499%_ _%hd166761167444%_)
                                              (_%L167500%_ _%hd166752167420%_)
                                              (_%L167501%_ _%hd166743167396%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167501%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167500%_
                                                      'call-method))
                                                   (let ((__tmp171879
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166674%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167499%_
                                                      __tmp171879)))
                                              (_%__kont170761170762%_
                                               _%L167497%_
                                               _%L167498%_
                                               _%L167499%_
                                               _%L167500%_
                                               _%L167501%_)
                                              (_%__kont170773170774%_))))))))
                        (_%loop166775167478%_ _%target166772167473%_ '()))))
                   (_%__match170928170929%_
                    (lambda (_%e166733167369%_
                             _%hd166734167372%_
                             _%tl166735167374%_
                             _%e166736167377%_
                             _%hd166737167380%_
                             _%tl166738167382%_
                             _%e166739167385%_
                             _%hd166740167388%_
                             _%tl166741167390%_
                             _%e166742167393%_
                             _%hd166743167396%_
                             _%tl166744167398%_
                             _%e166745167401%_
                             _%hd166746167404%_
                             _%tl166747167406%_
                             _%e166748167409%_
                             _%hd166749167412%_
                             _%tl166750167414%_
                             _%e166751167417%_
                             _%hd166752167420%_
                             _%tl166753167422%_
                             _%e166754167425%_
                             _%hd166755167428%_
                             _%tl166756167430%_
                             _%e166757167433%_
                             _%hd166758167436%_
                             _%tl166759167438%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166758167436%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166759167438%_))
                              (let ((_%e166760167441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166759167438%_))))
                                (let ((_%tl166762167446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166760167441%_)))
                                      (_%hd166761167444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166760167441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166762167446%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166756167430%_))
                                          (let ((_%e166763167449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166756167430%_))))
                                            (let ((_%tl166765167454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166763167449%_)))
                                                  (_%hd166764167452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166763167449%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166764167452%_))
                                                  (let ((_%e166766167457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166764167452%_))))
                                                    (let ((_%tl166768167462%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166766167457%_)))
                                                          (_%hd166767167460%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166766167457%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166767167460%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166767167460%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166768167462%_))
                          (let ((_%e166769167465%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166768167462%_))))
                            (let ((_%tl166771167470%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166769167465%_)))
                                  (_%hd166770167468%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166769167465%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166771167470%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166765167454%_))
                                      (let ((_%__splice170763170764%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166765167454%_
                                                '0))))
                                        (let ((_%tl166774167475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170763170764%_
                                                  '1)))
                                              (_%target166772167473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170763170764%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166774167475%_))
                                              (_%__match170970170971%_
                                               _%e166733167369%_
                                               _%hd166734167372%_
                                               _%tl166735167374%_
                                               _%e166736167377%_
                                               _%hd166737167380%_
                                               _%tl166738167382%_
                                               _%e166739167385%_
                                               _%hd166740167388%_
                                               _%tl166741167390%_
                                               _%e166742167393%_
                                               _%hd166743167396%_
                                               _%tl166744167398%_
                                               _%e166745167401%_
                                               _%hd166746167404%_
                                               _%tl166747167406%_
                                               _%e166748167409%_
                                               _%hd166749167412%_
                                               _%tl166750167414%_
                                               _%e166751167417%_
                                               _%hd166752167420%_
                                               _%tl166753167422%_
                                               _%e166754167425%_
                                               _%hd166755167428%_
                                               _%tl166756167430%_
                                               _%e166757167433%_
                                               _%hd166758167436%_
                                               _%tl166759167438%_
                                               _%e166760167441%_
                                               _%hd166761167444%_
                                               _%tl166762167446%_
                                               _%e166763167449%_
                                               _%hd166764167452%_
                                               _%tl166765167454%_
                                               _%e166766167457%_
                                               _%hd166767167460%_
                                               _%tl166768167462%_
                                               _%e166769167465%_
                                               _%hd166770167468%_
                                               _%tl166771167470%_
                                               _%__splice170763170764%_
                                               _%target166772167473%_
                                               _%tl166774167475%_)
                                              (_%__kont170773170774%_))))
                                      (_%__kont170773170774%_))
                                  (_%__kont170773170774%_))))
                          (_%__kont170773170774%_))
                      (_%__kont170773170774%_))
                  (_%__kont170773170774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170773170774%_))))
                                          (_%__match171252171253%_
                                           _%e166733167369%_
                                           _%hd166734167372%_
                                           _%tl166735167374%_
                                           _%e166736167377%_
                                           _%hd166737167380%_
                                           _%tl166738167382%_
                                           _%e166739167385%_
                                           _%hd166740167388%_
                                           _%tl166741167390%_
                                           _%e166742167393%_
                                           _%hd166743167396%_
                                           _%tl166744167398%_
                                           _%e166745167401%_
                                           _%hd166746167404%_
                                           _%tl166747167406%_
                                           _%e166748167409%_
                                           _%hd166749167412%_
                                           _%tl166750167414%_
                                           _%e166751167417%_
                                           _%hd166752167420%_
                                           _%tl166753167422%_
                                           _%e166754167425%_
                                           _%hd166755167428%_
                                           _%tl166756167430%_))
                                      (_%__match171252171253%_
                                       _%e166733167369%_
                                       _%hd166734167372%_
                                       _%tl166735167374%_
                                       _%e166736167377%_
                                       _%hd166737167380%_
                                       _%tl166738167382%_
                                       _%e166739167385%_
                                       _%hd166740167388%_
                                       _%tl166741167390%_
                                       _%e166742167393%_
                                       _%hd166743167396%_
                                       _%tl166744167398%_
                                       _%e166745167401%_
                                       _%hd166746167404%_
                                       _%tl166747167406%_
                                       _%e166748167409%_
                                       _%hd166749167412%_
                                       _%tl166750167414%_
                                       _%e166751167417%_
                                       _%hd166752167420%_
                                       _%tl166753167422%_
                                       _%e166754167425%_
                                       _%hd166755167428%_
                                       _%tl166756167430%_))))
                              (_%__match171252171253%_
                               _%e166733167369%_
                               _%hd166734167372%_
                               _%tl166735167374%_
                               _%e166736167377%_
                               _%hd166737167380%_
                               _%tl166738167382%_
                               _%e166739167385%_
                               _%hd166740167388%_
                               _%tl166741167390%_
                               _%e166742167393%_
                               _%hd166743167396%_
                               _%tl166744167398%_
                               _%e166745167401%_
                               _%hd166746167404%_
                               _%tl166747167406%_
                               _%e166748167409%_
                               _%hd166749167412%_
                               _%tl166750167414%_
                               _%e166751167417%_
                               _%hd166752167420%_
                               _%tl166753167422%_
                               _%e166754167425%_
                               _%hd166755167428%_
                               _%tl166756167430%_))
                          (_%__match171038171039%_
                           _%e166733167369%_
                           _%hd166734167372%_
                           _%tl166735167374%_
                           _%e166736167377%_
                           _%hd166737167380%_
                           _%tl166738167382%_
                           _%e166739167385%_
                           _%hd166740167388%_
                           _%tl166741167390%_
                           _%e166742167393%_
                           _%hd166743167396%_
                           _%tl166744167398%_
                           _%e166745167401%_
                           _%hd166746167404%_
                           _%tl166747167406%_
                           _%e166748167409%_
                           _%hd166749167412%_
                           _%tl166750167414%_
                           _%e166751167417%_
                           _%hd166752167420%_
                           _%tl166753167422%_
                           _%e166754167425%_
                           _%hd166755167428%_
                           _%tl166756167430%_
                           _%e166757167433%_
                           _%hd166758167436%_
                           _%tl166759167438%_))))
                   (_%__match170860170861%_
                    (lambda (_%e166689167558%_
                             _%hd166690167561%_
                             _%tl166691167563%_
                             _%e166692167566%_
                             _%hd166693167569%_
                             _%tl166694167571%_
                             _%e166695167574%_
                             _%hd166696167577%_
                             _%tl166697167579%_
                             _%e166698167582%_
                             _%hd166699167585%_
                             _%tl166700167587%_
                             _%e166701167590%_
                             _%hd166702167593%_
                             _%tl166703167595%_
                             _%e166704167598%_
                             _%hd166705167601%_
                             _%tl166706167603%_
                             _%e166707167606%_
                             _%hd166708167609%_
                             _%tl166709167611%_
                             _%e166710167614%_
                             _%hd166711167617%_
                             _%tl166712167619%_
                             _%e166713167622%_
                             _%hd166714167625%_
                             _%tl166715167627%_
                             _%e166716167630%_
                             _%hd166717167633%_
                             _%tl166718167635%_
                             _%__splice170759170760%_
                             _%target166719167638%_
                             _%tl166721167640%_)
                      (letrec ((_%loop166722167643%_
                                (lambda (_%hd166720167646%_
                                         _%args166726167648%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166720167646%_))
                                      (let ((_%e166723167651%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166720167646%_))))
                                        (let ((_%lp-tl166725167656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166723167651%_)))
                                              (_%lp-hd166724167654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166723167651%_))))
                                          (_%loop166722167643%_
                                           _%lp-tl166725167656%_
                                           (cons _%lp-hd166724167654%_
                                                 _%args166726167648%_))))
                                      (let ((_%args166727167659%_
                                             (reverse _%args166726167648%_)))
                                        (let ((_%L167662%_
                                               _%args166727167659%_)
                                              (_%L167663%_ _%hd166717167633%_)
                                              (_%L167664%_ _%hd166708167609%_)
                                              (_%L167665%_ _%hd166699167585%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167665%_
                                                      'call-method))
                                                   (let ((__tmp171880
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166674%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167664%_
                                                      __tmp171880)))
                                              (_%__kont170757170758%_
                                               _%L167662%_
                                               _%L167663%_
                                               _%L167664%_
                                               _%L167665%_)
                                              (_%__match171048171049%_
                                               _%e166689167558%_
                                               _%hd166690167561%_
                                               _%tl166691167563%_
                                               _%e166692167566%_
                                               _%hd166693167569%_
                                               _%tl166694167571%_
                                               _%e166695167574%_
                                               _%hd166696167577%_
                                               _%tl166697167579%_
                                               _%e166698167582%_
                                               _%hd166699167585%_
                                               _%tl166700167587%_
                                               _%e166701167590%_
                                               _%hd166702167593%_
                                               _%tl166703167595%_
                                               _%e166704167598%_
                                               _%hd166705167601%_
                                               _%tl166706167603%_
                                               _%e166707167606%_
                                               _%hd166708167609%_
                                               _%tl166709167611%_
                                               _%e166710167614%_
                                               _%hd166711167617%_
                                               _%tl166712167619%_
                                               _%e166713167622%_
                                               _%hd166714167625%_
                                               _%tl166715167627%_
                                               _%e166716167630%_
                                               _%hd166717167633%_
                                               _%tl166718167635%_))))))))
                        (_%loop166722167643%_ _%target166719167638%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170755170756%_))
                  (let ((_%e166689167558%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170755170756%_))))
                    (let ((_%tl166691167563%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166689167558%_)))
                          (_%hd166690167561%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166689167558%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166691167563%_))
                          (let ((_%e166692167566%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166691167563%_))))
                            (let ((_%tl166694167571%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166692167566%_)))
                                  (_%hd166693167569%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166692167566%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166693167569%_))
                                  (let ((_%e166695167574%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166693167569%_))))
                                    (let ((_%tl166697167579%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166695167574%_)))
                                          (_%hd166696167577%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166695167574%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166696167577%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166696167577%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166697167579%_))
                                                  (let ((_%e166698167582%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166697167579%_))))
                                                    (let ((_%tl166700167587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166698167582%_)))
                                                          (_%hd166699167585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166698167582%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166700167587%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl166694167571%_))
                      (let ((_%e166701167590%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl166694167571%_))))
                        (let ((_%tl166703167595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e166701167590%_)))
                              (_%hd166702167593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e166701167590%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd166702167593%_))
                              (let ((_%e166704167598%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd166702167593%_))))
                                (let ((_%tl166706167603%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166704167598%_)))
                                      (_%hd166705167601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166704167598%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd166705167601%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd166705167601%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl166706167603%_))
                                              (let ((_%e166707167606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl166706167603%_))))
                                                (let ((_%tl166709167611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e166707167606%_)))
                                                      (_%hd166708167609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e166707167606%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl166709167611%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl166703167595%_))
                                                          (let ((_%e166710167614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl166703167595%_))))
                    (let ((_%tl166712167619%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166710167614%_)))
                          (_%hd166711167617%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166710167614%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166711167617%_))
                          (let ((_%e166713167622%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166711167617%_))))
                            (let ((_%tl166715167627%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166713167622%_)))
                                  (_%hd166714167625%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166713167622%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166714167625%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166714167625%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166715167627%_))
                                          (let ((_%e166716167630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166715167627%_))))
                                            (let ((_%tl166718167635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166716167630%_)))
                                                  (_%hd166717167633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166716167630%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166718167635%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl166712167619%_))
                                                      (let ((_%__splice170759170760%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl166712167619%_ '0))))
                (let ((_%tl166721167640%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170759170760%_ '1)))
                      (_%target166719167638%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170759170760%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166721167640%_))
                      (_%__match170860170861%_
                       _%e166689167558%_
                       _%hd166690167561%_
                       _%tl166691167563%_
                       _%e166692167566%_
                       _%hd166693167569%_
                       _%tl166694167571%_
                       _%e166695167574%_
                       _%hd166696167577%_
                       _%tl166697167579%_
                       _%e166698167582%_
                       _%hd166699167585%_
                       _%tl166700167587%_
                       _%e166701167590%_
                       _%hd166702167593%_
                       _%tl166703167595%_
                       _%e166704167598%_
                       _%hd166705167601%_
                       _%tl166706167603%_
                       _%e166707167606%_
                       _%hd166708167609%_
                       _%tl166709167611%_
                       _%e166710167614%_
                       _%hd166711167617%_
                       _%tl166712167619%_
                       _%e166713167622%_
                       _%hd166714167625%_
                       _%tl166715167627%_
                       _%e166716167630%_
                       _%hd166717167633%_
                       _%tl166718167635%_
                       _%__splice170759170760%_
                       _%target166719167638%_
                       _%tl166721167640%_)
                      (_%__match171048171049%_
                       _%e166689167558%_
                       _%hd166690167561%_
                       _%tl166691167563%_
                       _%e166692167566%_
                       _%hd166693167569%_
                       _%tl166694167571%_
                       _%e166695167574%_
                       _%hd166696167577%_
                       _%tl166697167579%_
                       _%e166698167582%_
                       _%hd166699167585%_
                       _%tl166700167587%_
                       _%e166701167590%_
                       _%hd166702167593%_
                       _%tl166703167595%_
                       _%e166704167598%_
                       _%hd166705167601%_
                       _%tl166706167603%_
                       _%e166707167606%_
                       _%hd166708167609%_
                       _%tl166709167611%_
                       _%e166710167614%_
                       _%hd166711167617%_
                       _%tl166712167619%_
                       _%e166713167622%_
                       _%hd166714167625%_
                       _%tl166715167627%_
                       _%e166716167630%_
                       _%hd166717167633%_
                       _%tl166718167635%_))))
              (_%__match171048171049%_
               _%e166689167558%_
               _%hd166690167561%_
               _%tl166691167563%_
               _%e166692167566%_
               _%hd166693167569%_
               _%tl166694167571%_
               _%e166695167574%_
               _%hd166696167577%_
               _%tl166697167579%_
               _%e166698167582%_
               _%hd166699167585%_
               _%tl166700167587%_
               _%e166701167590%_
               _%hd166702167593%_
               _%tl166703167595%_
               _%e166704167598%_
               _%hd166705167601%_
               _%tl166706167603%_
               _%e166707167606%_
               _%hd166708167609%_
               _%tl166709167611%_
               _%e166710167614%_
               _%hd166711167617%_
               _%tl166712167619%_
               _%e166713167622%_
               _%hd166714167625%_
               _%tl166715167627%_
               _%e166716167630%_
               _%hd166717167633%_
               _%tl166718167635%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match171252171253%_
                                                   _%e166689167558%_
                                                   _%hd166690167561%_
                                                   _%tl166691167563%_
                                                   _%e166692167566%_
                                                   _%hd166693167569%_
                                                   _%tl166694167571%_
                                                   _%e166695167574%_
                                                   _%hd166696167577%_
                                                   _%tl166697167579%_
                                                   _%e166698167582%_
                                                   _%hd166699167585%_
                                                   _%tl166700167587%_
                                                   _%e166701167590%_
                                                   _%hd166702167593%_
                                                   _%tl166703167595%_
                                                   _%e166704167598%_
                                                   _%hd166705167601%_
                                                   _%tl166706167603%_
                                                   _%e166707167606%_
                                                   _%hd166708167609%_
                                                   _%tl166709167611%_
                                                   _%e166710167614%_
                                                   _%hd166711167617%_
                                                   _%tl166712167619%_))))
                                          (_%__match171252171253%_
                                           _%e166689167558%_
                                           _%hd166690167561%_
                                           _%tl166691167563%_
                                           _%e166692167566%_
                                           _%hd166693167569%_
                                           _%tl166694167571%_
                                           _%e166695167574%_
                                           _%hd166696167577%_
                                           _%tl166697167579%_
                                           _%e166698167582%_
                                           _%hd166699167585%_
                                           _%tl166700167587%_
                                           _%e166701167590%_
                                           _%hd166702167593%_
                                           _%tl166703167595%_
                                           _%e166704167598%_
                                           _%hd166705167601%_
                                           _%tl166706167603%_
                                           _%e166707167606%_
                                           _%hd166708167609%_
                                           _%tl166709167611%_
                                           _%e166710167614%_
                                           _%hd166711167617%_
                                           _%tl166712167619%_))
                                      (_%__match170928170929%_
                                       _%e166689167558%_
                                       _%hd166690167561%_
                                       _%tl166691167563%_
                                       _%e166692167566%_
                                       _%hd166693167569%_
                                       _%tl166694167571%_
                                       _%e166695167574%_
                                       _%hd166696167577%_
                                       _%tl166697167579%_
                                       _%e166698167582%_
                                       _%hd166699167585%_
                                       _%tl166700167587%_
                                       _%e166701167590%_
                                       _%hd166702167593%_
                                       _%tl166703167595%_
                                       _%e166704167598%_
                                       _%hd166705167601%_
                                       _%tl166706167603%_
                                       _%e166707167606%_
                                       _%hd166708167609%_
                                       _%tl166709167611%_
                                       _%e166710167614%_
                                       _%hd166711167617%_
                                       _%tl166712167619%_
                                       _%e166713167622%_
                                       _%hd166714167625%_
                                       _%tl166715167627%_))
                                  (_%__match171252171253%_
                                   _%e166689167558%_
                                   _%hd166690167561%_
                                   _%tl166691167563%_
                                   _%e166692167566%_
                                   _%hd166693167569%_
                                   _%tl166694167571%_
                                   _%e166695167574%_
                                   _%hd166696167577%_
                                   _%tl166697167579%_
                                   _%e166698167582%_
                                   _%hd166699167585%_
                                   _%tl166700167587%_
                                   _%e166701167590%_
                                   _%hd166702167593%_
                                   _%tl166703167595%_
                                   _%e166704167598%_
                                   _%hd166705167601%_
                                   _%tl166706167603%_
                                   _%e166707167606%_
                                   _%hd166708167609%_
                                   _%tl166709167611%_
                                   _%e166710167614%_
                                   _%hd166711167617%_
                                   _%tl166712167619%_))))
                          (_%__match171252171253%_
                           _%e166689167558%_
                           _%hd166690167561%_
                           _%tl166691167563%_
                           _%e166692167566%_
                           _%hd166693167569%_
                           _%tl166694167571%_
                           _%e166695167574%_
                           _%hd166696167577%_
                           _%tl166697167579%_
                           _%e166698167582%_
                           _%hd166699167585%_
                           _%tl166700167587%_
                           _%e166701167590%_
                           _%hd166702167593%_
                           _%tl166703167595%_
                           _%e166704167598%_
                           _%hd166705167601%_
                           _%tl166706167603%_
                           _%e166707167606%_
                           _%hd166708167609%_
                           _%tl166709167611%_
                           _%e166710167614%_
                           _%hd166711167617%_
                           _%tl166712167619%_))))
                  (_%__match171190171191%_
                   _%e166689167558%_
                   _%hd166690167561%_
                   _%tl166691167563%_
                   _%e166692167566%_
                   _%hd166693167569%_
                   _%tl166694167571%_
                   _%e166695167574%_
                   _%hd166696167577%_
                   _%tl166697167579%_
                   _%e166698167582%_
                   _%hd166699167585%_
                   _%tl166700167587%_
                   _%e166701167590%_
                   _%hd166702167593%_
                   _%tl166703167595%_
                   _%e166704167598%_
                   _%hd166705167601%_
                   _%tl166706167603%_
                   _%e166707167606%_
                   _%hd166708167609%_
                   _%tl166709167611%_))
              (_%__kont170773170774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170773170774%_))
                                          (_%__kont170773170774%_))
                                      (_%__kont170773170774%_))))
                              (_%__kont170773170774%_))))
                      (_%__kont170773170774%_))
                  (_%__kont170773170774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170773170774%_))
                                              (_%__kont170773170774%_))
                                          (_%__kont170773170774%_))))
                                  (_%__kont170773170774%_))))
                          (_%__kont170773170774%_))))
                  (_%__kont170773170774%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self165613%_ _%stx165614%_)
        (letrec ((_%force-e165616%_
                  (lambda (_%target166672%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target166672%_ '()))
                                      '()))))))
          (let* ((_%__stx171257171258%_ _%stx165614%_)
                 (_%g165624165846%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171257171258%_)))))
            (let ((_%__kont171259171260%_
                   (lambda (_%L166618%_ _%L166619%_ _%L166620%_ _%L166621%_)
                     (let ((_%$method166666%_
                            (let ((__tmp171882
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165613%_ 'methods)))
                                  (__tmp171881
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166619%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171882 __tmp171881)))
                           (_%args166667%_
                            (map (lambda (_%g166654166656%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165613%_
                                      _%g166654166656%_)))
                                 (let ((__tmp171883
                                        (lambda (_%g166658166661%_
                                                 _%g166659166663%_)
                                          (cons _%g166658166661%_
                                                _%g166659166663%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171883 '() _%L166618%_)))))
                       (let ((__tmp171884
                              (cons '%#call
                                    (cons (_%force-e165616%_ _%$method166666%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165613%_
                                                               'receiver))
                                                            '()))
                                                _%args166667%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171884 _%stx165614%_)))))
                  (_%__kont171263171264%_
                   (lambda (_%L166450%_
                            _%L166451%_
                            _%L166452%_
                            _%L166453%_
                            _%L166454%_)
                     (let ((_%$method166506%_
                            (let ((__tmp171886
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165613%_ 'methods)))
                                  (__tmp171885
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166451%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171886 __tmp171885)))
                           (_%args166507%_
                            (map (lambda (_%g166494166496%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165613%_
                                      _%g166494166496%_)))
                                 (let ((__tmp171887
                                        (lambda (_%g166498166501%_
                                                 _%g166499166503%_)
                                          (cons _%g166498166501%_
                                                _%g166499166503%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171887 '() _%L166450%_)))))
                       (let ((__tmp171888
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e165616%_
                                                 _%$method166506%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165613%_ 'receiver))
                          '()))
              _%args166507%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171888 _%stx165614%_)))))
                  (_%__kont171267171268%_
                   (lambda (_%L166281%_ _%L166282%_ _%L166283%_)
                     (let* ((_%$field166315%_
                             (let ((__tmp171890
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self165613%_ 'slots)))
                                   (__tmp171889
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L166281%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171890 __tmp171889)))
                            (__tmp171891
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self165613%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field166315%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self165613%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171891 _%stx165614%_))))
                  (_%__kont171269171270%_
                   (lambda (_%L166155%_ _%L166156%_ _%L166157%_ _%L166158%_)
                     (let ((_%$field166193%_
                            (let ((__tmp171893
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165613%_ 'slots)))
                                  (__tmp171892
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166156%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171893 __tmp171892)))
                           (_%expr166194%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self165613%_ _%L166155%_))))
                       (let ((__tmp171894
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self165613%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field166193%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165613%_ 'receiver))
                          '()))
              (cons _%expr166194%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171894 _%stx165614%_)))))
                  (_%__kont171271171272%_
                   (lambda (_%L166027%_ _%L166028%_)
                     (let* ((_%accessor166050%_
                             (let ((__tmp171895
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166028%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171895)))
                            (_%klass166052%_
                             (let ((__tmp171896
                                    (##structure-ref
                                     _%accessor166050%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165614%_
                                __tmp171896)))
                            (_%slot166054%_
                             (##structure-ref
                              _%accessor166050%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (not (##structure-ref
                                      _%accessor166050%_
                                      '4
                                      gxc#!accessor::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166052%_
                                       _%slot166054%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166052%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx165614%_
                           (let* ((_%$field166060%_
                                   (let ((__tmp171897
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165613%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171897 _%slot166054%_)))
                                  (__tmp171898
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165613%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165613%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171898
                              _%stx165614%_))))))
                  (_%__kont171273171274%_
                   (lambda (_%L165922%_ _%L165923%_ _%L165924%_)
                     (let* ((_%mutator165952%_
                             (let ((__tmp171899
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165924%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171899)))
                            (_%klass165954%_
                             (let ((__tmp171900
                                    (##structure-ref
                                     _%mutator165952%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165614%_
                                __tmp171900)))
                            (_%slot165956%_
                             (##structure-ref
                              _%mutator165952%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165958%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self165613%_ _%L165922%_))))
                       (if (and (not (##structure-ref
                                      _%mutator165952%_
                                      '4
                                      gxc#!mutator::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165954%_
                                       _%slot165956%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165954%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171901
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165924%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165923%_
                                                                '()))
                                                    (cons _%expr165958%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171901 _%stx165614%_))
                           (let* ((_%$field165964%_
                                   (let ((__tmp171902
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165613%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171902 _%slot165956%_)))
                                  (__tmp171903
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165613%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165613%_ 'receiver))
                               '()))
                   (cons _%expr165958%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171903
                              _%stx165614%_))))))
                  (_%__kont171275171276%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self165613%_ _%stx165614%_)))))
              (let* ((_%__match171756171757%_
                      (lambda (_%e165818165858%_
                               _%hd165819165861%_
                               _%tl165820165863%_
                               _%e165821165866%_
                               _%hd165822165869%_
                               _%tl165823165871%_
                               _%e165824165874%_
                               _%hd165825165877%_
                               _%tl165826165879%_
                               _%e165827165882%_
                               _%hd165828165885%_
                               _%tl165829165887%_
                               _%e165830165890%_
                               _%hd165831165893%_
                               _%tl165832165895%_
                               _%e165833165898%_
                               _%hd165834165901%_
                               _%tl165835165903%_
                               _%e165836165906%_
                               _%hd165837165909%_
                               _%tl165838165911%_
                               _%e165839165914%_
                               _%hd165840165917%_
                               _%tl165841165919%_)
                        (let ((_%L165922%_ _%hd165840165917%_)
                              (_%L165923%_ _%hd165837165909%_)
                              (_%L165924%_ _%hd165828165885%_))
                          (if (and (let ((__tmp171904
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165613%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165923%_
                                      __tmp171904))
                                   (let ((__tmp171905
                                          (let ((__tmp171906
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165924%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171906))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171905
                                      'gxc#!mutator::t)))
                              (_%__kont171273171274%_
                               _%L165922%_
                               _%L165923%_
                               _%L165924%_)
                              (_%__kont171275171276%_)))))
                     (_%__match171754171755%_
                      (lambda (_%e165818165858%_
                               _%hd165819165861%_
                               _%tl165820165863%_
                               _%e165821165866%_
                               _%hd165822165869%_
                               _%tl165823165871%_
                               _%e165824165874%_
                               _%hd165825165877%_
                               _%tl165826165879%_
                               _%e165827165882%_
                               _%hd165828165885%_
                               _%tl165829165887%_
                               _%e165830165890%_
                               _%hd165831165893%_
                               _%tl165832165895%_
                               _%e165833165898%_
                               _%hd165834165901%_
                               _%tl165835165903%_
                               _%e165836165906%_
                               _%hd165837165909%_
                               _%tl165838165911%_
                               _%e165839165914%_
                               _%hd165840165917%_
                               _%tl165841165919%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165841165919%_))
                            (_%__match171756171757%_
                             _%e165818165858%_
                             _%hd165819165861%_
                             _%tl165820165863%_
                             _%e165821165866%_
                             _%hd165822165869%_
                             _%tl165823165871%_
                             _%e165824165874%_
                             _%hd165825165877%_
                             _%tl165826165879%_
                             _%e165827165882%_
                             _%hd165828165885%_
                             _%tl165829165887%_
                             _%e165830165890%_
                             _%hd165831165893%_
                             _%tl165832165895%_
                             _%e165833165898%_
                             _%hd165834165901%_
                             _%tl165835165903%_
                             _%e165836165906%_
                             _%hd165837165909%_
                             _%tl165838165911%_
                             _%e165839165914%_
                             _%hd165840165917%_
                             _%tl165841165919%_)
                            (_%__kont171275171276%_))))
                     (_%__match171748171749%_
                      (lambda (_%e165818165858%_
                               _%hd165819165861%_
                               _%tl165820165863%_
                               _%e165821165866%_
                               _%hd165822165869%_
                               _%tl165823165871%_
                               _%e165824165874%_
                               _%hd165825165877%_
                               _%tl165826165879%_
                               _%e165827165882%_
                               _%hd165828165885%_
                               _%tl165829165887%_
                               _%e165830165890%_
                               _%hd165831165893%_
                               _%tl165832165895%_
                               _%e165833165898%_
                               _%hd165834165901%_
                               _%tl165835165903%_
                               _%e165836165906%_
                               _%hd165837165909%_
                               _%tl165838165911%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165832165895%_))
                            (let ((_%e165839165914%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165832165895%_))))
                              (let ((_%tl165841165919%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165839165914%_)))
                                    (_%hd165840165917%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165839165914%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165841165919%_))
                                    (_%__match171756171757%_
                                     _%e165818165858%_
                                     _%hd165819165861%_
                                     _%tl165820165863%_
                                     _%e165821165866%_
                                     _%hd165822165869%_
                                     _%tl165823165871%_
                                     _%e165824165874%_
                                     _%hd165825165877%_
                                     _%tl165826165879%_
                                     _%e165827165882%_
                                     _%hd165828165885%_
                                     _%tl165829165887%_
                                     _%e165830165890%_
                                     _%hd165831165893%_
                                     _%tl165832165895%_
                                     _%e165833165898%_
                                     _%hd165834165901%_
                                     _%tl165835165903%_
                                     _%e165836165906%_
                                     _%hd165837165909%_
                                     _%tl165838165911%_
                                     _%e165839165914%_
                                     _%hd165840165917%_
                                     _%tl165841165919%_)
                                    (_%__kont171275171276%_))))
                            (_%__kont171275171276%_))))
                     (_%__match171694171695%_
                      (lambda (_%e165794165971%_
                               _%hd165795165974%_
                               _%tl165796165976%_
                               _%e165797165979%_
                               _%hd165798165982%_
                               _%tl165799165984%_
                               _%e165800165987%_
                               _%hd165801165990%_
                               _%tl165802165992%_
                               _%e165803165995%_
                               _%hd165804165998%_
                               _%tl165805166000%_
                               _%e165806166003%_
                               _%hd165807166006%_
                               _%tl165808166008%_
                               _%e165809166011%_
                               _%hd165810166014%_
                               _%tl165811166016%_
                               _%e165812166019%_
                               _%hd165813166022%_
                               _%tl165814166024%_)
                        (let ((_%L166027%_ _%hd165813166022%_)
                              (_%L166028%_ _%hd165804165998%_))
                          (if (and (let ((__tmp171907
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165613%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166027%_
                                      __tmp171907))
                                   (let ((__tmp171908
                                          (let ((__tmp171909
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166028%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171909))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171908
                                      'gxc#!accessor::t)))
                              (_%__kont171271171272%_ _%L166027%_ _%L166028%_)
                              (_%__kont171275171276%_)))))
                     (_%__match171692171693%_
                      (lambda (_%e165794165971%_
                               _%hd165795165974%_
                               _%tl165796165976%_
                               _%e165797165979%_
                               _%hd165798165982%_
                               _%tl165799165984%_
                               _%e165800165987%_
                               _%hd165801165990%_
                               _%tl165802165992%_
                               _%e165803165995%_
                               _%hd165804165998%_
                               _%tl165805166000%_
                               _%e165806166003%_
                               _%hd165807166006%_
                               _%tl165808166008%_
                               _%e165809166011%_
                               _%hd165810166014%_
                               _%tl165811166016%_
                               _%e165812166019%_
                               _%hd165813166022%_
                               _%tl165814166024%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165808166008%_))
                            (_%__match171694171695%_
                             _%e165794165971%_
                             _%hd165795165974%_
                             _%tl165796165976%_
                             _%e165797165979%_
                             _%hd165798165982%_
                             _%tl165799165984%_
                             _%e165800165987%_
                             _%hd165801165990%_
                             _%tl165802165992%_
                             _%e165803165995%_
                             _%hd165804165998%_
                             _%tl165805166000%_
                             _%e165806166003%_
                             _%hd165807166006%_
                             _%tl165808166008%_
                             _%e165809166011%_
                             _%hd165810166014%_
                             _%tl165811166016%_
                             _%e165812166019%_
                             _%hd165813166022%_
                             _%tl165814166024%_)
                            (_%__match171748171749%_
                             _%e165794165971%_
                             _%hd165795165974%_
                             _%tl165796165976%_
                             _%e165797165979%_
                             _%hd165798165982%_
                             _%tl165799165984%_
                             _%e165800165987%_
                             _%hd165801165990%_
                             _%tl165802165992%_
                             _%e165803165995%_
                             _%hd165804165998%_
                             _%tl165805166000%_
                             _%e165806166003%_
                             _%hd165807166006%_
                             _%tl165808166008%_
                             _%e165809166011%_
                             _%hd165810166014%_
                             _%tl165811166016%_
                             _%e165812166019%_
                             _%hd165813166022%_
                             _%tl165814166024%_))))
                     (_%__match171638171639%_
                      (lambda (_%e165759166067%_
                               _%hd165760166070%_
                               _%tl165761166072%_
                               _%e165762166075%_
                               _%hd165763166078%_
                               _%tl165764166080%_
                               _%e165765166083%_
                               _%hd165766166086%_
                               _%tl165767166088%_
                               _%e165768166091%_
                               _%hd165769166094%_
                               _%tl165770166096%_
                               _%e165771166099%_
                               _%hd165772166102%_
                               _%tl165773166104%_
                               _%e165774166107%_
                               _%hd165775166110%_
                               _%tl165776166112%_
                               _%e165777166115%_
                               _%hd165778166118%_
                               _%tl165779166120%_
                               _%e165780166123%_
                               _%hd165781166126%_
                               _%tl165782166128%_
                               _%e165783166131%_
                               _%hd165784166134%_
                               _%tl165785166136%_
                               _%e165786166139%_
                               _%hd165787166142%_
                               _%tl165788166144%_
                               _%e165789166147%_
                               _%hd165790166150%_
                               _%tl165791166152%_)
                        (let ((_%L166155%_ _%hd165790166150%_)
                              (_%L166156%_ _%hd165787166142%_)
                              (_%L166157%_ _%hd165778166118%_)
                              (_%L166158%_ _%hd165769166094%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166158%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166158%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171910
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165613%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166157%_
                                      __tmp171910)))
                              (_%__kont171269171270%_
                               _%L166155%_
                               _%L166156%_
                               _%L166157%_
                               _%L166158%_)
                              (_%__kont171275171276%_)))))
                     (_%__match171630171631%_
                      (lambda (_%e165759166067%_
                               _%hd165760166070%_
                               _%tl165761166072%_
                               _%e165762166075%_
                               _%hd165763166078%_
                               _%tl165764166080%_
                               _%e165765166083%_
                               _%hd165766166086%_
                               _%tl165767166088%_
                               _%e165768166091%_
                               _%hd165769166094%_
                               _%tl165770166096%_
                               _%e165771166099%_
                               _%hd165772166102%_
                               _%tl165773166104%_
                               _%e165774166107%_
                               _%hd165775166110%_
                               _%tl165776166112%_
                               _%e165777166115%_
                               _%hd165778166118%_
                               _%tl165779166120%_
                               _%e165780166123%_
                               _%hd165781166126%_
                               _%tl165782166128%_
                               _%e165783166131%_
                               _%hd165784166134%_
                               _%tl165785166136%_
                               _%e165786166139%_
                               _%hd165787166142%_
                               _%tl165788166144%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165782166128%_))
                            (let ((_%e165789166147%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165782166128%_))))
                              (let ((_%tl165791166152%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165789166147%_)))
                                    (_%hd165790166150%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165789166147%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165791166152%_))
                                    (_%__match171638171639%_
                                     _%e165759166067%_
                                     _%hd165760166070%_
                                     _%tl165761166072%_
                                     _%e165762166075%_
                                     _%hd165763166078%_
                                     _%tl165764166080%_
                                     _%e165765166083%_
                                     _%hd165766166086%_
                                     _%tl165767166088%_
                                     _%e165768166091%_
                                     _%hd165769166094%_
                                     _%tl165770166096%_
                                     _%e165771166099%_
                                     _%hd165772166102%_
                                     _%tl165773166104%_
                                     _%e165774166107%_
                                     _%hd165775166110%_
                                     _%tl165776166112%_
                                     _%e165777166115%_
                                     _%hd165778166118%_
                                     _%tl165779166120%_
                                     _%e165780166123%_
                                     _%hd165781166126%_
                                     _%tl165782166128%_
                                     _%e165783166131%_
                                     _%hd165784166134%_
                                     _%tl165785166136%_
                                     _%e165786166139%_
                                     _%hd165787166142%_
                                     _%tl165788166144%_
                                     _%e165789166147%_
                                     _%hd165790166150%_
                                     _%tl165791166152%_)
                                    (_%__kont171275171276%_))))
                            (_%__match171754171755%_
                             _%e165759166067%_
                             _%hd165760166070%_
                             _%tl165761166072%_
                             _%e165762166075%_
                             _%hd165763166078%_
                             _%tl165764166080%_
                             _%e165765166083%_
                             _%hd165766166086%_
                             _%tl165767166088%_
                             _%e165768166091%_
                             _%hd165769166094%_
                             _%tl165770166096%_
                             _%e165771166099%_
                             _%hd165772166102%_
                             _%tl165773166104%_
                             _%e165774166107%_
                             _%hd165775166110%_
                             _%tl165776166112%_
                             _%e165777166115%_
                             _%hd165778166118%_
                             _%tl165779166120%_
                             _%e165780166123%_
                             _%hd165781166126%_
                             _%tl165782166128%_))))
                     (_%__match171552171553%_
                      (lambda (_%e165725166201%_
                               _%hd165726166204%_
                               _%tl165727166206%_
                               _%e165728166209%_
                               _%hd165729166212%_
                               _%tl165730166214%_
                               _%e165731166217%_
                               _%hd165732166220%_
                               _%tl165733166222%_
                               _%e165734166225%_
                               _%hd165735166228%_
                               _%tl165736166230%_
                               _%e165737166233%_
                               _%hd165738166236%_
                               _%tl165739166238%_
                               _%e165740166241%_
                               _%hd165741166244%_
                               _%tl165742166246%_
                               _%e165743166249%_
                               _%hd165744166252%_
                               _%tl165745166254%_
                               _%e165746166257%_
                               _%hd165747166260%_
                               _%tl165748166262%_
                               _%e165749166265%_
                               _%hd165750166268%_
                               _%tl165751166270%_
                               _%e165752166273%_
                               _%hd165753166276%_
                               _%tl165754166278%_)
                        (let ((_%L166281%_ _%hd165753166276%_)
                              (_%L166282%_ _%hd165744166252%_)
                              (_%L166283%_ _%hd165735166228%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166283%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166283%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171911
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165613%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166282%_
                                      __tmp171911)))
                              (_%__kont171267171268%_
                               _%L166281%_
                               _%L166282%_
                               _%L166283%_)
                              (_%__match171756171757%_
                               _%e165725166201%_
                               _%hd165726166204%_
                               _%tl165727166206%_
                               _%e165728166209%_
                               _%hd165729166212%_
                               _%tl165730166214%_
                               _%e165731166217%_
                               _%hd165732166220%_
                               _%tl165733166222%_
                               _%e165734166225%_
                               _%hd165735166228%_
                               _%tl165736166230%_
                               _%e165737166233%_
                               _%hd165738166236%_
                               _%tl165739166238%_
                               _%e165740166241%_
                               _%hd165741166244%_
                               _%tl165742166246%_
                               _%e165743166249%_
                               _%hd165744166252%_
                               _%tl165745166254%_
                               _%e165746166257%_
                               _%hd165747166260%_
                               _%tl165748166262%_)))))
                     (_%__match171550171551%_
                      (lambda (_%e165725166201%_
                               _%hd165726166204%_
                               _%tl165727166206%_
                               _%e165728166209%_
                               _%hd165729166212%_
                               _%tl165730166214%_
                               _%e165731166217%_
                               _%hd165732166220%_
                               _%tl165733166222%_
                               _%e165734166225%_
                               _%hd165735166228%_
                               _%tl165736166230%_
                               _%e165737166233%_
                               _%hd165738166236%_
                               _%tl165739166238%_
                               _%e165740166241%_
                               _%hd165741166244%_
                               _%tl165742166246%_
                               _%e165743166249%_
                               _%hd165744166252%_
                               _%tl165745166254%_
                               _%e165746166257%_
                               _%hd165747166260%_
                               _%tl165748166262%_
                               _%e165749166265%_
                               _%hd165750166268%_
                               _%tl165751166270%_
                               _%e165752166273%_
                               _%hd165753166276%_
                               _%tl165754166278%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165748166262%_))
                            (_%__match171552171553%_
                             _%e165725166201%_
                             _%hd165726166204%_
                             _%tl165727166206%_
                             _%e165728166209%_
                             _%hd165729166212%_
                             _%tl165730166214%_
                             _%e165731166217%_
                             _%hd165732166220%_
                             _%tl165733166222%_
                             _%e165734166225%_
                             _%hd165735166228%_
                             _%tl165736166230%_
                             _%e165737166233%_
                             _%hd165738166236%_
                             _%tl165739166238%_
                             _%e165740166241%_
                             _%hd165741166244%_
                             _%tl165742166246%_
                             _%e165743166249%_
                             _%hd165744166252%_
                             _%tl165745166254%_
                             _%e165746166257%_
                             _%hd165747166260%_
                             _%tl165748166262%_
                             _%e165749166265%_
                             _%hd165750166268%_
                             _%tl165751166270%_
                             _%e165752166273%_
                             _%hd165753166276%_
                             _%tl165754166278%_)
                            (_%__match171630171631%_
                             _%e165725166201%_
                             _%hd165726166204%_
                             _%tl165727166206%_
                             _%e165728166209%_
                             _%hd165729166212%_
                             _%tl165730166214%_
                             _%e165731166217%_
                             _%hd165732166220%_
                             _%tl165733166222%_
                             _%e165734166225%_
                             _%hd165735166228%_
                             _%tl165736166230%_
                             _%e165737166233%_
                             _%hd165738166236%_
                             _%tl165739166238%_
                             _%e165740166241%_
                             _%hd165741166244%_
                             _%tl165742166246%_
                             _%e165743166249%_
                             _%hd165744166252%_
                             _%tl165745166254%_
                             _%e165746166257%_
                             _%hd165747166260%_
                             _%tl165748166262%_
                             _%e165749166265%_
                             _%hd165750166268%_
                             _%tl165751166270%_
                             _%e165752166273%_
                             _%hd165753166276%_
                             _%tl165754166278%_))))
                     (_%__match171540171541%_
                      (lambda (_%e165725166201%_
                               _%hd165726166204%_
                               _%tl165727166206%_
                               _%e165728166209%_
                               _%hd165729166212%_
                               _%tl165730166214%_
                               _%e165731166217%_
                               _%hd165732166220%_
                               _%tl165733166222%_
                               _%e165734166225%_
                               _%hd165735166228%_
                               _%tl165736166230%_
                               _%e165737166233%_
                               _%hd165738166236%_
                               _%tl165739166238%_
                               _%e165740166241%_
                               _%hd165741166244%_
                               _%tl165742166246%_
                               _%e165743166249%_
                               _%hd165744166252%_
                               _%tl165745166254%_
                               _%e165746166257%_
                               _%hd165747166260%_
                               _%tl165748166262%_
                               _%e165749166265%_
                               _%hd165750166268%_
                               _%tl165751166270%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165750166268%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165751166270%_))
                                (let ((_%e165752166273%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165751166270%_))))
                                  (let ((_%tl165754166278%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165752166273%_)))
                                        (_%hd165753166276%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165752166273%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165754166278%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165748166262%_))
                                            (_%__match171552171553%_
                                             _%e165725166201%_
                                             _%hd165726166204%_
                                             _%tl165727166206%_
                                             _%e165728166209%_
                                             _%hd165729166212%_
                                             _%tl165730166214%_
                                             _%e165731166217%_
                                             _%hd165732166220%_
                                             _%tl165733166222%_
                                             _%e165734166225%_
                                             _%hd165735166228%_
                                             _%tl165736166230%_
                                             _%e165737166233%_
                                             _%hd165738166236%_
                                             _%tl165739166238%_
                                             _%e165740166241%_
                                             _%hd165741166244%_
                                             _%tl165742166246%_
                                             _%e165743166249%_
                                             _%hd165744166252%_
                                             _%tl165745166254%_
                                             _%e165746166257%_
                                             _%hd165747166260%_
                                             _%tl165748166262%_
                                             _%e165749166265%_
                                             _%hd165750166268%_
                                             _%tl165751166270%_
                                             _%e165752166273%_
                                             _%hd165753166276%_
                                             _%tl165754166278%_)
                                            (_%__match171630171631%_
                                             _%e165725166201%_
                                             _%hd165726166204%_
                                             _%tl165727166206%_
                                             _%e165728166209%_
                                             _%hd165729166212%_
                                             _%tl165730166214%_
                                             _%e165731166217%_
                                             _%hd165732166220%_
                                             _%tl165733166222%_
                                             _%e165734166225%_
                                             _%hd165735166228%_
                                             _%tl165736166230%_
                                             _%e165737166233%_
                                             _%hd165738166236%_
                                             _%tl165739166238%_
                                             _%e165740166241%_
                                             _%hd165741166244%_
                                             _%tl165742166246%_
                                             _%e165743166249%_
                                             _%hd165744166252%_
                                             _%tl165745166254%_
                                             _%e165746166257%_
                                             _%hd165747166260%_
                                             _%tl165748166262%_
                                             _%e165749166265%_
                                             _%hd165750166268%_
                                             _%tl165751166270%_
                                             _%e165752166273%_
                                             _%hd165753166276%_
                                             _%tl165754166278%_))
                                        (_%__match171754171755%_
                                         _%e165725166201%_
                                         _%hd165726166204%_
                                         _%tl165727166206%_
                                         _%e165728166209%_
                                         _%hd165729166212%_
                                         _%tl165730166214%_
                                         _%e165731166217%_
                                         _%hd165732166220%_
                                         _%tl165733166222%_
                                         _%e165734166225%_
                                         _%hd165735166228%_
                                         _%tl165736166230%_
                                         _%e165737166233%_
                                         _%hd165738166236%_
                                         _%tl165739166238%_
                                         _%e165740166241%_
                                         _%hd165741166244%_
                                         _%tl165742166246%_
                                         _%e165743166249%_
                                         _%hd165744166252%_
                                         _%tl165745166254%_
                                         _%e165746166257%_
                                         _%hd165747166260%_
                                         _%tl165748166262%_))))
                                (_%__match171754171755%_
                                 _%e165725166201%_
                                 _%hd165726166204%_
                                 _%tl165727166206%_
                                 _%e165728166209%_
                                 _%hd165729166212%_
                                 _%tl165730166214%_
                                 _%e165731166217%_
                                 _%hd165732166220%_
                                 _%tl165733166222%_
                                 _%e165734166225%_
                                 _%hd165735166228%_
                                 _%tl165736166230%_
                                 _%e165737166233%_
                                 _%hd165738166236%_
                                 _%tl165739166238%_
                                 _%e165740166241%_
                                 _%hd165741166244%_
                                 _%tl165742166246%_
                                 _%e165743166249%_
                                 _%hd165744166252%_
                                 _%tl165745166254%_
                                 _%e165746166257%_
                                 _%hd165747166260%_
                                 _%tl165748166262%_))
                            (_%__match171754171755%_
                             _%e165725166201%_
                             _%hd165726166204%_
                             _%tl165727166206%_
                             _%e165728166209%_
                             _%hd165729166212%_
                             _%tl165730166214%_
                             _%e165731166217%_
                             _%hd165732166220%_
                             _%tl165733166222%_
                             _%e165734166225%_
                             _%hd165735166228%_
                             _%tl165736166230%_
                             _%e165737166233%_
                             _%hd165738166236%_
                             _%tl165739166238%_
                             _%e165740166241%_
                             _%hd165741166244%_
                             _%tl165742166246%_
                             _%e165743166249%_
                             _%hd165744166252%_
                             _%tl165745166254%_
                             _%e165746166257%_
                             _%hd165747166260%_
                             _%tl165748166262%_))))
                     (_%__match171472171473%_
                      (lambda (_%e165674166322%_
                               _%hd165675166325%_
                               _%tl165676166327%_
                               _%e165677166330%_
                               _%hd165678166333%_
                               _%tl165679166335%_
                               _%e165680166338%_
                               _%hd165681166341%_
                               _%tl165682166343%_
                               _%e165683166346%_
                               _%hd165684166349%_
                               _%tl165685166351%_
                               _%e165686166354%_
                               _%hd165687166357%_
                               _%tl165688166359%_
                               _%e165689166362%_
                               _%hd165690166365%_
                               _%tl165691166367%_
                               _%e165692166370%_
                               _%hd165693166373%_
                               _%tl165694166375%_
                               _%e165695166378%_
                               _%hd165696166381%_
                               _%tl165697166383%_
                               _%e165698166386%_
                               _%hd165699166389%_
                               _%tl165700166391%_
                               _%e165701166394%_
                               _%hd165702166397%_
                               _%tl165703166399%_
                               _%e165704166402%_
                               _%hd165705166405%_
                               _%tl165706166407%_
                               _%e165707166410%_
                               _%hd165708166413%_
                               _%tl165709166415%_
                               _%e165710166418%_
                               _%hd165711166421%_
                               _%tl165712166423%_
                               _%__splice171265171266%_
                               _%target165713166426%_
                               _%tl165715166428%_)
                        (letrec ((_%loop165716166431%_
                                  (lambda (_%hd165714166434%_
                                           _%args165720166436%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165714166434%_))
                                        (let ((_%e165717166439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165714166434%_))))
                                          (let ((_%lp-tl165719166444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165717166439%_)))
                                                (_%lp-hd165718166442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165717166439%_))))
                                            (_%loop165716166431%_
                                             _%lp-tl165719166444%_
                                             (cons _%lp-hd165718166442%_
                                                   _%args165720166436%_))))
                                        (let ((_%args165721166447%_
                                               (reverse _%args165720166436%_)))
                                          (let ((_%L166450%_
                                                 _%args165721166447%_)
                                                (_%L166451%_
                                                 _%hd165711166421%_)
                                                (_%L166452%_
                                                 _%hd165702166397%_)
                                                (_%L166453%_
                                                 _%hd165693166373%_)
                                                (_%L166454%_
                                                 _%hd165684166349%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166454%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166453%_
                                                        'call-method))
                                                     (let ((__tmp171912
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165613%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166452%_
                                                        __tmp171912)))
                                                (_%__kont171263171264%_
                                                 _%L166450%_
                                                 _%L166451%_
                                                 _%L166452%_
                                                 _%L166453%_
                                                 _%L166454%_)
                                                (_%__kont171275171276%_))))))))
                          (_%loop165716166431%_ _%target165713166426%_ '()))))
                     (_%__match171430171431%_
                      (lambda (_%e165674166322%_
                               _%hd165675166325%_
                               _%tl165676166327%_
                               _%e165677166330%_
                               _%hd165678166333%_
                               _%tl165679166335%_
                               _%e165680166338%_
                               _%hd165681166341%_
                               _%tl165682166343%_
                               _%e165683166346%_
                               _%hd165684166349%_
                               _%tl165685166351%_
                               _%e165686166354%_
                               _%hd165687166357%_
                               _%tl165688166359%_
                               _%e165689166362%_
                               _%hd165690166365%_
                               _%tl165691166367%_
                               _%e165692166370%_
                               _%hd165693166373%_
                               _%tl165694166375%_
                               _%e165695166378%_
                               _%hd165696166381%_
                               _%tl165697166383%_
                               _%e165698166386%_
                               _%hd165699166389%_
                               _%tl165700166391%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd165699166389%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165700166391%_))
                                (let ((_%e165701166394%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165700166391%_))))
                                  (let ((_%tl165703166399%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165701166394%_)))
                                        (_%hd165702166397%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165701166394%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165703166399%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165697166383%_))
                                            (let ((_%e165704166402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165697166383%_))))
                                              (let ((_%tl165706166407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165704166402%_)))
                                                    (_%hd165705166405%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165704166402%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd165705166405%_))
                                                    (let ((_%e165707166410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd165705166405%_))))
                                                      (let ((_%tl165709166415%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165707166410%_)))
                    (_%hd165708166413%_
                     (let () (declare (not safe)) (##car _%e165707166410%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd165708166413%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd165708166413%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165709166415%_))
                            (let ((_%e165710166418%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165709166415%_))))
                              (let ((_%tl165712166423%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165710166418%_)))
                                    (_%hd165711166421%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165710166418%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165712166423%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl165706166407%_))
                                        (let ((_%__splice171265171266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl165706166407%_
                                                  '0))))
                                          (let ((_%tl165715166428%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171265171266%_
                                                    '1)))
                                                (_%target165713166426%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171265171266%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165715166428%_))
                                                (_%__match171472171473%_
                                                 _%e165674166322%_
                                                 _%hd165675166325%_
                                                 _%tl165676166327%_
                                                 _%e165677166330%_
                                                 _%hd165678166333%_
                                                 _%tl165679166335%_
                                                 _%e165680166338%_
                                                 _%hd165681166341%_
                                                 _%tl165682166343%_
                                                 _%e165683166346%_
                                                 _%hd165684166349%_
                                                 _%tl165685166351%_
                                                 _%e165686166354%_
                                                 _%hd165687166357%_
                                                 _%tl165688166359%_
                                                 _%e165689166362%_
                                                 _%hd165690166365%_
                                                 _%tl165691166367%_
                                                 _%e165692166370%_
                                                 _%hd165693166373%_
                                                 _%tl165694166375%_
                                                 _%e165695166378%_
                                                 _%hd165696166381%_
                                                 _%tl165697166383%_
                                                 _%e165698166386%_
                                                 _%hd165699166389%_
                                                 _%tl165700166391%_
                                                 _%e165701166394%_
                                                 _%hd165702166397%_
                                                 _%tl165703166399%_
                                                 _%e165704166402%_
                                                 _%hd165705166405%_
                                                 _%tl165706166407%_
                                                 _%e165707166410%_
                                                 _%hd165708166413%_
                                                 _%tl165709166415%_
                                                 _%e165710166418%_
                                                 _%hd165711166421%_
                                                 _%tl165712166423%_
                                                 _%__splice171265171266%_
                                                 _%target165713166426%_
                                                 _%tl165715166428%_)
                                                (_%__kont171275171276%_))))
                                        (_%__kont171275171276%_))
                                    (_%__kont171275171276%_))))
                            (_%__kont171275171276%_))
                        (_%__kont171275171276%_))
                    (_%__kont171275171276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171275171276%_))))
                                            (_%__match171754171755%_
                                             _%e165674166322%_
                                             _%hd165675166325%_
                                             _%tl165676166327%_
                                             _%e165677166330%_
                                             _%hd165678166333%_
                                             _%tl165679166335%_
                                             _%e165680166338%_
                                             _%hd165681166341%_
                                             _%tl165682166343%_
                                             _%e165683166346%_
                                             _%hd165684166349%_
                                             _%tl165685166351%_
                                             _%e165686166354%_
                                             _%hd165687166357%_
                                             _%tl165688166359%_
                                             _%e165689166362%_
                                             _%hd165690166365%_
                                             _%tl165691166367%_
                                             _%e165692166370%_
                                             _%hd165693166373%_
                                             _%tl165694166375%_
                                             _%e165695166378%_
                                             _%hd165696166381%_
                                             _%tl165697166383%_))
                                        (_%__match171754171755%_
                                         _%e165674166322%_
                                         _%hd165675166325%_
                                         _%tl165676166327%_
                                         _%e165677166330%_
                                         _%hd165678166333%_
                                         _%tl165679166335%_
                                         _%e165680166338%_
                                         _%hd165681166341%_
                                         _%tl165682166343%_
                                         _%e165683166346%_
                                         _%hd165684166349%_
                                         _%tl165685166351%_
                                         _%e165686166354%_
                                         _%hd165687166357%_
                                         _%tl165688166359%_
                                         _%e165689166362%_
                                         _%hd165690166365%_
                                         _%tl165691166367%_
                                         _%e165692166370%_
                                         _%hd165693166373%_
                                         _%tl165694166375%_
                                         _%e165695166378%_
                                         _%hd165696166381%_
                                         _%tl165697166383%_))))
                                (_%__match171754171755%_
                                 _%e165674166322%_
                                 _%hd165675166325%_
                                 _%tl165676166327%_
                                 _%e165677166330%_
                                 _%hd165678166333%_
                                 _%tl165679166335%_
                                 _%e165680166338%_
                                 _%hd165681166341%_
                                 _%tl165682166343%_
                                 _%e165683166346%_
                                 _%hd165684166349%_
                                 _%tl165685166351%_
                                 _%e165686166354%_
                                 _%hd165687166357%_
                                 _%tl165688166359%_
                                 _%e165689166362%_
                                 _%hd165690166365%_
                                 _%tl165691166367%_
                                 _%e165692166370%_
                                 _%hd165693166373%_
                                 _%tl165694166375%_
                                 _%e165695166378%_
                                 _%hd165696166381%_
                                 _%tl165697166383%_))
                            (_%__match171540171541%_
                             _%e165674166322%_
                             _%hd165675166325%_
                             _%tl165676166327%_
                             _%e165677166330%_
                             _%hd165678166333%_
                             _%tl165679166335%_
                             _%e165680166338%_
                             _%hd165681166341%_
                             _%tl165682166343%_
                             _%e165683166346%_
                             _%hd165684166349%_
                             _%tl165685166351%_
                             _%e165686166354%_
                             _%hd165687166357%_
                             _%tl165688166359%_
                             _%e165689166362%_
                             _%hd165690166365%_
                             _%tl165691166367%_
                             _%e165692166370%_
                             _%hd165693166373%_
                             _%tl165694166375%_
                             _%e165695166378%_
                             _%hd165696166381%_
                             _%tl165697166383%_
                             _%e165698166386%_
                             _%hd165699166389%_
                             _%tl165700166391%_))))
                     (_%__match171362171363%_
                      (lambda (_%e165630166514%_
                               _%hd165631166517%_
                               _%tl165632166519%_
                               _%e165633166522%_
                               _%hd165634166525%_
                               _%tl165635166527%_
                               _%e165636166530%_
                               _%hd165637166533%_
                               _%tl165638166535%_
                               _%e165639166538%_
                               _%hd165640166541%_
                               _%tl165641166543%_
                               _%e165642166546%_
                               _%hd165643166549%_
                               _%tl165644166551%_
                               _%e165645166554%_
                               _%hd165646166557%_
                               _%tl165647166559%_
                               _%e165648166562%_
                               _%hd165649166565%_
                               _%tl165650166567%_
                               _%e165651166570%_
                               _%hd165652166573%_
                               _%tl165653166575%_
                               _%e165654166578%_
                               _%hd165655166581%_
                               _%tl165656166583%_
                               _%e165657166586%_
                               _%hd165658166589%_
                               _%tl165659166591%_
                               _%__splice171261171262%_
                               _%target165660166594%_
                               _%tl165662166596%_)
                        (letrec ((_%loop165663166599%_
                                  (lambda (_%hd165661166602%_
                                           _%args165667166604%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165661166602%_))
                                        (let ((_%e165664166607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165661166602%_))))
                                          (let ((_%lp-tl165666166612%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165664166607%_)))
                                                (_%lp-hd165665166610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165664166607%_))))
                                            (_%loop165663166599%_
                                             _%lp-tl165666166612%_
                                             (cons _%lp-hd165665166610%_
                                                   _%args165667166604%_))))
                                        (let ((_%args165668166615%_
                                               (reverse _%args165667166604%_)))
                                          (let ((_%L166618%_
                                                 _%args165668166615%_)
                                                (_%L166619%_
                                                 _%hd165658166589%_)
                                                (_%L166620%_
                                                 _%hd165649166565%_)
                                                (_%L166621%_
                                                 _%hd165640166541%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166621%_
                                                        'call-method))
                                                     (let ((__tmp171913
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165613%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166620%_
                                                        __tmp171913)))
                                                (_%__kont171259171260%_
                                                 _%L166618%_
                                                 _%L166619%_
                                                 _%L166620%_
                                                 _%L166621%_)
                                                (_%__match171550171551%_
                                                 _%e165630166514%_
                                                 _%hd165631166517%_
                                                 _%tl165632166519%_
                                                 _%e165633166522%_
                                                 _%hd165634166525%_
                                                 _%tl165635166527%_
                                                 _%e165636166530%_
                                                 _%hd165637166533%_
                                                 _%tl165638166535%_
                                                 _%e165639166538%_
                                                 _%hd165640166541%_
                                                 _%tl165641166543%_
                                                 _%e165642166546%_
                                                 _%hd165643166549%_
                                                 _%tl165644166551%_
                                                 _%e165645166554%_
                                                 _%hd165646166557%_
                                                 _%tl165647166559%_
                                                 _%e165648166562%_
                                                 _%hd165649166565%_
                                                 _%tl165650166567%_
                                                 _%e165651166570%_
                                                 _%hd165652166573%_
                                                 _%tl165653166575%_
                                                 _%e165654166578%_
                                                 _%hd165655166581%_
                                                 _%tl165656166583%_
                                                 _%e165657166586%_
                                                 _%hd165658166589%_
                                                 _%tl165659166591%_))))))))
                          (_%loop165663166599%_ _%target165660166594%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171257171258%_))
                    (let ((_%e165630166514%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171257171258%_))))
                      (let ((_%tl165632166519%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165630166514%_)))
                            (_%hd165631166517%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165630166514%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165632166519%_))
                            (let ((_%e165633166522%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165632166519%_))))
                              (let ((_%tl165635166527%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165633166522%_)))
                                    (_%hd165634166525%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165633166522%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd165634166525%_))
                                    (let ((_%e165636166530%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd165634166525%_))))
                                      (let ((_%tl165638166535%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e165636166530%_)))
                                            (_%hd165637166533%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e165636166530%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd165637166533%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd165637166533%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl165638166535%_))
                                                    (let ((_%e165639166538%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl165638166535%_))))
                                                      (let ((_%tl165641166543%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165639166538%_)))
                    (_%hd165640166541%_
                     (let () (declare (not safe)) (##car _%e165639166538%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl165641166543%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl165635166527%_))
                        (let ((_%e165642166546%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl165635166527%_))))
                          (let ((_%tl165644166551%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165642166546%_)))
                                (_%hd165643166549%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165642166546%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd165643166549%_))
                                (let ((_%e165645166554%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd165643166549%_))))
                                  (let ((_%tl165647166559%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165645166554%_)))
                                        (_%hd165646166557%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165645166554%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd165646166557%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd165646166557%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165647166559%_))
                                                (let ((_%e165648166562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165647166559%_))))
                                                  (let ((_%tl165650166567%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165648166562%_)))
                                                        (_%hd165649166565%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165648166562%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165650166567%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl165644166551%_))
                                                            (let ((_%e165651166570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165644166551%_))))
                      (let ((_%tl165653166575%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165651166570%_)))
                            (_%hd165652166573%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165651166570%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd165652166573%_))
                            (let ((_%e165654166578%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd165652166573%_))))
                              (let ((_%tl165656166583%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165654166578%_)))
                                    (_%hd165655166581%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165654166578%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd165655166581%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd165655166581%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165656166583%_))
                                            (let ((_%e165657166586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165656166583%_))))
                                              (let ((_%tl165659166591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165657166586%_)))
                                                    (_%hd165658166589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165657166586%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl165659166591%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl165653166575%_))
                                                        (let ((_%__splice171261171262%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl165653166575%_ '0))))
                  (let ((_%tl165662166596%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171261171262%_ '1)))
                        (_%target165660166594%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171261171262%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl165662166596%_))
                        (_%__match171362171363%_
                         _%e165630166514%_
                         _%hd165631166517%_
                         _%tl165632166519%_
                         _%e165633166522%_
                         _%hd165634166525%_
                         _%tl165635166527%_
                         _%e165636166530%_
                         _%hd165637166533%_
                         _%tl165638166535%_
                         _%e165639166538%_
                         _%hd165640166541%_
                         _%tl165641166543%_
                         _%e165642166546%_
                         _%hd165643166549%_
                         _%tl165644166551%_
                         _%e165645166554%_
                         _%hd165646166557%_
                         _%tl165647166559%_
                         _%e165648166562%_
                         _%hd165649166565%_
                         _%tl165650166567%_
                         _%e165651166570%_
                         _%hd165652166573%_
                         _%tl165653166575%_
                         _%e165654166578%_
                         _%hd165655166581%_
                         _%tl165656166583%_
                         _%e165657166586%_
                         _%hd165658166589%_
                         _%tl165659166591%_
                         _%__splice171261171262%_
                         _%target165660166594%_
                         _%tl165662166596%_)
                        (_%__match171550171551%_
                         _%e165630166514%_
                         _%hd165631166517%_
                         _%tl165632166519%_
                         _%e165633166522%_
                         _%hd165634166525%_
                         _%tl165635166527%_
                         _%e165636166530%_
                         _%hd165637166533%_
                         _%tl165638166535%_
                         _%e165639166538%_
                         _%hd165640166541%_
                         _%tl165641166543%_
                         _%e165642166546%_
                         _%hd165643166549%_
                         _%tl165644166551%_
                         _%e165645166554%_
                         _%hd165646166557%_
                         _%tl165647166559%_
                         _%e165648166562%_
                         _%hd165649166565%_
                         _%tl165650166567%_
                         _%e165651166570%_
                         _%hd165652166573%_
                         _%tl165653166575%_
                         _%e165654166578%_
                         _%hd165655166581%_
                         _%tl165656166583%_
                         _%e165657166586%_
                         _%hd165658166589%_
                         _%tl165659166591%_))))
                (_%__match171550171551%_
                 _%e165630166514%_
                 _%hd165631166517%_
                 _%tl165632166519%_
                 _%e165633166522%_
                 _%hd165634166525%_
                 _%tl165635166527%_
                 _%e165636166530%_
                 _%hd165637166533%_
                 _%tl165638166535%_
                 _%e165639166538%_
                 _%hd165640166541%_
                 _%tl165641166543%_
                 _%e165642166546%_
                 _%hd165643166549%_
                 _%tl165644166551%_
                 _%e165645166554%_
                 _%hd165646166557%_
                 _%tl165647166559%_
                 _%e165648166562%_
                 _%hd165649166565%_
                 _%tl165650166567%_
                 _%e165651166570%_
                 _%hd165652166573%_
                 _%tl165653166575%_
                 _%e165654166578%_
                 _%hd165655166581%_
                 _%tl165656166583%_
                 _%e165657166586%_
                 _%hd165658166589%_
                 _%tl165659166591%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171754171755%_
                                                     _%e165630166514%_
                                                     _%hd165631166517%_
                                                     _%tl165632166519%_
                                                     _%e165633166522%_
                                                     _%hd165634166525%_
                                                     _%tl165635166527%_
                                                     _%e165636166530%_
                                                     _%hd165637166533%_
                                                     _%tl165638166535%_
                                                     _%e165639166538%_
                                                     _%hd165640166541%_
                                                     _%tl165641166543%_
                                                     _%e165642166546%_
                                                     _%hd165643166549%_
                                                     _%tl165644166551%_
                                                     _%e165645166554%_
                                                     _%hd165646166557%_
                                                     _%tl165647166559%_
                                                     _%e165648166562%_
                                                     _%hd165649166565%_
                                                     _%tl165650166567%_
                                                     _%e165651166570%_
                                                     _%hd165652166573%_
                                                     _%tl165653166575%_))))
                                            (_%__match171754171755%_
                                             _%e165630166514%_
                                             _%hd165631166517%_
                                             _%tl165632166519%_
                                             _%e165633166522%_
                                             _%hd165634166525%_
                                             _%tl165635166527%_
                                             _%e165636166530%_
                                             _%hd165637166533%_
                                             _%tl165638166535%_
                                             _%e165639166538%_
                                             _%hd165640166541%_
                                             _%tl165641166543%_
                                             _%e165642166546%_
                                             _%hd165643166549%_
                                             _%tl165644166551%_
                                             _%e165645166554%_
                                             _%hd165646166557%_
                                             _%tl165647166559%_
                                             _%e165648166562%_
                                             _%hd165649166565%_
                                             _%tl165650166567%_
                                             _%e165651166570%_
                                             _%hd165652166573%_
                                             _%tl165653166575%_))
                                        (_%__match171430171431%_
                                         _%e165630166514%_
                                         _%hd165631166517%_
                                         _%tl165632166519%_
                                         _%e165633166522%_
                                         _%hd165634166525%_
                                         _%tl165635166527%_
                                         _%e165636166530%_
                                         _%hd165637166533%_
                                         _%tl165638166535%_
                                         _%e165639166538%_
                                         _%hd165640166541%_
                                         _%tl165641166543%_
                                         _%e165642166546%_
                                         _%hd165643166549%_
                                         _%tl165644166551%_
                                         _%e165645166554%_
                                         _%hd165646166557%_
                                         _%tl165647166559%_
                                         _%e165648166562%_
                                         _%hd165649166565%_
                                         _%tl165650166567%_
                                         _%e165651166570%_
                                         _%hd165652166573%_
                                         _%tl165653166575%_
                                         _%e165654166578%_
                                         _%hd165655166581%_
                                         _%tl165656166583%_))
                                    (_%__match171754171755%_
                                     _%e165630166514%_
                                     _%hd165631166517%_
                                     _%tl165632166519%_
                                     _%e165633166522%_
                                     _%hd165634166525%_
                                     _%tl165635166527%_
                                     _%e165636166530%_
                                     _%hd165637166533%_
                                     _%tl165638166535%_
                                     _%e165639166538%_
                                     _%hd165640166541%_
                                     _%tl165641166543%_
                                     _%e165642166546%_
                                     _%hd165643166549%_
                                     _%tl165644166551%_
                                     _%e165645166554%_
                                     _%hd165646166557%_
                                     _%tl165647166559%_
                                     _%e165648166562%_
                                     _%hd165649166565%_
                                     _%tl165650166567%_
                                     _%e165651166570%_
                                     _%hd165652166573%_
                                     _%tl165653166575%_))))
                            (_%__match171754171755%_
                             _%e165630166514%_
                             _%hd165631166517%_
                             _%tl165632166519%_
                             _%e165633166522%_
                             _%hd165634166525%_
                             _%tl165635166527%_
                             _%e165636166530%_
                             _%hd165637166533%_
                             _%tl165638166535%_
                             _%e165639166538%_
                             _%hd165640166541%_
                             _%tl165641166543%_
                             _%e165642166546%_
                             _%hd165643166549%_
                             _%tl165644166551%_
                             _%e165645166554%_
                             _%hd165646166557%_
                             _%tl165647166559%_
                             _%e165648166562%_
                             _%hd165649166565%_
                             _%tl165650166567%_
                             _%e165651166570%_
                             _%hd165652166573%_
                             _%tl165653166575%_))))
                    (_%__match171692171693%_
                     _%e165630166514%_
                     _%hd165631166517%_
                     _%tl165632166519%_
                     _%e165633166522%_
                     _%hd165634166525%_
                     _%tl165635166527%_
                     _%e165636166530%_
                     _%hd165637166533%_
                     _%tl165638166535%_
                     _%e165639166538%_
                     _%hd165640166541%_
                     _%tl165641166543%_
                     _%e165642166546%_
                     _%hd165643166549%_
                     _%tl165644166551%_
                     _%e165645166554%_
                     _%hd165646166557%_
                     _%tl165647166559%_
                     _%e165648166562%_
                     _%hd165649166565%_
                     _%tl165650166567%_))
                (_%__kont171275171276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171275171276%_))
                                            (_%__kont171275171276%_))
                                        (_%__kont171275171276%_))))
                                (_%__kont171275171276%_))))
                        (_%__kont171275171276%_))
                    (_%__kont171275171276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171275171276%_))
                                                (_%__kont171275171276%_))
                                            (_%__kont171275171276%_))))
                                    (_%__kont171275171276%_))))
                            (_%__kont171275171276%_))))
                    (_%__kont171275171276%_))))))))))
