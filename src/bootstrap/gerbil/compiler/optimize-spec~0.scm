(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712702634)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171758 (list gxc#::identity::t))
            (__tmp171757 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171758
         '()
         __tmp171757
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args170623%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args170623%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171759
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
        (__make-promise __tmp171759)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx170615%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self170618%_
                (let ((__obj171752
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171752))
               (__tmp171760
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self170618%_ _%stx170615%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171760
           gxc#current-compile-method
           _%self170618%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171762 (list gxc#::void::t))
            (__tmp171761 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171762
         '(receiver methods slots)
         __tmp171761
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args170612%_
        (apply make-instance gxc#::collect-object-refs::t _%$args170612%_)))
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
      (let ((__tmp171763
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
        (__make-promise __tmp171763)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords170578%_
               _%receiver170573170579%_
               _%methods170574170581%_
               _%slots170575170583%_
               _%stx170585%_)
        (let* ((_%receiver170588%_
                (if (eq? _%receiver170573170579%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170573170579%_))
               (_%methods170590%_
                (if (eq? _%methods170574170581%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170574170581%_))
               (_%slots170592%_
                (if (eq? _%slots170575170583%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170575170583%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self170594%_
                  (let ((__obj171754
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
                       __obj171754
                       _%receiver170588%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171754
                       _%methods170590%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171754
                       _%slots170592%_
                       '3
                       '#f
                       '#f))
                    __obj171754))
                 (__tmp171764
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170594%_ _%stx170585%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171764
             gxc#current-compile-method
             _%self170594%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords170601%_ . _%args170602%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords170601%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170601%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170601%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170601%_
                  'slots:
                  absent-value))
               _%args170602%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args170576170608%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args170576170608%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171766 (list gxc#::basic-xform-expression::t))
            (__tmp171765 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171766
         '(receiver klass methods slots)
         __tmp171765
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args170569%_
        (apply make-instance gxc#::subst-object-refs::t _%$args170569%_)))
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
      (let ((__tmp171767
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
        (__make-promise __tmp171767)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords170531%_
               _%receiver170525170532%_
               _%klass170526170534%_
               _%methods170527170536%_
               _%slots170528170538%_
               _%stx170540%_)
        (let* ((_%receiver170543%_
                (if (eq? _%receiver170525170532%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170525170532%_))
               (_%klass170545%_
                (if (eq? _%klass170526170534%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass170526170534%_))
               (_%methods170547%_
                (if (eq? _%methods170527170536%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170527170536%_))
               (_%slots170549%_
                (if (eq? _%slots170528170538%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170528170538%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self170551%_
                  (let ((__obj171756
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
                       __obj171756
                       _%receiver170543%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171756
                       _%klass170545%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171756
                       _%methods170547%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171756
                       _%slots170549%_
                       '4
                       '#f
                       '#f))
                    __obj171756))
                 (__tmp171768
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170551%_ _%stx170540%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171768
             gxc#current-compile-method
             _%self170551%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords170558%_ . _%args170559%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords170558%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170558%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170558%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170558%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170558%_
                  'slots:
                  absent-value))
               _%args170559%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args170529170565%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args170529170565%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167706%_ _%stx167707%_)
        (letrec ((_%generate-method-bind167709%_
                  (lambda (_%$klass170517%_
                           _%$method-table170518%_
                           _%id170519%_
                           _%$id170520%_)
                    (let ((_%$tmp170522%_
                           (let ((__tmp171769
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171769))))
                      (cons (cons _%$id170520%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp170522%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table170518%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id170519%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
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
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id170519%_
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
                 (_%generate-slot-bind167710%_
                  (lambda (_%$klass170511%_ _%id170512%_ _%$id170513%_)
                    (let ((_%$tmp170515%_
                           (let ((__tmp171770
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171770))))
                      (cons (cons _%$id170513%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp170515%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass170511%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id170512%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp170515%_ '()))
                        (cons (cons '%#ref (cons _%$tmp170515%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id170512%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167711%_
                  (lambda (_%$klass170505%_
                           _%$method-table170506%_
                           _%methods-bind170507%_
                           _%slots-bind170508%_
                           _%specializer-impl170509%_)
                    (let ((__tmp171771
                           (cons '%#lambda
                                 (cons (cons _%$klass170505%_
                                             (cons _%$method-table170506%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind170508%_
                                                            _%methods-bind170507%_))
                                                         (cons _%specializer-impl170509%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171771 _%stx167707%_))))
                 (_%generate-specializer-def167712%_
                  (lambda (_%id170501%_
                           _%specializer-id170502%_
                           _%specializer-impl170503%_)
                    (let ((__tmp171772
                           (cons '%#begin
                                 (cons _%stx167707%_
                                       (cons (let ((__tmp171773
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id170502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl170503%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171773
                                                _%stx167707%_))
                                             (cons (let ((__tmp171774
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id170501%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id170502%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171774
                                                      _%stx167707%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171772 _%stx167707%_)))))
          (let* ((_%__stx170712170713%_ _%stx167707%_)
                 (_%g167715167735%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170712170713%_)))))
            (let ((_%__kont170714170715%_
                   (lambda (_%L167779%_ _%L167780%_)
                     (let ((_%method-calls167799%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167800%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167801%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167803%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167799%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167800%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167779%_))
                             (let* ((_%__stx170626170627%_ _%L167779%_)
                                    (_%g168191168209%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx170626170627%_)))))
                               (let ((_%__kont170628170629%_
                                      (lambda (_%L168245%_
                                               _%L168246%_
                                               _%L168247%_)
                                        (for-each
                                         (lambda (_%g168263168265%_)
                                           (gxc#apply-collect-object-refs__%
                                            '#f
                                            _%L168247%_
                                            _%method-calls167799%_
                                            _%slot-refs167800%_
                                            _%g168263168265%_))
                                         _%L168245%_)
                                        (if (_%no-specializer?167803%_)
                                            _%stx167707%_
                                            (let* ((_%specializer-id168274%_
                                                    (let* ((_%id168268%_
                                                            (let ((__tmp171775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%L167780%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp171775 '"::specialize")))
                   (_%specializer-id168271%_
                    (let ((__tmp171776
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _%stx167707%_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _%id168268%_ __tmp171776))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _%specializer-id168271%_))
              _%specializer-id168271%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$klass168276%_
                                                    (let ((__tmp171777
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__klass))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171777)))
                                                   (_%$method-table168278%_
                                                    (let ((__tmp171778
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__method-table))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171778)))
                                                   (_%methods168280%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%method-calls167799%_)))
                                                   (_%$methods168284%_
                                                    (map (lambda (_%id168282%_)
                                                           (let ((__tmp171779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168282%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171779)))
                 _%methods168280%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168293%_
                                                    (for-each
                                                     (lambda (_%g168285168288%_
                                                              _%g168286168290%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%method-calls167799%_
                                                          _%g168285168288%_
                                                          _%g168286168290%_)))
                                                     _%methods168280%_
                                                     _%$methods168284%_))
                                                   (_%methods-bind168303%_
                                                    (map (lambda (_%g168295168298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168296168300%_)
                   (_%generate-method-bind167709%_
                    _%$klass168276%_
                    _%$method-table168278%_
                    _%g168295168298%_
                    _%g168296168300%_))
                 _%methods168280%_
                 _%$methods168284%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%slots168305%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%slot-refs167800%_)))
                                                   (_%$slots168309%_
                                                    (map (lambda (_%id168307%_)
                                                           (let ((__tmp171780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168307%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171780)))
                 _%slots168305%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168318%_
                                                    (for-each
                                                     (lambda (_%g168310168313%_
                                                              _%g168311168315%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%slot-refs167800%_
                                                          _%g168310168313%_
                                                          _%g168311168315%_)))
                                                     _%slots168305%_
                                                     _%$slots168309%_))
                                                   (_%slots-bind168327%_
                                                    (map (lambda (_%g168319168322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168320168324%_)
                   (_%generate-slot-bind167710%_
                    _%$klass168276%_
                    _%g168319168322%_
                    _%g168320168324%_))
                 _%slots168305%_
                 _%$slots168309%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-body168333%_
                                                    (map (lambda (_%g168328168330%_)
                                                           (gxc#apply-subst-object-refs__%
                                                            '#f
                                                            _%L168247%_
                                                            _%$klass168276%_
                                                            _%method-calls167799%_
                                                            _%slot-refs167800%_
                                                            _%g168328168330%_))
                                                         _%L168245%_))
                                                   (_%specializer-impl168335%_
                                                    (let ((__tmp171781
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons _%L168247%_ _%L168246%_)
                               _%specializer-body168333%_))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp171781 _%stx167707%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-impl168337%_
                                                    (_%generate-specializer-impl167711%_
                                                     _%$klass168276%_
                                                     _%$method-table168278%_
                                                     _%methods-bind168303%_
                                                     _%slots-bind168327%_
                                                     _%specializer-impl168335%_)))
                                              (let ((__tmp171783
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L167780%_)))
                                                    (__tmp171782
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%specializer-id168274%_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp171783
                                                 '" => "
                                                 __tmp171782))
                                              (_%generate-specializer-def167712%_
                                               _%L167780%_
                                               _%specializer-id168274%_
                                               _%specializer-impl168337%_)))))
                                     (_%__kont170630170631%_
                                      (lambda () _%stx167707%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx170626170627%_))
                                     (let ((_%e168196168221%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx170626170627%_))))
                                       (let ((_%tl168198168226%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168196168221%_)))
                                             (_%hd168197168224%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168196168221%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168198168226%_))
                                             (let ((_%e168199168229%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168198168226%_))))
                                               (let ((_%tl168201168234%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168199168229%_)))
                                                     (_%hd168200168232%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168199168229%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd168200168232%_))
                                                     (let ((_%e168202168237%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd168200168232%_))))
                                                       (let ((_%tl168204168242%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168202168237%_)))
                     (_%hd168203168240%_
                      (let () (declare (not safe)) (##car _%e168202168237%_))))
                 (_%__kont170628170629%_
                  _%tl168201168234%_
                  _%tl168204168242%_
                  _%hd168203168240%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont170630170631%_))))
                                             (_%__kont170630170631%_))))
                                     (_%__kont170630170631%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167779%_))
                                 (let* ((_%g168344168363%_
                                         (lambda (_%g168345168360%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g168345168360%_))))
                                        (_%g168343168650%_
                                         (lambda (_%g168345168366%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g168345168366%_))
                                               (let ((_%e168347168368%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g168345168366%_))))
                                                 (let ((_%hd168348168371%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e168347168368%_)))
                                                       (_%tl168349168373%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e168347168368%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl168349168373%_))
                                                       (let ((_g171784_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl168349168373%_ '0))))
                 (begin
                   (let ((_g171785_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g171784_)
                                (##vector-length _g171784_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g171785_ 2)))
                         (error "Context expects 2 values" _g171785_)))
                   (let ((_%target168350168376%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171784_ 0)))
                         (_%tl168352168378%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171784_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168352168378%_))
                         (letrec ((_%loop168353168381%_
                                   (lambda (_%hd168351168384%_
                                            _%clause168357168386%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168351168384%_))
                                         (let ((_%e168354168389%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168351168384%_))))
                                           (let ((_%lp-hd168355168392%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168354168389%_)))
                                                 (_%lp-tl168356168394%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168354168389%_))))
                                             (_%loop168353168381%_
                                              _%lp-tl168356168394%_
                                              (cons _%lp-hd168355168392%_
                                                    _%clause168357168386%_))))
                                         (let ((_%clause168358168397%_
                                                (reverse _%clause168357168386%_)))
                                           ((lambda (_%L168400%_)
                                              (for-each
                                               (lambda (_%clause168414%_)
                                                 (let* ((_%__stx170652170653%_
                                                         _%clause168414%_)
                                                        (_%g168417168432%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx170652170653%_)))))
                                                   (let ((_%__kont170654170655%_
                                                          (lambda (_%L168460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L168461%_
                           _%L168462%_)
                    (for-each
                     (lambda (_%g168477168479%_)
                       (gxc#apply-collect-object-refs__%
                        '#f
                        _%L168462%_
                        _%method-calls167799%_
                        _%slot-refs167800%_
                        _%g168477168479%_))
                     _%L168460%_)))
                 (_%__kont170656170657%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx170652170653%_))
                                                         (let ((_%e168422168444%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx170652170653%_))))
                   (let ((_%tl168424168449%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168422168444%_)))
                         (_%hd168423168447%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168422168444%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd168423168447%_))
                         (let ((_%e168425168452%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd168423168447%_))))
                           (let ((_%tl168427168457%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e168425168452%_)))
                                 (_%hd168426168455%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e168425168452%_))))
                             (_%__kont170654170655%_
                              _%tl168424168449%_
                              _%tl168427168457%_
                              _%hd168426168455%_)))
                         (_%__kont170656170657%_))))
                 (_%__kont170656170657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp171786
                                                      (lambda (_%g168484168487%_
                                                               _%g168485168489%_)
                                                        (cons _%g168484168487%_
                                                              _%g168485168489%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171786
                                                  '()
                                                  _%L168400%_)))
                                              (if (_%no-specializer?167803%_)
                                                  _%stx167707%_
                                                  (let* ((_%specializer-id168498%_
                                                          (let* ((_%id168492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171787
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167780%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171787 '"::specialize")))
                         (_%specializer-id168495%_
                          (let ((__tmp171788
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167707%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id168492%_
                             __tmp171788))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id168495%_))
                    _%specializer-id168495%_))
                 (_%$klass168500%_
                  (let ((__tmp171789
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171789)))
                 (_%$method-table168502%_
                  (let ((__tmp171790
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171790)))
                 (_%methods168504%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167799%_)))
                 (_%$methods168508%_
                  (map (lambda (_%id168506%_)
                         (let ((__tmp171791 (gensym _%id168506%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171791)))
                       _%methods168504%_))
                 (_%_168517%_
                  (for-each
                   (lambda (_%g168509168512%_ _%g168510168514%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167799%_
                        _%g168509168512%_
                        _%g168510168514%_)))
                   _%methods168504%_
                   _%$methods168508%_))
                 (_%methods-bind168527%_
                  (map (lambda (_%g168519168522%_ _%g168520168524%_)
                         (_%generate-method-bind167709%_
                          _%$klass168500%_
                          _%$method-table168502%_
                          _%g168519168522%_
                          _%g168520168524%_))
                       _%methods168504%_
                       _%$methods168508%_))
                 (_%slots168529%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167800%_)))
                 (_%$slots168533%_
                  (map (lambda (_%id168531%_)
                         (let ((__tmp171792 (gensym _%id168531%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171792)))
                       _%slots168529%_))
                 (_%_168542%_
                  (for-each
                   (lambda (_%g168534168537%_ _%g168535168539%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167800%_
                        _%g168534168537%_
                        _%g168535168539%_)))
                   _%slots168529%_
                   _%$slots168533%_))
                 (_%slots-bind168551%_
                  (map (lambda (_%g168543168546%_ _%g168544168548%_)
                         (_%generate-slot-bind167710%_
                          _%$klass168500%_
                          _%g168543168546%_
                          _%g168544168548%_))
                       _%slots168529%_
                       _%$slots168533%_))
                 (_%specializer-clauses168643%_
                  (map (lambda (_%clause168553%_)
                         (let* ((_%__stx170672170673%_ _%clause168553%_)
                                (_%g168556168571%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx170672170673%_)))))
                           (let ((_%__kont170674170675%_
                                  (lambda (_%L168599%_ _%L168600%_ _%L168601%_)
                                    (let ((_%body168631%_
                                           (map (lambda (_%g168626168628%_)
                                                  (gxc#apply-subst-object-refs__%
                                                   '#f
                                                   _%L168601%_
                                                   _%$klass168500%_
                                                   _%method-calls167799%_
                                                   _%slot-refs167800%_
                                                   _%g168626168628%_))
                                                _%L168599%_)))
                                      (cons (cons _%L168601%_ _%L168600%_)
                                            _%body168631%_))))
                                 (_%__kont170676170677%_
                                  (lambda () _%clause168553%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx170672170673%_))
                                 (let ((_%e168561168583%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx170672170673%_))))
                                   (let ((_%tl168563168588%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168561168583%_)))
                                         (_%hd168562168586%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168561168583%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168562168586%_))
                                         (let ((_%e168564168591%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168562168586%_))))
                                           (let ((_%tl168566168596%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168564168591%_)))
                                                 (_%hd168565168594%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168564168591%_))))
                                             (_%__kont170674170675%_
                                              _%tl168563168588%_
                                              _%tl168566168596%_
                                              _%hd168565168594%_)))
                                         (_%__kont170676170677%_))))
                                 (_%__kont170676170677%_)))))
                       (let ((__tmp171793
                              (lambda (_%g168635168638%_ _%g168636168640%_)
                                (cons _%g168635168638%_ _%g168636168640%_))))
                         (declare (not safe))
                         (__foldr1 __tmp171793 '() _%L168400%_))))
                 (_%specializer-impl168645%_
                  (let ((__tmp171794
                         (cons '%#case-lambda _%specializer-clauses168643%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171794 _%stx167707%_)))
                 (_%specializer-impl168647%_
                  (_%generate-specializer-impl167711%_
                   _%$klass168500%_
                   _%$method-table168502%_
                   _%methods-bind168527%_
                   _%slots-bind168551%_
                   _%specializer-impl168645%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171796
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167780%_)))
                                                          (__tmp171795
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id168498%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171796
                                                       '" => "
                                                       __tmp171795))
                                                    (_%generate-specializer-def167712%_
                                                     _%L167780%_
                                                     _%specializer-id168498%_
                                                     _%specializer-impl168647%_))))
                                            _%clause168358168397%_))))))
                           (_%loop168353168381%_ _%target168350168376%_ '()))
                         (_%g168344168363%_ _%g168345168366%_)))))
               (_%g168344168363%_ _%g168345168366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g168344168363%_
                                                _%g168345168366%_)))))
                                   (_%g168343168650%_ _%L167779%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167779%_))
                                     (let* ((_%g168654168684%_
                                             (lambda (_%g168655168681%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g168655168681%_))))
                                            (_%g168653169293%_
                                             (lambda (_%g168655168687%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g168655168687%_))
                                                   (let ((_%e168659168689%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g168655168687%_))))
                                                     (let ((_%hd168660168692%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e168659168689%_)))
                                                           (_%tl168661168694%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e168659168689%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl168661168694%_))
                                                           (let ((_%e168662168697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl168661168694%_))))
                     (let ((_%hd168663168700%_
                            (let ()
                              (declare (not safe))
                              (##car _%e168662168697%_)))
                           (_%tl168664168702%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e168662168697%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd168663168700%_))
                           (let ((_%e168665168705%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd168663168700%_))))
                             (let ((_%hd168666168708%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e168665168705%_)))
                                   (_%tl168667168710%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e168665168705%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd168666168708%_))
                                   (let ((_%e168668168713%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd168666168708%_))))
                                     (let ((_%hd168669168716%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e168668168713%_)))
                                           (_%tl168670168718%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e168668168713%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd168669168716%_))
                                           (let ((_%e168671168721%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd168669168716%_))))
                                             (let ((_%hd168672168724%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e168671168721%_)))
                                                   (_%tl168673168726%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e168671168721%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl168673168726%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl168670168718%_))
                                                       (let ((_%e168674168729%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl168670168718%_))))
                 (let ((_%hd168675168732%_
                        (let ()
                          (declare (not safe))
                          (##car _%e168674168729%_)))
                       (_%tl168676168734%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e168674168729%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl168676168734%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl168667168710%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl168664168702%_))
                               (let ((_%e168677168737%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl168664168702%_))))
                                 (let ((_%hd168678168740%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e168677168737%_)))
                                       (_%tl168679168742%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e168677168737%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl168679168742%_))
                                       ((lambda (_%L168745%_
                                                 _%L168746%_
                                                 _%L168747%_)
                                          (let* ((_%g168771168789%_
                                                  (lambda (_%g168772168786%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168772168786%_))))
                                                 (_%g168770168840%_
                                                  (lambda (_%g168772168792%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168772168792%_))
                                                        (let ((_%e168776168794%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168772168792%_))))
                  (let ((_%hd168777168797%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168776168794%_)))
                        (_%tl168778168799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168776168794%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl168778168799%_))
                        (let ((_%e168779168802%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168778168799%_))))
                          (let ((_%hd168780168805%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168779168802%_)))
                                (_%tl168781168807%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168779168802%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd168780168805%_))
                                (let ((_%e168782168810%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd168780168805%_))))
                                  (let ((_%hd168783168813%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168782168810%_)))
                                        (_%tl168784168815%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168782168810%_))))
                                    ((lambda (_%L168818%_
                                              _%L168819%_
                                              _%L168820%_)
                                       (for-each
                                        (lambda (_%g168835168837%_)
                                          (gxc#apply-collect-object-refs__%
                                           '#f
                                           _%L168820%_
                                           _%method-calls167799%_
                                           _%slot-refs167800%_
                                           _%g168835168837%_))
                                        _%L168818%_))
                                     _%tl168781168807%_
                                     _%tl168784168815%_
                                     _%hd168783168813%_)))
                                (_%g168771168789%_ _%g168772168792%_))))
                        (_%g168771168789%_ _%g168772168792%_))))
                (_%g168771168789%_ _%g168772168792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168770168840%_ _%L168746%_))
                                          (let* ((_%g168843168862%_
                                                  (lambda (_%g168844168859%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168844168859%_))))
                                                 (_%g168842168981%_
                                                  (lambda (_%g168844168865%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168844168865%_))
                                                        (let ((_%e168846168867%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168844168865%_))))
                  (let ((_%hd168847168870%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168846168867%_)))
                        (_%tl168848168872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168846168867%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl168848168872%_))
                        (let ((_g171797_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl168848168872%_
                                  '0))))
                          (begin
                            (let ((_g171798_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g171797_)
                                         (##vector-length _g171797_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g171798_ 2)))
                                  (error "Context expects 2 values"
                                         _g171798_)))
                            (let ((_%target168849168875%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171797_ 0)))
                                  (_%tl168851168877%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171797_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168851168877%_))
                                  (letrec ((_%loop168852168880%_
                                            (lambda (_%hd168850168883%_
                                                     _%clause168856168885%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168850168883%_))
                                                  (let ((_%e168853168888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168850168883%_))))
                                                    (let ((_%lp-hd168854168891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168853168888%_)))
                                                          (_%lp-tl168855168893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168853168888%_))))
                                                      (_%loop168852168880%_
                                                       _%lp-tl168855168893%_
                                                       (cons _%lp-hd168854168891%_
                                                             _%clause168856168885%_))))
                                                  (let ((_%clause168857168896%_
                                                         (reverse _%clause168856168885%_)))
                                                    ((lambda (_%L168899%_)
                                                       (for-each
                                                        (lambda (_%clause168912%_)
                                                          (let* ((_%g168914168929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g168915168926%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g168915168926%_))))
                         (_%g168913168971%_
                          (lambda (_%g168915168932%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g168915168932%_))
                                (let ((_%e168919168934%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g168915168932%_))))
                                  (let ((_%hd168920168937%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168919168934%_)))
                                        (_%tl168921168939%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168919168934%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd168920168937%_))
                                        (let ((_%e168922168942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd168920168937%_))))
                                          (let ((_%hd168923168945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168922168942%_)))
                                                (_%tl168924168947%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168922168942%_))))
                                            ((lambda (_%L168950%_
                                                      _%L168951%_
                                                      _%L168952%_)
                                               (for-each
                                                (lambda (_%g168966168968%_)
                                                  (gxc#apply-collect-object-refs__%
                                                   '#f
                                                   _%L168952%_
                                                   _%method-calls167799%_
                                                   _%slot-refs167800%_
                                                   _%g168966168968%_))
                                                _%L168950%_))
                                             _%tl168921168939%_
                                             _%tl168924168947%_
                                             _%hd168923168945%_)))
                                        (_%g168914168929%_
                                         _%g168915168932%_))))
                                (_%g168914168929%_ _%g168915168932%_)))))
                    (_%g168913168971%_ _%clause168912%_)))
                (let ((__tmp171799
                       (lambda (_%g168973168976%_ _%g168974168978%_)
                         (cons _%g168973168976%_ _%g168974168978%_))))
                  (declare (not safe))
                  (__foldr1 __tmp171799 '() _%L168899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause168857168896%_))))))
                                    (_%loop168852168880%_
                                     _%target168849168875%_
                                     '()))
                                  (_%g168843168862%_ _%g168844168865%_)))))
                        (_%g168843168862%_ _%g168844168865%_))))
                (_%g168843168862%_ _%g168844168865%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168842168981%_ _%L168745%_))
                                          (if (_%no-specializer?167803%_)
                                              _%stx167707%_
                                              (let* ((_%specializer-id168990%_
                                                      (let* ((_%id168984%_
                                                              (let ((__tmp171800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167780%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171800 '"::specialize")))
                     (_%specializer-id168987%_
                      (let ((__tmp171801
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167707%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id168984%_ __tmp171801))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id168987%_))
                _%specializer-id168987%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass168992%_
                                                      (let ((__tmp171802
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171802)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table168994%_
                                                      (let ((__tmp171803
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171803)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods168996%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167799%_)))
                                                     (_%$methods169000%_
                                                      (map (lambda (_%id168998%_)
                                                             (let ((__tmp171804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168998%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171804)))
                   _%methods168996%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169009%_
                                                      (for-each
                                                       (lambda (_%g169001169004%_
                                                                _%g169002169006%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167799%_
                                                            _%g169001169004%_
                                                            _%g169002169006%_)))
                                                       _%methods168996%_
                                                       _%$methods169000%_))
                                                     (_%methods-bind169019%_
                                                      (map (lambda (_%g169011169014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169012169016%_)
                     (_%generate-method-bind167709%_
                      _%$klass168992%_
                      _%$method-table168994%_
                      _%g169011169014%_
                      _%g169012169016%_))
                   _%methods168996%_
                   _%$methods169000%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots169021%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167800%_)))
                                                     (_%$slots169025%_
                                                      (map (lambda (_%id169023%_)
                                                             (let ((__tmp171805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169023%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171805)))
                   _%slots169021%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169034%_
                                                      (for-each
                                                       (lambda (_%g169026169029%_
                                                                _%g169027169031%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167800%_
                                                            _%g169026169029%_
                                                            _%g169027169031%_)))
                                                       _%slots169021%_
                                                       _%$slots169025%_))
                                                     (_%slots-bind169043%_
                                                      (map (lambda (_%g169035169038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169036169040%_)
                     (_%generate-slot-bind167710%_
                      _%$klass168992%_
                      _%g169035169038%_
                      _%g169036169040%_))
                   _%slots169021%_
                   _%$slots169025%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr169129%_
                                                      (let* ((_%g169045169063%_
                                                              (lambda (_%g169046169060%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169046169060%_))))
                     (_%g169044169126%_
                      (lambda (_%g169046169066%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169046169066%_))
                            (let ((_%e169050169068%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169046169066%_))))
                              (let ((_%hd169051169071%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169050169068%_)))
                                    (_%tl169052169073%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169050169068%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169052169073%_))
                                    (let ((_%e169053169076%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169052169073%_))))
                                      (let ((_%hd169054169079%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169053169076%_)))
                                            (_%tl169055169081%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169053169076%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169054169079%_))
                                            (let ((_%e169056169084%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169054169079%_))))
                                              (let ((_%hd169057169087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169056169084%_)))
                                                    (_%tl169058169089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169056169084%_))))
                                                ((lambda (_%L169092%_
                                                          _%L169093%_
                                                          _%L169094%_)
                                                   (let* ((_%body169124%_
                                                           (map (lambda (_%g169119169121%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%L169094%_
                           _%$klass168992%_
                           _%method-calls167799%_
                           _%slot-refs167800%_
                           _%g169119169121%_))
                        _%L169092%_))
                  (__tmp171806
                   (cons '%#lambda
                         (cons (cons _%L169094%_ _%L169093%_)
                               _%body169124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171806
                                                      _%L168746%_)))
                                                 _%tl169055169081%_
                                                 _%tl169058169089%_
                                                 _%hd169057169087%_)))
                                            (_%g169045169063%_
                                             _%g169046169066%_))))
                                    (_%g169045169063%_ _%g169046169066%_))))
                            (_%g169045169063%_ _%g169046169066%_)))))
                (_%g169044169126%_ _%L168746%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr169286%_
                                                      (let* ((_%g169131169150%_
                                                              (lambda (_%g169132169147%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169132169147%_))))
                     (_%g169130169283%_
                      (lambda (_%g169132169153%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169132169153%_))
                            (let ((_%e169134169155%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169132169153%_))))
                              (let ((_%hd169135169158%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169134169155%_)))
                                    (_%tl169136169160%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169134169155%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169136169160%_))
                                    (let ((_g171807_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl169136169160%_
                                              '0))))
                                      (begin
                                        (let ((_g171808_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g171807_)
                                                     (##vector-length
                                                      _g171807_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g171808_ 2)))
                                              (error "Context expects 2 values"
                                                     _g171808_)))
                                        (let ((_%target169137169163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171807_ 0)))
                                              (_%tl169139169165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171807_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169139169165%_))
                                              (letrec ((_%loop169140169168%_
                                                        (lambda (_%hd169138169171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause169144169173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169138169171%_))
                      (let ((_%e169141169176%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169138169171%_))))
                        (let ((_%lp-hd169142169179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169141169176%_)))
                              (_%lp-tl169143169181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169141169176%_))))
                          (_%loop169140169168%_
                           _%lp-tl169143169181%_
                           (cons _%lp-hd169142169179%_
                                 _%clause169144169173%_))))
                      (let ((_%clause169145169184%_
                             (reverse _%clause169144169173%_)))
                        ((lambda (_%L169187%_)
                           (let* ((_%clauses169281%_
                                   (map (lambda (_%clause169201%_)
                                          (let* ((_%__stx170692170693%_
                                                  _%clause169201%_)
                                                 (_%g169204169219%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx170692170693%_)))))
                                            (let ((_%__kont170694170695%_
                                                   (lambda (_%L169247%_
                                                            _%L169248%_
                                                            _%L169249%_)
                                                     (let ((_%body169269%_
                                                            (map (lambda (_%g169264169266%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%L169249%_
                            _%$klass168992%_
                            _%method-calls167799%_
                            _%slot-refs167800%_
                            _%g169264169266%_))
                         _%L169247%_)))
               (cons (cons _%L169249%_ _%L169248%_) _%body169269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170696170697%_
                                                   (lambda ()
                                                     _%clause169201%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx170692170693%_))
                                                  (let ((_%e169209169231%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx170692170693%_))))
                                                    (let ((_%tl169211169236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169209169231%_)))
                                                          (_%hd169210169234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169209169231%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169210169234%_))
                                                          (let ((_%e169212169239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169210169234%_))))
                    (let ((_%tl169214169244%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169212169239%_)))
                          (_%hd169213169242%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169212169239%_))))
                      (_%__kont170694170695%_
                       _%tl169211169236%_
                       _%tl169214169244%_
                       _%hd169213169242%_)))
                  (_%__kont170696170697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170696170697%_)))))
                                        (let ((__tmp171809
                                               (lambda (_%g169273169276%_
                                                        _%g169274169278%_)
                                                 (cons _%g169273169276%_
                                                       _%g169274169278%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp171809
                                           '()
                                           _%L169187%_))))
                                  (__tmp171810
                                   (cons '%#case-lambda _%clauses169281%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171810 _%L168745%_)))
                         _%clause169145169184%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169140169168%_
                                                 _%target169137169163%_
                                                 '()))
                                              (_%g169131169150%_
                                               _%g169132169153%_)))))
                                    (_%g169131169150%_ _%g169132169153%_))))
                            (_%g169131169150%_ _%g169132169153%_)))))
                (_%g169130169283%_ _%L168745%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169288%_
                                                      (let ((__tmp171811
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L168747%_ '())
                                             (cons _%specializer-lambda-expr169129%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr169286%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171811 _%stx167707%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169290%_
                                                      (_%generate-specializer-impl167711%_
                                                       _%$klass168992%_
                                                       _%$method-table168994%_
                                                       _%methods-bind169019%_
                                                       _%slots-bind169043%_
                                                       _%specializer-impl169288%_)))
                                                (let ((__tmp171813
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167780%_)))
                                                      (__tmp171812
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id168990%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171813
                                                   '" => "
                                                   __tmp171812))
                                                (_%generate-specializer-def167712%_
                                                 _%L167780%_
                                                 _%specializer-id168990%_
                                                 _%specializer-impl169290%_))))
                                        _%hd168678168740%_
                                        _%hd168675168732%_
                                        _%hd168672168724%_)
                                       (_%g168654168684%_ _%g168655168687%_))))
                               (_%g168654168684%_ _%g168655168687%_))
                           (_%g168654168684%_ _%g168655168687%_))
                       (_%g168654168684%_ _%g168655168687%_))))
               (_%g168654168684%_ _%g168655168687%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168654168684%_
                                                    _%g168655168687%_))))
                                           (_%g168654168684%_
                                            _%g168655168687%_))))
                                   (_%g168654168684%_ _%g168655168687%_))))
                           (_%g168654168684%_ _%g168655168687%_))))
                   (_%g168654168684%_ _%g168655168687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168654168684%_
                                                    _%g168655168687%_)))))
                                       (_%g168653169293%_ _%L167779%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167779%_))
                                         (let* ((_%g169297169350%_
                                                 (lambda (_%g169298169347%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169298169347%_))))
                                                (_%g169296170493%_
                                                 (lambda (_%g169298169353%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169298169353%_))
                                                       (let ((_%e169304169355%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169298169353%_))))
                 (let ((_%hd169305169358%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169304169355%_)))
                       (_%tl169306169360%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169304169355%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd169305169358%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd169305169358%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl169306169360%_))
                               (let ((_%e169307169363%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl169306169360%_))))
                                 (let ((_%hd169308169366%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169307169363%_)))
                                       (_%tl169309169368%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169307169363%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169308169366%_))
                                       (let ((_%e169310169371%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169308169366%_))))
                                         (let ((_%hd169311169374%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169310169371%_)))
                                               (_%tl169312169376%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169310169371%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169311169374%_))
                                               (let ((_%e169313169379%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169311169374%_))))
                                                 (let ((_%hd169314169382%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169313169379%_)))
                                                       (_%tl169315169384%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169313169379%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd169314169382%_))
                                                       (let ((_%e169316169387%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd169314169382%_))))
                 (let ((_%hd169317169390%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169316169387%_)))
                       (_%tl169318169392%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169316169387%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl169318169392%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169315169384%_))
                           (let ((_%e169319169395%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169315169384%_))))
                             (let ((_%hd169320169398%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169319169395%_)))
                                   (_%tl169321169400%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169319169395%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169320169398%_))
                                   (let ((_%e169322169403%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169320169398%_))))
                                     (let ((_%hd169323169406%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169322169403%_)))
                                           (_%tl169324169408%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169322169403%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd169323169406%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd169323169406%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl169324169408%_))
                                                   (let ((_%e169325169411%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl169324169408%_))))
                                                     (let ((_%hd169326169414%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169325169411%_)))
                                                           (_%tl169327169416%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169325169411%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd169326169414%_))
                                                           (let ((_%e169328169419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd169326169414%_))))
                     (let ((_%hd169329169422%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169328169419%_)))
                           (_%tl169330169424%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169328169419%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169329169422%_))
                           (let ((_%e169331169427%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169329169422%_))))
                             (let ((_%hd169332169430%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169331169427%_)))
                                   (_%tl169333169432%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169331169427%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169332169430%_))
                                   (let ((_%e169334169435%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169332169430%_))))
                                     (let ((_%hd169335169438%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169334169435%_)))
                                           (_%tl169336169440%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169334169435%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169336169440%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl169333169432%_))
                                               (let ((_%e169337169443%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl169333169432%_))))
                                                 (let ((_%hd169338169446%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169337169443%_)))
                                                       (_%tl169339169448%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169337169443%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169339169448%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169330169424%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169327169416%_))
                       (let ((_%e169340169451%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169327169416%_))))
                         (let ((_%hd169341169454%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169340169451%_)))
                               (_%tl169342169456%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169340169451%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169342169456%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169321169400%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl169312169376%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl169309169368%_))
                                           (let ((_%e169343169459%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl169309169368%_))))
                                             (let ((_%hd169344169462%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169343169459%_)))
                                                   (_%tl169345169464%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169343169459%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl169345169464%_))
                                                   ((lambda (_%L169467%_
                                                             _%L169468%_
                                                             _%L169469%_
                                                             _%L169470%_
                                                             _%L169471%_)
                                                      (let* ((_%g169511169573%_
                                                              (lambda (_%g169512169570%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169512169570%_))))
                     (_%g169510170490%_
                      (lambda (_%g169512169576%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169512169576%_))
                            (let ((_%e169518169578%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169512169576%_))))
                              (let ((_%hd169519169581%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169518169578%_)))
                                    (_%tl169520169583%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169518169578%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169519169581%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd169519169581%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169520169583%_))
                                            (let ((_%e169521169586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169520169583%_))))
                                              (let ((_%hd169522169589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169521169586%_)))
                                                    (_%tl169523169591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169521169586%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169523169591%_))
                                                    (let ((_%e169524169594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169523169591%_))))
                                                      (let ((_%hd169525169597%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169524169594%_)))
                    (_%tl169526169599%_
                     (let () (declare (not safe)) (##cdr _%e169524169594%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd169525169597%_))
                    (let ((_%e169527169602%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169525169597%_))))
                      (let ((_%hd169528169605%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169527169602%_)))
                            (_%tl169529169607%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169527169602%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd169528169605%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd169528169605%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169529169607%_))
                                    (let ((_%e169530169610%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169529169607%_))))
                                      (let ((_%hd169531169613%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169530169610%_)))
                                            (_%tl169532169615%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169530169610%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169531169613%_))
                                            (let ((_%e169533169618%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169531169613%_))))
                                              (let ((_%hd169534169621%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169533169618%_)))
                                                    (_%tl169535169623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169533169618%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169534169621%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169534169621%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169535169623%_))
                                                            (let ((_%e169536169626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169535169623%_))))
                      (let ((_%hd169537169629%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169536169626%_)))
                            (_%tl169538169631%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169536169626%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169538169631%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169532169615%_))
                                (let ((_%e169539169634%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169532169615%_))))
                                  (let ((_%hd169540169637%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169539169634%_)))
                                        (_%tl169541169639%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169539169634%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169540169637%_))
                                        (let ((_%e169542169642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169540169637%_))))
                                          (let ((_%hd169543169645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169542169642%_)))
                                                (_%tl169544169647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169542169642%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd169543169645%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd169543169645%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169544169647%_))
                                                        (let ((_%e169545169650%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169544169647%_))))
                  (let ((_%hd169546169653%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169545169650%_)))
                        (_%tl169547169655%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169545169650%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169547169655%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169541169639%_))
                            (let ((_%e169548169658%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169541169639%_))))
                              (let ((_%hd169549169661%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169548169658%_)))
                                    (_%tl169550169663%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169548169658%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169549169661%_))
                                    (let ((_%e169551169666%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169549169661%_))))
                                      (let ((_%hd169552169669%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169551169666%_)))
                                            (_%tl169553169671%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169551169666%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169552169669%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169552169669%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169553169671%_))
                                                    (let ((_%e169554169674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169553169671%_))))
                                                      (let ((_%hd169555169677%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169554169674%_)))
                    (_%tl169556169679%_
                     (let () (declare (not safe)) (##cdr _%e169554169674%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169556169679%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl169550169663%_))
                        (if (let ((__tmp171814
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl169550169663%_))))
                              (declare (not safe))
                              (##fx>= __tmp171814 '1))
                            (let ((_g171815_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl169550169663%_
                                      '1))))
                              (begin
                                (let ((_g171816_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g171815_)
                                             (##vector-length _g171815_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g171816_ 2)))
                                      (error "Context expects 2 values"
                                             _g171816_)))
                                (let ((_%target169557169682%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171815_ 0)))
                                      (_%tl169559169684%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171815_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169559169684%_))
                                      (let ((_%e169566169687%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169559169684%_))))
                                        (let ((_%hd169567169690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169566169687%_)))
                                              (_%tl169568169692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169566169687%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169568169692%_))
                                              (letrec ((_%loop169560169695%_
                                                        (lambda (_%hd169558169698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref169564169700%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169558169698%_))
                      (let ((_%e169561169703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169558169698%_))))
                        (let ((_%lp-hd169562169706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169561169703%_)))
                              (_%lp-tl169563169708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169561169703%_))))
                          (_%loop169560169695%_
                           _%lp-tl169563169708%_
                           (cons _%lp-hd169562169706%_
                                 _%kw-ref169564169700%_))))
                      (let ((_%kw-ref169565169711%_
                             (reverse _%kw-ref169564169700%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169526169599%_))
                            ((lambda (_%L169714%_
                                      _%L169715%_
                                      _%L169716%_
                                      _%L169717%_
                                      _%L169718%_)
                               (let* ((_%kw-count169769%_
                                       (length (let ((__tmp171817
                                                      (lambda (_%g169761169764%_
                                                               _%g169762169766%_)
                                                        (cons _%g169761169764%_
                                                              _%g169762169766%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171817
                                                  '()
                                                  _%L169715%_))))
                                      (_%self-index169771%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count169769%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L169469%_))
                                     (let* ((_%g169775169789%_
                                             (lambda (_%g169776169786%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g169776169786%_))))
                                            (_%g169774169906%_
                                             (lambda (_%g169776169792%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g169776169792%_))
                                                   (let ((_%e169779169794%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g169776169792%_))))
                                                     (let ((_%hd169780169797%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169779169794%_)))
                                                           (_%tl169781169799%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169779169794%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169781169799%_))
                                                           (let ((_%e169782169802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169781169799%_))))
                     (let ((_%hd169783169805%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169782169802%_)))
                           (_%tl169784169807%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169782169802%_))))
                       ((lambda (_%L169810%_ _%L169811%_)
                          (let ((_%self169828%_
                                 (list-ref _%L169811%_ _%self-index169771%_)))
                            (for-each
                             (lambda (_%g169829169831%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%self169828%_
                                _%method-calls167799%_
                                _%slot-refs167800%_
                                _%g169829169831%_))
                             _%L169810%_)
                            (if (_%no-specializer?167803%_)
                                _%stx167707%_
                                (let* ((_%specializer-id169840%_
                                        (let* ((_%id169834%_
                                                (let ((__tmp171818
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167780%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp171818
                                                   '"::specialize")))
                                               (_%specializer-id169837%_
                                                (let ((__tmp171819
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx167707%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id169834%_
                                                   __tmp171819))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id169837%_))
                                          _%specializer-id169837%_))
                                       (_%$klass169842%_
                                        (let ((__tmp171820
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171820)))
                                       (_%$method-table169844%_
                                        (let ((__tmp171821
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171821)))
                                       (_%methods169846%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%method-calls167799%_)))
                                       (_%$methods169850%_
                                        (map (lambda (_%id169848%_)
                                               (let ((__tmp171822
                                                      (gensym _%id169848%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171822)))
                                             _%methods169846%_))
                                       (_%_169859%_
                                        (for-each
                                         (lambda (_%g169851169854%_
                                                  _%g169852169856%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%method-calls167799%_
                                              _%g169851169854%_
                                              _%g169852169856%_)))
                                         _%methods169846%_
                                         _%$methods169850%_))
                                       (_%methods-bind169869%_
                                        (map (lambda (_%g169861169864%_
                                                      _%g169862169866%_)
                                               (_%generate-method-bind167709%_
                                                _%$klass169842%_
                                                _%$method-table169844%_
                                                _%g169861169864%_
                                                _%g169862169866%_))
                                             _%methods169846%_
                                             _%$methods169850%_))
                                       (_%slots169871%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%slot-refs167800%_)))
                                       (_%$slots169875%_
                                        (map (lambda (_%id169873%_)
                                               (let ((__tmp171823
                                                      (gensym _%id169873%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171823)))
                                             _%slots169871%_))
                                       (_%_169884%_
                                        (for-each
                                         (lambda (_%g169876169879%_
                                                  _%g169877169881%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%slot-refs167800%_
                                              _%g169876169879%_
                                              _%g169877169881%_)))
                                         _%slots169871%_
                                         _%$slots169875%_))
                                       (_%slots-bind169893%_
                                        (map (lambda (_%g169885169888%_
                                                      _%g169886169890%_)
                                               (_%generate-slot-bind167710%_
                                                _%$klass169842%_
                                                _%g169885169888%_
                                                _%g169886169890%_))
                                             _%slots169871%_
                                             _%$slots169875%_))
                                       (_%specializer-impl169901%_
                                        (let* ((_%specializer-body169899%_
                                                (map (lambda (_%g169894169896%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%self169828%_
                                                        _%$klass169842%_
                                                        _%method-calls167799%_
                                                        _%slot-refs167800%_
                                                        _%g169894169896%_))
                                                     _%L169810%_))
                                               (__tmp171824
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L169471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L169470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp171825
                                   (cons '%#lambda
                                         (cons _%L169811%_
                                               _%specializer-body169899%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp171825 _%L169469%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L169468%_ '())))
                                      '()))
                          '())
                    (cons _%L169467%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp171824
                                           _%stx167707%_)))
                                       (_%specializer-impl169903%_
                                        (_%generate-specializer-impl167711%_
                                         _%$klass169842%_
                                         _%$method-table169844%_
                                         _%methods-bind169869%_
                                         _%slots-bind169893%_
                                         _%specializer-impl169901%_)))
                                  (let ((__tmp171827
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L167780%_)))
                                        (__tmp171826
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id169840%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp171827
                                     '" => "
                                     __tmp171826))
                                  (_%generate-specializer-def167712%_
                                   _%L167780%_
                                   _%specializer-id169840%_
                                   _%specializer-impl169903%_)))))
                        _%tl169784169807%_
                        _%hd169783169805%_)))
                   (_%g169775169789%_ _%g169776169792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169775169789%_
                                                    _%g169776169792%_)))))
                                       (_%g169774169906%_ _%L169469%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L169469%_))
                                         (let* ((_%g169910169940%_
                                                 (lambda (_%g169911169937%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169911169937%_))))
                                                (_%g169909170486%_
                                                 (lambda (_%g169911169943%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169911169943%_))
                                                       (let ((_%e169915169945%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169911169943%_))))
                 (let ((_%hd169916169948%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169915169945%_)))
                       (_%tl169917169950%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169915169945%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169917169950%_))
                       (let ((_%e169918169953%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169917169950%_))))
                         (let ((_%hd169919169956%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169918169953%_)))
                               (_%tl169920169958%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169918169953%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd169919169956%_))
                               (let ((_%e169921169961%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd169919169956%_))))
                                 (let ((_%hd169922169964%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169921169961%_)))
                                       (_%tl169923169966%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169921169961%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169922169964%_))
                                       (let ((_%e169924169969%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169922169964%_))))
                                         (let ((_%hd169925169972%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169924169969%_)))
                                               (_%tl169926169974%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169924169969%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169925169972%_))
                                               (let ((_%e169927169977%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169925169972%_))))
                                                 (let ((_%hd169928169980%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169927169977%_)))
                                                       (_%tl169929169982%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169927169977%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169929169982%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169926169974%_))
                                                           (let ((_%e169930169985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169926169974%_))))
                     (let ((_%hd169931169988%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169930169985%_)))
                           (_%tl169932169990%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169930169985%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169932169990%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169923169966%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl169920169958%_))
                                   (let ((_%e169933169993%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl169920169958%_))))
                                     (let ((_%hd169934169996%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169933169993%_)))
                                           (_%tl169935169998%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169933169993%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169935169998%_))
                                           ((lambda (_%L170001%_
                                                     _%L170002%_
                                                     _%L170003%_)
                                              (let* ((_%g170027170041%_
                                                      (lambda (_%g170028170038%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170028170038%_))))
                                                     (_%g170026170082%_
                                                      (lambda (_%g170028170044%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170028170044%_))
                                                            (let ((_%e170031170046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170028170044%_))))
                      (let ((_%hd170032170049%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170031170046%_)))
                            (_%tl170033170051%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170031170046%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170033170051%_))
                            (let ((_%e170034170054%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170033170051%_))))
                              (let ((_%hd170035170057%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170034170054%_)))
                                    (_%tl170036170059%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170034170054%_))))
                                ((lambda (_%L170062%_ _%L170063%_)
                                   (let ((_%self170076%_
                                          (list-ref
                                           _%L170063%_
                                           _%self-index169771%_)))
                                     (for-each
                                      (lambda (_%g170077170079%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%self170076%_
                                         _%method-calls167799%_
                                         _%slot-refs167800%_
                                         _%g170077170079%_))
                                      _%L170062%_)))
                                 _%tl170036170059%_
                                 _%hd170035170057%_)))
                            (_%g170027170041%_ _%g170028170044%_))))
                    (_%g170027170041%_ _%g170028170044%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170026170082%_
                                                 _%L170002%_))
                                              (let* ((_%g170085170104%_
                                                      (lambda (_%g170086170101%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170086170101%_))))
                                                     (_%g170084170209%_
                                                      (lambda (_%g170086170107%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170086170107%_))
                                                            (let ((_%e170088170109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170086170107%_))))
                      (let ((_%hd170089170112%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170088170109%_)))
                            (_%tl170090170114%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170088170109%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl170090170114%_))
                            (let ((_g171828_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl170090170114%_
                                      '0))))
                              (begin
                                (let ((_g171829_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g171828_)
                                             (##vector-length _g171828_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g171829_ 2)))
                                      (error "Context expects 2 values"
                                             _g171829_)))
                                (let ((_%target170091170117%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171828_ 0)))
                                      (_%tl170093170119%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171828_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170093170119%_))
                                      (letrec ((_%loop170094170122%_
                                                (lambda (_%hd170092170125%_
                                                         _%clause170098170127%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd170092170125%_))
                                                      (let ((_%e170095170130%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd170092170125%_))))
                (let ((_%lp-hd170096170133%_
                       (let () (declare (not safe)) (##car _%e170095170130%_)))
                      (_%lp-tl170097170135%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170095170130%_))))
                  (_%loop170094170122%_
                   _%lp-tl170097170135%_
                   (cons _%lp-hd170096170133%_ _%clause170098170127%_))))
              (let ((_%clause170099170138%_ (reverse _%clause170098170127%_)))
                ((lambda (_%L170141%_)
                   (for-each
                    (lambda (_%clause170154%_)
                      (let* ((_%g170156170167%_
                              (lambda (_%g170157170164%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170157170164%_))))
                             (_%g170155170199%_
                              (lambda (_%g170157170170%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g170157170170%_))
                                    (let ((_%e170160170172%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g170157170170%_))))
                                      (let ((_%hd170161170175%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170160170172%_)))
                                            (_%tl170162170177%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170160170172%_))))
                                        ((lambda (_%L170180%_ _%L170181%_)
                                           (let ((_%self170193%_
                                                  (list-ref
                                                   _%L170181%_
                                                   _%self-index169771%_)))
                                             (for-each
                                              (lambda (_%g170194170196%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%self170193%_
                                                 _%method-calls167799%_
                                                 _%slot-refs167800%_
                                                 _%g170194170196%_))
                                              _%L170180%_)))
                                         _%tl170162170177%_
                                         _%hd170161170175%_)))
                                    (_%g170156170167%_ _%g170157170170%_)))))
                        (_%g170155170199%_ _%clause170154%_)))
                    (let ((__tmp171830
                           (lambda (_%g170201170204%_ _%g170202170206%_)
                             (cons _%g170201170204%_ _%g170202170206%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171830 '() _%L170141%_))))
                 _%clause170099170138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop170094170122%_
                                         _%target170091170117%_
                                         '()))
                                      (_%g170085170104%_ _%g170086170107%_)))))
                            (_%g170085170104%_ _%g170086170107%_))))
                    (_%g170085170104%_ _%g170086170107%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170084170209%_
                                                 _%L170001%_))
                                              (if (_%no-specializer?167803%_)
                                                  _%stx167707%_
                                                  (let* ((_%specializer-id170218%_
                                                          (let* ((_%id170212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171831
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167780%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171831 '"::specialize")))
                         (_%specializer-id170215%_
                          (let ((__tmp171832
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167707%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id170212%_
                             __tmp171832))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id170215%_))
                    _%specializer-id170215%_))
                 (_%$klass170220%_
                  (let ((__tmp171833
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171833)))
                 (_%$method-table170222%_
                  (let ((__tmp171834
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171834)))
                 (_%methods170224%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167799%_)))
                 (_%$methods170228%_
                  (map (lambda (_%id170226%_)
                         (let ((__tmp171835 (gensym _%id170226%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171835)))
                       _%methods170224%_))
                 (_%_170237%_
                  (for-each
                   (lambda (_%g170229170232%_ _%g170230170234%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167799%_
                        _%g170229170232%_
                        _%g170230170234%_)))
                   _%methods170224%_
                   _%$methods170228%_))
                 (_%methods-bind170247%_
                  (map (lambda (_%g170239170242%_ _%g170240170244%_)
                         (_%generate-method-bind167709%_
                          _%$klass170220%_
                          _%$method-table170222%_
                          _%g170239170242%_
                          _%g170240170244%_))
                       _%methods170224%_
                       _%$methods170228%_))
                 (_%slots170249%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167800%_)))
                 (_%$slots170253%_
                  (map (lambda (_%id170251%_)
                         (let ((__tmp171836 (gensym _%id170251%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171836)))
                       _%slots170249%_))
                 (_%_170262%_
                  (for-each
                   (lambda (_%g170254170257%_ _%g170255170259%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167800%_
                        _%g170254170257%_
                        _%g170255170259%_)))
                   _%slots170249%_
                   _%$slots170253%_))
                 (_%slots-bind170271%_
                  (map (lambda (_%g170263170266%_ _%g170264170268%_)
                         (_%generate-slot-bind167710%_
                          _%$klass170220%_
                          _%g170263170266%_
                          _%g170264170268%_))
                       _%slots170249%_
                       _%$slots170253%_))
                 (_%specializer-lambda-expr170344%_
                  (let* ((_%g170273170287%_
                          (lambda (_%g170274170284%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170274170284%_))))
                         (_%g170272170341%_
                          (lambda (_%g170274170290%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170274170290%_))
                                (let ((_%e170277170292%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170274170290%_))))
                                  (let ((_%hd170278170295%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170277170292%_)))
                                        (_%tl170279170297%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170277170292%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170279170297%_))
                                        (let ((_%e170280170300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170279170297%_))))
                                          (let ((_%hd170281170303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170280170300%_)))
                                                (_%tl170282170305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170280170300%_))))
                                            ((lambda (_%L170308%_ _%L170309%_)
                                               (let* ((_%self170332%_
                                                       (list-ref
                                                        _%L170309%_
                                                        _%self-index169771%_))
                                                      (_%body170338%_
                                                       (map (lambda (_%g170333170335%_)
                                                              (gxc#apply-subst-object-refs__%
                                                               '#f
                                                               _%self170332%_
                                                               _%$klass170220%_
                                                               _%method-calls167799%_
                                                               _%slot-refs167800%_
                                                               _%g170333170335%_))
                                                            _%L170308%_))
                                                      (__tmp171837
                                                       (cons '%#lambda
                                                             (cons _%L170309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body170338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp171837
                                                  _%L170002%_)))
                                             _%tl170282170305%_
                                             _%hd170281170303%_)))
                                        (_%g170273170287%_
                                         _%g170274170290%_))))
                                (_%g170273170287%_ _%g170274170290%_)))))
                    (_%g170272170341%_ _%L170002%_)))
                 (_%specializer-case-lambda-expr170479%_
                  (let* ((_%g170346170365%_
                          (lambda (_%g170347170362%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170347170362%_))))
                         (_%g170345170476%_
                          (lambda (_%g170347170368%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170347170368%_))
                                (let ((_%e170349170370%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170347170368%_))))
                                  (let ((_%hd170350170373%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170349170370%_)))
                                        (_%tl170351170375%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170349170370%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170351170375%_))
                                        (let ((_g171838_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl170351170375%_
                                                  '0))))
                                          (begin
                                            (let ((_g171839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g171838_)
                                                         (##vector-length
                                                          _g171838_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g171839_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g171839_)))
                                            (let ((_%target170352170378%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171838_
                                                      0)))
                                                  (_%tl170354170380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171838_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl170354170380%_))
                                                  (letrec ((_%loop170355170383%_
                                                            (lambda (_%hd170353170386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause170359170388%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd170353170386%_))
                          (let ((_%e170356170391%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd170353170386%_))))
                            (let ((_%lp-hd170357170394%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170356170391%_)))
                                  (_%lp-tl170358170396%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170356170391%_))))
                              (_%loop170355170383%_
                               _%lp-tl170358170396%_
                               (cons _%lp-hd170357170394%_
                                     _%clause170359170388%_))))
                          (let ((_%clause170360170399%_
                                 (reverse _%clause170359170388%_)))
                            ((lambda (_%L170402%_)
                               (let* ((_%clauses170474%_
                                       (map (lambda (_%clause170416%_)
                                              (let* ((_%g170418170429%_
                                                      (lambda (_%g170419170426%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170419170426%_))))
                                                     (_%g170417170464%_
                                                      (lambda (_%g170419170432%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170419170432%_))
                                                            (let ((_%e170422170434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170419170432%_))))
                      (let ((_%hd170423170437%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170422170434%_)))
                            (_%tl170424170439%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170422170434%_))))
                        ((lambda (_%L170442%_ _%L170443%_)
                           (let* ((_%self170455%_
                                   (list-ref _%L170443%_ _%self-index169771%_))
                                  (_%body170461%_
                                   (map (lambda (_%g170456170458%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%self170455%_
                                           _%$klass170220%_
                                           _%method-calls167799%_
                                           _%slot-refs167800%_
                                           _%g170456170458%_))
                                        _%L170442%_)))
                             (cons _%L170443%_ _%body170461%_)))
                         _%tl170424170439%_
                         _%hd170423170437%_)))
                    (_%g170418170429%_ _%g170419170432%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170417170464%_
                                                 _%clause170416%_)))
                                            (let ((__tmp171840
                                                   (lambda (_%g170466170469%_
                                                            _%g170467170471%_)
                                                     (cons _%g170466170469%_
                                                           _%g170467170471%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp171840
                                               '()
                                               _%L170402%_))))
                                      (__tmp171841
                                       (cons '%#case-lambda
                                             _%clauses170474%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp171841
                                  _%L170001%_)))
                             _%clause170360170399%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop170355170383%_
                                                     _%target170352170378%_
                                                     '()))
                                                  (_%g170346170365%_
                                                   _%g170347170368%_)))))
                                        (_%g170346170365%_
                                         _%g170347170368%_))))
                                (_%g170346170365%_ _%g170347170368%_)))))
                    (_%g170345170476%_ _%L170001%_)))
                 (_%specializer-impl170481%_
                  (let ((__tmp171842
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L169471%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L169470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp171843
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L170003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr170344%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr170479%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171843
                                                _%stx167707%_))
                                             '()))
                                 '())
                           (cons _%L169468%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L169467%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171842 _%stx167707%_)))
                 (_%specializer-impl170483%_
                  (_%generate-specializer-impl167711%_
                   _%$klass170220%_
                   _%$method-table170222%_
                   _%methods-bind170247%_
                   _%slots-bind170271%_
                   _%specializer-impl170481%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171845
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167780%_)))
                                                          (__tmp171844
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id170218%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171845
                                                       '" => "
                                                       __tmp171844))
                                                    (_%generate-specializer-def167712%_
                                                     _%L167780%_
                                                     _%specializer-id170218%_
                                                     _%specializer-impl170483%_))))
                                            _%hd169934169996%_
                                            _%hd169931169988%_
                                            _%hd169928169980%_)
                                           (_%g169910169940%_
                                            _%g169911169943%_))))
                                   (_%g169910169940%_ _%g169911169943%_))
                               (_%g169910169940%_ _%g169911169943%_))
                           (_%g169910169940%_ _%g169911169943%_))))
                   (_%g169910169940%_ _%g169911169943%_))
               (_%g169910169940%_ _%g169911169943%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169910169940%_
                                                _%g169911169943%_))))
                                       (_%g169910169940%_ _%g169911169943%_))))
                               (_%g169910169940%_ _%g169911169943%_))))
                       (_%g169910169940%_ _%g169911169943%_))))
               (_%g169910169940%_ _%g169911169943%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169909170486%_ _%L169469%_))
                                         _%stx167707%_))))
                             _%hd169567169690%_
                             _%kw-ref169565169711%_
                             _%hd169555169677%_
                             _%hd169546169653%_
                             _%hd169537169629%_)
                            (_%g169511169573%_ _%g169512169576%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169560169695%_
                                                 _%target169557169682%_
                                                 '()))
                                              (_%g169511169573%_
                                               _%g169512169576%_))))
                                      (_%g169511169573%_ _%g169512169576%_)))))
                            (_%g169511169573%_ _%g169512169576%_))
                        (_%g169511169573%_ _%g169512169576%_))
                    (_%g169511169573%_ _%g169512169576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169511169573%_
                                                     _%g169512169576%_))
                                                (_%g169511169573%_
                                                 _%g169512169576%_))
                                            (_%g169511169573%_
                                             _%g169512169576%_))))
                                    (_%g169511169573%_ _%g169512169576%_))))
                            (_%g169511169573%_ _%g169512169576%_))
                        (_%g169511169573%_ _%g169512169576%_))))
                (_%g169511169573%_ _%g169512169576%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169511169573%_
                                                     _%g169512169576%_))
                                                (_%g169511169573%_
                                                 _%g169512169576%_))))
                                        (_%g169511169573%_
                                         _%g169512169576%_))))
                                (_%g169511169573%_ _%g169512169576%_))
                            (_%g169511169573%_ _%g169512169576%_))))
                    (_%g169511169573%_ _%g169512169576%_))
                (_%g169511169573%_ _%g169512169576%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169511169573%_
                                                     _%g169512169576%_))))
                                            (_%g169511169573%_
                                             _%g169512169576%_))))
                                    (_%g169511169573%_ _%g169512169576%_))
                                (_%g169511169573%_ _%g169512169576%_))
                            (_%g169511169573%_ _%g169512169576%_))))
                    (_%g169511169573%_ _%g169512169576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169511169573%_
                                                     _%g169512169576%_))))
                                            (_%g169511169573%_
                                             _%g169512169576%_))
                                        (_%g169511169573%_ _%g169512169576%_))
                                    (_%g169511169573%_ _%g169512169576%_))))
                            (_%g169511169573%_ _%g169512169576%_)))))
                (_%g169510170490%_ _%L169468%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd169344169462%_
                                                    _%hd169341169454%_
                                                    _%hd169338169446%_
                                                    _%hd169335169438%_
                                                    _%hd169317169390%_)
                                                   (_%g169297169350%_
                                                    _%g169298169353%_))))
                                           (_%g169297169350%_
                                            _%g169298169353%_))
                                       (_%g169297169350%_ _%g169298169353%_))
                                   (_%g169297169350%_ _%g169298169353%_))
                               (_%g169297169350%_ _%g169298169353%_))))
                       (_%g169297169350%_ _%g169298169353%_))
                   (_%g169297169350%_ _%g169298169353%_))
               (_%g169297169350%_ _%g169298169353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169297169350%_
                                                _%g169298169353%_))
                                           (_%g169297169350%_
                                            _%g169298169353%_))))
                                   (_%g169297169350%_ _%g169298169353%_))))
                           (_%g169297169350%_ _%g169298169353%_))))
                   (_%g169297169350%_ _%g169298169353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169297169350%_
                                                    _%g169298169353%_))
                                               (_%g169297169350%_
                                                _%g169298169353%_))
                                           (_%g169297169350%_
                                            _%g169298169353%_))))
                                   (_%g169297169350%_ _%g169298169353%_))))
                           (_%g169297169350%_ _%g169298169353%_))
                       (_%g169297169350%_ _%g169298169353%_))))
               (_%g169297169350%_ _%g169298169353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169297169350%_
                                                _%g169298169353%_))))
                                       (_%g169297169350%_ _%g169298169353%_))))
                               (_%g169297169350%_ _%g169298169353%_))
                           (_%g169297169350%_ _%g169298169353%_))
                       (_%g169297169350%_ _%g169298169353%_))))
               (_%g169297169350%_ _%g169298169353%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169296170493%_ _%L167779%_))
                                         _%stx167707%_))))))))
                  (_%__kont170716170717%_ (lambda () _%stx167707%_)))
              (let ((_%__match170745170746%_
                     (lambda (_%e167719167747%_
                              _%hd167720167750%_
                              _%tl167721167752%_
                              _%e167722167755%_
                              _%hd167723167758%_
                              _%tl167724167760%_
                              _%e167725167763%_
                              _%hd167726167766%_
                              _%tl167727167768%_
                              _%e167728167771%_
                              _%hd167729167774%_
                              _%tl167730167776%_)
                       (let ((_%L167779%_ _%hd167729167774%_)
                             (_%L167780%_ _%hd167726167766%_))
                         (if (let ((__tmp171846
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167780%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171846))
                             (_%__kont170714170715%_ _%L167779%_ _%L167780%_)
                             (_%__kont170716170717%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170712170713%_))
                    (let ((_%e167719167747%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170712170713%_))))
                      (let ((_%tl167721167752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167719167747%_)))
                            (_%hd167720167750%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167719167747%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167721167752%_))
                            (let ((_%e167722167755%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167721167752%_))))
                              (let ((_%tl167724167760%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167722167755%_)))
                                    (_%hd167723167758%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167722167755%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167723167758%_))
                                    (let ((_%e167725167763%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167723167758%_))))
                                      (let ((_%tl167727167768%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167725167763%_)))
                                            (_%hd167726167766%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167725167763%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167727167768%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167724167760%_))
                                                (let ((_%e167728167771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167724167760%_))))
                                                  (let ((_%tl167730167776%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167728167771%_)))
                                                        (_%hd167729167774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167728167771%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167730167776%_))
                                                        (_%__match170745170746%_
                                                         _%e167719167747%_
                                                         _%hd167720167750%_
                                                         _%tl167721167752%_
                                                         _%e167722167755%_
                                                         _%hd167723167758%_
                                                         _%tl167724167760%_
                                                         _%e167725167763%_
                                                         _%hd167726167766%_
                                                         _%tl167727167768%_
                                                         _%e167728167771%_
                                                         _%hd167729167774%_
                                                         _%tl167730167776%_)
                                                        (_%__kont170716170717%_))))
                                                (_%__kont170716170717%_))
                                            (_%__kont170716170717%_))))
                                    (_%__kont170716170717%_))))
                            (_%__kont170716170717%_))))
                    (_%__kont170716170717%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self166667%_ _%stx166668%_)
        (let* ((_%__stx170748170749%_ _%stx166668%_)
               (_%g166676166898%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170748170749%_)))))
          (let ((_%__kont170750170751%_
                 (lambda (_%L167655%_ _%L167656%_ _%L167657%_ _%L167658%_)
                   (let ((__tmp171848
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166667%_ 'methods)))
                         (__tmp171847
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167656%_))))
                     (declare (not safe))
                     (hash-put! __tmp171848 __tmp171847 '#t))
                   (for-each
                    (lambda (_%g167691167693%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166667%_ _%g167691167693%_)))
                    (let ((__tmp171849
                           (lambda (_%g167695167698%_ _%g167696167700%_)
                             (cons _%g167695167698%_ _%g167696167700%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171849 '() _%L167655%_)))))
                (_%__kont170754170755%_
                 (lambda (_%L167490%_
                          _%L167491%_
                          _%L167492%_
                          _%L167493%_
                          _%L167494%_)
                   (let ((__tmp171851
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166667%_ 'methods)))
                         (__tmp171850
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167491%_))))
                     (declare (not safe))
                     (hash-put! __tmp171851 __tmp171850 '#t))
                   (for-each
                    (lambda (_%g167534167536%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166667%_ _%g167534167536%_)))
                    (let ((__tmp171852
                           (lambda (_%g167538167541%_ _%g167539167543%_)
                             (cons _%g167538167541%_ _%g167539167543%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171852 '() _%L167490%_)))))
                (_%__kont170758170759%_
                 (lambda (_%L167323%_ _%L167324%_ _%L167325%_)
                   (let ((__tmp171854
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166667%_ 'slots)))
                         (__tmp171853
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167323%_))))
                     (declare (not safe))
                     (hash-put! __tmp171854 __tmp171853 '#t))))
                (_%__kont170760170761%_
                 (lambda (_%L167200%_ _%L167201%_ _%L167202%_ _%L167203%_)
                   (let ((__tmp171856
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166667%_ 'slots)))
                         (__tmp171855
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167201%_))))
                     (declare (not safe))
                     (hash-put! __tmp171856 __tmp171855 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self166667%_ _%L167200%_))))
                (_%__kont170762170763%_
                 (lambda (_%L167074%_ _%L167075%_)
                   (let* ((_%accessor167097%_
                           (let ((__tmp171857
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167075%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171857)))
                          (_%klass167099%_
                           (let ((__tmp171858
                                  (##structure-ref
                                   _%accessor167097%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166668%_
                              __tmp171858)))
                          (_%slot167101%_
                           (##structure-ref
                            _%accessor167097%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%accessor167097%_
                                    '4
                                    gxc#!accessor::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167099%_
                                     _%slot167101%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167099%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171860
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166667%_ 'slots)))
                               (__tmp171859
                                (##structure-ref
                                 _%accessor167097%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171860 __tmp171859 '#t))))))
                (_%__kont170764170765%_
                 (lambda (_%L166974%_ _%L166975%_ _%L166976%_)
                   (let* ((_%mutator167003%_
                           (let ((__tmp171861
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166976%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171861)))
                          (_%klass167005%_
                           (let ((__tmp171862
                                  (##structure-ref
                                   _%mutator167003%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166668%_
                              __tmp171862)))
                          (_%slot167007%_
                           (##structure-ref
                            _%mutator167003%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%mutator167003%_
                                    '4
                                    gxc#!mutator::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167005%_
                                     _%slot167007%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167005%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171863
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166667%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171863 _%slot167007%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self166667%_ _%L166974%_)))))
                (_%__kont170766170767%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self166667%_ _%stx166668%_)))))
            (let* ((_%__match171247171248%_
                    (lambda (_%e166870166910%_
                             _%hd166871166913%_
                             _%tl166872166915%_
                             _%e166873166918%_
                             _%hd166874166921%_
                             _%tl166875166923%_
                             _%e166876166926%_
                             _%hd166877166929%_
                             _%tl166878166931%_
                             _%e166879166934%_
                             _%hd166880166937%_
                             _%tl166881166939%_
                             _%e166882166942%_
                             _%hd166883166945%_
                             _%tl166884166947%_
                             _%e166885166950%_
                             _%hd166886166953%_
                             _%tl166887166955%_
                             _%e166888166958%_
                             _%hd166889166961%_
                             _%tl166890166963%_
                             _%e166891166966%_
                             _%hd166892166969%_
                             _%tl166893166971%_)
                      (let ((_%L166974%_ _%hd166892166969%_)
                            (_%L166975%_ _%hd166889166961%_)
                            (_%L166976%_ _%hd166880166937%_))
                        (if (and (let ((__tmp171864
                                        (let ((__tmp171865
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166976%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171865))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171864
                                    'gxc#!mutator::t))
                                 (let ((__tmp171866
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166667%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166975%_
                                    __tmp171866)))
                            (_%__kont170764170765%_
                             _%L166974%_
                             _%L166975%_
                             _%L166976%_)
                            (_%__kont170766170767%_)))))
                   (_%__match171245171246%_
                    (lambda (_%e166870166910%_
                             _%hd166871166913%_
                             _%tl166872166915%_
                             _%e166873166918%_
                             _%hd166874166921%_
                             _%tl166875166923%_
                             _%e166876166926%_
                             _%hd166877166929%_
                             _%tl166878166931%_
                             _%e166879166934%_
                             _%hd166880166937%_
                             _%tl166881166939%_
                             _%e166882166942%_
                             _%hd166883166945%_
                             _%tl166884166947%_
                             _%e166885166950%_
                             _%hd166886166953%_
                             _%tl166887166955%_
                             _%e166888166958%_
                             _%hd166889166961%_
                             _%tl166890166963%_
                             _%e166891166966%_
                             _%hd166892166969%_
                             _%tl166893166971%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166893166971%_))
                          (_%__match171247171248%_
                           _%e166870166910%_
                           _%hd166871166913%_
                           _%tl166872166915%_
                           _%e166873166918%_
                           _%hd166874166921%_
                           _%tl166875166923%_
                           _%e166876166926%_
                           _%hd166877166929%_
                           _%tl166878166931%_
                           _%e166879166934%_
                           _%hd166880166937%_
                           _%tl166881166939%_
                           _%e166882166942%_
                           _%hd166883166945%_
                           _%tl166884166947%_
                           _%e166885166950%_
                           _%hd166886166953%_
                           _%tl166887166955%_
                           _%e166888166958%_
                           _%hd166889166961%_
                           _%tl166890166963%_
                           _%e166891166966%_
                           _%hd166892166969%_
                           _%tl166893166971%_)
                          (_%__kont170766170767%_))))
                   (_%__match171239171240%_
                    (lambda (_%e166870166910%_
                             _%hd166871166913%_
                             _%tl166872166915%_
                             _%e166873166918%_
                             _%hd166874166921%_
                             _%tl166875166923%_
                             _%e166876166926%_
                             _%hd166877166929%_
                             _%tl166878166931%_
                             _%e166879166934%_
                             _%hd166880166937%_
                             _%tl166881166939%_
                             _%e166882166942%_
                             _%hd166883166945%_
                             _%tl166884166947%_
                             _%e166885166950%_
                             _%hd166886166953%_
                             _%tl166887166955%_
                             _%e166888166958%_
                             _%hd166889166961%_
                             _%tl166890166963%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166884166947%_))
                          (let ((_%e166891166966%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166884166947%_))))
                            (let ((_%tl166893166971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166891166966%_)))
                                  (_%hd166892166969%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166891166966%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166893166971%_))
                                  (_%__match171247171248%_
                                   _%e166870166910%_
                                   _%hd166871166913%_
                                   _%tl166872166915%_
                                   _%e166873166918%_
                                   _%hd166874166921%_
                                   _%tl166875166923%_
                                   _%e166876166926%_
                                   _%hd166877166929%_
                                   _%tl166878166931%_
                                   _%e166879166934%_
                                   _%hd166880166937%_
                                   _%tl166881166939%_
                                   _%e166882166942%_
                                   _%hd166883166945%_
                                   _%tl166884166947%_
                                   _%e166885166950%_
                                   _%hd166886166953%_
                                   _%tl166887166955%_
                                   _%e166888166958%_
                                   _%hd166889166961%_
                                   _%tl166890166963%_
                                   _%e166891166966%_
                                   _%hd166892166969%_
                                   _%tl166893166971%_)
                                  (_%__kont170766170767%_))))
                          (_%__kont170766170767%_))))
                   (_%__match171185171186%_
                    (lambda (_%e166846167018%_
                             _%hd166847167021%_
                             _%tl166848167023%_
                             _%e166849167026%_
                             _%hd166850167029%_
                             _%tl166851167031%_
                             _%e166852167034%_
                             _%hd166853167037%_
                             _%tl166854167039%_
                             _%e166855167042%_
                             _%hd166856167045%_
                             _%tl166857167047%_
                             _%e166858167050%_
                             _%hd166859167053%_
                             _%tl166860167055%_
                             _%e166861167058%_
                             _%hd166862167061%_
                             _%tl166863167063%_
                             _%e166864167066%_
                             _%hd166865167069%_
                             _%tl166866167071%_)
                      (let ((_%L167074%_ _%hd166865167069%_)
                            (_%L167075%_ _%hd166856167045%_))
                        (if (and (let ((__tmp171867
                                        (let ((__tmp171868
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167075%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171868))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171867
                                    'gxc#!accessor::t))
                                 (let ((__tmp171869
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166667%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167074%_
                                    __tmp171869)))
                            (_%__kont170762170763%_ _%L167074%_ _%L167075%_)
                            (_%__kont170766170767%_)))))
                   (_%__match171183171184%_
                    (lambda (_%e166846167018%_
                             _%hd166847167021%_
                             _%tl166848167023%_
                             _%e166849167026%_
                             _%hd166850167029%_
                             _%tl166851167031%_
                             _%e166852167034%_
                             _%hd166853167037%_
                             _%tl166854167039%_
                             _%e166855167042%_
                             _%hd166856167045%_
                             _%tl166857167047%_
                             _%e166858167050%_
                             _%hd166859167053%_
                             _%tl166860167055%_
                             _%e166861167058%_
                             _%hd166862167061%_
                             _%tl166863167063%_
                             _%e166864167066%_
                             _%hd166865167069%_
                             _%tl166866167071%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166860167055%_))
                          (_%__match171185171186%_
                           _%e166846167018%_
                           _%hd166847167021%_
                           _%tl166848167023%_
                           _%e166849167026%_
                           _%hd166850167029%_
                           _%tl166851167031%_
                           _%e166852167034%_
                           _%hd166853167037%_
                           _%tl166854167039%_
                           _%e166855167042%_
                           _%hd166856167045%_
                           _%tl166857167047%_
                           _%e166858167050%_
                           _%hd166859167053%_
                           _%tl166860167055%_
                           _%e166861167058%_
                           _%hd166862167061%_
                           _%tl166863167063%_
                           _%e166864167066%_
                           _%hd166865167069%_
                           _%tl166866167071%_)
                          (_%__match171239171240%_
                           _%e166846167018%_
                           _%hd166847167021%_
                           _%tl166848167023%_
                           _%e166849167026%_
                           _%hd166850167029%_
                           _%tl166851167031%_
                           _%e166852167034%_
                           _%hd166853167037%_
                           _%tl166854167039%_
                           _%e166855167042%_
                           _%hd166856167045%_
                           _%tl166857167047%_
                           _%e166858167050%_
                           _%hd166859167053%_
                           _%tl166860167055%_
                           _%e166861167058%_
                           _%hd166862167061%_
                           _%tl166863167063%_
                           _%e166864167066%_
                           _%hd166865167069%_
                           _%tl166866167071%_))))
                   (_%__match171129171130%_
                    (lambda (_%e166811167112%_
                             _%hd166812167115%_
                             _%tl166813167117%_
                             _%e166814167120%_
                             _%hd166815167123%_
                             _%tl166816167125%_
                             _%e166817167128%_
                             _%hd166818167131%_
                             _%tl166819167133%_
                             _%e166820167136%_
                             _%hd166821167139%_
                             _%tl166822167141%_
                             _%e166823167144%_
                             _%hd166824167147%_
                             _%tl166825167149%_
                             _%e166826167152%_
                             _%hd166827167155%_
                             _%tl166828167157%_
                             _%e166829167160%_
                             _%hd166830167163%_
                             _%tl166831167165%_
                             _%e166832167168%_
                             _%hd166833167171%_
                             _%tl166834167173%_
                             _%e166835167176%_
                             _%hd166836167179%_
                             _%tl166837167181%_
                             _%e166838167184%_
                             _%hd166839167187%_
                             _%tl166840167189%_
                             _%e166841167192%_
                             _%hd166842167195%_
                             _%tl166843167197%_)
                      (let ((_%L167200%_ _%hd166842167195%_)
                            (_%L167201%_ _%hd166839167187%_)
                            (_%L167202%_ _%hd166830167163%_)
                            (_%L167203%_ _%hd166821167139%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167203%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167203%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171870
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166667%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167202%_
                                    __tmp171870)))
                            (_%__kont170760170761%_
                             _%L167200%_
                             _%L167201%_
                             _%L167202%_
                             _%L167203%_)
                            (_%__kont170766170767%_)))))
                   (_%__match171121171122%_
                    (lambda (_%e166811167112%_
                             _%hd166812167115%_
                             _%tl166813167117%_
                             _%e166814167120%_
                             _%hd166815167123%_
                             _%tl166816167125%_
                             _%e166817167128%_
                             _%hd166818167131%_
                             _%tl166819167133%_
                             _%e166820167136%_
                             _%hd166821167139%_
                             _%tl166822167141%_
                             _%e166823167144%_
                             _%hd166824167147%_
                             _%tl166825167149%_
                             _%e166826167152%_
                             _%hd166827167155%_
                             _%tl166828167157%_
                             _%e166829167160%_
                             _%hd166830167163%_
                             _%tl166831167165%_
                             _%e166832167168%_
                             _%hd166833167171%_
                             _%tl166834167173%_
                             _%e166835167176%_
                             _%hd166836167179%_
                             _%tl166837167181%_
                             _%e166838167184%_
                             _%hd166839167187%_
                             _%tl166840167189%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166834167173%_))
                          (let ((_%e166841167192%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166834167173%_))))
                            (let ((_%tl166843167197%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166841167192%_)))
                                  (_%hd166842167195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166841167192%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166843167197%_))
                                  (_%__match171129171130%_
                                   _%e166811167112%_
                                   _%hd166812167115%_
                                   _%tl166813167117%_
                                   _%e166814167120%_
                                   _%hd166815167123%_
                                   _%tl166816167125%_
                                   _%e166817167128%_
                                   _%hd166818167131%_
                                   _%tl166819167133%_
                                   _%e166820167136%_
                                   _%hd166821167139%_
                                   _%tl166822167141%_
                                   _%e166823167144%_
                                   _%hd166824167147%_
                                   _%tl166825167149%_
                                   _%e166826167152%_
                                   _%hd166827167155%_
                                   _%tl166828167157%_
                                   _%e166829167160%_
                                   _%hd166830167163%_
                                   _%tl166831167165%_
                                   _%e166832167168%_
                                   _%hd166833167171%_
                                   _%tl166834167173%_
                                   _%e166835167176%_
                                   _%hd166836167179%_
                                   _%tl166837167181%_
                                   _%e166838167184%_
                                   _%hd166839167187%_
                                   _%tl166840167189%_
                                   _%e166841167192%_
                                   _%hd166842167195%_
                                   _%tl166843167197%_)
                                  (_%__kont170766170767%_))))
                          (_%__match171245171246%_
                           _%e166811167112%_
                           _%hd166812167115%_
                           _%tl166813167117%_
                           _%e166814167120%_
                           _%hd166815167123%_
                           _%tl166816167125%_
                           _%e166817167128%_
                           _%hd166818167131%_
                           _%tl166819167133%_
                           _%e166820167136%_
                           _%hd166821167139%_
                           _%tl166822167141%_
                           _%e166823167144%_
                           _%hd166824167147%_
                           _%tl166825167149%_
                           _%e166826167152%_
                           _%hd166827167155%_
                           _%tl166828167157%_
                           _%e166829167160%_
                           _%hd166830167163%_
                           _%tl166831167165%_
                           _%e166832167168%_
                           _%hd166833167171%_
                           _%tl166834167173%_))))
                   (_%__match171043171044%_
                    (lambda (_%e166777167243%_
                             _%hd166778167246%_
                             _%tl166779167248%_
                             _%e166780167251%_
                             _%hd166781167254%_
                             _%tl166782167256%_
                             _%e166783167259%_
                             _%hd166784167262%_
                             _%tl166785167264%_
                             _%e166786167267%_
                             _%hd166787167270%_
                             _%tl166788167272%_
                             _%e166789167275%_
                             _%hd166790167278%_
                             _%tl166791167280%_
                             _%e166792167283%_
                             _%hd166793167286%_
                             _%tl166794167288%_
                             _%e166795167291%_
                             _%hd166796167294%_
                             _%tl166797167296%_
                             _%e166798167299%_
                             _%hd166799167302%_
                             _%tl166800167304%_
                             _%e166801167307%_
                             _%hd166802167310%_
                             _%tl166803167312%_
                             _%e166804167315%_
                             _%hd166805167318%_
                             _%tl166806167320%_)
                      (let ((_%L167323%_ _%hd166805167318%_)
                            (_%L167324%_ _%hd166796167294%_)
                            (_%L167325%_ _%hd166787167270%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167325%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167325%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171871
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166667%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167324%_
                                    __tmp171871)))
                            (_%__kont170758170759%_
                             _%L167323%_
                             _%L167324%_
                             _%L167325%_)
                            (_%__match171247171248%_
                             _%e166777167243%_
                             _%hd166778167246%_
                             _%tl166779167248%_
                             _%e166780167251%_
                             _%hd166781167254%_
                             _%tl166782167256%_
                             _%e166783167259%_
                             _%hd166784167262%_
                             _%tl166785167264%_
                             _%e166786167267%_
                             _%hd166787167270%_
                             _%tl166788167272%_
                             _%e166789167275%_
                             _%hd166790167278%_
                             _%tl166791167280%_
                             _%e166792167283%_
                             _%hd166793167286%_
                             _%tl166794167288%_
                             _%e166795167291%_
                             _%hd166796167294%_
                             _%tl166797167296%_
                             _%e166798167299%_
                             _%hd166799167302%_
                             _%tl166800167304%_)))))
                   (_%__match171041171042%_
                    (lambda (_%e166777167243%_
                             _%hd166778167246%_
                             _%tl166779167248%_
                             _%e166780167251%_
                             _%hd166781167254%_
                             _%tl166782167256%_
                             _%e166783167259%_
                             _%hd166784167262%_
                             _%tl166785167264%_
                             _%e166786167267%_
                             _%hd166787167270%_
                             _%tl166788167272%_
                             _%e166789167275%_
                             _%hd166790167278%_
                             _%tl166791167280%_
                             _%e166792167283%_
                             _%hd166793167286%_
                             _%tl166794167288%_
                             _%e166795167291%_
                             _%hd166796167294%_
                             _%tl166797167296%_
                             _%e166798167299%_
                             _%hd166799167302%_
                             _%tl166800167304%_
                             _%e166801167307%_
                             _%hd166802167310%_
                             _%tl166803167312%_
                             _%e166804167315%_
                             _%hd166805167318%_
                             _%tl166806167320%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166800167304%_))
                          (_%__match171043171044%_
                           _%e166777167243%_
                           _%hd166778167246%_
                           _%tl166779167248%_
                           _%e166780167251%_
                           _%hd166781167254%_
                           _%tl166782167256%_
                           _%e166783167259%_
                           _%hd166784167262%_
                           _%tl166785167264%_
                           _%e166786167267%_
                           _%hd166787167270%_
                           _%tl166788167272%_
                           _%e166789167275%_
                           _%hd166790167278%_
                           _%tl166791167280%_
                           _%e166792167283%_
                           _%hd166793167286%_
                           _%tl166794167288%_
                           _%e166795167291%_
                           _%hd166796167294%_
                           _%tl166797167296%_
                           _%e166798167299%_
                           _%hd166799167302%_
                           _%tl166800167304%_
                           _%e166801167307%_
                           _%hd166802167310%_
                           _%tl166803167312%_
                           _%e166804167315%_
                           _%hd166805167318%_
                           _%tl166806167320%_)
                          (_%__match171121171122%_
                           _%e166777167243%_
                           _%hd166778167246%_
                           _%tl166779167248%_
                           _%e166780167251%_
                           _%hd166781167254%_
                           _%tl166782167256%_
                           _%e166783167259%_
                           _%hd166784167262%_
                           _%tl166785167264%_
                           _%e166786167267%_
                           _%hd166787167270%_
                           _%tl166788167272%_
                           _%e166789167275%_
                           _%hd166790167278%_
                           _%tl166791167280%_
                           _%e166792167283%_
                           _%hd166793167286%_
                           _%tl166794167288%_
                           _%e166795167291%_
                           _%hd166796167294%_
                           _%tl166797167296%_
                           _%e166798167299%_
                           _%hd166799167302%_
                           _%tl166800167304%_
                           _%e166801167307%_
                           _%hd166802167310%_
                           _%tl166803167312%_
                           _%e166804167315%_
                           _%hd166805167318%_
                           _%tl166806167320%_))))
                   (_%__match171031171032%_
                    (lambda (_%e166777167243%_
                             _%hd166778167246%_
                             _%tl166779167248%_
                             _%e166780167251%_
                             _%hd166781167254%_
                             _%tl166782167256%_
                             _%e166783167259%_
                             _%hd166784167262%_
                             _%tl166785167264%_
                             _%e166786167267%_
                             _%hd166787167270%_
                             _%tl166788167272%_
                             _%e166789167275%_
                             _%hd166790167278%_
                             _%tl166791167280%_
                             _%e166792167283%_
                             _%hd166793167286%_
                             _%tl166794167288%_
                             _%e166795167291%_
                             _%hd166796167294%_
                             _%tl166797167296%_
                             _%e166798167299%_
                             _%hd166799167302%_
                             _%tl166800167304%_
                             _%e166801167307%_
                             _%hd166802167310%_
                             _%tl166803167312%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166802167310%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166803167312%_))
                              (let ((_%e166804167315%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166803167312%_))))
                                (let ((_%tl166806167320%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166804167315%_)))
                                      (_%hd166805167318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166804167315%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166806167320%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166800167304%_))
                                          (_%__match171043171044%_
                                           _%e166777167243%_
                                           _%hd166778167246%_
                                           _%tl166779167248%_
                                           _%e166780167251%_
                                           _%hd166781167254%_
                                           _%tl166782167256%_
                                           _%e166783167259%_
                                           _%hd166784167262%_
                                           _%tl166785167264%_
                                           _%e166786167267%_
                                           _%hd166787167270%_
                                           _%tl166788167272%_
                                           _%e166789167275%_
                                           _%hd166790167278%_
                                           _%tl166791167280%_
                                           _%e166792167283%_
                                           _%hd166793167286%_
                                           _%tl166794167288%_
                                           _%e166795167291%_
                                           _%hd166796167294%_
                                           _%tl166797167296%_
                                           _%e166798167299%_
                                           _%hd166799167302%_
                                           _%tl166800167304%_
                                           _%e166801167307%_
                                           _%hd166802167310%_
                                           _%tl166803167312%_
                                           _%e166804167315%_
                                           _%hd166805167318%_
                                           _%tl166806167320%_)
                                          (_%__match171121171122%_
                                           _%e166777167243%_
                                           _%hd166778167246%_
                                           _%tl166779167248%_
                                           _%e166780167251%_
                                           _%hd166781167254%_
                                           _%tl166782167256%_
                                           _%e166783167259%_
                                           _%hd166784167262%_
                                           _%tl166785167264%_
                                           _%e166786167267%_
                                           _%hd166787167270%_
                                           _%tl166788167272%_
                                           _%e166789167275%_
                                           _%hd166790167278%_
                                           _%tl166791167280%_
                                           _%e166792167283%_
                                           _%hd166793167286%_
                                           _%tl166794167288%_
                                           _%e166795167291%_
                                           _%hd166796167294%_
                                           _%tl166797167296%_
                                           _%e166798167299%_
                                           _%hd166799167302%_
                                           _%tl166800167304%_
                                           _%e166801167307%_
                                           _%hd166802167310%_
                                           _%tl166803167312%_
                                           _%e166804167315%_
                                           _%hd166805167318%_
                                           _%tl166806167320%_))
                                      (_%__match171245171246%_
                                       _%e166777167243%_
                                       _%hd166778167246%_
                                       _%tl166779167248%_
                                       _%e166780167251%_
                                       _%hd166781167254%_
                                       _%tl166782167256%_
                                       _%e166783167259%_
                                       _%hd166784167262%_
                                       _%tl166785167264%_
                                       _%e166786167267%_
                                       _%hd166787167270%_
                                       _%tl166788167272%_
                                       _%e166789167275%_
                                       _%hd166790167278%_
                                       _%tl166791167280%_
                                       _%e166792167283%_
                                       _%hd166793167286%_
                                       _%tl166794167288%_
                                       _%e166795167291%_
                                       _%hd166796167294%_
                                       _%tl166797167296%_
                                       _%e166798167299%_
                                       _%hd166799167302%_
                                       _%tl166800167304%_))))
                              (_%__match171245171246%_
                               _%e166777167243%_
                               _%hd166778167246%_
                               _%tl166779167248%_
                               _%e166780167251%_
                               _%hd166781167254%_
                               _%tl166782167256%_
                               _%e166783167259%_
                               _%hd166784167262%_
                               _%tl166785167264%_
                               _%e166786167267%_
                               _%hd166787167270%_
                               _%tl166788167272%_
                               _%e166789167275%_
                               _%hd166790167278%_
                               _%tl166791167280%_
                               _%e166792167283%_
                               _%hd166793167286%_
                               _%tl166794167288%_
                               _%e166795167291%_
                               _%hd166796167294%_
                               _%tl166797167296%_
                               _%e166798167299%_
                               _%hd166799167302%_
                               _%tl166800167304%_))
                          (_%__match171245171246%_
                           _%e166777167243%_
                           _%hd166778167246%_
                           _%tl166779167248%_
                           _%e166780167251%_
                           _%hd166781167254%_
                           _%tl166782167256%_
                           _%e166783167259%_
                           _%hd166784167262%_
                           _%tl166785167264%_
                           _%e166786167267%_
                           _%hd166787167270%_
                           _%tl166788167272%_
                           _%e166789167275%_
                           _%hd166790167278%_
                           _%tl166791167280%_
                           _%e166792167283%_
                           _%hd166793167286%_
                           _%tl166794167288%_
                           _%e166795167291%_
                           _%hd166796167294%_
                           _%tl166797167296%_
                           _%e166798167299%_
                           _%hd166799167302%_
                           _%tl166800167304%_))))
                   (_%__match170963170964%_
                    (lambda (_%e166726167362%_
                             _%hd166727167365%_
                             _%tl166728167367%_
                             _%e166729167370%_
                             _%hd166730167373%_
                             _%tl166731167375%_
                             _%e166732167378%_
                             _%hd166733167381%_
                             _%tl166734167383%_
                             _%e166735167386%_
                             _%hd166736167389%_
                             _%tl166737167391%_
                             _%e166738167394%_
                             _%hd166739167397%_
                             _%tl166740167399%_
                             _%e166741167402%_
                             _%hd166742167405%_
                             _%tl166743167407%_
                             _%e166744167410%_
                             _%hd166745167413%_
                             _%tl166746167415%_
                             _%e166747167418%_
                             _%hd166748167421%_
                             _%tl166749167423%_
                             _%e166750167426%_
                             _%hd166751167429%_
                             _%tl166752167431%_
                             _%e166753167434%_
                             _%hd166754167437%_
                             _%tl166755167439%_
                             _%e166756167442%_
                             _%hd166757167445%_
                             _%tl166758167447%_
                             _%e166759167450%_
                             _%hd166760167453%_
                             _%tl166761167455%_
                             _%e166762167458%_
                             _%hd166763167461%_
                             _%tl166764167463%_
                             _%__splice170756170757%_
                             _%target166765167466%_
                             _%tl166767167468%_)
                      (letrec ((_%loop166768167471%_
                                (lambda (_%hd166766167474%_
                                         _%args166772167476%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166766167474%_))
                                      (let ((_%e166769167479%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166766167474%_))))
                                        (let ((_%lp-tl166771167484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166769167479%_)))
                                              (_%lp-hd166770167482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166769167479%_))))
                                          (_%loop166768167471%_
                                           _%lp-tl166771167484%_
                                           (cons _%lp-hd166770167482%_
                                                 _%args166772167476%_))))
                                      (let ((_%args166773167487%_
                                             (reverse _%args166772167476%_)))
                                        (let ((_%L167490%_
                                               _%args166773167487%_)
                                              (_%L167491%_ _%hd166763167461%_)
                                              (_%L167492%_ _%hd166754167437%_)
                                              (_%L167493%_ _%hd166745167413%_)
                                              (_%L167494%_ _%hd166736167389%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167494%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167493%_
                                                      'call-method))
                                                   (let ((__tmp171872
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166667%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167492%_
                                                      __tmp171872)))
                                              (_%__kont170754170755%_
                                               _%L167490%_
                                               _%L167491%_
                                               _%L167492%_
                                               _%L167493%_
                                               _%L167494%_)
                                              (_%__kont170766170767%_))))))))
                        (_%loop166768167471%_ _%target166765167466%_ '()))))
                   (_%__match170921170922%_
                    (lambda (_%e166726167362%_
                             _%hd166727167365%_
                             _%tl166728167367%_
                             _%e166729167370%_
                             _%hd166730167373%_
                             _%tl166731167375%_
                             _%e166732167378%_
                             _%hd166733167381%_
                             _%tl166734167383%_
                             _%e166735167386%_
                             _%hd166736167389%_
                             _%tl166737167391%_
                             _%e166738167394%_
                             _%hd166739167397%_
                             _%tl166740167399%_
                             _%e166741167402%_
                             _%hd166742167405%_
                             _%tl166743167407%_
                             _%e166744167410%_
                             _%hd166745167413%_
                             _%tl166746167415%_
                             _%e166747167418%_
                             _%hd166748167421%_
                             _%tl166749167423%_
                             _%e166750167426%_
                             _%hd166751167429%_
                             _%tl166752167431%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166751167429%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166752167431%_))
                              (let ((_%e166753167434%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166752167431%_))))
                                (let ((_%tl166755167439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166753167434%_)))
                                      (_%hd166754167437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166753167434%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166755167439%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166749167423%_))
                                          (let ((_%e166756167442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166749167423%_))))
                                            (let ((_%tl166758167447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166756167442%_)))
                                                  (_%hd166757167445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166756167442%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166757167445%_))
                                                  (let ((_%e166759167450%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166757167445%_))))
                                                    (let ((_%tl166761167455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166759167450%_)))
                                                          (_%hd166760167453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166759167450%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166760167453%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166760167453%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166761167455%_))
                          (let ((_%e166762167458%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166761167455%_))))
                            (let ((_%tl166764167463%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166762167458%_)))
                                  (_%hd166763167461%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166762167458%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166764167463%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166758167447%_))
                                      (let ((_%__splice170756170757%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166758167447%_
                                                '0))))
                                        (let ((_%tl166767167468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170756170757%_
                                                  '1)))
                                              (_%target166765167466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170756170757%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166767167468%_))
                                              (_%__match170963170964%_
                                               _%e166726167362%_
                                               _%hd166727167365%_
                                               _%tl166728167367%_
                                               _%e166729167370%_
                                               _%hd166730167373%_
                                               _%tl166731167375%_
                                               _%e166732167378%_
                                               _%hd166733167381%_
                                               _%tl166734167383%_
                                               _%e166735167386%_
                                               _%hd166736167389%_
                                               _%tl166737167391%_
                                               _%e166738167394%_
                                               _%hd166739167397%_
                                               _%tl166740167399%_
                                               _%e166741167402%_
                                               _%hd166742167405%_
                                               _%tl166743167407%_
                                               _%e166744167410%_
                                               _%hd166745167413%_
                                               _%tl166746167415%_
                                               _%e166747167418%_
                                               _%hd166748167421%_
                                               _%tl166749167423%_
                                               _%e166750167426%_
                                               _%hd166751167429%_
                                               _%tl166752167431%_
                                               _%e166753167434%_
                                               _%hd166754167437%_
                                               _%tl166755167439%_
                                               _%e166756167442%_
                                               _%hd166757167445%_
                                               _%tl166758167447%_
                                               _%e166759167450%_
                                               _%hd166760167453%_
                                               _%tl166761167455%_
                                               _%e166762167458%_
                                               _%hd166763167461%_
                                               _%tl166764167463%_
                                               _%__splice170756170757%_
                                               _%target166765167466%_
                                               _%tl166767167468%_)
                                              (_%__kont170766170767%_))))
                                      (_%__kont170766170767%_))
                                  (_%__kont170766170767%_))))
                          (_%__kont170766170767%_))
                      (_%__kont170766170767%_))
                  (_%__kont170766170767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170766170767%_))))
                                          (_%__match171245171246%_
                                           _%e166726167362%_
                                           _%hd166727167365%_
                                           _%tl166728167367%_
                                           _%e166729167370%_
                                           _%hd166730167373%_
                                           _%tl166731167375%_
                                           _%e166732167378%_
                                           _%hd166733167381%_
                                           _%tl166734167383%_
                                           _%e166735167386%_
                                           _%hd166736167389%_
                                           _%tl166737167391%_
                                           _%e166738167394%_
                                           _%hd166739167397%_
                                           _%tl166740167399%_
                                           _%e166741167402%_
                                           _%hd166742167405%_
                                           _%tl166743167407%_
                                           _%e166744167410%_
                                           _%hd166745167413%_
                                           _%tl166746167415%_
                                           _%e166747167418%_
                                           _%hd166748167421%_
                                           _%tl166749167423%_))
                                      (_%__match171245171246%_
                                       _%e166726167362%_
                                       _%hd166727167365%_
                                       _%tl166728167367%_
                                       _%e166729167370%_
                                       _%hd166730167373%_
                                       _%tl166731167375%_
                                       _%e166732167378%_
                                       _%hd166733167381%_
                                       _%tl166734167383%_
                                       _%e166735167386%_
                                       _%hd166736167389%_
                                       _%tl166737167391%_
                                       _%e166738167394%_
                                       _%hd166739167397%_
                                       _%tl166740167399%_
                                       _%e166741167402%_
                                       _%hd166742167405%_
                                       _%tl166743167407%_
                                       _%e166744167410%_
                                       _%hd166745167413%_
                                       _%tl166746167415%_
                                       _%e166747167418%_
                                       _%hd166748167421%_
                                       _%tl166749167423%_))))
                              (_%__match171245171246%_
                               _%e166726167362%_
                               _%hd166727167365%_
                               _%tl166728167367%_
                               _%e166729167370%_
                               _%hd166730167373%_
                               _%tl166731167375%_
                               _%e166732167378%_
                               _%hd166733167381%_
                               _%tl166734167383%_
                               _%e166735167386%_
                               _%hd166736167389%_
                               _%tl166737167391%_
                               _%e166738167394%_
                               _%hd166739167397%_
                               _%tl166740167399%_
                               _%e166741167402%_
                               _%hd166742167405%_
                               _%tl166743167407%_
                               _%e166744167410%_
                               _%hd166745167413%_
                               _%tl166746167415%_
                               _%e166747167418%_
                               _%hd166748167421%_
                               _%tl166749167423%_))
                          (_%__match171031171032%_
                           _%e166726167362%_
                           _%hd166727167365%_
                           _%tl166728167367%_
                           _%e166729167370%_
                           _%hd166730167373%_
                           _%tl166731167375%_
                           _%e166732167378%_
                           _%hd166733167381%_
                           _%tl166734167383%_
                           _%e166735167386%_
                           _%hd166736167389%_
                           _%tl166737167391%_
                           _%e166738167394%_
                           _%hd166739167397%_
                           _%tl166740167399%_
                           _%e166741167402%_
                           _%hd166742167405%_
                           _%tl166743167407%_
                           _%e166744167410%_
                           _%hd166745167413%_
                           _%tl166746167415%_
                           _%e166747167418%_
                           _%hd166748167421%_
                           _%tl166749167423%_
                           _%e166750167426%_
                           _%hd166751167429%_
                           _%tl166752167431%_))))
                   (_%__match170853170854%_
                    (lambda (_%e166682167551%_
                             _%hd166683167554%_
                             _%tl166684167556%_
                             _%e166685167559%_
                             _%hd166686167562%_
                             _%tl166687167564%_
                             _%e166688167567%_
                             _%hd166689167570%_
                             _%tl166690167572%_
                             _%e166691167575%_
                             _%hd166692167578%_
                             _%tl166693167580%_
                             _%e166694167583%_
                             _%hd166695167586%_
                             _%tl166696167588%_
                             _%e166697167591%_
                             _%hd166698167594%_
                             _%tl166699167596%_
                             _%e166700167599%_
                             _%hd166701167602%_
                             _%tl166702167604%_
                             _%e166703167607%_
                             _%hd166704167610%_
                             _%tl166705167612%_
                             _%e166706167615%_
                             _%hd166707167618%_
                             _%tl166708167620%_
                             _%e166709167623%_
                             _%hd166710167626%_
                             _%tl166711167628%_
                             _%__splice170752170753%_
                             _%target166712167631%_
                             _%tl166714167633%_)
                      (letrec ((_%loop166715167636%_
                                (lambda (_%hd166713167639%_
                                         _%args166719167641%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166713167639%_))
                                      (let ((_%e166716167644%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166713167639%_))))
                                        (let ((_%lp-tl166718167649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166716167644%_)))
                                              (_%lp-hd166717167647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166716167644%_))))
                                          (_%loop166715167636%_
                                           _%lp-tl166718167649%_
                                           (cons _%lp-hd166717167647%_
                                                 _%args166719167641%_))))
                                      (let ((_%args166720167652%_
                                             (reverse _%args166719167641%_)))
                                        (let ((_%L167655%_
                                               _%args166720167652%_)
                                              (_%L167656%_ _%hd166710167626%_)
                                              (_%L167657%_ _%hd166701167602%_)
                                              (_%L167658%_ _%hd166692167578%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167658%_
                                                      'call-method))
                                                   (let ((__tmp171873
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166667%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167657%_
                                                      __tmp171873)))
                                              (_%__kont170750170751%_
                                               _%L167655%_
                                               _%L167656%_
                                               _%L167657%_
                                               _%L167658%_)
                                              (_%__match171041171042%_
                                               _%e166682167551%_
                                               _%hd166683167554%_
                                               _%tl166684167556%_
                                               _%e166685167559%_
                                               _%hd166686167562%_
                                               _%tl166687167564%_
                                               _%e166688167567%_
                                               _%hd166689167570%_
                                               _%tl166690167572%_
                                               _%e166691167575%_
                                               _%hd166692167578%_
                                               _%tl166693167580%_
                                               _%e166694167583%_
                                               _%hd166695167586%_
                                               _%tl166696167588%_
                                               _%e166697167591%_
                                               _%hd166698167594%_
                                               _%tl166699167596%_
                                               _%e166700167599%_
                                               _%hd166701167602%_
                                               _%tl166702167604%_
                                               _%e166703167607%_
                                               _%hd166704167610%_
                                               _%tl166705167612%_
                                               _%e166706167615%_
                                               _%hd166707167618%_
                                               _%tl166708167620%_
                                               _%e166709167623%_
                                               _%hd166710167626%_
                                               _%tl166711167628%_))))))))
                        (_%loop166715167636%_ _%target166712167631%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170748170749%_))
                  (let ((_%e166682167551%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170748170749%_))))
                    (let ((_%tl166684167556%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166682167551%_)))
                          (_%hd166683167554%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166682167551%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166684167556%_))
                          (let ((_%e166685167559%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166684167556%_))))
                            (let ((_%tl166687167564%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166685167559%_)))
                                  (_%hd166686167562%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166685167559%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166686167562%_))
                                  (let ((_%e166688167567%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166686167562%_))))
                                    (let ((_%tl166690167572%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166688167567%_)))
                                          (_%hd166689167570%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166688167567%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166689167570%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166689167570%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166690167572%_))
                                                  (let ((_%e166691167575%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166690167572%_))))
                                                    (let ((_%tl166693167580%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166691167575%_)))
                                                          (_%hd166692167578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166691167575%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166693167580%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl166687167564%_))
                      (let ((_%e166694167583%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl166687167564%_))))
                        (let ((_%tl166696167588%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e166694167583%_)))
                              (_%hd166695167586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e166694167583%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd166695167586%_))
                              (let ((_%e166697167591%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd166695167586%_))))
                                (let ((_%tl166699167596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166697167591%_)))
                                      (_%hd166698167594%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166697167591%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd166698167594%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd166698167594%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl166699167596%_))
                                              (let ((_%e166700167599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl166699167596%_))))
                                                (let ((_%tl166702167604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e166700167599%_)))
                                                      (_%hd166701167602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e166700167599%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl166702167604%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl166696167588%_))
                                                          (let ((_%e166703167607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl166696167588%_))))
                    (let ((_%tl166705167612%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166703167607%_)))
                          (_%hd166704167610%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166703167607%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166704167610%_))
                          (let ((_%e166706167615%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166704167610%_))))
                            (let ((_%tl166708167620%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166706167615%_)))
                                  (_%hd166707167618%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166706167615%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166707167618%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166707167618%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166708167620%_))
                                          (let ((_%e166709167623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166708167620%_))))
                                            (let ((_%tl166711167628%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166709167623%_)))
                                                  (_%hd166710167626%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166709167623%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166711167628%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl166705167612%_))
                                                      (let ((_%__splice170752170753%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl166705167612%_ '0))))
                (let ((_%tl166714167633%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170752170753%_ '1)))
                      (_%target166712167631%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170752170753%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166714167633%_))
                      (_%__match170853170854%_
                       _%e166682167551%_
                       _%hd166683167554%_
                       _%tl166684167556%_
                       _%e166685167559%_
                       _%hd166686167562%_
                       _%tl166687167564%_
                       _%e166688167567%_
                       _%hd166689167570%_
                       _%tl166690167572%_
                       _%e166691167575%_
                       _%hd166692167578%_
                       _%tl166693167580%_
                       _%e166694167583%_
                       _%hd166695167586%_
                       _%tl166696167588%_
                       _%e166697167591%_
                       _%hd166698167594%_
                       _%tl166699167596%_
                       _%e166700167599%_
                       _%hd166701167602%_
                       _%tl166702167604%_
                       _%e166703167607%_
                       _%hd166704167610%_
                       _%tl166705167612%_
                       _%e166706167615%_
                       _%hd166707167618%_
                       _%tl166708167620%_
                       _%e166709167623%_
                       _%hd166710167626%_
                       _%tl166711167628%_
                       _%__splice170752170753%_
                       _%target166712167631%_
                       _%tl166714167633%_)
                      (_%__match171041171042%_
                       _%e166682167551%_
                       _%hd166683167554%_
                       _%tl166684167556%_
                       _%e166685167559%_
                       _%hd166686167562%_
                       _%tl166687167564%_
                       _%e166688167567%_
                       _%hd166689167570%_
                       _%tl166690167572%_
                       _%e166691167575%_
                       _%hd166692167578%_
                       _%tl166693167580%_
                       _%e166694167583%_
                       _%hd166695167586%_
                       _%tl166696167588%_
                       _%e166697167591%_
                       _%hd166698167594%_
                       _%tl166699167596%_
                       _%e166700167599%_
                       _%hd166701167602%_
                       _%tl166702167604%_
                       _%e166703167607%_
                       _%hd166704167610%_
                       _%tl166705167612%_
                       _%e166706167615%_
                       _%hd166707167618%_
                       _%tl166708167620%_
                       _%e166709167623%_
                       _%hd166710167626%_
                       _%tl166711167628%_))))
              (_%__match171041171042%_
               _%e166682167551%_
               _%hd166683167554%_
               _%tl166684167556%_
               _%e166685167559%_
               _%hd166686167562%_
               _%tl166687167564%_
               _%e166688167567%_
               _%hd166689167570%_
               _%tl166690167572%_
               _%e166691167575%_
               _%hd166692167578%_
               _%tl166693167580%_
               _%e166694167583%_
               _%hd166695167586%_
               _%tl166696167588%_
               _%e166697167591%_
               _%hd166698167594%_
               _%tl166699167596%_
               _%e166700167599%_
               _%hd166701167602%_
               _%tl166702167604%_
               _%e166703167607%_
               _%hd166704167610%_
               _%tl166705167612%_
               _%e166706167615%_
               _%hd166707167618%_
               _%tl166708167620%_
               _%e166709167623%_
               _%hd166710167626%_
               _%tl166711167628%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match171245171246%_
                                                   _%e166682167551%_
                                                   _%hd166683167554%_
                                                   _%tl166684167556%_
                                                   _%e166685167559%_
                                                   _%hd166686167562%_
                                                   _%tl166687167564%_
                                                   _%e166688167567%_
                                                   _%hd166689167570%_
                                                   _%tl166690167572%_
                                                   _%e166691167575%_
                                                   _%hd166692167578%_
                                                   _%tl166693167580%_
                                                   _%e166694167583%_
                                                   _%hd166695167586%_
                                                   _%tl166696167588%_
                                                   _%e166697167591%_
                                                   _%hd166698167594%_
                                                   _%tl166699167596%_
                                                   _%e166700167599%_
                                                   _%hd166701167602%_
                                                   _%tl166702167604%_
                                                   _%e166703167607%_
                                                   _%hd166704167610%_
                                                   _%tl166705167612%_))))
                                          (_%__match171245171246%_
                                           _%e166682167551%_
                                           _%hd166683167554%_
                                           _%tl166684167556%_
                                           _%e166685167559%_
                                           _%hd166686167562%_
                                           _%tl166687167564%_
                                           _%e166688167567%_
                                           _%hd166689167570%_
                                           _%tl166690167572%_
                                           _%e166691167575%_
                                           _%hd166692167578%_
                                           _%tl166693167580%_
                                           _%e166694167583%_
                                           _%hd166695167586%_
                                           _%tl166696167588%_
                                           _%e166697167591%_
                                           _%hd166698167594%_
                                           _%tl166699167596%_
                                           _%e166700167599%_
                                           _%hd166701167602%_
                                           _%tl166702167604%_
                                           _%e166703167607%_
                                           _%hd166704167610%_
                                           _%tl166705167612%_))
                                      (_%__match170921170922%_
                                       _%e166682167551%_
                                       _%hd166683167554%_
                                       _%tl166684167556%_
                                       _%e166685167559%_
                                       _%hd166686167562%_
                                       _%tl166687167564%_
                                       _%e166688167567%_
                                       _%hd166689167570%_
                                       _%tl166690167572%_
                                       _%e166691167575%_
                                       _%hd166692167578%_
                                       _%tl166693167580%_
                                       _%e166694167583%_
                                       _%hd166695167586%_
                                       _%tl166696167588%_
                                       _%e166697167591%_
                                       _%hd166698167594%_
                                       _%tl166699167596%_
                                       _%e166700167599%_
                                       _%hd166701167602%_
                                       _%tl166702167604%_
                                       _%e166703167607%_
                                       _%hd166704167610%_
                                       _%tl166705167612%_
                                       _%e166706167615%_
                                       _%hd166707167618%_
                                       _%tl166708167620%_))
                                  (_%__match171245171246%_
                                   _%e166682167551%_
                                   _%hd166683167554%_
                                   _%tl166684167556%_
                                   _%e166685167559%_
                                   _%hd166686167562%_
                                   _%tl166687167564%_
                                   _%e166688167567%_
                                   _%hd166689167570%_
                                   _%tl166690167572%_
                                   _%e166691167575%_
                                   _%hd166692167578%_
                                   _%tl166693167580%_
                                   _%e166694167583%_
                                   _%hd166695167586%_
                                   _%tl166696167588%_
                                   _%e166697167591%_
                                   _%hd166698167594%_
                                   _%tl166699167596%_
                                   _%e166700167599%_
                                   _%hd166701167602%_
                                   _%tl166702167604%_
                                   _%e166703167607%_
                                   _%hd166704167610%_
                                   _%tl166705167612%_))))
                          (_%__match171245171246%_
                           _%e166682167551%_
                           _%hd166683167554%_
                           _%tl166684167556%_
                           _%e166685167559%_
                           _%hd166686167562%_
                           _%tl166687167564%_
                           _%e166688167567%_
                           _%hd166689167570%_
                           _%tl166690167572%_
                           _%e166691167575%_
                           _%hd166692167578%_
                           _%tl166693167580%_
                           _%e166694167583%_
                           _%hd166695167586%_
                           _%tl166696167588%_
                           _%e166697167591%_
                           _%hd166698167594%_
                           _%tl166699167596%_
                           _%e166700167599%_
                           _%hd166701167602%_
                           _%tl166702167604%_
                           _%e166703167607%_
                           _%hd166704167610%_
                           _%tl166705167612%_))))
                  (_%__match171183171184%_
                   _%e166682167551%_
                   _%hd166683167554%_
                   _%tl166684167556%_
                   _%e166685167559%_
                   _%hd166686167562%_
                   _%tl166687167564%_
                   _%e166688167567%_
                   _%hd166689167570%_
                   _%tl166690167572%_
                   _%e166691167575%_
                   _%hd166692167578%_
                   _%tl166693167580%_
                   _%e166694167583%_
                   _%hd166695167586%_
                   _%tl166696167588%_
                   _%e166697167591%_
                   _%hd166698167594%_
                   _%tl166699167596%_
                   _%e166700167599%_
                   _%hd166701167602%_
                   _%tl166702167604%_))
              (_%__kont170766170767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170766170767%_))
                                          (_%__kont170766170767%_))
                                      (_%__kont170766170767%_))))
                              (_%__kont170766170767%_))))
                      (_%__kont170766170767%_))
                  (_%__kont170766170767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170766170767%_))
                                              (_%__kont170766170767%_))
                                          (_%__kont170766170767%_))))
                                  (_%__kont170766170767%_))))
                          (_%__kont170766170767%_))))
                  (_%__kont170766170767%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self165606%_ _%stx165607%_)
        (letrec ((_%force-e165609%_
                  (lambda (_%target166665%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target166665%_ '()))
                                      '()))))))
          (let* ((_%__stx171250171251%_ _%stx165607%_)
                 (_%g165617165839%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171250171251%_)))))
            (let ((_%__kont171252171253%_
                   (lambda (_%L166611%_ _%L166612%_ _%L166613%_ _%L166614%_)
                     (let ((_%$method166659%_
                            (let ((__tmp171875
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165606%_ 'methods)))
                                  (__tmp171874
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166612%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171875 __tmp171874)))
                           (_%args166660%_
                            (map (lambda (_%g166647166649%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165606%_
                                      _%g166647166649%_)))
                                 (let ((__tmp171876
                                        (lambda (_%g166651166654%_
                                                 _%g166652166656%_)
                                          (cons _%g166651166654%_
                                                _%g166652166656%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171876 '() _%L166611%_)))))
                       (let ((__tmp171877
                              (cons '%#call
                                    (cons (_%force-e165609%_ _%$method166659%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165606%_
                                                               'receiver))
                                                            '()))
                                                _%args166660%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171877 _%stx165607%_)))))
                  (_%__kont171256171257%_
                   (lambda (_%L166443%_
                            _%L166444%_
                            _%L166445%_
                            _%L166446%_
                            _%L166447%_)
                     (let ((_%$method166499%_
                            (let ((__tmp171879
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165606%_ 'methods)))
                                  (__tmp171878
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166444%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171879 __tmp171878)))
                           (_%args166500%_
                            (map (lambda (_%g166487166489%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165606%_
                                      _%g166487166489%_)))
                                 (let ((__tmp171880
                                        (lambda (_%g166491166494%_
                                                 _%g166492166496%_)
                                          (cons _%g166491166494%_
                                                _%g166492166496%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171880 '() _%L166443%_)))))
                       (let ((__tmp171881
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e165609%_
                                                 _%$method166499%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165606%_ 'receiver))
                          '()))
              _%args166500%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171881 _%stx165607%_)))))
                  (_%__kont171260171261%_
                   (lambda (_%L166274%_ _%L166275%_ _%L166276%_)
                     (let* ((_%$field166308%_
                             (let ((__tmp171883
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self165606%_ 'slots)))
                                   (__tmp171882
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L166274%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171883 __tmp171882)))
                            (__tmp171884
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self165606%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field166308%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self165606%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171884 _%stx165607%_))))
                  (_%__kont171262171263%_
                   (lambda (_%L166148%_ _%L166149%_ _%L166150%_ _%L166151%_)
                     (let ((_%$field166186%_
                            (let ((__tmp171886
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165606%_ 'slots)))
                                  (__tmp171885
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166149%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171886 __tmp171885)))
                           (_%expr166187%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self165606%_ _%L166148%_))))
                       (let ((__tmp171887
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self165606%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field166186%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165606%_ 'receiver))
                          '()))
              (cons _%expr166187%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171887 _%stx165607%_)))))
                  (_%__kont171264171265%_
                   (lambda (_%L166020%_ _%L166021%_)
                     (let* ((_%accessor166043%_
                             (let ((__tmp171888
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166021%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171888)))
                            (_%klass166045%_
                             (let ((__tmp171889
                                    (##structure-ref
                                     _%accessor166043%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165607%_
                                __tmp171889)))
                            (_%slot166047%_
                             (##structure-ref
                              _%accessor166043%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (not (##structure-ref
                                      _%accessor166043%_
                                      '4
                                      gxc#!accessor::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166045%_
                                       _%slot166047%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166045%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx165607%_
                           (let* ((_%$field166053%_
                                   (let ((__tmp171890
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165606%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171890 _%slot166047%_)))
                                  (__tmp171891
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165606%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165606%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171891
                              _%stx165607%_))))))
                  (_%__kont171266171267%_
                   (lambda (_%L165915%_ _%L165916%_ _%L165917%_)
                     (let* ((_%mutator165945%_
                             (let ((__tmp171892
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165917%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171892)))
                            (_%klass165947%_
                             (let ((__tmp171893
                                    (##structure-ref
                                     _%mutator165945%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165607%_
                                __tmp171893)))
                            (_%slot165949%_
                             (##structure-ref
                              _%mutator165945%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165951%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self165606%_ _%L165915%_))))
                       (if (and (not (##structure-ref
                                      _%mutator165945%_
                                      '4
                                      gxc#!mutator::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165947%_
                                       _%slot165949%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165947%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171894
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165917%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165916%_
                                                                '()))
                                                    (cons _%expr165951%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171894 _%stx165607%_))
                           (let* ((_%$field165957%_
                                   (let ((__tmp171895
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165606%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171895 _%slot165949%_)))
                                  (__tmp171896
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165606%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165606%_ 'receiver))
                               '()))
                   (cons _%expr165951%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171896
                              _%stx165607%_))))))
                  (_%__kont171268171269%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self165606%_ _%stx165607%_)))))
              (let* ((_%__match171749171750%_
                      (lambda (_%e165811165851%_
                               _%hd165812165854%_
                               _%tl165813165856%_
                               _%e165814165859%_
                               _%hd165815165862%_
                               _%tl165816165864%_
                               _%e165817165867%_
                               _%hd165818165870%_
                               _%tl165819165872%_
                               _%e165820165875%_
                               _%hd165821165878%_
                               _%tl165822165880%_
                               _%e165823165883%_
                               _%hd165824165886%_
                               _%tl165825165888%_
                               _%e165826165891%_
                               _%hd165827165894%_
                               _%tl165828165896%_
                               _%e165829165899%_
                               _%hd165830165902%_
                               _%tl165831165904%_
                               _%e165832165907%_
                               _%hd165833165910%_
                               _%tl165834165912%_)
                        (let ((_%L165915%_ _%hd165833165910%_)
                              (_%L165916%_ _%hd165830165902%_)
                              (_%L165917%_ _%hd165821165878%_))
                          (if (and (let ((__tmp171897
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165606%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165916%_
                                      __tmp171897))
                                   (let ((__tmp171898
                                          (let ((__tmp171899
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165917%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171899))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171898
                                      'gxc#!mutator::t)))
                              (_%__kont171266171267%_
                               _%L165915%_
                               _%L165916%_
                               _%L165917%_)
                              (_%__kont171268171269%_)))))
                     (_%__match171747171748%_
                      (lambda (_%e165811165851%_
                               _%hd165812165854%_
                               _%tl165813165856%_
                               _%e165814165859%_
                               _%hd165815165862%_
                               _%tl165816165864%_
                               _%e165817165867%_
                               _%hd165818165870%_
                               _%tl165819165872%_
                               _%e165820165875%_
                               _%hd165821165878%_
                               _%tl165822165880%_
                               _%e165823165883%_
                               _%hd165824165886%_
                               _%tl165825165888%_
                               _%e165826165891%_
                               _%hd165827165894%_
                               _%tl165828165896%_
                               _%e165829165899%_
                               _%hd165830165902%_
                               _%tl165831165904%_
                               _%e165832165907%_
                               _%hd165833165910%_
                               _%tl165834165912%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165834165912%_))
                            (_%__match171749171750%_
                             _%e165811165851%_
                             _%hd165812165854%_
                             _%tl165813165856%_
                             _%e165814165859%_
                             _%hd165815165862%_
                             _%tl165816165864%_
                             _%e165817165867%_
                             _%hd165818165870%_
                             _%tl165819165872%_
                             _%e165820165875%_
                             _%hd165821165878%_
                             _%tl165822165880%_
                             _%e165823165883%_
                             _%hd165824165886%_
                             _%tl165825165888%_
                             _%e165826165891%_
                             _%hd165827165894%_
                             _%tl165828165896%_
                             _%e165829165899%_
                             _%hd165830165902%_
                             _%tl165831165904%_
                             _%e165832165907%_
                             _%hd165833165910%_
                             _%tl165834165912%_)
                            (_%__kont171268171269%_))))
                     (_%__match171741171742%_
                      (lambda (_%e165811165851%_
                               _%hd165812165854%_
                               _%tl165813165856%_
                               _%e165814165859%_
                               _%hd165815165862%_
                               _%tl165816165864%_
                               _%e165817165867%_
                               _%hd165818165870%_
                               _%tl165819165872%_
                               _%e165820165875%_
                               _%hd165821165878%_
                               _%tl165822165880%_
                               _%e165823165883%_
                               _%hd165824165886%_
                               _%tl165825165888%_
                               _%e165826165891%_
                               _%hd165827165894%_
                               _%tl165828165896%_
                               _%e165829165899%_
                               _%hd165830165902%_
                               _%tl165831165904%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165825165888%_))
                            (let ((_%e165832165907%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165825165888%_))))
                              (let ((_%tl165834165912%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165832165907%_)))
                                    (_%hd165833165910%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165832165907%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165834165912%_))
                                    (_%__match171749171750%_
                                     _%e165811165851%_
                                     _%hd165812165854%_
                                     _%tl165813165856%_
                                     _%e165814165859%_
                                     _%hd165815165862%_
                                     _%tl165816165864%_
                                     _%e165817165867%_
                                     _%hd165818165870%_
                                     _%tl165819165872%_
                                     _%e165820165875%_
                                     _%hd165821165878%_
                                     _%tl165822165880%_
                                     _%e165823165883%_
                                     _%hd165824165886%_
                                     _%tl165825165888%_
                                     _%e165826165891%_
                                     _%hd165827165894%_
                                     _%tl165828165896%_
                                     _%e165829165899%_
                                     _%hd165830165902%_
                                     _%tl165831165904%_
                                     _%e165832165907%_
                                     _%hd165833165910%_
                                     _%tl165834165912%_)
                                    (_%__kont171268171269%_))))
                            (_%__kont171268171269%_))))
                     (_%__match171687171688%_
                      (lambda (_%e165787165964%_
                               _%hd165788165967%_
                               _%tl165789165969%_
                               _%e165790165972%_
                               _%hd165791165975%_
                               _%tl165792165977%_
                               _%e165793165980%_
                               _%hd165794165983%_
                               _%tl165795165985%_
                               _%e165796165988%_
                               _%hd165797165991%_
                               _%tl165798165993%_
                               _%e165799165996%_
                               _%hd165800165999%_
                               _%tl165801166001%_
                               _%e165802166004%_
                               _%hd165803166007%_
                               _%tl165804166009%_
                               _%e165805166012%_
                               _%hd165806166015%_
                               _%tl165807166017%_)
                        (let ((_%L166020%_ _%hd165806166015%_)
                              (_%L166021%_ _%hd165797165991%_))
                          (if (and (let ((__tmp171900
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165606%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166020%_
                                      __tmp171900))
                                   (let ((__tmp171901
                                          (let ((__tmp171902
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166021%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171902))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171901
                                      'gxc#!accessor::t)))
                              (_%__kont171264171265%_ _%L166020%_ _%L166021%_)
                              (_%__kont171268171269%_)))))
                     (_%__match171685171686%_
                      (lambda (_%e165787165964%_
                               _%hd165788165967%_
                               _%tl165789165969%_
                               _%e165790165972%_
                               _%hd165791165975%_
                               _%tl165792165977%_
                               _%e165793165980%_
                               _%hd165794165983%_
                               _%tl165795165985%_
                               _%e165796165988%_
                               _%hd165797165991%_
                               _%tl165798165993%_
                               _%e165799165996%_
                               _%hd165800165999%_
                               _%tl165801166001%_
                               _%e165802166004%_
                               _%hd165803166007%_
                               _%tl165804166009%_
                               _%e165805166012%_
                               _%hd165806166015%_
                               _%tl165807166017%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165801166001%_))
                            (_%__match171687171688%_
                             _%e165787165964%_
                             _%hd165788165967%_
                             _%tl165789165969%_
                             _%e165790165972%_
                             _%hd165791165975%_
                             _%tl165792165977%_
                             _%e165793165980%_
                             _%hd165794165983%_
                             _%tl165795165985%_
                             _%e165796165988%_
                             _%hd165797165991%_
                             _%tl165798165993%_
                             _%e165799165996%_
                             _%hd165800165999%_
                             _%tl165801166001%_
                             _%e165802166004%_
                             _%hd165803166007%_
                             _%tl165804166009%_
                             _%e165805166012%_
                             _%hd165806166015%_
                             _%tl165807166017%_)
                            (_%__match171741171742%_
                             _%e165787165964%_
                             _%hd165788165967%_
                             _%tl165789165969%_
                             _%e165790165972%_
                             _%hd165791165975%_
                             _%tl165792165977%_
                             _%e165793165980%_
                             _%hd165794165983%_
                             _%tl165795165985%_
                             _%e165796165988%_
                             _%hd165797165991%_
                             _%tl165798165993%_
                             _%e165799165996%_
                             _%hd165800165999%_
                             _%tl165801166001%_
                             _%e165802166004%_
                             _%hd165803166007%_
                             _%tl165804166009%_
                             _%e165805166012%_
                             _%hd165806166015%_
                             _%tl165807166017%_))))
                     (_%__match171631171632%_
                      (lambda (_%e165752166060%_
                               _%hd165753166063%_
                               _%tl165754166065%_
                               _%e165755166068%_
                               _%hd165756166071%_
                               _%tl165757166073%_
                               _%e165758166076%_
                               _%hd165759166079%_
                               _%tl165760166081%_
                               _%e165761166084%_
                               _%hd165762166087%_
                               _%tl165763166089%_
                               _%e165764166092%_
                               _%hd165765166095%_
                               _%tl165766166097%_
                               _%e165767166100%_
                               _%hd165768166103%_
                               _%tl165769166105%_
                               _%e165770166108%_
                               _%hd165771166111%_
                               _%tl165772166113%_
                               _%e165773166116%_
                               _%hd165774166119%_
                               _%tl165775166121%_
                               _%e165776166124%_
                               _%hd165777166127%_
                               _%tl165778166129%_
                               _%e165779166132%_
                               _%hd165780166135%_
                               _%tl165781166137%_
                               _%e165782166140%_
                               _%hd165783166143%_
                               _%tl165784166145%_)
                        (let ((_%L166148%_ _%hd165783166143%_)
                              (_%L166149%_ _%hd165780166135%_)
                              (_%L166150%_ _%hd165771166111%_)
                              (_%L166151%_ _%hd165762166087%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166151%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166151%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171903
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165606%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166150%_
                                      __tmp171903)))
                              (_%__kont171262171263%_
                               _%L166148%_
                               _%L166149%_
                               _%L166150%_
                               _%L166151%_)
                              (_%__kont171268171269%_)))))
                     (_%__match171623171624%_
                      (lambda (_%e165752166060%_
                               _%hd165753166063%_
                               _%tl165754166065%_
                               _%e165755166068%_
                               _%hd165756166071%_
                               _%tl165757166073%_
                               _%e165758166076%_
                               _%hd165759166079%_
                               _%tl165760166081%_
                               _%e165761166084%_
                               _%hd165762166087%_
                               _%tl165763166089%_
                               _%e165764166092%_
                               _%hd165765166095%_
                               _%tl165766166097%_
                               _%e165767166100%_
                               _%hd165768166103%_
                               _%tl165769166105%_
                               _%e165770166108%_
                               _%hd165771166111%_
                               _%tl165772166113%_
                               _%e165773166116%_
                               _%hd165774166119%_
                               _%tl165775166121%_
                               _%e165776166124%_
                               _%hd165777166127%_
                               _%tl165778166129%_
                               _%e165779166132%_
                               _%hd165780166135%_
                               _%tl165781166137%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165775166121%_))
                            (let ((_%e165782166140%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165775166121%_))))
                              (let ((_%tl165784166145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165782166140%_)))
                                    (_%hd165783166143%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165782166140%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165784166145%_))
                                    (_%__match171631171632%_
                                     _%e165752166060%_
                                     _%hd165753166063%_
                                     _%tl165754166065%_
                                     _%e165755166068%_
                                     _%hd165756166071%_
                                     _%tl165757166073%_
                                     _%e165758166076%_
                                     _%hd165759166079%_
                                     _%tl165760166081%_
                                     _%e165761166084%_
                                     _%hd165762166087%_
                                     _%tl165763166089%_
                                     _%e165764166092%_
                                     _%hd165765166095%_
                                     _%tl165766166097%_
                                     _%e165767166100%_
                                     _%hd165768166103%_
                                     _%tl165769166105%_
                                     _%e165770166108%_
                                     _%hd165771166111%_
                                     _%tl165772166113%_
                                     _%e165773166116%_
                                     _%hd165774166119%_
                                     _%tl165775166121%_
                                     _%e165776166124%_
                                     _%hd165777166127%_
                                     _%tl165778166129%_
                                     _%e165779166132%_
                                     _%hd165780166135%_
                                     _%tl165781166137%_
                                     _%e165782166140%_
                                     _%hd165783166143%_
                                     _%tl165784166145%_)
                                    (_%__kont171268171269%_))))
                            (_%__match171747171748%_
                             _%e165752166060%_
                             _%hd165753166063%_
                             _%tl165754166065%_
                             _%e165755166068%_
                             _%hd165756166071%_
                             _%tl165757166073%_
                             _%e165758166076%_
                             _%hd165759166079%_
                             _%tl165760166081%_
                             _%e165761166084%_
                             _%hd165762166087%_
                             _%tl165763166089%_
                             _%e165764166092%_
                             _%hd165765166095%_
                             _%tl165766166097%_
                             _%e165767166100%_
                             _%hd165768166103%_
                             _%tl165769166105%_
                             _%e165770166108%_
                             _%hd165771166111%_
                             _%tl165772166113%_
                             _%e165773166116%_
                             _%hd165774166119%_
                             _%tl165775166121%_))))
                     (_%__match171545171546%_
                      (lambda (_%e165718166194%_
                               _%hd165719166197%_
                               _%tl165720166199%_
                               _%e165721166202%_
                               _%hd165722166205%_
                               _%tl165723166207%_
                               _%e165724166210%_
                               _%hd165725166213%_
                               _%tl165726166215%_
                               _%e165727166218%_
                               _%hd165728166221%_
                               _%tl165729166223%_
                               _%e165730166226%_
                               _%hd165731166229%_
                               _%tl165732166231%_
                               _%e165733166234%_
                               _%hd165734166237%_
                               _%tl165735166239%_
                               _%e165736166242%_
                               _%hd165737166245%_
                               _%tl165738166247%_
                               _%e165739166250%_
                               _%hd165740166253%_
                               _%tl165741166255%_
                               _%e165742166258%_
                               _%hd165743166261%_
                               _%tl165744166263%_
                               _%e165745166266%_
                               _%hd165746166269%_
                               _%tl165747166271%_)
                        (let ((_%L166274%_ _%hd165746166269%_)
                              (_%L166275%_ _%hd165737166245%_)
                              (_%L166276%_ _%hd165728166221%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166276%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166276%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171904
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165606%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166275%_
                                      __tmp171904)))
                              (_%__kont171260171261%_
                               _%L166274%_
                               _%L166275%_
                               _%L166276%_)
                              (_%__match171749171750%_
                               _%e165718166194%_
                               _%hd165719166197%_
                               _%tl165720166199%_
                               _%e165721166202%_
                               _%hd165722166205%_
                               _%tl165723166207%_
                               _%e165724166210%_
                               _%hd165725166213%_
                               _%tl165726166215%_
                               _%e165727166218%_
                               _%hd165728166221%_
                               _%tl165729166223%_
                               _%e165730166226%_
                               _%hd165731166229%_
                               _%tl165732166231%_
                               _%e165733166234%_
                               _%hd165734166237%_
                               _%tl165735166239%_
                               _%e165736166242%_
                               _%hd165737166245%_
                               _%tl165738166247%_
                               _%e165739166250%_
                               _%hd165740166253%_
                               _%tl165741166255%_)))))
                     (_%__match171543171544%_
                      (lambda (_%e165718166194%_
                               _%hd165719166197%_
                               _%tl165720166199%_
                               _%e165721166202%_
                               _%hd165722166205%_
                               _%tl165723166207%_
                               _%e165724166210%_
                               _%hd165725166213%_
                               _%tl165726166215%_
                               _%e165727166218%_
                               _%hd165728166221%_
                               _%tl165729166223%_
                               _%e165730166226%_
                               _%hd165731166229%_
                               _%tl165732166231%_
                               _%e165733166234%_
                               _%hd165734166237%_
                               _%tl165735166239%_
                               _%e165736166242%_
                               _%hd165737166245%_
                               _%tl165738166247%_
                               _%e165739166250%_
                               _%hd165740166253%_
                               _%tl165741166255%_
                               _%e165742166258%_
                               _%hd165743166261%_
                               _%tl165744166263%_
                               _%e165745166266%_
                               _%hd165746166269%_
                               _%tl165747166271%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165741166255%_))
                            (_%__match171545171546%_
                             _%e165718166194%_
                             _%hd165719166197%_
                             _%tl165720166199%_
                             _%e165721166202%_
                             _%hd165722166205%_
                             _%tl165723166207%_
                             _%e165724166210%_
                             _%hd165725166213%_
                             _%tl165726166215%_
                             _%e165727166218%_
                             _%hd165728166221%_
                             _%tl165729166223%_
                             _%e165730166226%_
                             _%hd165731166229%_
                             _%tl165732166231%_
                             _%e165733166234%_
                             _%hd165734166237%_
                             _%tl165735166239%_
                             _%e165736166242%_
                             _%hd165737166245%_
                             _%tl165738166247%_
                             _%e165739166250%_
                             _%hd165740166253%_
                             _%tl165741166255%_
                             _%e165742166258%_
                             _%hd165743166261%_
                             _%tl165744166263%_
                             _%e165745166266%_
                             _%hd165746166269%_
                             _%tl165747166271%_)
                            (_%__match171623171624%_
                             _%e165718166194%_
                             _%hd165719166197%_
                             _%tl165720166199%_
                             _%e165721166202%_
                             _%hd165722166205%_
                             _%tl165723166207%_
                             _%e165724166210%_
                             _%hd165725166213%_
                             _%tl165726166215%_
                             _%e165727166218%_
                             _%hd165728166221%_
                             _%tl165729166223%_
                             _%e165730166226%_
                             _%hd165731166229%_
                             _%tl165732166231%_
                             _%e165733166234%_
                             _%hd165734166237%_
                             _%tl165735166239%_
                             _%e165736166242%_
                             _%hd165737166245%_
                             _%tl165738166247%_
                             _%e165739166250%_
                             _%hd165740166253%_
                             _%tl165741166255%_
                             _%e165742166258%_
                             _%hd165743166261%_
                             _%tl165744166263%_
                             _%e165745166266%_
                             _%hd165746166269%_
                             _%tl165747166271%_))))
                     (_%__match171533171534%_
                      (lambda (_%e165718166194%_
                               _%hd165719166197%_
                               _%tl165720166199%_
                               _%e165721166202%_
                               _%hd165722166205%_
                               _%tl165723166207%_
                               _%e165724166210%_
                               _%hd165725166213%_
                               _%tl165726166215%_
                               _%e165727166218%_
                               _%hd165728166221%_
                               _%tl165729166223%_
                               _%e165730166226%_
                               _%hd165731166229%_
                               _%tl165732166231%_
                               _%e165733166234%_
                               _%hd165734166237%_
                               _%tl165735166239%_
                               _%e165736166242%_
                               _%hd165737166245%_
                               _%tl165738166247%_
                               _%e165739166250%_
                               _%hd165740166253%_
                               _%tl165741166255%_
                               _%e165742166258%_
                               _%hd165743166261%_
                               _%tl165744166263%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165743166261%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165744166263%_))
                                (let ((_%e165745166266%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165744166263%_))))
                                  (let ((_%tl165747166271%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165745166266%_)))
                                        (_%hd165746166269%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165745166266%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165747166271%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165741166255%_))
                                            (_%__match171545171546%_
                                             _%e165718166194%_
                                             _%hd165719166197%_
                                             _%tl165720166199%_
                                             _%e165721166202%_
                                             _%hd165722166205%_
                                             _%tl165723166207%_
                                             _%e165724166210%_
                                             _%hd165725166213%_
                                             _%tl165726166215%_
                                             _%e165727166218%_
                                             _%hd165728166221%_
                                             _%tl165729166223%_
                                             _%e165730166226%_
                                             _%hd165731166229%_
                                             _%tl165732166231%_
                                             _%e165733166234%_
                                             _%hd165734166237%_
                                             _%tl165735166239%_
                                             _%e165736166242%_
                                             _%hd165737166245%_
                                             _%tl165738166247%_
                                             _%e165739166250%_
                                             _%hd165740166253%_
                                             _%tl165741166255%_
                                             _%e165742166258%_
                                             _%hd165743166261%_
                                             _%tl165744166263%_
                                             _%e165745166266%_
                                             _%hd165746166269%_
                                             _%tl165747166271%_)
                                            (_%__match171623171624%_
                                             _%e165718166194%_
                                             _%hd165719166197%_
                                             _%tl165720166199%_
                                             _%e165721166202%_
                                             _%hd165722166205%_
                                             _%tl165723166207%_
                                             _%e165724166210%_
                                             _%hd165725166213%_
                                             _%tl165726166215%_
                                             _%e165727166218%_
                                             _%hd165728166221%_
                                             _%tl165729166223%_
                                             _%e165730166226%_
                                             _%hd165731166229%_
                                             _%tl165732166231%_
                                             _%e165733166234%_
                                             _%hd165734166237%_
                                             _%tl165735166239%_
                                             _%e165736166242%_
                                             _%hd165737166245%_
                                             _%tl165738166247%_
                                             _%e165739166250%_
                                             _%hd165740166253%_
                                             _%tl165741166255%_
                                             _%e165742166258%_
                                             _%hd165743166261%_
                                             _%tl165744166263%_
                                             _%e165745166266%_
                                             _%hd165746166269%_
                                             _%tl165747166271%_))
                                        (_%__match171747171748%_
                                         _%e165718166194%_
                                         _%hd165719166197%_
                                         _%tl165720166199%_
                                         _%e165721166202%_
                                         _%hd165722166205%_
                                         _%tl165723166207%_
                                         _%e165724166210%_
                                         _%hd165725166213%_
                                         _%tl165726166215%_
                                         _%e165727166218%_
                                         _%hd165728166221%_
                                         _%tl165729166223%_
                                         _%e165730166226%_
                                         _%hd165731166229%_
                                         _%tl165732166231%_
                                         _%e165733166234%_
                                         _%hd165734166237%_
                                         _%tl165735166239%_
                                         _%e165736166242%_
                                         _%hd165737166245%_
                                         _%tl165738166247%_
                                         _%e165739166250%_
                                         _%hd165740166253%_
                                         _%tl165741166255%_))))
                                (_%__match171747171748%_
                                 _%e165718166194%_
                                 _%hd165719166197%_
                                 _%tl165720166199%_
                                 _%e165721166202%_
                                 _%hd165722166205%_
                                 _%tl165723166207%_
                                 _%e165724166210%_
                                 _%hd165725166213%_
                                 _%tl165726166215%_
                                 _%e165727166218%_
                                 _%hd165728166221%_
                                 _%tl165729166223%_
                                 _%e165730166226%_
                                 _%hd165731166229%_
                                 _%tl165732166231%_
                                 _%e165733166234%_
                                 _%hd165734166237%_
                                 _%tl165735166239%_
                                 _%e165736166242%_
                                 _%hd165737166245%_
                                 _%tl165738166247%_
                                 _%e165739166250%_
                                 _%hd165740166253%_
                                 _%tl165741166255%_))
                            (_%__match171747171748%_
                             _%e165718166194%_
                             _%hd165719166197%_
                             _%tl165720166199%_
                             _%e165721166202%_
                             _%hd165722166205%_
                             _%tl165723166207%_
                             _%e165724166210%_
                             _%hd165725166213%_
                             _%tl165726166215%_
                             _%e165727166218%_
                             _%hd165728166221%_
                             _%tl165729166223%_
                             _%e165730166226%_
                             _%hd165731166229%_
                             _%tl165732166231%_
                             _%e165733166234%_
                             _%hd165734166237%_
                             _%tl165735166239%_
                             _%e165736166242%_
                             _%hd165737166245%_
                             _%tl165738166247%_
                             _%e165739166250%_
                             _%hd165740166253%_
                             _%tl165741166255%_))))
                     (_%__match171465171466%_
                      (lambda (_%e165667166315%_
                               _%hd165668166318%_
                               _%tl165669166320%_
                               _%e165670166323%_
                               _%hd165671166326%_
                               _%tl165672166328%_
                               _%e165673166331%_
                               _%hd165674166334%_
                               _%tl165675166336%_
                               _%e165676166339%_
                               _%hd165677166342%_
                               _%tl165678166344%_
                               _%e165679166347%_
                               _%hd165680166350%_
                               _%tl165681166352%_
                               _%e165682166355%_
                               _%hd165683166358%_
                               _%tl165684166360%_
                               _%e165685166363%_
                               _%hd165686166366%_
                               _%tl165687166368%_
                               _%e165688166371%_
                               _%hd165689166374%_
                               _%tl165690166376%_
                               _%e165691166379%_
                               _%hd165692166382%_
                               _%tl165693166384%_
                               _%e165694166387%_
                               _%hd165695166390%_
                               _%tl165696166392%_
                               _%e165697166395%_
                               _%hd165698166398%_
                               _%tl165699166400%_
                               _%e165700166403%_
                               _%hd165701166406%_
                               _%tl165702166408%_
                               _%e165703166411%_
                               _%hd165704166414%_
                               _%tl165705166416%_
                               _%__splice171258171259%_
                               _%target165706166419%_
                               _%tl165708166421%_)
                        (letrec ((_%loop165709166424%_
                                  (lambda (_%hd165707166427%_
                                           _%args165713166429%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165707166427%_))
                                        (let ((_%e165710166432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165707166427%_))))
                                          (let ((_%lp-tl165712166437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165710166432%_)))
                                                (_%lp-hd165711166435%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165710166432%_))))
                                            (_%loop165709166424%_
                                             _%lp-tl165712166437%_
                                             (cons _%lp-hd165711166435%_
                                                   _%args165713166429%_))))
                                        (let ((_%args165714166440%_
                                               (reverse _%args165713166429%_)))
                                          (let ((_%L166443%_
                                                 _%args165714166440%_)
                                                (_%L166444%_
                                                 _%hd165704166414%_)
                                                (_%L166445%_
                                                 _%hd165695166390%_)
                                                (_%L166446%_
                                                 _%hd165686166366%_)
                                                (_%L166447%_
                                                 _%hd165677166342%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166447%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166446%_
                                                        'call-method))
                                                     (let ((__tmp171905
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165606%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166445%_
                                                        __tmp171905)))
                                                (_%__kont171256171257%_
                                                 _%L166443%_
                                                 _%L166444%_
                                                 _%L166445%_
                                                 _%L166446%_
                                                 _%L166447%_)
                                                (_%__kont171268171269%_))))))))
                          (_%loop165709166424%_ _%target165706166419%_ '()))))
                     (_%__match171423171424%_
                      (lambda (_%e165667166315%_
                               _%hd165668166318%_
                               _%tl165669166320%_
                               _%e165670166323%_
                               _%hd165671166326%_
                               _%tl165672166328%_
                               _%e165673166331%_
                               _%hd165674166334%_
                               _%tl165675166336%_
                               _%e165676166339%_
                               _%hd165677166342%_
                               _%tl165678166344%_
                               _%e165679166347%_
                               _%hd165680166350%_
                               _%tl165681166352%_
                               _%e165682166355%_
                               _%hd165683166358%_
                               _%tl165684166360%_
                               _%e165685166363%_
                               _%hd165686166366%_
                               _%tl165687166368%_
                               _%e165688166371%_
                               _%hd165689166374%_
                               _%tl165690166376%_
                               _%e165691166379%_
                               _%hd165692166382%_
                               _%tl165693166384%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd165692166382%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165693166384%_))
                                (let ((_%e165694166387%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165693166384%_))))
                                  (let ((_%tl165696166392%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165694166387%_)))
                                        (_%hd165695166390%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165694166387%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165696166392%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165690166376%_))
                                            (let ((_%e165697166395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165690166376%_))))
                                              (let ((_%tl165699166400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165697166395%_)))
                                                    (_%hd165698166398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165697166395%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd165698166398%_))
                                                    (let ((_%e165700166403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd165698166398%_))))
                                                      (let ((_%tl165702166408%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165700166403%_)))
                    (_%hd165701166406%_
                     (let () (declare (not safe)) (##car _%e165700166403%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd165701166406%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd165701166406%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165702166408%_))
                            (let ((_%e165703166411%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165702166408%_))))
                              (let ((_%tl165705166416%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165703166411%_)))
                                    (_%hd165704166414%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165703166411%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165705166416%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl165699166400%_))
                                        (let ((_%__splice171258171259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl165699166400%_
                                                  '0))))
                                          (let ((_%tl165708166421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171258171259%_
                                                    '1)))
                                                (_%target165706166419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171258171259%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165708166421%_))
                                                (_%__match171465171466%_
                                                 _%e165667166315%_
                                                 _%hd165668166318%_
                                                 _%tl165669166320%_
                                                 _%e165670166323%_
                                                 _%hd165671166326%_
                                                 _%tl165672166328%_
                                                 _%e165673166331%_
                                                 _%hd165674166334%_
                                                 _%tl165675166336%_
                                                 _%e165676166339%_
                                                 _%hd165677166342%_
                                                 _%tl165678166344%_
                                                 _%e165679166347%_
                                                 _%hd165680166350%_
                                                 _%tl165681166352%_
                                                 _%e165682166355%_
                                                 _%hd165683166358%_
                                                 _%tl165684166360%_
                                                 _%e165685166363%_
                                                 _%hd165686166366%_
                                                 _%tl165687166368%_
                                                 _%e165688166371%_
                                                 _%hd165689166374%_
                                                 _%tl165690166376%_
                                                 _%e165691166379%_
                                                 _%hd165692166382%_
                                                 _%tl165693166384%_
                                                 _%e165694166387%_
                                                 _%hd165695166390%_
                                                 _%tl165696166392%_
                                                 _%e165697166395%_
                                                 _%hd165698166398%_
                                                 _%tl165699166400%_
                                                 _%e165700166403%_
                                                 _%hd165701166406%_
                                                 _%tl165702166408%_
                                                 _%e165703166411%_
                                                 _%hd165704166414%_
                                                 _%tl165705166416%_
                                                 _%__splice171258171259%_
                                                 _%target165706166419%_
                                                 _%tl165708166421%_)
                                                (_%__kont171268171269%_))))
                                        (_%__kont171268171269%_))
                                    (_%__kont171268171269%_))))
                            (_%__kont171268171269%_))
                        (_%__kont171268171269%_))
                    (_%__kont171268171269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171268171269%_))))
                                            (_%__match171747171748%_
                                             _%e165667166315%_
                                             _%hd165668166318%_
                                             _%tl165669166320%_
                                             _%e165670166323%_
                                             _%hd165671166326%_
                                             _%tl165672166328%_
                                             _%e165673166331%_
                                             _%hd165674166334%_
                                             _%tl165675166336%_
                                             _%e165676166339%_
                                             _%hd165677166342%_
                                             _%tl165678166344%_
                                             _%e165679166347%_
                                             _%hd165680166350%_
                                             _%tl165681166352%_
                                             _%e165682166355%_
                                             _%hd165683166358%_
                                             _%tl165684166360%_
                                             _%e165685166363%_
                                             _%hd165686166366%_
                                             _%tl165687166368%_
                                             _%e165688166371%_
                                             _%hd165689166374%_
                                             _%tl165690166376%_))
                                        (_%__match171747171748%_
                                         _%e165667166315%_
                                         _%hd165668166318%_
                                         _%tl165669166320%_
                                         _%e165670166323%_
                                         _%hd165671166326%_
                                         _%tl165672166328%_
                                         _%e165673166331%_
                                         _%hd165674166334%_
                                         _%tl165675166336%_
                                         _%e165676166339%_
                                         _%hd165677166342%_
                                         _%tl165678166344%_
                                         _%e165679166347%_
                                         _%hd165680166350%_
                                         _%tl165681166352%_
                                         _%e165682166355%_
                                         _%hd165683166358%_
                                         _%tl165684166360%_
                                         _%e165685166363%_
                                         _%hd165686166366%_
                                         _%tl165687166368%_
                                         _%e165688166371%_
                                         _%hd165689166374%_
                                         _%tl165690166376%_))))
                                (_%__match171747171748%_
                                 _%e165667166315%_
                                 _%hd165668166318%_
                                 _%tl165669166320%_
                                 _%e165670166323%_
                                 _%hd165671166326%_
                                 _%tl165672166328%_
                                 _%e165673166331%_
                                 _%hd165674166334%_
                                 _%tl165675166336%_
                                 _%e165676166339%_
                                 _%hd165677166342%_
                                 _%tl165678166344%_
                                 _%e165679166347%_
                                 _%hd165680166350%_
                                 _%tl165681166352%_
                                 _%e165682166355%_
                                 _%hd165683166358%_
                                 _%tl165684166360%_
                                 _%e165685166363%_
                                 _%hd165686166366%_
                                 _%tl165687166368%_
                                 _%e165688166371%_
                                 _%hd165689166374%_
                                 _%tl165690166376%_))
                            (_%__match171533171534%_
                             _%e165667166315%_
                             _%hd165668166318%_
                             _%tl165669166320%_
                             _%e165670166323%_
                             _%hd165671166326%_
                             _%tl165672166328%_
                             _%e165673166331%_
                             _%hd165674166334%_
                             _%tl165675166336%_
                             _%e165676166339%_
                             _%hd165677166342%_
                             _%tl165678166344%_
                             _%e165679166347%_
                             _%hd165680166350%_
                             _%tl165681166352%_
                             _%e165682166355%_
                             _%hd165683166358%_
                             _%tl165684166360%_
                             _%e165685166363%_
                             _%hd165686166366%_
                             _%tl165687166368%_
                             _%e165688166371%_
                             _%hd165689166374%_
                             _%tl165690166376%_
                             _%e165691166379%_
                             _%hd165692166382%_
                             _%tl165693166384%_))))
                     (_%__match171355171356%_
                      (lambda (_%e165623166507%_
                               _%hd165624166510%_
                               _%tl165625166512%_
                               _%e165626166515%_
                               _%hd165627166518%_
                               _%tl165628166520%_
                               _%e165629166523%_
                               _%hd165630166526%_
                               _%tl165631166528%_
                               _%e165632166531%_
                               _%hd165633166534%_
                               _%tl165634166536%_
                               _%e165635166539%_
                               _%hd165636166542%_
                               _%tl165637166544%_
                               _%e165638166547%_
                               _%hd165639166550%_
                               _%tl165640166552%_
                               _%e165641166555%_
                               _%hd165642166558%_
                               _%tl165643166560%_
                               _%e165644166563%_
                               _%hd165645166566%_
                               _%tl165646166568%_
                               _%e165647166571%_
                               _%hd165648166574%_
                               _%tl165649166576%_
                               _%e165650166579%_
                               _%hd165651166582%_
                               _%tl165652166584%_
                               _%__splice171254171255%_
                               _%target165653166587%_
                               _%tl165655166589%_)
                        (letrec ((_%loop165656166592%_
                                  (lambda (_%hd165654166595%_
                                           _%args165660166597%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165654166595%_))
                                        (let ((_%e165657166600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165654166595%_))))
                                          (let ((_%lp-tl165659166605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165657166600%_)))
                                                (_%lp-hd165658166603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165657166600%_))))
                                            (_%loop165656166592%_
                                             _%lp-tl165659166605%_
                                             (cons _%lp-hd165658166603%_
                                                   _%args165660166597%_))))
                                        (let ((_%args165661166608%_
                                               (reverse _%args165660166597%_)))
                                          (let ((_%L166611%_
                                                 _%args165661166608%_)
                                                (_%L166612%_
                                                 _%hd165651166582%_)
                                                (_%L166613%_
                                                 _%hd165642166558%_)
                                                (_%L166614%_
                                                 _%hd165633166534%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166614%_
                                                        'call-method))
                                                     (let ((__tmp171906
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165606%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166613%_
                                                        __tmp171906)))
                                                (_%__kont171252171253%_
                                                 _%L166611%_
                                                 _%L166612%_
                                                 _%L166613%_
                                                 _%L166614%_)
                                                (_%__match171543171544%_
                                                 _%e165623166507%_
                                                 _%hd165624166510%_
                                                 _%tl165625166512%_
                                                 _%e165626166515%_
                                                 _%hd165627166518%_
                                                 _%tl165628166520%_
                                                 _%e165629166523%_
                                                 _%hd165630166526%_
                                                 _%tl165631166528%_
                                                 _%e165632166531%_
                                                 _%hd165633166534%_
                                                 _%tl165634166536%_
                                                 _%e165635166539%_
                                                 _%hd165636166542%_
                                                 _%tl165637166544%_
                                                 _%e165638166547%_
                                                 _%hd165639166550%_
                                                 _%tl165640166552%_
                                                 _%e165641166555%_
                                                 _%hd165642166558%_
                                                 _%tl165643166560%_
                                                 _%e165644166563%_
                                                 _%hd165645166566%_
                                                 _%tl165646166568%_
                                                 _%e165647166571%_
                                                 _%hd165648166574%_
                                                 _%tl165649166576%_
                                                 _%e165650166579%_
                                                 _%hd165651166582%_
                                                 _%tl165652166584%_))))))))
                          (_%loop165656166592%_ _%target165653166587%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171250171251%_))
                    (let ((_%e165623166507%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171250171251%_))))
                      (let ((_%tl165625166512%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165623166507%_)))
                            (_%hd165624166510%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165623166507%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165625166512%_))
                            (let ((_%e165626166515%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165625166512%_))))
                              (let ((_%tl165628166520%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165626166515%_)))
                                    (_%hd165627166518%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165626166515%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd165627166518%_))
                                    (let ((_%e165629166523%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd165627166518%_))))
                                      (let ((_%tl165631166528%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e165629166523%_)))
                                            (_%hd165630166526%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e165629166523%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd165630166526%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd165630166526%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl165631166528%_))
                                                    (let ((_%e165632166531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl165631166528%_))))
                                                      (let ((_%tl165634166536%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165632166531%_)))
                    (_%hd165633166534%_
                     (let () (declare (not safe)) (##car _%e165632166531%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl165634166536%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl165628166520%_))
                        (let ((_%e165635166539%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl165628166520%_))))
                          (let ((_%tl165637166544%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165635166539%_)))
                                (_%hd165636166542%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165635166539%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd165636166542%_))
                                (let ((_%e165638166547%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd165636166542%_))))
                                  (let ((_%tl165640166552%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165638166547%_)))
                                        (_%hd165639166550%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165638166547%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd165639166550%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd165639166550%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165640166552%_))
                                                (let ((_%e165641166555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165640166552%_))))
                                                  (let ((_%tl165643166560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165641166555%_)))
                                                        (_%hd165642166558%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165641166555%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165643166560%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl165637166544%_))
                                                            (let ((_%e165644166563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165637166544%_))))
                      (let ((_%tl165646166568%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165644166563%_)))
                            (_%hd165645166566%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165644166563%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd165645166566%_))
                            (let ((_%e165647166571%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd165645166566%_))))
                              (let ((_%tl165649166576%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165647166571%_)))
                                    (_%hd165648166574%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165647166571%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd165648166574%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd165648166574%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165649166576%_))
                                            (let ((_%e165650166579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165649166576%_))))
                                              (let ((_%tl165652166584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165650166579%_)))
                                                    (_%hd165651166582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165650166579%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl165652166584%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl165646166568%_))
                                                        (let ((_%__splice171254171255%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl165646166568%_ '0))))
                  (let ((_%tl165655166589%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171254171255%_ '1)))
                        (_%target165653166587%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171254171255%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl165655166589%_))
                        (_%__match171355171356%_
                         _%e165623166507%_
                         _%hd165624166510%_
                         _%tl165625166512%_
                         _%e165626166515%_
                         _%hd165627166518%_
                         _%tl165628166520%_
                         _%e165629166523%_
                         _%hd165630166526%_
                         _%tl165631166528%_
                         _%e165632166531%_
                         _%hd165633166534%_
                         _%tl165634166536%_
                         _%e165635166539%_
                         _%hd165636166542%_
                         _%tl165637166544%_
                         _%e165638166547%_
                         _%hd165639166550%_
                         _%tl165640166552%_
                         _%e165641166555%_
                         _%hd165642166558%_
                         _%tl165643166560%_
                         _%e165644166563%_
                         _%hd165645166566%_
                         _%tl165646166568%_
                         _%e165647166571%_
                         _%hd165648166574%_
                         _%tl165649166576%_
                         _%e165650166579%_
                         _%hd165651166582%_
                         _%tl165652166584%_
                         _%__splice171254171255%_
                         _%target165653166587%_
                         _%tl165655166589%_)
                        (_%__match171543171544%_
                         _%e165623166507%_
                         _%hd165624166510%_
                         _%tl165625166512%_
                         _%e165626166515%_
                         _%hd165627166518%_
                         _%tl165628166520%_
                         _%e165629166523%_
                         _%hd165630166526%_
                         _%tl165631166528%_
                         _%e165632166531%_
                         _%hd165633166534%_
                         _%tl165634166536%_
                         _%e165635166539%_
                         _%hd165636166542%_
                         _%tl165637166544%_
                         _%e165638166547%_
                         _%hd165639166550%_
                         _%tl165640166552%_
                         _%e165641166555%_
                         _%hd165642166558%_
                         _%tl165643166560%_
                         _%e165644166563%_
                         _%hd165645166566%_
                         _%tl165646166568%_
                         _%e165647166571%_
                         _%hd165648166574%_
                         _%tl165649166576%_
                         _%e165650166579%_
                         _%hd165651166582%_
                         _%tl165652166584%_))))
                (_%__match171543171544%_
                 _%e165623166507%_
                 _%hd165624166510%_
                 _%tl165625166512%_
                 _%e165626166515%_
                 _%hd165627166518%_
                 _%tl165628166520%_
                 _%e165629166523%_
                 _%hd165630166526%_
                 _%tl165631166528%_
                 _%e165632166531%_
                 _%hd165633166534%_
                 _%tl165634166536%_
                 _%e165635166539%_
                 _%hd165636166542%_
                 _%tl165637166544%_
                 _%e165638166547%_
                 _%hd165639166550%_
                 _%tl165640166552%_
                 _%e165641166555%_
                 _%hd165642166558%_
                 _%tl165643166560%_
                 _%e165644166563%_
                 _%hd165645166566%_
                 _%tl165646166568%_
                 _%e165647166571%_
                 _%hd165648166574%_
                 _%tl165649166576%_
                 _%e165650166579%_
                 _%hd165651166582%_
                 _%tl165652166584%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171747171748%_
                                                     _%e165623166507%_
                                                     _%hd165624166510%_
                                                     _%tl165625166512%_
                                                     _%e165626166515%_
                                                     _%hd165627166518%_
                                                     _%tl165628166520%_
                                                     _%e165629166523%_
                                                     _%hd165630166526%_
                                                     _%tl165631166528%_
                                                     _%e165632166531%_
                                                     _%hd165633166534%_
                                                     _%tl165634166536%_
                                                     _%e165635166539%_
                                                     _%hd165636166542%_
                                                     _%tl165637166544%_
                                                     _%e165638166547%_
                                                     _%hd165639166550%_
                                                     _%tl165640166552%_
                                                     _%e165641166555%_
                                                     _%hd165642166558%_
                                                     _%tl165643166560%_
                                                     _%e165644166563%_
                                                     _%hd165645166566%_
                                                     _%tl165646166568%_))))
                                            (_%__match171747171748%_
                                             _%e165623166507%_
                                             _%hd165624166510%_
                                             _%tl165625166512%_
                                             _%e165626166515%_
                                             _%hd165627166518%_
                                             _%tl165628166520%_
                                             _%e165629166523%_
                                             _%hd165630166526%_
                                             _%tl165631166528%_
                                             _%e165632166531%_
                                             _%hd165633166534%_
                                             _%tl165634166536%_
                                             _%e165635166539%_
                                             _%hd165636166542%_
                                             _%tl165637166544%_
                                             _%e165638166547%_
                                             _%hd165639166550%_
                                             _%tl165640166552%_
                                             _%e165641166555%_
                                             _%hd165642166558%_
                                             _%tl165643166560%_
                                             _%e165644166563%_
                                             _%hd165645166566%_
                                             _%tl165646166568%_))
                                        (_%__match171423171424%_
                                         _%e165623166507%_
                                         _%hd165624166510%_
                                         _%tl165625166512%_
                                         _%e165626166515%_
                                         _%hd165627166518%_
                                         _%tl165628166520%_
                                         _%e165629166523%_
                                         _%hd165630166526%_
                                         _%tl165631166528%_
                                         _%e165632166531%_
                                         _%hd165633166534%_
                                         _%tl165634166536%_
                                         _%e165635166539%_
                                         _%hd165636166542%_
                                         _%tl165637166544%_
                                         _%e165638166547%_
                                         _%hd165639166550%_
                                         _%tl165640166552%_
                                         _%e165641166555%_
                                         _%hd165642166558%_
                                         _%tl165643166560%_
                                         _%e165644166563%_
                                         _%hd165645166566%_
                                         _%tl165646166568%_
                                         _%e165647166571%_
                                         _%hd165648166574%_
                                         _%tl165649166576%_))
                                    (_%__match171747171748%_
                                     _%e165623166507%_
                                     _%hd165624166510%_
                                     _%tl165625166512%_
                                     _%e165626166515%_
                                     _%hd165627166518%_
                                     _%tl165628166520%_
                                     _%e165629166523%_
                                     _%hd165630166526%_
                                     _%tl165631166528%_
                                     _%e165632166531%_
                                     _%hd165633166534%_
                                     _%tl165634166536%_
                                     _%e165635166539%_
                                     _%hd165636166542%_
                                     _%tl165637166544%_
                                     _%e165638166547%_
                                     _%hd165639166550%_
                                     _%tl165640166552%_
                                     _%e165641166555%_
                                     _%hd165642166558%_
                                     _%tl165643166560%_
                                     _%e165644166563%_
                                     _%hd165645166566%_
                                     _%tl165646166568%_))))
                            (_%__match171747171748%_
                             _%e165623166507%_
                             _%hd165624166510%_
                             _%tl165625166512%_
                             _%e165626166515%_
                             _%hd165627166518%_
                             _%tl165628166520%_
                             _%e165629166523%_
                             _%hd165630166526%_
                             _%tl165631166528%_
                             _%e165632166531%_
                             _%hd165633166534%_
                             _%tl165634166536%_
                             _%e165635166539%_
                             _%hd165636166542%_
                             _%tl165637166544%_
                             _%e165638166547%_
                             _%hd165639166550%_
                             _%tl165640166552%_
                             _%e165641166555%_
                             _%hd165642166558%_
                             _%tl165643166560%_
                             _%e165644166563%_
                             _%hd165645166566%_
                             _%tl165646166568%_))))
                    (_%__match171685171686%_
                     _%e165623166507%_
                     _%hd165624166510%_
                     _%tl165625166512%_
                     _%e165626166515%_
                     _%hd165627166518%_
                     _%tl165628166520%_
                     _%e165629166523%_
                     _%hd165630166526%_
                     _%tl165631166528%_
                     _%e165632166531%_
                     _%hd165633166534%_
                     _%tl165634166536%_
                     _%e165635166539%_
                     _%hd165636166542%_
                     _%tl165637166544%_
                     _%e165638166547%_
                     _%hd165639166550%_
                     _%tl165640166552%_
                     _%e165641166555%_
                     _%hd165642166558%_
                     _%tl165643166560%_))
                (_%__kont171268171269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171268171269%_))
                                            (_%__kont171268171269%_))
                                        (_%__kont171268171269%_))))
                                (_%__kont171268171269%_))))
                        (_%__kont171268171269%_))
                    (_%__kont171268171269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171268171269%_))
                                                (_%__kont171268171269%_))
                                            (_%__kont171268171269%_))))
                                    (_%__kont171268171269%_))))
                            (_%__kont171268171269%_))))
                    (_%__kont171268171269%_))))))))))
