(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712161244)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171808 (list gxc#::identity::t))
            (__tmp171807 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171808
         '()
         __tmp171807
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args170673%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args170673%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171809
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
        (__make-promise __tmp171809)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx170665%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self170668%_
                (let ((__obj171802
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171802))
               (__tmp171810
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self170668%_ _%stx170665%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171810
           gxc#current-compile-method
           _%self170668%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171812 (list gxc#::void::t))
            (__tmp171811 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171812
         '(receiver methods slots)
         __tmp171811
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args170662%_
        (apply make-instance gxc#::collect-object-refs::t _%$args170662%_)))
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
      (let ((__tmp171813
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
        (__make-promise __tmp171813)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%_170627%_
               _%receiver170622170629%_
               _%methods170623170631%_
               _%slots170624170633%_
               _%stx170635%_)
        (let* ((_%receiver170638%_
                (if (eq? _%receiver170622170629%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170622170629%_))
               (_%methods170640%_
                (if (eq? _%methods170623170631%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170623170631%_))
               (_%slots170642%_
                (if (eq? _%slots170624170633%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170624170633%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self170644%_
                  (let ((__obj171804
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
                       __obj171804
                       _%receiver170638%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171804
                       _%methods170640%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171804
                       _%slots170642%_
                       '3
                       '#f
                       '#f))
                    __obj171804))
                 (__tmp171814
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170644%_ _%stx170635%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171814
             gxc#current-compile-method
             _%self170644%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords170651%_ . _%args170652%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords170651%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170651%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170651%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170651%_
                  'slots:
                  absent-value))
               _%args170652%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args170625170658%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args170625170658%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171816 (list gxc#::basic-xform-expression::t))
            (__tmp171815 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171816
         '(receiver klass methods slots)
         __tmp171815
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args170618%_
        (apply make-instance gxc#::subst-object-refs::t _%$args170618%_)))
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
      (let ((__tmp171817
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
        (__make-promise __tmp171817)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%_170579%_
               _%receiver170573170581%_
               _%klass170574170583%_
               _%methods170575170585%_
               _%slots170576170587%_
               _%stx170589%_)
        (let* ((_%receiver170592%_
                (if (eq? _%receiver170573170581%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170573170581%_))
               (_%klass170594%_
                (if (eq? _%klass170574170583%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass170574170583%_))
               (_%methods170596%_
                (if (eq? _%methods170575170585%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170575170585%_))
               (_%slots170598%_
                (if (eq? _%slots170576170587%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170576170587%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self170600%_
                  (let ((__obj171806
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
                       __obj171806
                       _%receiver170592%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171806
                       _%klass170594%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171806
                       _%methods170596%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171806
                       _%slots170598%_
                       '4
                       '#f
                       '#f))
                    __obj171806))
                 (__tmp171818
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170600%_ _%stx170589%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171818
             gxc#current-compile-method
             _%self170600%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords170607%_ . _%args170608%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords170607%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170607%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170607%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170607%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170607%_
                  'slots:
                  absent-value))
               _%args170608%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args170577170614%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args170577170614%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167754%_ _%stx167755%_)
        (letrec ((_%generate-method-bind167757%_
                  (lambda (_%$klass170565%_
                           _%$method-table170566%_
                           _%id170567%_
                           _%$id170568%_)
                    (let ((_%$tmp170570%_
                           (let ((__tmp171819
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171819))))
                      (cons (cons _%$id170568%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp170570%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table170566%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id170567%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp170570%_ '()))
                    (cons (cons '%#ref (cons _%$tmp170570%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id170567%_
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
                 (_%generate-slot-bind167758%_
                  (lambda (_%$klass170559%_ _%id170560%_ _%$id170561%_)
                    (let ((_%$tmp170563%_
                           (let ((__tmp171820
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171820))))
                      (cons (cons _%$id170561%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp170563%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass170559%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id170560%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp170563%_ '()))
                        (cons (cons '%#ref (cons _%$tmp170563%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id170560%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167759%_
                  (lambda (_%$klass170553%_
                           _%$method-table170554%_
                           _%methods-bind170555%_
                           _%slots-bind170556%_
                           _%specializer-impl170557%_)
                    (let ((__tmp171821
                           (cons '%#lambda
                                 (cons (cons _%$klass170553%_
                                             (cons _%$method-table170554%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind170556%_
                                                            _%methods-bind170555%_))
                                                         (cons _%specializer-impl170557%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171821 _%stx167755%_))))
                 (_%generate-specializer-def167760%_
                  (lambda (_%id170549%_
                           _%specializer-id170550%_
                           _%specializer-impl170551%_)
                    (let ((__tmp171822
                           (cons '%#begin
                                 (cons _%stx167755%_
                                       (cons (let ((__tmp171823
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id170550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl170551%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171823
                                                _%stx167755%_))
                                             (cons (let ((__tmp171824
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id170549%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id170550%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171824
                                                      _%stx167755%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171822 _%stx167755%_)))))
          (let* ((_%__stx170762170763%_ _%stx167755%_)
                 (_%g167763167783%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170762170763%_)))))
            (let ((_%__kont170764170765%_
                   (lambda (_%L167827%_ _%L167828%_)
                     (let ((_%method-calls167847%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167848%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167849%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167851%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167847%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167848%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167827%_))
                             (let ()
                               (let* ((_%__stx170676170677%_ _%L167827%_)
                                      (_%g168239168257%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx170676170677%_)))))
                                 (let ((_%__kont170678170679%_
                                        (lambda (_%L168293%_
                                                 _%L168294%_
                                                 _%L168295%_)
                                          (for-each
                                           (lambda (_%g168311168313%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs__%
                                                '#f
                                                _%L168295%_
                                                _%method-calls167847%_
                                                _%slot-refs167848%_
                                                _%g168311168313%_)))
                                           _%L168293%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?167851%_))
                                              _%stx167755%_
                                              (let* ((_%specializer-id168322%_
                                                      (let* ((_%id168316%_
                                                              (let ((__tmp171825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167828%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171825 '"::specialize")))
                     (_%specializer-id168319%_
                      (let ((__tmp171826
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167755%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id168316%_ __tmp171826))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id168319%_))
                _%specializer-id168319%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass168324%_
                                                      (let ((__tmp171827
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171827)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table168326%_
                                                      (let ((__tmp171828
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171828)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods168328%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167847%_)))
                                                     (_%$methods168332%_
                                                      (map (lambda (_%id168330%_)
                                                             (let ((__tmp171829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168330%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171829)))
                   _%methods168328%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168341%_
                                                      (for-each
                                                       (lambda (_%g168333168336%_
                                                                _%g168334168338%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167847%_
                                                            _%g168333168336%_
                                                            _%g168334168338%_)))
                                                       _%methods168328%_
                                                       _%$methods168332%_))
                                                     (_%methods-bind168351%_
                                                      (map (lambda (_%g168343168346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168344168348%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind167757%_
                        _%$klass168324%_
                        _%$method-table168326%_
                        _%g168343168346%_
                        _%g168344168348%_)))
                   _%methods168328%_
                   _%$methods168332%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots168353%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167848%_)))
                                                     (_%$slots168357%_
                                                      (map (lambda (_%id168355%_)
                                                             (let ((__tmp171830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168355%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171830)))
                   _%slots168353%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168366%_
                                                      (for-each
                                                       (lambda (_%g168358168361%_
                                                                _%g168359168363%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167848%_
                                                            _%g168358168361%_
                                                            _%g168359168363%_)))
                                                       _%slots168353%_
                                                       _%$slots168357%_))
                                                     (_%slots-bind168375%_
                                                      (map (lambda (_%g168367168370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168368168372%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind167758%_
                        _%$klass168324%_
                        _%g168367168370%_
                        _%g168368168372%_)))
                   _%slots168353%_
                   _%$slots168357%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body168381%_
                                                      (map (lambda (_%g168376168378%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs__%
                        '#f
                        _%L168295%_
                        _%$klass168324%_
                        _%method-calls167847%_
                        _%slot-refs167848%_
                        _%g168376168378%_)))
                   _%L168293%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl168383%_
                                                      (let ((__tmp171831
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L168295%_ _%L168294%_)
                                 _%specializer-body168381%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171831 _%stx167755%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl168385%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl167759%_
                                                         _%$klass168324%_
                                                         _%$method-table168326%_
                                                         _%methods-bind168351%_
                                                         _%slots-bind168375%_
                                                         _%specializer-impl168383%_))))
                                                (let ((__tmp171833
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167828%_)))
                                                      (__tmp171832
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id168322%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171833
                                                   '" => "
                                                   __tmp171832))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def167760%_
                                                   _%L167828%_
                                                   _%specializer-id168322%_
                                                   _%specializer-impl168385%_))))))
                                       (_%__kont170680170681%_
                                        (lambda () _%stx167755%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx170676170677%_))
                                       (let ((_%e168246168269%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx170676170677%_))))
                                         (let ((_%tl168244168274%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e168246168269%_)))
                                               (_%hd168245168272%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e168246168269%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl168244168274%_))
                                               (let ((_%e168249168277%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl168244168274%_))))
                                                 (let ((_%tl168247168282%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e168249168277%_)))
                                                       (_%hd168248168280%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e168249168277%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd168248168280%_))
                                                       (let ((_%e168252168285%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd168248168280%_))))
                 (let ((_%tl168250168290%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e168252168285%_)))
                       (_%hd168251168288%_
                        (let ()
                          (declare (not safe))
                          (##car _%e168252168285%_))))
                   (_%__kont170678170679%_
                    _%tl168247168282%_
                    _%tl168250168290%_
                    _%hd168251168288%_)))
               (_%__kont170680170681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont170680170681%_))))
                                       (_%__kont170680170681%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167827%_))
                                 (let ()
                                   (let* ((_%g168392168411%_
                                           (lambda (_%g168393168408%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g168393168408%_))))
                                          (_%g168391168698%_
                                           (lambda (_%g168393168414%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g168393168414%_))
                                                 (let ((_%e168397168416%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g168393168414%_))))
                                                   (let ((_%hd168396168419%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168397168416%_)))
                                                         (_%tl168395168421%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168397168416%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl168395168421%_))
                                                         (let ((_g171834_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl168395168421%_ '0))))
                   (begin
                     (let ((_g171835_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g171834_)
                                  (##vector-length _g171834_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g171835_ 2)))
                           (error "Context expects 2 values" _g171835_)))
                     (let ((_%target168398168424%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171834_ 0)))
                           (_%tl168400168426%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171834_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl168400168426%_))
                           (letrec ((_%loop168401168429%_
                                     (lambda (_%hd168399168432%_
                                              _%clause168405168434%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd168399168432%_))
                                           (let ((_%e168402168437%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd168399168432%_))))
                                             (let ((_%lp-hd168403168440%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e168402168437%_)))
                                                   (_%lp-tl168404168442%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e168402168437%_))))
                                               (let ((__tmp171836
                                                      (cons _%lp-hd168403168440%_
                                                            _%clause168405168434%_)))
                                                 (declare (not safe))
                                                 (_%loop168401168429%_
                                                  _%lp-tl168404168442%_
                                                  __tmp171836))))
                                           (let ((_%clause168406168445%_
                                                  (reverse _%clause168405168434%_)))
                                             ((lambda (_%L168448%_)
                                                (for-each
                                                 (lambda (_%clause168462%_)
                                                   (let* ((_%__stx170702170703%_
                                                           _%clause168462%_)
                                                          (_%g168465168480%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx170702170703%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont170704170705%_
                                                            (lambda (_%L168508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L168509%_
                             _%L168510%_)
                      (for-each
                       (lambda (_%g168525168527%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs__%
                            '#f
                            _%L168510%_
                            _%method-calls167847%_
                            _%slot-refs167848%_
                            _%g168525168527%_)))
                       _%L168508%_)))
                   (_%__kont170706170707%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx170702170703%_))
                   (let ((_%e168472168492%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx170702170703%_))))
                     (let ((_%tl168470168497%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e168472168492%_)))
                           (_%hd168471168495%_
                            (let ()
                              (declare (not safe))
                              (##car _%e168472168492%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd168471168495%_))
                           (let ((_%e168475168500%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd168471168495%_))))
                             (let ((_%tl168473168505%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e168475168500%_)))
                                   (_%hd168474168503%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e168475168500%_))))
                               (_%__kont170704170705%_
                                _%tl168470168497%_
                                _%tl168473168505%_
                                _%hd168474168503%_)))
                           (_%__kont170706170707%_))))
                   (_%__kont170706170707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp171837
                                                        (lambda (_%g168532168535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g168533168537%_)
                  (cons _%g168532168535%_ _%g168533168537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171837
                                                    '()
                                                    _%L168448%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?167851%_))
                                                    _%stx167755%_
                                                    (let* ((_%specializer-id168546%_
                                                            (let* ((_%id168540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp171838
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167828%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp171838 '"::specialize")))
                           (_%specializer-id168543%_
                            (let ((__tmp171839
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx167755%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id168540%_
                               __tmp171839))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id168543%_))
                      _%specializer-id168543%_))
                   (_%$klass168548%_
                    (let ((__tmp171840
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171840)))
                   (_%$method-table168550%_
                    (let ((__tmp171841
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171841)))
                   (_%methods168552%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls167847%_)))
                   (_%$methods168556%_
                    (map (lambda (_%id168554%_)
                           (let ((__tmp171842 (gensym _%id168554%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171842)))
                         _%methods168552%_))
                   (_%_168565%_
                    (for-each
                     (lambda (_%g168557168560%_ _%g168558168562%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls167847%_
                          _%g168557168560%_
                          _%g168558168562%_)))
                     _%methods168552%_
                     _%$methods168556%_))
                   (_%methods-bind168575%_
                    (map (lambda (_%g168567168570%_ _%g168568168572%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind167757%_
                              _%$klass168548%_
                              _%$method-table168550%_
                              _%g168567168570%_
                              _%g168568168572%_)))
                         _%methods168552%_
                         _%$methods168556%_))
                   (_%slots168577%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs167848%_)))
                   (_%$slots168581%_
                    (map (lambda (_%id168579%_)
                           (let ((__tmp171843 (gensym _%id168579%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171843)))
                         _%slots168577%_))
                   (_%_168590%_
                    (for-each
                     (lambda (_%g168582168585%_ _%g168583168587%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs167848%_
                          _%g168582168585%_
                          _%g168583168587%_)))
                     _%slots168577%_
                     _%$slots168581%_))
                   (_%slots-bind168599%_
                    (map (lambda (_%g168591168594%_ _%g168592168596%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind167758%_
                              _%$klass168548%_
                              _%g168591168594%_
                              _%g168592168596%_)))
                         _%slots168577%_
                         _%$slots168581%_))
                   (_%specializer-clauses168691%_
                    (map (lambda (_%clause168601%_)
                           (let* ((_%__stx170722170723%_ _%clause168601%_)
                                  (_%g168604168619%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx170722170723%_)))))
                             (let ((_%__kont170724170725%_
                                    (lambda (_%L168647%_
                                             _%L168648%_
                                             _%L168649%_)
                                      (let ((_%body168679%_
                                             (map (lambda (_%g168674168676%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs__%
                                                       '#f
                                                       _%L168649%_
                                                       _%$klass168548%_
                                                       _%method-calls167847%_
                                                       _%slot-refs167848%_
                                                       _%g168674168676%_)))
                                                  _%L168647%_)))
                                        (cons (cons _%L168649%_ _%L168648%_)
                                              _%body168679%_))))
                                   (_%__kont170726170727%_
                                    (lambda () _%clause168601%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx170722170723%_))
                                   (let ((_%e168611168631%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx170722170723%_))))
                                     (let ((_%tl168609168636%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e168611168631%_)))
                                           (_%hd168610168634%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e168611168631%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd168610168634%_))
                                           (let ((_%e168614168639%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd168610168634%_))))
                                             (let ((_%tl168612168644%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e168614168639%_)))
                                                   (_%hd168613168642%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e168614168639%_))))
                                               (_%__kont170724170725%_
                                                _%tl168609168636%_
                                                _%tl168612168644%_
                                                _%hd168613168642%_)))
                                           (_%__kont170726170727%_))))
                                   (_%__kont170726170727%_)))))
                         (let ((__tmp171844
                                (lambda (_%g168683168686%_ _%g168684168688%_)
                                  (cons _%g168683168686%_ _%g168684168688%_))))
                           (declare (not safe))
                           (__foldr1 __tmp171844 '() _%L168448%_))))
                   (_%specializer-impl168693%_
                    (let ((__tmp171845
                           (cons '%#case-lambda
                                 _%specializer-clauses168691%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171845 _%stx167755%_)))
                   (_%specializer-impl168695%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl167759%_
                       _%$klass168548%_
                       _%$method-table168550%_
                       _%methods-bind168575%_
                       _%slots-bind168599%_
                       _%specializer-impl168693%_))))
              (let ((__tmp171847
                     (let () (declare (not safe)) (gx#stx-e _%L167828%_)))
                    (__tmp171846
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id168546%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp171847
                 '" => "
                 __tmp171846))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def167760%_
                 _%L167828%_
                 _%specializer-id168546%_
                 _%specializer-impl168695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause168406168445%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop168401168429%_
                                _%target168398168424%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g168392168411%_ _%g168393168414%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g168392168411%_ _%g168393168414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168392168411%_
                                                    _%g168393168414%_))))))
                                     (declare (not safe))
                                     (_%g168391168698%_ _%L167827%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167827%_))
                                     (let ()
                                       (let* ((_%g168702168732%_
                                               (lambda (_%g168703168729%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g168703168729%_))))
                                              (_%g168701169341%_
                                               (lambda (_%g168703168735%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g168703168735%_))
                                                     (let ((_%e168709168737%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g168703168735%_))))
                                                       (let ((_%hd168708168740%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e168709168737%_)))
                     (_%tl168707168742%_
                      (let () (declare (not safe)) (##cdr _%e168709168737%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl168707168742%_))
                     (let ((_%e168712168745%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168707168742%_))))
                       (let ((_%hd168711168748%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168712168745%_)))
                             (_%tl168710168750%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168712168745%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd168711168748%_))
                             (let ((_%e168715168753%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd168711168748%_))))
                               (let ((_%hd168714168756%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168715168753%_)))
                                     (_%tl168713168758%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168715168753%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168714168756%_))
                                     (let ((_%e168718168761%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168714168756%_))))
                                       (let ((_%hd168717168764%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168718168761%_)))
                                             (_%tl168716168766%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168718168761%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd168717168764%_))
                                             (let ((_%e168721168769%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd168717168764%_))))
                                               (let ((_%hd168720168772%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168721168769%_)))
                                                     (_%tl168719168774%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168721168769%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl168719168774%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl168716168766%_))
                                                         (let ((_%e168724168777%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl168716168766%_))))
                   (let ((_%hd168723168780%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168724168777%_)))
                         (_%tl168722168782%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168724168777%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168722168782%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168713168758%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl168710168750%_))
                                 (let ((_%e168727168785%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl168710168750%_))))
                                   (let ((_%hd168726168788%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168727168785%_)))
                                         (_%tl168725168790%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168727168785%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl168725168790%_))
                                         ((lambda (_%L168793%_
                                                   _%L168794%_
                                                   _%L168795%_)
                                            (let* ((_%g168819168837%_
                                                    (lambda (_%g168820168834%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168820168834%_))))
                                                   (_%g168818168888%_
                                                    (lambda (_%g168820168840%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168820168840%_))
                                                          (let ((_%e168826168842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168820168840%_))))
                    (let ((_%hd168825168845%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168826168842%_)))
                          (_%tl168824168847%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168826168842%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168824168847%_))
                          (let ((_%e168829168850%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168824168847%_))))
                            (let ((_%hd168828168853%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168829168850%_)))
                                  (_%tl168827168855%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168829168850%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168828168853%_))
                                  (let ((_%e168832168858%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168828168853%_))))
                                    (let ((_%hd168831168861%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168832168858%_)))
                                          (_%tl168830168863%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168832168858%_))))
                                      ((lambda (_%L168866%_
                                                _%L168867%_
                                                _%L168868%_)
                                         (for-each
                                          (lambda (_%g168883168885%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%L168868%_
                                               _%method-calls167847%_
                                               _%slot-refs167848%_
                                               _%g168883168885%_)))
                                          _%L168866%_))
                                       _%tl168827168855%_
                                       _%tl168830168863%_
                                       _%hd168831168861%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168819168837%_ _%g168820168840%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g168819168837%_ _%g168820168840%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168819168837%_ _%g168820168840%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168818168888%_ _%L168794%_))
                                            (let* ((_%g168891168910%_
                                                    (lambda (_%g168892168907%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168892168907%_))))
                                                   (_%g168890169029%_
                                                    (lambda (_%g168892168913%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168892168913%_))
                                                          (let ((_%e168896168915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168892168913%_))))
                    (let ((_%hd168895168918%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168896168915%_)))
                          (_%tl168894168920%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168896168915%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168894168920%_))
                          (let ((_g171848_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl168894168920%_
                                    '0))))
                            (begin
                              (let ((_g171849_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g171848_)
                                           (##vector-length _g171848_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g171849_ 2)))
                                    (error "Context expects 2 values"
                                           _g171849_)))
                              (let ((_%target168897168923%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171848_ 0)))
                                    (_%tl168899168925%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171848_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168899168925%_))
                                    (letrec ((_%loop168900168928%_
                                              (lambda (_%hd168898168931%_
                                                       _%clause168904168933%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd168898168931%_))
                                                    (let ((_%e168901168936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd168898168931%_))))
                                                      (let ((_%lp-hd168902168939%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e168901168936%_)))
                    (_%lp-tl168903168941%_
                     (let () (declare (not safe)) (##cdr _%e168901168936%_))))
                (let ((__tmp171850
                       (cons _%lp-hd168902168939%_ _%clause168904168933%_)))
                  (declare (not safe))
                  (_%loop168900168928%_ _%lp-tl168903168941%_ __tmp171850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause168905168944%_
                                                           (reverse _%clause168904168933%_)))
                                                      ((lambda (_%L168947%_)
                                                         (for-each
                                                          (lambda (_%clause168960%_)
                                                            (let* ((_%g168962168977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g168963168974%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g168963168974%_))))
                           (_%g168961169019%_
                            (lambda (_%g168963168980%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g168963168980%_))
                                  (let ((_%e168969168982%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g168963168980%_))))
                                    (let ((_%hd168968168985%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168969168982%_)))
                                          (_%tl168967168987%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168969168982%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168968168985%_))
                                          (let ((_%e168972168990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168968168985%_))))
                                            (let ((_%hd168971168993%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168972168990%_)))
                                                  (_%tl168970168995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168972168990%_))))
                                              ((lambda (_%L168998%_
                                                        _%L168999%_
                                                        _%L169000%_)
                                                 (for-each
                                                  (lambda (_%g169014169016%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%L169000%_
                                                       _%method-calls167847%_
                                                       _%slot-refs167848%_
                                                       _%g169014169016%_)))
                                                  _%L168998%_))
                                               _%tl168967168987%_
                                               _%tl168970168995%_
                                               _%hd168971168993%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168962168977%_
                                             _%g168963168980%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168962168977%_ _%g168963168980%_))))))
                      (declare (not safe))
                      (_%g168961169019%_ _%clause168960%_)))
                  (let ((__tmp171851
                         (lambda (_%g169021169024%_ _%g169022169026%_)
                           (cons _%g169021169024%_ _%g169022169026%_))))
                    (declare (not safe))
                    (__foldr1 __tmp171851 '() _%L168947%_))))
               _%clause168905168944%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop168900168928%_
                                         _%target168897168923%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168891168910%_
                                       _%g168892168913%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g168891168910%_ _%g168892168913%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168891168910%_ _%g168892168913%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168890169029%_ _%L168793%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?167851%_))
                                                _%stx167755%_
                                                (let* ((_%specializer-id169038%_
                                                        (let* ((_%id169032%_
                                                                (let ((__tmp171852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L167828%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp171852 '"::specialize")))
                       (_%specializer-id169035%_
                        (let ((__tmp171853
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx167755%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id169032%_ __tmp171853))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id169035%_))
                  _%specializer-id169035%_))
               (_%$klass169040%_
                (let ((__tmp171854
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171854)))
               (_%$method-table169042%_
                (let ((__tmp171855
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171855)))
               (_%methods169044%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls167847%_)))
               (_%$methods169048%_
                (map (lambda (_%id169046%_)
                       (let ((__tmp171856 (gensym _%id169046%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171856)))
                     _%methods169044%_))
               (_%_169057%_
                (for-each
                 (lambda (_%g169049169052%_ _%g169050169054%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls167847%_
                      _%g169049169052%_
                      _%g169050169054%_)))
                 _%methods169044%_
                 _%$methods169048%_))
               (_%methods-bind169067%_
                (map (lambda (_%g169059169062%_ _%g169060169064%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind167757%_
                          _%$klass169040%_
                          _%$method-table169042%_
                          _%g169059169062%_
                          _%g169060169064%_)))
                     _%methods169044%_
                     _%$methods169048%_))
               (_%slots169069%_
                (let () (declare (not safe)) (hash-keys _%slot-refs167848%_)))
               (_%$slots169073%_
                (map (lambda (_%id169071%_)
                       (let ((__tmp171857 (gensym _%id169071%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171857)))
                     _%slots169069%_))
               (_%_169082%_
                (for-each
                 (lambda (_%g169074169077%_ _%g169075169079%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs167848%_
                      _%g169074169077%_
                      _%g169075169079%_)))
                 _%slots169069%_
                 _%$slots169073%_))
               (_%slots-bind169091%_
                (map (lambda (_%g169083169086%_ _%g169084169088%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind167758%_
                          _%$klass169040%_
                          _%g169083169086%_
                          _%g169084169088%_)))
                     _%slots169069%_
                     _%$slots169073%_))
               (_%specializer-lambda-expr169177%_
                (let* ((_%g169093169111%_
                        (lambda (_%g169094169108%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169094169108%_))))
                       (_%g169092169174%_
                        (lambda (_%g169094169114%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169094169114%_))
                              (let ((_%e169100169116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169094169114%_))))
                                (let ((_%hd169099169119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169100169116%_)))
                                      (_%tl169098169121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169100169116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169098169121%_))
                                      (let ((_%e169103169124%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169098169121%_))))
                                        (let ((_%hd169102169127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169103169124%_)))
                                              (_%tl169101169129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169103169124%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169102169127%_))
                                              (let ((_%e169106169132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169102169127%_))))
                                                (let ((_%hd169105169135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169106169132%_)))
                                                      (_%tl169104169137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169106169132%_))))
                                                  ((lambda (_%L169140%_
                                                            _%L169141%_
                                                            _%L169142%_)
                                                     (let* ((_%body169172%_
                                                             (map (lambda (_%g169167169169%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs__%
                               '#f
                               _%L169142%_
                               _%$klass169040%_
                               _%method-calls167847%_
                               _%slot-refs167848%_
                               _%g169167169169%_)))
                          _%L169140%_))
                    (__tmp171858
                     (cons '%#lambda
                           (cons (cons _%L169142%_ _%L169141%_)
                                 _%body169172%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp171858 _%L168794%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl169101169129%_
                                                   _%tl169104169137%_
                                                   _%hd169105169135%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g169093169111%_
                                                 _%g169094169114%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169093169111%_
                                         _%g169094169114%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169093169111%_ _%g169094169114%_))))))
                  (declare (not safe))
                  (_%g169092169174%_ _%L168794%_)))
               (_%specializer-case-lambda-expr169334%_
                (let* ((_%g169179169198%_
                        (lambda (_%g169180169195%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169180169195%_))))
                       (_%g169178169331%_
                        (lambda (_%g169180169201%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169180169201%_))
                              (let ((_%e169184169203%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169180169201%_))))
                                (let ((_%hd169183169206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169184169203%_)))
                                      (_%tl169182169208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169184169203%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl169182169208%_))
                                      (let ((_g171859_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl169182169208%_
                                                '0))))
                                        (begin
                                          (let ((_g171860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g171859_)
                                                       (##vector-length
                                                        _g171859_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g171860_ 2)))
                                                (error "Context expects 2 values"
                                                       _g171860_)))
                                          (let ((_%target169185169211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g171859_ 0)))
                                                (_%tl169187169213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g171859_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169187169213%_))
                                                (letrec ((_%loop169188169216%_
                                                          (lambda (_%hd169186169219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause169192169221%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169186169219%_))
                        (let ((_%e169189169224%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169186169219%_))))
                          (let ((_%lp-hd169190169227%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169189169224%_)))
                                (_%lp-tl169191169229%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169189169224%_))))
                            (let ((__tmp171861
                                   (cons _%lp-hd169190169227%_
                                         _%clause169192169221%_)))
                              (declare (not safe))
                              (_%loop169188169216%_
                               _%lp-tl169191169229%_
                               __tmp171861))))
                        (let ((_%clause169193169232%_
                               (reverse _%clause169192169221%_)))
                          ((lambda (_%L169235%_)
                             (let* ((_%clauses169329%_
                                     (map (lambda (_%clause169249%_)
                                            (let* ((_%__stx170742170743%_
                                                    _%clause169249%_)
                                                   (_%g169252169267%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx170742170743%_)))))
                                              (let ((_%__kont170744170745%_
                                                     (lambda (_%L169295%_
                                                              _%L169296%_
                                                              _%L169297%_)
                                                       (let ((_%body169317%_
                                                              (map (lambda (_%g169312169314%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs__%
                                '#f
                                _%L169297%_
                                _%$klass169040%_
                                _%method-calls167847%_
                                _%slot-refs167848%_
                                _%g169312169314%_)))
                           _%L169295%_)))
                 (cons (cons _%L169297%_ _%L169296%_) _%body169317%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170746170747%_
                                                     (lambda ()
                                                       _%clause169249%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx170742170743%_))
                                                    (let ((_%e169259169279%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx170742170743%_))))
                                                      (let ((_%tl169257169284%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169259169279%_)))
                    (_%hd169258169282%_
                     (let () (declare (not safe)) (##car _%e169259169279%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd169258169282%_))
                    (let ((_%e169262169287%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169258169282%_))))
                      (let ((_%tl169260169292%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169262169287%_)))
                            (_%hd169261169290%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169262169287%_))))
                        (_%__kont170744170745%_
                         _%tl169257169284%_
                         _%tl169260169292%_
                         _%hd169261169290%_)))
                    (_%__kont170746170747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170746170747%_)))))
                                          (let ((__tmp171862
                                                 (lambda (_%g169321169324%_
                                                          _%g169322169326%_)
                                                   (cons _%g169321169324%_
                                                         _%g169322169326%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp171862
                                             '()
                                             _%L169235%_))))
                                    (__tmp171863
                                     (cons '%#case-lambda _%clauses169329%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp171863
                                _%L168793%_)))
                           _%clause169193169232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop169188169216%_
                                                     _%target169185169211%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g169179169198%_
                                                   _%g169180169201%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169179169198%_
                                         _%g169180169201%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169179169198%_ _%g169180169201%_))))))
                  (declare (not safe))
                  (_%g169178169331%_ _%L168793%_)))
               (_%specializer-impl169336%_
                (let ((__tmp171864
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L168795%_ '())
                                               (cons _%specializer-lambda-expr169177%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr169334%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp171864 _%stx167755%_)))
               (_%specializer-impl169338%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl167759%_
                   _%$klass169040%_
                   _%$method-table169042%_
                   _%methods-bind169067%_
                   _%slots-bind169091%_
                   _%specializer-impl169336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp171866
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L167828%_)))
                                                        (__tmp171865
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id169038%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp171866
                                                     '" => "
                                                     __tmp171865))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def167760%_
                                                     _%L167828%_
                                                     _%specializer-id169038%_
                                                     _%specializer-impl169338%_)))))
                                          _%hd168726168788%_
                                          _%hd168723168780%_
                                          _%hd168720168772%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g168702168732%_
                                            _%g168703168735%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168702168732%_ _%g168703168735%_)))
                             (let ()
                               (declare (not safe))
                               (_%g168702168732%_ _%g168703168735%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168702168732%_ _%g168703168735%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168702168732%_ _%g168703168735%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168702168732%_
                                                        _%g168703168735%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168702168732%_
                                                _%g168703168735%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168702168732%_
                                        _%g168703168735%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168702168732%_ _%g168703168735%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g168702168732%_ _%g168703168735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168702168732%_
                                                        _%g168703168735%_))))))
                                         (declare (not safe))
                                         (_%g168701169341%_ _%L167827%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167827%_))
                                         (let ()
                                           (let* ((_%g169345169398%_
                                                   (lambda (_%g169346169395%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g169346169395%_))))
                                                  (_%g169344170541%_
                                                   (lambda (_%g169346169401%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g169346169401%_))
                                                         (let ((_%e169354169403%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g169346169401%_))))
                   (let ((_%hd169353169406%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169354169403%_)))
                         (_%tl169352169408%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169354169403%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd169353169406%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd169353169406%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl169352169408%_))
                                 (let ((_%e169357169411%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl169352169408%_))))
                                   (let ((_%hd169356169414%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e169357169411%_)))
                                         (_%tl169355169416%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e169357169411%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd169356169414%_))
                                         (let ((_%e169360169419%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd169356169414%_))))
                                           (let ((_%hd169359169422%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e169360169419%_)))
                                                 (_%tl169358169424%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e169360169419%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd169359169422%_))
                                                 (let ((_%e169363169427%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd169359169422%_))))
                                                   (let ((_%hd169362169430%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169363169427%_)))
                                                         (_%tl169361169432%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169363169427%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd169362169430%_))
                                                         (let ((_%e169366169435%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd169362169430%_))))
                   (let ((_%hd169365169438%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169366169435%_)))
                         (_%tl169364169440%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169366169435%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl169364169440%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl169361169432%_))
                             (let ((_%e169369169443%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl169361169432%_))))
                               (let ((_%hd169368169446%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e169369169443%_)))
                                     (_%tl169367169448%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e169369169443%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd169368169446%_))
                                     (let ((_%e169372169451%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd169368169446%_))))
                                       (let ((_%hd169371169454%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e169372169451%_)))
                                             (_%tl169370169456%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e169372169451%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd169371169454%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd169371169454%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl169370169456%_))
                                                     (let ((_%e169375169459%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl169370169456%_))))
                                                       (let ((_%hd169374169462%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e169375169459%_)))
                     (_%tl169373169464%_
                      (let () (declare (not safe)) (##cdr _%e169375169459%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd169374169462%_))
                     (let ((_%e169378169467%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd169374169462%_))))
                       (let ((_%hd169377169470%_
                              (let ()
                                (declare (not safe))
                                (##car _%e169378169467%_)))
                             (_%tl169376169472%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e169378169467%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd169377169470%_))
                             (let ((_%e169381169475%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd169377169470%_))))
                               (let ((_%hd169380169478%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e169381169475%_)))
                                     (_%tl169379169480%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e169381169475%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd169380169478%_))
                                     (let ((_%e169384169483%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd169380169478%_))))
                                       (let ((_%hd169383169486%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e169384169483%_)))
                                             (_%tl169382169488%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e169384169483%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl169382169488%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl169379169480%_))
                                                 (let ((_%e169387169491%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl169379169480%_))))
                                                   (let ((_%hd169386169494%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169387169491%_)))
                                                         (_%tl169385169496%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169387169491%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl169385169496%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl169376169472%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl169373169464%_))
                         (let ((_%e169390169499%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl169373169464%_))))
                           (let ((_%hd169389169502%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e169390169499%_)))
                                 (_%tl169388169504%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e169390169499%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl169388169504%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl169367169448%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl169358169424%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl169355169416%_))
                                             (let ((_%e169393169507%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl169355169416%_))))
                                               (let ((_%hd169392169510%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e169393169507%_)))
                                                     (_%tl169391169512%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e169393169507%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl169391169512%_))
                                                     ((lambda (_%L169515%_
                                                               _%L169516%_
                                                               _%L169517%_
                                                               _%L169518%_
                                                               _%L169519%_)
                                                        (let* ((_%g169559169621%_
                                                                (lambda (_%g169560169618%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169560169618%_))))
                       (_%g169558170538%_
                        (lambda (_%g169560169624%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169560169624%_))
                              (let ((_%e169568169626%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169560169624%_))))
                                (let ((_%hd169567169629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169568169626%_)))
                                      (_%tl169566169631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169568169626%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169567169629%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd169567169629%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169566169631%_))
                                              (let ((_%e169571169634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169566169631%_))))
                                                (let ((_%hd169570169637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169571169634%_)))
                                                      (_%tl169569169639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169571169634%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl169569169639%_))
                                                      (let ((_%e169574169642%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl169569169639%_))))
                (let ((_%hd169573169645%_
                       (let () (declare (not safe)) (##car _%e169574169642%_)))
                      (_%tl169572169647%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e169574169642%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169573169645%_))
                      (let ((_%e169577169650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169573169645%_))))
                        (let ((_%hd169576169653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169577169650%_)))
                              (_%tl169575169655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169577169650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd169576169653%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd169576169653%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169575169655%_))
                                      (let ((_%e169580169658%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169575169655%_))))
                                        (let ((_%hd169579169661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169580169658%_)))
                                              (_%tl169578169663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169580169658%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169579169661%_))
                                              (let ((_%e169583169666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169579169661%_))))
                                                (let ((_%hd169582169669%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169583169666%_)))
                                                      (_%tl169581169671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169583169666%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd169582169669%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd169582169669%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169581169671%_))
                      (let ((_%e169586169674%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169581169671%_))))
                        (let ((_%hd169585169677%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169586169674%_)))
                              (_%tl169584169679%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169586169674%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169584169679%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl169578169663%_))
                                  (let ((_%e169589169682%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl169578169663%_))))
                                    (let ((_%hd169588169685%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169589169682%_)))
                                          (_%tl169587169687%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169589169682%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd169588169685%_))
                                          (let ((_%e169592169690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd169588169685%_))))
                                            (let ((_%hd169591169693%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169592169690%_)))
                                                  (_%tl169590169695%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169592169690%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd169591169693%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd169591169693%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169590169695%_))
                                                          (let ((_%e169595169698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169590169695%_))))
                    (let ((_%hd169594169701%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169595169698%_)))
                          (_%tl169593169703%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169595169698%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169593169703%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl169587169687%_))
                              (let ((_%e169598169706%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl169587169687%_))))
                                (let ((_%hd169597169709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169598169706%_)))
                                      (_%tl169596169711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169598169706%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd169597169709%_))
                                      (let ((_%e169601169714%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd169597169709%_))))
                                        (let ((_%hd169600169717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169601169714%_)))
                                              (_%tl169599169719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169601169714%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd169600169717%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd169600169717%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl169599169719%_))
                                                      (let ((_%e169604169722%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl169599169719%_))))
                (let ((_%hd169603169725%_
                       (let () (declare (not safe)) (##car _%e169604169722%_)))
                      (_%tl169602169727%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e169604169722%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169602169727%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl169596169711%_))
                          (if (let ((__tmp171867
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl169596169711%_))))
                                (declare (not safe))
                                (##fx>= __tmp171867 '1))
                              (let ((_g171868_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl169596169711%_
                                        '1))))
                                (begin
                                  (let ((_g171869_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g171868_)
                                               (##vector-length _g171868_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g171869_ 2)))
                                        (error "Context expects 2 values"
                                               _g171869_)))
                                  (let ((_%target169605169730%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171868_ 0)))
                                        (_%tl169607169732%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171868_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169607169732%_))
                                        (let ((_%e169616169735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169607169732%_))))
                                          (let ((_%hd169615169738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169616169735%_)))
                                                (_%tl169614169740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169616169735%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169614169740%_))
                                                (letrec ((_%loop169608169743%_
                                                          (lambda (_%hd169606169746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref169612169748%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169606169746%_))
                        (let ((_%e169609169751%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169606169746%_))))
                          (let ((_%lp-hd169610169754%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169609169751%_)))
                                (_%lp-tl169611169756%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169609169751%_))))
                            (let ((__tmp171870
                                   (cons _%lp-hd169610169754%_
                                         _%kw-ref169612169748%_)))
                              (declare (not safe))
                              (_%loop169608169743%_
                               _%lp-tl169611169756%_
                               __tmp171870))))
                        (let ((_%kw-ref169613169759%_
                               (reverse _%kw-ref169612169748%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169572169647%_))
                              ((lambda (_%L169762%_
                                        _%L169763%_
                                        _%L169764%_
                                        _%L169765%_
                                        _%L169766%_)
                                 (let* ((_%kw-count169817%_
                                         (length (let ((__tmp171871
                                                        (lambda (_%g169809169812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169810169814%_)
                  (cons _%g169809169812%_ _%g169810169814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171871
                                                    '()
                                                    _%L169763%_))))
                                        (_%self-index169819%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count169817%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L169517%_))
                                       (let ()
                                         (let* ((_%g169823169837%_
                                                 (lambda (_%g169824169834%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169824169834%_))))
                                                (_%g169822169954%_
                                                 (lambda (_%g169824169840%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169824169840%_))
                                                       (let ((_%e169829169842%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169824169840%_))))
                 (let ((_%hd169828169845%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169829169842%_)))
                       (_%tl169827169847%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169829169842%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169827169847%_))
                       (let ((_%e169832169850%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169827169847%_))))
                         (let ((_%hd169831169853%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169832169850%_)))
                               (_%tl169830169855%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169832169850%_))))
                           ((lambda (_%L169858%_ _%L169859%_)
                              (let ((_%self169876%_
                                     (list-ref
                                      _%L169859%_
                                      _%self-index169819%_)))
                                (for-each
                                 (lambda (_%g169877169879%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs__%
                                      '#f
                                      _%self169876%_
                                      _%method-calls167847%_
                                      _%slot-refs167848%_
                                      _%g169877169879%_)))
                                 _%L169858%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?167851%_))
                                    _%stx167755%_
                                    (let* ((_%specializer-id169888%_
                                            (let* ((_%id169882%_
                                                    (let ((__tmp171872
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167828%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp171872
                                                       '"::specialize")))
                                                   (_%specializer-id169885%_
                                                    (let ((__tmp171873
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx167755%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id169882%_
                                                       __tmp171873))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id169885%_))
                                              _%specializer-id169885%_))
                                           (_%$klass169890%_
                                            (let ((__tmp171874
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171874)))
                                           (_%$method-table169892%_
                                            (let ((__tmp171875
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171875)))
                                           (_%methods169894%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls167847%_)))
                                           (_%$methods169898%_
                                            (map (lambda (_%id169896%_)
                                                   (let ((__tmp171876
                                                          (gensym _%id169896%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171876)))
                                                 _%methods169894%_))
                                           (_%_169907%_
                                            (for-each
                                             (lambda (_%g169899169902%_
                                                      _%g169900169904%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls167847%_
                                                  _%g169899169902%_
                                                  _%g169900169904%_)))
                                             _%methods169894%_
                                             _%$methods169898%_))
                                           (_%methods-bind169917%_
                                            (map (lambda (_%g169909169912%_
                                                          _%g169910169914%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind167757%_
                                                      _%$klass169890%_
                                                      _%$method-table169892%_
                                                      _%g169909169912%_
                                                      _%g169910169914%_)))
                                                 _%methods169894%_
                                                 _%$methods169898%_))
                                           (_%slots169919%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs167848%_)))
                                           (_%$slots169923%_
                                            (map (lambda (_%id169921%_)
                                                   (let ((__tmp171877
                                                          (gensym _%id169921%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171877)))
                                                 _%slots169919%_))
                                           (_%_169932%_
                                            (for-each
                                             (lambda (_%g169924169927%_
                                                      _%g169925169929%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs167848%_
                                                  _%g169924169927%_
                                                  _%g169925169929%_)))
                                             _%slots169919%_
                                             _%$slots169923%_))
                                           (_%slots-bind169941%_
                                            (map (lambda (_%g169933169936%_
                                                          _%g169934169938%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind167758%_
                                                      _%$klass169890%_
                                                      _%g169933169936%_
                                                      _%g169934169938%_)))
                                                 _%slots169919%_
                                                 _%$slots169923%_))
                                           (_%specializer-impl169949%_
                                            (let* ((_%specializer-body169947%_
                                                    (map (lambda (_%g169942169944%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%self169876%_
                                                              _%$klass169890%_
                                                              _%method-calls167847%_
                                                              _%slot-refs167848%_
                                                              _%g169942169944%_)))
                                                         _%L169858%_))
                                                   (__tmp171878
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L169519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L169518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp171879
                                       (cons '%#lambda
                                             (cons _%L169859%_
                                                   _%specializer-body169947%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp171879
                                   _%L169517%_))
                                '()))
                    '())
              (cons _%L169516%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L169515%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp171878
                                               _%stx167755%_)))
                                           (_%specializer-impl169951%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl167759%_
                                               _%$klass169890%_
                                               _%$method-table169892%_
                                               _%methods-bind169917%_
                                               _%slots-bind169941%_
                                               _%specializer-impl169949%_))))
                                      (let ((__tmp171881
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L167828%_)))
                                            (__tmp171880
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id169888%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp171881
                                         '" => "
                                         __tmp171880))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def167760%_
                                         _%L167828%_
                                         _%specializer-id169888%_
                                         _%specializer-impl169951%_))))))
                            _%tl169830169855%_
                            _%hd169831169853%_)))
                       (let ()
                         (declare (not safe))
                         (_%g169823169837%_ _%g169824169840%_)))))
               (let ()
                 (declare (not safe))
                 (_%g169823169837%_ _%g169824169840%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g169822169954%_ _%L169517%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L169517%_))
                                           (let ()
                                             (let* ((_%g169958169988%_
                                                     (lambda (_%g169959169985%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g169959169985%_))))
                                                    (_%g169957170534%_
                                                     (lambda (_%g169959169991%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g169959169991%_))
                                                           (let ((_%e169965169993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g169959169991%_))))
                     (let ((_%hd169964169996%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169965169993%_)))
                           (_%tl169963169998%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169965169993%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169963169998%_))
                           (let ((_%e169968170001%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169963169998%_))))
                             (let ((_%hd169967170004%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169968170001%_)))
                                   (_%tl169966170006%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169968170001%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169967170004%_))
                                   (let ((_%e169971170009%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169967170004%_))))
                                     (let ((_%hd169970170012%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169971170009%_)))
                                           (_%tl169969170014%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169971170009%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169970170012%_))
                                           (let ((_%e169974170017%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169970170012%_))))
                                             (let ((_%hd169973170020%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169974170017%_)))
                                                   (_%tl169972170022%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169974170017%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd169973170020%_))
                                                   (let ((_%e169977170025%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd169973170020%_))))
                                                     (let ((_%hd169976170028%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169977170025%_)))
                                                           (_%tl169975170030%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169977170025%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169975170030%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169972170022%_))
                       (let ((_%e169980170033%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169972170022%_))))
                         (let ((_%hd169979170036%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169980170033%_)))
                               (_%tl169978170038%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169980170033%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169978170038%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169969170014%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl169966170006%_))
                                       (let ((_%e169983170041%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl169966170006%_))))
                                         (let ((_%hd169982170044%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169983170041%_)))
                                               (_%tl169981170046%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169983170041%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl169981170046%_))
                                               ((lambda (_%L170049%_
                                                         _%L170050%_
                                                         _%L170051%_)
                                                  (let* ((_%g170075170089%_
                                                          (lambda (_%g170076170086%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170076170086%_))))
                                                         (_%g170074170130%_
                                                          (lambda (_%g170076170092%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170076170092%_))
                        (let ((_%e170081170094%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170076170092%_))))
                          (let ((_%hd170080170097%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170081170094%_)))
                                (_%tl170079170099%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170081170094%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170079170099%_))
                                (let ((_%e170084170102%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170079170099%_))))
                                  (let ((_%hd170083170105%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170084170102%_)))
                                        (_%tl170082170107%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170084170102%_))))
                                    ((lambda (_%L170110%_ _%L170111%_)
                                       (let ((_%self170124%_
                                              (list-ref
                                               _%L170111%_
                                               _%self-index169819%_)))
                                         (for-each
                                          (lambda (_%g170125170127%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%self170124%_
                                               _%method-calls167847%_
                                               _%slot-refs167848%_
                                               _%g170125170127%_)))
                                          _%L170110%_)))
                                     _%tl170082170107%_
                                     _%hd170083170105%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g170075170089%_ _%g170076170092%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170075170089%_ _%g170076170092%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170074170130%_
                                                     _%L170050%_))
                                                  (let* ((_%g170133170152%_
                                                          (lambda (_%g170134170149%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170134170149%_))))
                                                         (_%g170132170257%_
                                                          (lambda (_%g170134170155%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170134170155%_))
                        (let ((_%e170138170157%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170134170155%_))))
                          (let ((_%hd170137170160%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170138170157%_)))
                                (_%tl170136170162%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170138170157%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl170136170162%_))
                                (let ((_g171882_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl170136170162%_
                                          '0))))
                                  (begin
                                    (let ((_g171883_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g171882_)
                                                 (##vector-length _g171882_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g171883_ 2)))
                                          (error "Context expects 2 values"
                                                 _g171883_)))
                                    (let ((_%target170139170165%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171882_ 0)))
                                          (_%tl170141170167%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171882_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170141170167%_))
                                          (letrec ((_%loop170142170170%_
                                                    (lambda (_%hd170140170173%_
                                                             _%clause170146170175%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd170140170173%_))
                                                          (let ((_%e170143170178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd170140170173%_))))
                    (let ((_%lp-hd170144170181%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170143170178%_)))
                          (_%lp-tl170145170183%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170143170178%_))))
                      (let ((__tmp171884
                             (cons _%lp-hd170144170181%_
                                   _%clause170146170175%_)))
                        (declare (not safe))
                        (_%loop170142170170%_
                         _%lp-tl170145170183%_
                         __tmp171884))))
                  (let ((_%clause170147170186%_
                         (reverse _%clause170146170175%_)))
                    ((lambda (_%L170189%_)
                       (for-each
                        (lambda (_%clause170202%_)
                          (let* ((_%g170204170215%_
                                  (lambda (_%g170205170212%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g170205170212%_))))
                                 (_%g170203170247%_
                                  (lambda (_%g170205170218%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g170205170218%_))
                                        (let ((_%e170210170220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g170205170218%_))))
                                          (let ((_%hd170209170223%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170210170220%_)))
                                                (_%tl170208170225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170210170220%_))))
                                            ((lambda (_%L170228%_ _%L170229%_)
                                               (let ((_%self170241%_
                                                      (list-ref
                                                       _%L170229%_
                                                       _%self-index169819%_)))
                                                 (for-each
                                                  (lambda (_%g170242170244%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%self170241%_
                                                       _%method-calls167847%_
                                                       _%slot-refs167848%_
                                                       _%g170242170244%_)))
                                                  _%L170228%_)))
                                             _%tl170208170225%_
                                             _%hd170209170223%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170204170215%_
                                           _%g170205170218%_))))))
                            (declare (not safe))
                            (_%g170203170247%_ _%clause170202%_)))
                        (let ((__tmp171885
                               (lambda (_%g170249170252%_ _%g170250170254%_)
                                 (cons _%g170249170252%_ _%g170250170254%_))))
                          (declare (not safe))
                          (__foldr1 __tmp171885 '() _%L170189%_))))
                     _%clause170147170186%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop170142170170%_
                                               _%target170139170165%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170133170152%_
                                             _%g170134170155%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g170133170152%_ _%g170134170155%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170133170152%_ _%g170134170155%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170132170257%_
                                                     _%L170049%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?167851%_))
                                                      _%stx167755%_
                                                      (let* ((_%specializer-id170266%_
                                                              (let* ((_%id170260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp171886
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L167828%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp171886 '"::specialize")))
                             (_%specializer-id170263%_
                              (let ((__tmp171887
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx167755%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id170260%_
                                 __tmp171887))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id170263%_))
                        _%specializer-id170263%_))
                     (_%$klass170268%_
                      (let ((__tmp171888
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171888)))
                     (_%$method-table170270%_
                      (let ((__tmp171889
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171889)))
                     (_%methods170272%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls167847%_)))
                     (_%$methods170276%_
                      (map (lambda (_%id170274%_)
                             (let ((__tmp171890 (gensym _%id170274%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171890)))
                           _%methods170272%_))
                     (_%_170285%_
                      (for-each
                       (lambda (_%g170277170280%_ _%g170278170282%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls167847%_
                            _%g170277170280%_
                            _%g170278170282%_)))
                       _%methods170272%_
                       _%$methods170276%_))
                     (_%methods-bind170295%_
                      (map (lambda (_%g170287170290%_ _%g170288170292%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind167757%_
                                _%$klass170268%_
                                _%$method-table170270%_
                                _%g170287170290%_
                                _%g170288170292%_)))
                           _%methods170272%_
                           _%$methods170276%_))
                     (_%slots170297%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs167848%_)))
                     (_%$slots170301%_
                      (map (lambda (_%id170299%_)
                             (let ((__tmp171891 (gensym _%id170299%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171891)))
                           _%slots170297%_))
                     (_%_170310%_
                      (for-each
                       (lambda (_%g170302170305%_ _%g170303170307%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs167848%_
                            _%g170302170305%_
                            _%g170303170307%_)))
                       _%slots170297%_
                       _%$slots170301%_))
                     (_%slots-bind170319%_
                      (map (lambda (_%g170311170314%_ _%g170312170316%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind167758%_
                                _%$klass170268%_
                                _%g170311170314%_
                                _%g170312170316%_)))
                           _%slots170297%_
                           _%$slots170301%_))
                     (_%specializer-lambda-expr170392%_
                      (let* ((_%g170321170335%_
                              (lambda (_%g170322170332%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170322170332%_))))
                             (_%g170320170389%_
                              (lambda (_%g170322170338%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g170322170338%_))
                                    (let ((_%e170327170340%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g170322170338%_))))
                                      (let ((_%hd170326170343%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170327170340%_)))
                                            (_%tl170325170345%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170327170340%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170325170345%_))
                                            (let ((_%e170330170348%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170325170345%_))))
                                              (let ((_%hd170329170351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170330170348%_)))
                                                    (_%tl170328170353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170330170348%_))))
                                                ((lambda (_%L170356%_
                                                          _%L170357%_)
                                                   (let* ((_%self170380%_
                                                           (list-ref
                                                            _%L170357%_
                                                            _%self-index169819%_))
                                                          (_%body170386%_
                                                           (map (lambda (_%g170381170383%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%self170380%_
                             _%$klass170268%_
                             _%method-calls167847%_
                             _%slot-refs167848%_
                             _%g170381170383%_)))
                        _%L170356%_))
                  (__tmp171892
                   (cons '%#lambda (cons _%L170357%_ _%body170386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171892
                                                      _%L170050%_)))
                                                 _%tl170328170353%_
                                                 _%hd170329170351%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g170321170335%_
                                               _%g170322170338%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g170321170335%_
                                       _%g170322170338%_))))))
                        (declare (not safe))
                        (_%g170320170389%_ _%L170050%_)))
                     (_%specializer-case-lambda-expr170527%_
                      (let* ((_%g170394170413%_
                              (lambda (_%g170395170410%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170395170410%_))))
                             (_%g170393170524%_
                              (lambda (_%g170395170416%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g170395170416%_))
                                    (let ((_%e170399170418%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g170395170416%_))))
                                      (let ((_%hd170398170421%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170399170418%_)))
                                            (_%tl170397170423%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170399170418%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl170397170423%_))
                                            (let ((_g171893_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl170397170423%_
                                                      '0))))
                                              (begin
                                                (let ((_g171894_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g171893_)
                                                             (##vector-length
                                                              _g171893_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g171894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g171894_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target170400170426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171893_
                                                          0)))
                                                      (_%tl170402170428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171893_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170402170428%_))
                                                      (letrec ((_%loop170403170431%_
                                                                (lambda (_%hd170401170434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause170407170436%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd170401170434%_))
                              (let ((_%e170404170439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd170401170434%_))))
                                (let ((_%lp-hd170405170442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170404170439%_)))
                                      (_%lp-tl170406170444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170404170439%_))))
                                  (let ((__tmp171895
                                         (cons _%lp-hd170405170442%_
                                               _%clause170407170436%_)))
                                    (declare (not safe))
                                    (_%loop170403170431%_
                                     _%lp-tl170406170444%_
                                     __tmp171895))))
                              (let ((_%clause170408170447%_
                                     (reverse _%clause170407170436%_)))
                                ((lambda (_%L170450%_)
                                   (let* ((_%clauses170522%_
                                           (map (lambda (_%clause170464%_)
                                                  (let* ((_%g170466170477%_
                                                          (lambda (_%g170467170474%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170467170474%_))))
                                                         (_%g170465170512%_
                                                          (lambda (_%g170467170480%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170467170480%_))
                        (let ((_%e170472170482%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170467170480%_))))
                          (let ((_%hd170471170485%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170472170482%_)))
                                (_%tl170470170487%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170472170482%_))))
                            ((lambda (_%L170490%_ _%L170491%_)
                               (let* ((_%self170503%_
                                       (list-ref
                                        _%L170491%_
                                        _%self-index169819%_))
                                      (_%body170509%_
                                       (map (lambda (_%g170504170506%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%self170503%_
                                                 _%$klass170268%_
                                                 _%method-calls167847%_
                                                 _%slot-refs167848%_
                                                 _%g170504170506%_)))
                                            _%L170490%_)))
                                 (cons _%L170491%_ _%body170509%_)))
                             _%tl170470170487%_
                             _%hd170471170485%_)))
                        (let ()
                          (declare (not safe))
                          (_%g170466170477%_ _%g170467170480%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170465170512%_
                                                     _%clause170464%_)))
                                                (let ((__tmp171896
                                                       (lambda (_%g170514170517%_
                                                                _%g170515170519%_)
                                                         (cons _%g170514170517%_
                                                               _%g170515170519%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp171896
                                                   '()
                                                   _%L170450%_))))
                                          (__tmp171897
                                           (cons '%#case-lambda
                                                 _%clauses170522%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp171897
                                      _%L170049%_)))
                                 _%clause170408170447%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop170403170431%_ _%target170400170426%_ '())))
              (let ()
                (declare (not safe))
                (_%g170394170413%_ _%g170395170416%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g170394170413%_
                                               _%g170395170416%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g170394170413%_
                                       _%g170395170416%_))))))
                        (declare (not safe))
                        (_%g170393170524%_ _%L170049%_)))
                     (_%specializer-impl170529%_
                      (let ((__tmp171898
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L169519%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L169518%_ '())
                                           (cons (let ((__tmp171899
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L170051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr170392%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr170527%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp171899
                                                    _%stx167755%_))
                                                 '()))
                                     '())
                               (cons _%L169516%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L169515%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp171898 _%stx167755%_)))
                     (_%specializer-impl170531%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl167759%_
                         _%$klass170268%_
                         _%$method-table170270%_
                         _%methods-bind170295%_
                         _%slots-bind170319%_
                         _%specializer-impl170529%_))))
                (let ((__tmp171901
                       (let () (declare (not safe)) (gx#stx-e _%L167828%_)))
                      (__tmp171900
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id170266%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp171901
                   '" => "
                   __tmp171900))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def167760%_
                   _%L167828%_
                   _%specializer-id170266%_
                   _%specializer-impl170531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd169982170044%_
                                                _%hd169979170036%_
                                                _%hd169976170028%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g169958169988%_
                                                  _%g169959169991%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g169958169988%_
                                          _%g169959169991%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169958169988%_ _%g169959169991%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g169958169988%_ _%g169959169991%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g169958169988%_ _%g169959169991%_)))
                   (let ()
                     (declare (not safe))
                     (_%g169958169988%_ _%g169959169991%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g169958169988%_
                                                      _%g169959169991%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g169958169988%_
                                              _%g169959169991%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169958169988%_ _%g169959169991%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g169958169988%_ _%g169959169991%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g169958169988%_ _%g169959169991%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g169957170534%_
                                                _%L169517%_)))
                                           (let () _%stx167755%_)))))
                               _%hd169615169738%_
                               _%kw-ref169613169759%_
                               _%hd169603169725%_
                               _%hd169594169701%_
                               _%hd169585169677%_)
                              (let ()
                                (declare (not safe))
                                (_%g169559169621%_ _%g169560169624%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop169608169743%_
                                                     _%target169605169730%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g169559169621%_
                                                   _%g169560169624%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g169559169621%_
                                           _%g169560169624%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g169559169621%_ _%g169560169624%_)))
                          (let ()
                            (declare (not safe))
                            (_%g169559169621%_ _%g169560169624%_)))
                      (let ()
                        (declare (not safe))
                        (_%g169559169621%_ _%g169560169624%_)))))
              (let ()
                (declare (not safe))
                (_%g169559169621%_ _%g169560169624%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g169559169621%_
                                                     _%g169560169624%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g169559169621%_
                                                 _%g169560169624%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169559169621%_
                                         _%g169560169624%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169559169621%_ _%g169560169624%_)))
                          (let ()
                            (declare (not safe))
                            (_%g169559169621%_ _%g169560169624%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169559169621%_ _%g169560169624%_)))
              (let ()
                (declare (not safe))
                (_%g169559169621%_ _%g169560169624%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g169559169621%_
                                                     _%g169560169624%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169559169621%_
                                             _%g169560169624%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169559169621%_ _%g169560169624%_)))
                              (let ()
                                (declare (not safe))
                                (_%g169559169621%_ _%g169560169624%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g169559169621%_ _%g169560169624%_)))
                  (let ()
                    (declare (not safe))
                    (_%g169559169621%_ _%g169560169624%_)))
              (let ()
                (declare (not safe))
                (_%g169559169621%_ _%g169560169624%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g169559169621%_
                                                 _%g169560169624%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169559169621%_ _%g169560169624%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169559169621%_ _%g169560169624%_)))
                              (let ()
                                (declare (not safe))
                                (_%g169559169621%_ _%g169560169624%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g169559169621%_ _%g169560169624%_)))))
              (let ()
                (declare (not safe))
                (_%g169559169621%_ _%g169560169624%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g169559169621%_
                                                 _%g169560169624%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169559169621%_
                                             _%g169560169624%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169559169621%_
                                         _%g169560169624%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169559169621%_ _%g169560169624%_))))))
                  (declare (not safe))
                  (_%g169558170538%_ _%L169516%_)))
              _%hd169392169510%_
              _%hd169389169502%_
              _%hd169386169494%_
              _%hd169383169486%_
              _%hd169365169438%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169345169398%_
                                                        _%g169346169401%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169345169398%_
                                                _%g169346169401%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g169345169398%_
                                            _%g169346169401%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169345169398%_ _%g169346169401%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g169345169398%_ _%g169346169401%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g169345169398%_ _%g169346169401%_)))
                     (let ()
                       (declare (not safe))
                       (_%g169345169398%_ _%g169346169401%_)))
                 (let ()
                   (declare (not safe))
                   (_%g169345169398%_ _%g169346169401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169345169398%_
                                                    _%g169346169401%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169345169398%_
                                                _%g169346169401%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169345169398%_
                                        _%g169346169401%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g169345169398%_ _%g169346169401%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g169345169398%_ _%g169346169401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169345169398%_
                                                        _%g169346169401%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169345169398%_
                                                    _%g169346169401%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169345169398%_
                                                _%g169346169401%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169345169398%_
                                        _%g169346169401%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g169345169398%_ _%g169346169401%_)))
                         (let ()
                           (declare (not safe))
                           (_%g169345169398%_ _%g169346169401%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g169345169398%_ _%g169346169401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169345169398%_
                                                    _%g169346169401%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g169345169398%_
                                            _%g169346169401%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g169345169398%_ _%g169346169401%_)))
                             (let ()
                               (declare (not safe))
                               (_%g169345169398%_ _%g169346169401%_)))
                         (let ()
                           (declare (not safe))
                           (_%g169345169398%_ _%g169346169401%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g169345169398%_ _%g169346169401%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g169344170541%_ _%L167827%_)))
                                         (let () _%stx167755%_)))))))))
                  (_%__kont170766170767%_ (lambda () _%stx167755%_)))
              (let ((_%__match170795170796%_
                     (lambda (_%e167769167795%_
                              _%hd167768167798%_
                              _%tl167767167800%_
                              _%e167772167803%_
                              _%hd167771167806%_
                              _%tl167770167808%_
                              _%e167775167811%_
                              _%hd167774167814%_
                              _%tl167773167816%_
                              _%e167778167819%_
                              _%hd167777167822%_
                              _%tl167776167824%_)
                       (let ((_%L167827%_ _%hd167777167822%_)
                             (_%L167828%_ _%hd167774167814%_))
                         (if (let ((__tmp171902
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167828%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171902))
                             (_%__kont170764170765%_ _%L167827%_ _%L167828%_)
                             (_%__kont170766170767%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170762170763%_))
                    (let ((_%e167769167795%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170762170763%_))))
                      (let ((_%tl167767167800%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167769167795%_)))
                            (_%hd167768167798%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167769167795%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167767167800%_))
                            (let ((_%e167772167803%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167767167800%_))))
                              (let ((_%tl167770167808%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167772167803%_)))
                                    (_%hd167771167806%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167772167803%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167771167806%_))
                                    (let ((_%e167775167811%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167771167806%_))))
                                      (let ((_%tl167773167816%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167775167811%_)))
                                            (_%hd167774167814%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167775167811%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167773167816%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167770167808%_))
                                                (let ((_%e167778167819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167770167808%_))))
                                                  (let ((_%tl167776167824%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167778167819%_)))
                                                        (_%hd167777167822%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167778167819%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167776167824%_))
                                                        (_%__match170795170796%_
                                                         _%e167769167795%_
                                                         _%hd167768167798%_
                                                         _%tl167767167800%_
                                                         _%e167772167803%_
                                                         _%hd167771167806%_
                                                         _%tl167770167808%_
                                                         _%e167775167811%_
                                                         _%hd167774167814%_
                                                         _%tl167773167816%_
                                                         _%e167778167819%_
                                                         _%hd167777167822%_
                                                         _%tl167776167824%_)
                                                        (_%__kont170766170767%_))))
                                                (_%__kont170766170767%_))
                                            (_%__kont170766170767%_))))
                                    (_%__kont170766170767%_))))
                            (_%__kont170766170767%_))))
                    (_%__kont170766170767%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self166715%_ _%stx166716%_)
        (let* ((_%__stx170798170799%_ _%stx166716%_)
               (_%g166724166946%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170798170799%_)))))
          (let ((_%__kont170800170801%_
                 (lambda (_%L167703%_ _%L167704%_ _%L167705%_ _%L167706%_)
                   (let ((__tmp171904
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166715%_ 'methods)))
                         (__tmp171903
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167704%_))))
                     (declare (not safe))
                     (hash-put! __tmp171904 __tmp171903 '#t))
                   (for-each
                    (lambda (_%g167739167741%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166715%_ _%g167739167741%_)))
                    (let ((__tmp171905
                           (lambda (_%g167743167746%_ _%g167744167748%_)
                             (cons _%g167743167746%_ _%g167744167748%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171905 '() _%L167703%_)))))
                (_%__kont170804170805%_
                 (lambda (_%L167538%_
                          _%L167539%_
                          _%L167540%_
                          _%L167541%_
                          _%L167542%_)
                   (let ((__tmp171907
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166715%_ 'methods)))
                         (__tmp171906
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167539%_))))
                     (declare (not safe))
                     (hash-put! __tmp171907 __tmp171906 '#t))
                   (for-each
                    (lambda (_%g167582167584%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166715%_ _%g167582167584%_)))
                    (let ((__tmp171908
                           (lambda (_%g167586167589%_ _%g167587167591%_)
                             (cons _%g167586167589%_ _%g167587167591%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171908 '() _%L167538%_)))))
                (_%__kont170808170809%_
                 (lambda (_%L167371%_ _%L167372%_ _%L167373%_)
                   (let ((__tmp171910
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166715%_ 'slots)))
                         (__tmp171909
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167371%_))))
                     (declare (not safe))
                     (hash-put! __tmp171910 __tmp171909 '#t))))
                (_%__kont170810170811%_
                 (lambda (_%L167248%_ _%L167249%_ _%L167250%_ _%L167251%_)
                   (let ((__tmp171912
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166715%_ 'slots)))
                         (__tmp171911
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167249%_))))
                     (declare (not safe))
                     (hash-put! __tmp171912 __tmp171911 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self166715%_ _%L167248%_))))
                (_%__kont170812170813%_
                 (lambda (_%L167122%_ _%L167123%_)
                   (let* ((_%accessor167145%_
                           (let ((__tmp171913
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167123%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171913)))
                          (_%klass167147%_
                           (let ((__tmp171914
                                  (##structure-ref
                                   _%accessor167145%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166716%_
                              __tmp171914)))
                          (_%slot167149%_
                           (##structure-ref
                            _%accessor167145%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp171915
                                     (##structure-ref
                                      _%accessor167145%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171915))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167147%_
                                     _%slot167149%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167147%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171917
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166715%_ 'slots)))
                               (__tmp171916
                                (##structure-ref
                                 _%accessor167145%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171917 __tmp171916 '#t))))))
                (_%__kont170814170815%_
                 (lambda (_%L167022%_ _%L167023%_ _%L167024%_)
                   (let* ((_%mutator167051%_
                           (let ((__tmp171918
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167024%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171918)))
                          (_%klass167053%_
                           (let ((__tmp171919
                                  (##structure-ref
                                   _%mutator167051%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166716%_
                              __tmp171919)))
                          (_%slot167055%_
                           (##structure-ref
                            _%mutator167051%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp171920
                                     (##structure-ref
                                      _%mutator167051%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171920))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167053%_
                                     _%slot167055%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167053%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171921
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166715%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171921 _%slot167055%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self166715%_ _%L167022%_)))))
                (_%__kont170816170817%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self166715%_ _%stx166716%_)))))
            (let* ((_%__match171297171298%_
                    (lambda (_%e166920166958%_
                             _%hd166919166961%_
                             _%tl166918166963%_
                             _%e166923166966%_
                             _%hd166922166969%_
                             _%tl166921166971%_
                             _%e166926166974%_
                             _%hd166925166977%_
                             _%tl166924166979%_
                             _%e166929166982%_
                             _%hd166928166985%_
                             _%tl166927166987%_
                             _%e166932166990%_
                             _%hd166931166993%_
                             _%tl166930166995%_
                             _%e166935166998%_
                             _%hd166934167001%_
                             _%tl166933167003%_
                             _%e166938167006%_
                             _%hd166937167009%_
                             _%tl166936167011%_
                             _%e166941167014%_
                             _%hd166940167017%_
                             _%tl166939167019%_)
                      (let ((_%L167022%_ _%hd166940167017%_)
                            (_%L167023%_ _%hd166937167009%_)
                            (_%L167024%_ _%hd166928166985%_))
                        (if (and (let ((__tmp171922
                                        (let ((__tmp171923
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167024%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171923))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171922
                                    'gxc#!mutator::t))
                                 (let ((__tmp171924
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166715%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167023%_
                                    __tmp171924)))
                            (_%__kont170814170815%_
                             _%L167022%_
                             _%L167023%_
                             _%L167024%_)
                            (_%__kont170816170817%_)))))
                   (_%__match171295171296%_
                    (lambda (_%e166920166958%_
                             _%hd166919166961%_
                             _%tl166918166963%_
                             _%e166923166966%_
                             _%hd166922166969%_
                             _%tl166921166971%_
                             _%e166926166974%_
                             _%hd166925166977%_
                             _%tl166924166979%_
                             _%e166929166982%_
                             _%hd166928166985%_
                             _%tl166927166987%_
                             _%e166932166990%_
                             _%hd166931166993%_
                             _%tl166930166995%_
                             _%e166935166998%_
                             _%hd166934167001%_
                             _%tl166933167003%_
                             _%e166938167006%_
                             _%hd166937167009%_
                             _%tl166936167011%_
                             _%e166941167014%_
                             _%hd166940167017%_
                             _%tl166939167019%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166939167019%_))
                          (_%__match171297171298%_
                           _%e166920166958%_
                           _%hd166919166961%_
                           _%tl166918166963%_
                           _%e166923166966%_
                           _%hd166922166969%_
                           _%tl166921166971%_
                           _%e166926166974%_
                           _%hd166925166977%_
                           _%tl166924166979%_
                           _%e166929166982%_
                           _%hd166928166985%_
                           _%tl166927166987%_
                           _%e166932166990%_
                           _%hd166931166993%_
                           _%tl166930166995%_
                           _%e166935166998%_
                           _%hd166934167001%_
                           _%tl166933167003%_
                           _%e166938167006%_
                           _%hd166937167009%_
                           _%tl166936167011%_
                           _%e166941167014%_
                           _%hd166940167017%_
                           _%tl166939167019%_)
                          (_%__kont170816170817%_))))
                   (_%__match171289171290%_
                    (lambda (_%e166920166958%_
                             _%hd166919166961%_
                             _%tl166918166963%_
                             _%e166923166966%_
                             _%hd166922166969%_
                             _%tl166921166971%_
                             _%e166926166974%_
                             _%hd166925166977%_
                             _%tl166924166979%_
                             _%e166929166982%_
                             _%hd166928166985%_
                             _%tl166927166987%_
                             _%e166932166990%_
                             _%hd166931166993%_
                             _%tl166930166995%_
                             _%e166935166998%_
                             _%hd166934167001%_
                             _%tl166933167003%_
                             _%e166938167006%_
                             _%hd166937167009%_
                             _%tl166936167011%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166930166995%_))
                          (let ((_%e166941167014%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166930166995%_))))
                            (let ((_%tl166939167019%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166941167014%_)))
                                  (_%hd166940167017%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166941167014%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166939167019%_))
                                  (_%__match171297171298%_
                                   _%e166920166958%_
                                   _%hd166919166961%_
                                   _%tl166918166963%_
                                   _%e166923166966%_
                                   _%hd166922166969%_
                                   _%tl166921166971%_
                                   _%e166926166974%_
                                   _%hd166925166977%_
                                   _%tl166924166979%_
                                   _%e166929166982%_
                                   _%hd166928166985%_
                                   _%tl166927166987%_
                                   _%e166932166990%_
                                   _%hd166931166993%_
                                   _%tl166930166995%_
                                   _%e166935166998%_
                                   _%hd166934167001%_
                                   _%tl166933167003%_
                                   _%e166938167006%_
                                   _%hd166937167009%_
                                   _%tl166936167011%_
                                   _%e166941167014%_
                                   _%hd166940167017%_
                                   _%tl166939167019%_)
                                  (_%__kont170816170817%_))))
                          (_%__kont170816170817%_))))
                   (_%__match171235171236%_
                    (lambda (_%e166896167066%_
                             _%hd166895167069%_
                             _%tl166894167071%_
                             _%e166899167074%_
                             _%hd166898167077%_
                             _%tl166897167079%_
                             _%e166902167082%_
                             _%hd166901167085%_
                             _%tl166900167087%_
                             _%e166905167090%_
                             _%hd166904167093%_
                             _%tl166903167095%_
                             _%e166908167098%_
                             _%hd166907167101%_
                             _%tl166906167103%_
                             _%e166911167106%_
                             _%hd166910167109%_
                             _%tl166909167111%_
                             _%e166914167114%_
                             _%hd166913167117%_
                             _%tl166912167119%_)
                      (let ((_%L167122%_ _%hd166913167117%_)
                            (_%L167123%_ _%hd166904167093%_))
                        (if (and (let ((__tmp171925
                                        (let ((__tmp171926
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167123%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171926))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171925
                                    'gxc#!accessor::t))
                                 (let ((__tmp171927
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166715%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167122%_
                                    __tmp171927)))
                            (_%__kont170812170813%_ _%L167122%_ _%L167123%_)
                            (_%__kont170816170817%_)))))
                   (_%__match171233171234%_
                    (lambda (_%e166896167066%_
                             _%hd166895167069%_
                             _%tl166894167071%_
                             _%e166899167074%_
                             _%hd166898167077%_
                             _%tl166897167079%_
                             _%e166902167082%_
                             _%hd166901167085%_
                             _%tl166900167087%_
                             _%e166905167090%_
                             _%hd166904167093%_
                             _%tl166903167095%_
                             _%e166908167098%_
                             _%hd166907167101%_
                             _%tl166906167103%_
                             _%e166911167106%_
                             _%hd166910167109%_
                             _%tl166909167111%_
                             _%e166914167114%_
                             _%hd166913167117%_
                             _%tl166912167119%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166906167103%_))
                          (_%__match171235171236%_
                           _%e166896167066%_
                           _%hd166895167069%_
                           _%tl166894167071%_
                           _%e166899167074%_
                           _%hd166898167077%_
                           _%tl166897167079%_
                           _%e166902167082%_
                           _%hd166901167085%_
                           _%tl166900167087%_
                           _%e166905167090%_
                           _%hd166904167093%_
                           _%tl166903167095%_
                           _%e166908167098%_
                           _%hd166907167101%_
                           _%tl166906167103%_
                           _%e166911167106%_
                           _%hd166910167109%_
                           _%tl166909167111%_
                           _%e166914167114%_
                           _%hd166913167117%_
                           _%tl166912167119%_)
                          (_%__match171289171290%_
                           _%e166896167066%_
                           _%hd166895167069%_
                           _%tl166894167071%_
                           _%e166899167074%_
                           _%hd166898167077%_
                           _%tl166897167079%_
                           _%e166902167082%_
                           _%hd166901167085%_
                           _%tl166900167087%_
                           _%e166905167090%_
                           _%hd166904167093%_
                           _%tl166903167095%_
                           _%e166908167098%_
                           _%hd166907167101%_
                           _%tl166906167103%_
                           _%e166911167106%_
                           _%hd166910167109%_
                           _%tl166909167111%_
                           _%e166914167114%_
                           _%hd166913167117%_
                           _%tl166912167119%_))))
                   (_%__match171179171180%_
                    (lambda (_%e166861167160%_
                             _%hd166860167163%_
                             _%tl166859167165%_
                             _%e166864167168%_
                             _%hd166863167171%_
                             _%tl166862167173%_
                             _%e166867167176%_
                             _%hd166866167179%_
                             _%tl166865167181%_
                             _%e166870167184%_
                             _%hd166869167187%_
                             _%tl166868167189%_
                             _%e166873167192%_
                             _%hd166872167195%_
                             _%tl166871167197%_
                             _%e166876167200%_
                             _%hd166875167203%_
                             _%tl166874167205%_
                             _%e166879167208%_
                             _%hd166878167211%_
                             _%tl166877167213%_
                             _%e166882167216%_
                             _%hd166881167219%_
                             _%tl166880167221%_
                             _%e166885167224%_
                             _%hd166884167227%_
                             _%tl166883167229%_
                             _%e166888167232%_
                             _%hd166887167235%_
                             _%tl166886167237%_
                             _%e166891167240%_
                             _%hd166890167243%_
                             _%tl166889167245%_)
                      (let ((_%L167248%_ _%hd166890167243%_)
                            (_%L167249%_ _%hd166887167235%_)
                            (_%L167250%_ _%hd166878167211%_)
                            (_%L167251%_ _%hd166869167187%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167251%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167251%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171928
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166715%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167250%_
                                    __tmp171928)))
                            (_%__kont170810170811%_
                             _%L167248%_
                             _%L167249%_
                             _%L167250%_
                             _%L167251%_)
                            (_%__kont170816170817%_)))))
                   (_%__match171171171172%_
                    (lambda (_%e166861167160%_
                             _%hd166860167163%_
                             _%tl166859167165%_
                             _%e166864167168%_
                             _%hd166863167171%_
                             _%tl166862167173%_
                             _%e166867167176%_
                             _%hd166866167179%_
                             _%tl166865167181%_
                             _%e166870167184%_
                             _%hd166869167187%_
                             _%tl166868167189%_
                             _%e166873167192%_
                             _%hd166872167195%_
                             _%tl166871167197%_
                             _%e166876167200%_
                             _%hd166875167203%_
                             _%tl166874167205%_
                             _%e166879167208%_
                             _%hd166878167211%_
                             _%tl166877167213%_
                             _%e166882167216%_
                             _%hd166881167219%_
                             _%tl166880167221%_
                             _%e166885167224%_
                             _%hd166884167227%_
                             _%tl166883167229%_
                             _%e166888167232%_
                             _%hd166887167235%_
                             _%tl166886167237%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166880167221%_))
                          (let ((_%e166891167240%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166880167221%_))))
                            (let ((_%tl166889167245%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166891167240%_)))
                                  (_%hd166890167243%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166891167240%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166889167245%_))
                                  (_%__match171179171180%_
                                   _%e166861167160%_
                                   _%hd166860167163%_
                                   _%tl166859167165%_
                                   _%e166864167168%_
                                   _%hd166863167171%_
                                   _%tl166862167173%_
                                   _%e166867167176%_
                                   _%hd166866167179%_
                                   _%tl166865167181%_
                                   _%e166870167184%_
                                   _%hd166869167187%_
                                   _%tl166868167189%_
                                   _%e166873167192%_
                                   _%hd166872167195%_
                                   _%tl166871167197%_
                                   _%e166876167200%_
                                   _%hd166875167203%_
                                   _%tl166874167205%_
                                   _%e166879167208%_
                                   _%hd166878167211%_
                                   _%tl166877167213%_
                                   _%e166882167216%_
                                   _%hd166881167219%_
                                   _%tl166880167221%_
                                   _%e166885167224%_
                                   _%hd166884167227%_
                                   _%tl166883167229%_
                                   _%e166888167232%_
                                   _%hd166887167235%_
                                   _%tl166886167237%_
                                   _%e166891167240%_
                                   _%hd166890167243%_
                                   _%tl166889167245%_)
                                  (_%__kont170816170817%_))))
                          (_%__match171295171296%_
                           _%e166861167160%_
                           _%hd166860167163%_
                           _%tl166859167165%_
                           _%e166864167168%_
                           _%hd166863167171%_
                           _%tl166862167173%_
                           _%e166867167176%_
                           _%hd166866167179%_
                           _%tl166865167181%_
                           _%e166870167184%_
                           _%hd166869167187%_
                           _%tl166868167189%_
                           _%e166873167192%_
                           _%hd166872167195%_
                           _%tl166871167197%_
                           _%e166876167200%_
                           _%hd166875167203%_
                           _%tl166874167205%_
                           _%e166879167208%_
                           _%hd166878167211%_
                           _%tl166877167213%_
                           _%e166882167216%_
                           _%hd166881167219%_
                           _%tl166880167221%_))))
                   (_%__match171093171094%_
                    (lambda (_%e166827167291%_
                             _%hd166826167294%_
                             _%tl166825167296%_
                             _%e166830167299%_
                             _%hd166829167302%_
                             _%tl166828167304%_
                             _%e166833167307%_
                             _%hd166832167310%_
                             _%tl166831167312%_
                             _%e166836167315%_
                             _%hd166835167318%_
                             _%tl166834167320%_
                             _%e166839167323%_
                             _%hd166838167326%_
                             _%tl166837167328%_
                             _%e166842167331%_
                             _%hd166841167334%_
                             _%tl166840167336%_
                             _%e166845167339%_
                             _%hd166844167342%_
                             _%tl166843167344%_
                             _%e166848167347%_
                             _%hd166847167350%_
                             _%tl166846167352%_
                             _%e166851167355%_
                             _%hd166850167358%_
                             _%tl166849167360%_
                             _%e166854167363%_
                             _%hd166853167366%_
                             _%tl166852167368%_)
                      (let ((_%L167371%_ _%hd166853167366%_)
                            (_%L167372%_ _%hd166844167342%_)
                            (_%L167373%_ _%hd166835167318%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167373%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167373%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171929
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166715%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167372%_
                                    __tmp171929)))
                            (_%__kont170808170809%_
                             _%L167371%_
                             _%L167372%_
                             _%L167373%_)
                            (_%__match171297171298%_
                             _%e166827167291%_
                             _%hd166826167294%_
                             _%tl166825167296%_
                             _%e166830167299%_
                             _%hd166829167302%_
                             _%tl166828167304%_
                             _%e166833167307%_
                             _%hd166832167310%_
                             _%tl166831167312%_
                             _%e166836167315%_
                             _%hd166835167318%_
                             _%tl166834167320%_
                             _%e166839167323%_
                             _%hd166838167326%_
                             _%tl166837167328%_
                             _%e166842167331%_
                             _%hd166841167334%_
                             _%tl166840167336%_
                             _%e166845167339%_
                             _%hd166844167342%_
                             _%tl166843167344%_
                             _%e166848167347%_
                             _%hd166847167350%_
                             _%tl166846167352%_)))))
                   (_%__match171091171092%_
                    (lambda (_%e166827167291%_
                             _%hd166826167294%_
                             _%tl166825167296%_
                             _%e166830167299%_
                             _%hd166829167302%_
                             _%tl166828167304%_
                             _%e166833167307%_
                             _%hd166832167310%_
                             _%tl166831167312%_
                             _%e166836167315%_
                             _%hd166835167318%_
                             _%tl166834167320%_
                             _%e166839167323%_
                             _%hd166838167326%_
                             _%tl166837167328%_
                             _%e166842167331%_
                             _%hd166841167334%_
                             _%tl166840167336%_
                             _%e166845167339%_
                             _%hd166844167342%_
                             _%tl166843167344%_
                             _%e166848167347%_
                             _%hd166847167350%_
                             _%tl166846167352%_
                             _%e166851167355%_
                             _%hd166850167358%_
                             _%tl166849167360%_
                             _%e166854167363%_
                             _%hd166853167366%_
                             _%tl166852167368%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166846167352%_))
                          (_%__match171093171094%_
                           _%e166827167291%_
                           _%hd166826167294%_
                           _%tl166825167296%_
                           _%e166830167299%_
                           _%hd166829167302%_
                           _%tl166828167304%_
                           _%e166833167307%_
                           _%hd166832167310%_
                           _%tl166831167312%_
                           _%e166836167315%_
                           _%hd166835167318%_
                           _%tl166834167320%_
                           _%e166839167323%_
                           _%hd166838167326%_
                           _%tl166837167328%_
                           _%e166842167331%_
                           _%hd166841167334%_
                           _%tl166840167336%_
                           _%e166845167339%_
                           _%hd166844167342%_
                           _%tl166843167344%_
                           _%e166848167347%_
                           _%hd166847167350%_
                           _%tl166846167352%_
                           _%e166851167355%_
                           _%hd166850167358%_
                           _%tl166849167360%_
                           _%e166854167363%_
                           _%hd166853167366%_
                           _%tl166852167368%_)
                          (_%__match171171171172%_
                           _%e166827167291%_
                           _%hd166826167294%_
                           _%tl166825167296%_
                           _%e166830167299%_
                           _%hd166829167302%_
                           _%tl166828167304%_
                           _%e166833167307%_
                           _%hd166832167310%_
                           _%tl166831167312%_
                           _%e166836167315%_
                           _%hd166835167318%_
                           _%tl166834167320%_
                           _%e166839167323%_
                           _%hd166838167326%_
                           _%tl166837167328%_
                           _%e166842167331%_
                           _%hd166841167334%_
                           _%tl166840167336%_
                           _%e166845167339%_
                           _%hd166844167342%_
                           _%tl166843167344%_
                           _%e166848167347%_
                           _%hd166847167350%_
                           _%tl166846167352%_
                           _%e166851167355%_
                           _%hd166850167358%_
                           _%tl166849167360%_
                           _%e166854167363%_
                           _%hd166853167366%_
                           _%tl166852167368%_))))
                   (_%__match171081171082%_
                    (lambda (_%e166827167291%_
                             _%hd166826167294%_
                             _%tl166825167296%_
                             _%e166830167299%_
                             _%hd166829167302%_
                             _%tl166828167304%_
                             _%e166833167307%_
                             _%hd166832167310%_
                             _%tl166831167312%_
                             _%e166836167315%_
                             _%hd166835167318%_
                             _%tl166834167320%_
                             _%e166839167323%_
                             _%hd166838167326%_
                             _%tl166837167328%_
                             _%e166842167331%_
                             _%hd166841167334%_
                             _%tl166840167336%_
                             _%e166845167339%_
                             _%hd166844167342%_
                             _%tl166843167344%_
                             _%e166848167347%_
                             _%hd166847167350%_
                             _%tl166846167352%_
                             _%e166851167355%_
                             _%hd166850167358%_
                             _%tl166849167360%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166850167358%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166849167360%_))
                              (let ((_%e166854167363%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166849167360%_))))
                                (let ((_%tl166852167368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166854167363%_)))
                                      (_%hd166853167366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166854167363%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166852167368%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166846167352%_))
                                          (_%__match171093171094%_
                                           _%e166827167291%_
                                           _%hd166826167294%_
                                           _%tl166825167296%_
                                           _%e166830167299%_
                                           _%hd166829167302%_
                                           _%tl166828167304%_
                                           _%e166833167307%_
                                           _%hd166832167310%_
                                           _%tl166831167312%_
                                           _%e166836167315%_
                                           _%hd166835167318%_
                                           _%tl166834167320%_
                                           _%e166839167323%_
                                           _%hd166838167326%_
                                           _%tl166837167328%_
                                           _%e166842167331%_
                                           _%hd166841167334%_
                                           _%tl166840167336%_
                                           _%e166845167339%_
                                           _%hd166844167342%_
                                           _%tl166843167344%_
                                           _%e166848167347%_
                                           _%hd166847167350%_
                                           _%tl166846167352%_
                                           _%e166851167355%_
                                           _%hd166850167358%_
                                           _%tl166849167360%_
                                           _%e166854167363%_
                                           _%hd166853167366%_
                                           _%tl166852167368%_)
                                          (_%__match171171171172%_
                                           _%e166827167291%_
                                           _%hd166826167294%_
                                           _%tl166825167296%_
                                           _%e166830167299%_
                                           _%hd166829167302%_
                                           _%tl166828167304%_
                                           _%e166833167307%_
                                           _%hd166832167310%_
                                           _%tl166831167312%_
                                           _%e166836167315%_
                                           _%hd166835167318%_
                                           _%tl166834167320%_
                                           _%e166839167323%_
                                           _%hd166838167326%_
                                           _%tl166837167328%_
                                           _%e166842167331%_
                                           _%hd166841167334%_
                                           _%tl166840167336%_
                                           _%e166845167339%_
                                           _%hd166844167342%_
                                           _%tl166843167344%_
                                           _%e166848167347%_
                                           _%hd166847167350%_
                                           _%tl166846167352%_
                                           _%e166851167355%_
                                           _%hd166850167358%_
                                           _%tl166849167360%_
                                           _%e166854167363%_
                                           _%hd166853167366%_
                                           _%tl166852167368%_))
                                      (_%__match171295171296%_
                                       _%e166827167291%_
                                       _%hd166826167294%_
                                       _%tl166825167296%_
                                       _%e166830167299%_
                                       _%hd166829167302%_
                                       _%tl166828167304%_
                                       _%e166833167307%_
                                       _%hd166832167310%_
                                       _%tl166831167312%_
                                       _%e166836167315%_
                                       _%hd166835167318%_
                                       _%tl166834167320%_
                                       _%e166839167323%_
                                       _%hd166838167326%_
                                       _%tl166837167328%_
                                       _%e166842167331%_
                                       _%hd166841167334%_
                                       _%tl166840167336%_
                                       _%e166845167339%_
                                       _%hd166844167342%_
                                       _%tl166843167344%_
                                       _%e166848167347%_
                                       _%hd166847167350%_
                                       _%tl166846167352%_))))
                              (_%__match171295171296%_
                               _%e166827167291%_
                               _%hd166826167294%_
                               _%tl166825167296%_
                               _%e166830167299%_
                               _%hd166829167302%_
                               _%tl166828167304%_
                               _%e166833167307%_
                               _%hd166832167310%_
                               _%tl166831167312%_
                               _%e166836167315%_
                               _%hd166835167318%_
                               _%tl166834167320%_
                               _%e166839167323%_
                               _%hd166838167326%_
                               _%tl166837167328%_
                               _%e166842167331%_
                               _%hd166841167334%_
                               _%tl166840167336%_
                               _%e166845167339%_
                               _%hd166844167342%_
                               _%tl166843167344%_
                               _%e166848167347%_
                               _%hd166847167350%_
                               _%tl166846167352%_))
                          (_%__match171295171296%_
                           _%e166827167291%_
                           _%hd166826167294%_
                           _%tl166825167296%_
                           _%e166830167299%_
                           _%hd166829167302%_
                           _%tl166828167304%_
                           _%e166833167307%_
                           _%hd166832167310%_
                           _%tl166831167312%_
                           _%e166836167315%_
                           _%hd166835167318%_
                           _%tl166834167320%_
                           _%e166839167323%_
                           _%hd166838167326%_
                           _%tl166837167328%_
                           _%e166842167331%_
                           _%hd166841167334%_
                           _%tl166840167336%_
                           _%e166845167339%_
                           _%hd166844167342%_
                           _%tl166843167344%_
                           _%e166848167347%_
                           _%hd166847167350%_
                           _%tl166846167352%_))))
                   (_%__match171013171014%_
                    (lambda (_%e166776167410%_
                             _%hd166775167413%_
                             _%tl166774167415%_
                             _%e166779167418%_
                             _%hd166778167421%_
                             _%tl166777167423%_
                             _%e166782167426%_
                             _%hd166781167429%_
                             _%tl166780167431%_
                             _%e166785167434%_
                             _%hd166784167437%_
                             _%tl166783167439%_
                             _%e166788167442%_
                             _%hd166787167445%_
                             _%tl166786167447%_
                             _%e166791167450%_
                             _%hd166790167453%_
                             _%tl166789167455%_
                             _%e166794167458%_
                             _%hd166793167461%_
                             _%tl166792167463%_
                             _%e166797167466%_
                             _%hd166796167469%_
                             _%tl166795167471%_
                             _%e166800167474%_
                             _%hd166799167477%_
                             _%tl166798167479%_
                             _%e166803167482%_
                             _%hd166802167485%_
                             _%tl166801167487%_
                             _%e166806167490%_
                             _%hd166805167493%_
                             _%tl166804167495%_
                             _%e166809167498%_
                             _%hd166808167501%_
                             _%tl166807167503%_
                             _%e166812167506%_
                             _%hd166811167509%_
                             _%tl166810167511%_
                             _%__splice170806170807%_
                             _%target166813167514%_
                             _%tl166815167516%_)
                      (letrec ((_%loop166816167519%_
                                (lambda (_%hd166814167522%_
                                         _%args166820167524%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166814167522%_))
                                      (let ((_%e166817167527%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166814167522%_))))
                                        (let ((_%lp-tl166819167532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166817167527%_)))
                                              (_%lp-hd166818167530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166817167527%_))))
                                          (let ((__tmp171930
                                                 (cons _%lp-hd166818167530%_
                                                       _%args166820167524%_)))
                                            (declare (not safe))
                                            (_%loop166816167519%_
                                             _%lp-tl166819167532%_
                                             __tmp171930))))
                                      (let ((_%args166821167535%_
                                             (reverse _%args166820167524%_)))
                                        (let ((_%L167538%_
                                               _%args166821167535%_)
                                              (_%L167539%_ _%hd166811167509%_)
                                              (_%L167540%_ _%hd166802167485%_)
                                              (_%L167541%_ _%hd166793167461%_)
                                              (_%L167542%_ _%hd166784167437%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167542%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167541%_
                                                      'call-method))
                                                   (let ((__tmp171931
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166715%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167540%_
                                                      __tmp171931)))
                                              (_%__kont170804170805%_
                                               _%L167538%_
                                               _%L167539%_
                                               _%L167540%_
                                               _%L167541%_
                                               _%L167542%_)
                                              (_%__kont170816170817%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166816167519%_ _%target166813167514%_ '())))))
                   (_%__match170971170972%_
                    (lambda (_%e166776167410%_
                             _%hd166775167413%_
                             _%tl166774167415%_
                             _%e166779167418%_
                             _%hd166778167421%_
                             _%tl166777167423%_
                             _%e166782167426%_
                             _%hd166781167429%_
                             _%tl166780167431%_
                             _%e166785167434%_
                             _%hd166784167437%_
                             _%tl166783167439%_
                             _%e166788167442%_
                             _%hd166787167445%_
                             _%tl166786167447%_
                             _%e166791167450%_
                             _%hd166790167453%_
                             _%tl166789167455%_
                             _%e166794167458%_
                             _%hd166793167461%_
                             _%tl166792167463%_
                             _%e166797167466%_
                             _%hd166796167469%_
                             _%tl166795167471%_
                             _%e166800167474%_
                             _%hd166799167477%_
                             _%tl166798167479%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166799167477%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166798167479%_))
                              (let ((_%e166803167482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166798167479%_))))
                                (let ((_%tl166801167487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166803167482%_)))
                                      (_%hd166802167485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166803167482%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166801167487%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166795167471%_))
                                          (let ((_%e166806167490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166795167471%_))))
                                            (let ((_%tl166804167495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166806167490%_)))
                                                  (_%hd166805167493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166806167490%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166805167493%_))
                                                  (let ((_%e166809167498%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166805167493%_))))
                                                    (let ((_%tl166807167503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166809167498%_)))
                                                          (_%hd166808167501%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166809167498%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166808167501%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166808167501%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166807167503%_))
                          (let ((_%e166812167506%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166807167503%_))))
                            (let ((_%tl166810167511%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166812167506%_)))
                                  (_%hd166811167509%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166812167506%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166810167511%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166804167495%_))
                                      (let ((_%__splice170806170807%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166804167495%_
                                                '0))))
                                        (let ((_%tl166815167516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170806170807%_
                                                  '1)))
                                              (_%target166813167514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170806170807%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166815167516%_))
                                              (_%__match171013171014%_
                                               _%e166776167410%_
                                               _%hd166775167413%_
                                               _%tl166774167415%_
                                               _%e166779167418%_
                                               _%hd166778167421%_
                                               _%tl166777167423%_
                                               _%e166782167426%_
                                               _%hd166781167429%_
                                               _%tl166780167431%_
                                               _%e166785167434%_
                                               _%hd166784167437%_
                                               _%tl166783167439%_
                                               _%e166788167442%_
                                               _%hd166787167445%_
                                               _%tl166786167447%_
                                               _%e166791167450%_
                                               _%hd166790167453%_
                                               _%tl166789167455%_
                                               _%e166794167458%_
                                               _%hd166793167461%_
                                               _%tl166792167463%_
                                               _%e166797167466%_
                                               _%hd166796167469%_
                                               _%tl166795167471%_
                                               _%e166800167474%_
                                               _%hd166799167477%_
                                               _%tl166798167479%_
                                               _%e166803167482%_
                                               _%hd166802167485%_
                                               _%tl166801167487%_
                                               _%e166806167490%_
                                               _%hd166805167493%_
                                               _%tl166804167495%_
                                               _%e166809167498%_
                                               _%hd166808167501%_
                                               _%tl166807167503%_
                                               _%e166812167506%_
                                               _%hd166811167509%_
                                               _%tl166810167511%_
                                               _%__splice170806170807%_
                                               _%target166813167514%_
                                               _%tl166815167516%_)
                                              (_%__kont170816170817%_))))
                                      (_%__kont170816170817%_))
                                  (_%__kont170816170817%_))))
                          (_%__kont170816170817%_))
                      (_%__kont170816170817%_))
                  (_%__kont170816170817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170816170817%_))))
                                          (_%__match171295171296%_
                                           _%e166776167410%_
                                           _%hd166775167413%_
                                           _%tl166774167415%_
                                           _%e166779167418%_
                                           _%hd166778167421%_
                                           _%tl166777167423%_
                                           _%e166782167426%_
                                           _%hd166781167429%_
                                           _%tl166780167431%_
                                           _%e166785167434%_
                                           _%hd166784167437%_
                                           _%tl166783167439%_
                                           _%e166788167442%_
                                           _%hd166787167445%_
                                           _%tl166786167447%_
                                           _%e166791167450%_
                                           _%hd166790167453%_
                                           _%tl166789167455%_
                                           _%e166794167458%_
                                           _%hd166793167461%_
                                           _%tl166792167463%_
                                           _%e166797167466%_
                                           _%hd166796167469%_
                                           _%tl166795167471%_))
                                      (_%__match171295171296%_
                                       _%e166776167410%_
                                       _%hd166775167413%_
                                       _%tl166774167415%_
                                       _%e166779167418%_
                                       _%hd166778167421%_
                                       _%tl166777167423%_
                                       _%e166782167426%_
                                       _%hd166781167429%_
                                       _%tl166780167431%_
                                       _%e166785167434%_
                                       _%hd166784167437%_
                                       _%tl166783167439%_
                                       _%e166788167442%_
                                       _%hd166787167445%_
                                       _%tl166786167447%_
                                       _%e166791167450%_
                                       _%hd166790167453%_
                                       _%tl166789167455%_
                                       _%e166794167458%_
                                       _%hd166793167461%_
                                       _%tl166792167463%_
                                       _%e166797167466%_
                                       _%hd166796167469%_
                                       _%tl166795167471%_))))
                              (_%__match171295171296%_
                               _%e166776167410%_
                               _%hd166775167413%_
                               _%tl166774167415%_
                               _%e166779167418%_
                               _%hd166778167421%_
                               _%tl166777167423%_
                               _%e166782167426%_
                               _%hd166781167429%_
                               _%tl166780167431%_
                               _%e166785167434%_
                               _%hd166784167437%_
                               _%tl166783167439%_
                               _%e166788167442%_
                               _%hd166787167445%_
                               _%tl166786167447%_
                               _%e166791167450%_
                               _%hd166790167453%_
                               _%tl166789167455%_
                               _%e166794167458%_
                               _%hd166793167461%_
                               _%tl166792167463%_
                               _%e166797167466%_
                               _%hd166796167469%_
                               _%tl166795167471%_))
                          (_%__match171081171082%_
                           _%e166776167410%_
                           _%hd166775167413%_
                           _%tl166774167415%_
                           _%e166779167418%_
                           _%hd166778167421%_
                           _%tl166777167423%_
                           _%e166782167426%_
                           _%hd166781167429%_
                           _%tl166780167431%_
                           _%e166785167434%_
                           _%hd166784167437%_
                           _%tl166783167439%_
                           _%e166788167442%_
                           _%hd166787167445%_
                           _%tl166786167447%_
                           _%e166791167450%_
                           _%hd166790167453%_
                           _%tl166789167455%_
                           _%e166794167458%_
                           _%hd166793167461%_
                           _%tl166792167463%_
                           _%e166797167466%_
                           _%hd166796167469%_
                           _%tl166795167471%_
                           _%e166800167474%_
                           _%hd166799167477%_
                           _%tl166798167479%_))))
                   (_%__match170903170904%_
                    (lambda (_%e166732167599%_
                             _%hd166731167602%_
                             _%tl166730167604%_
                             _%e166735167607%_
                             _%hd166734167610%_
                             _%tl166733167612%_
                             _%e166738167615%_
                             _%hd166737167618%_
                             _%tl166736167620%_
                             _%e166741167623%_
                             _%hd166740167626%_
                             _%tl166739167628%_
                             _%e166744167631%_
                             _%hd166743167634%_
                             _%tl166742167636%_
                             _%e166747167639%_
                             _%hd166746167642%_
                             _%tl166745167644%_
                             _%e166750167647%_
                             _%hd166749167650%_
                             _%tl166748167652%_
                             _%e166753167655%_
                             _%hd166752167658%_
                             _%tl166751167660%_
                             _%e166756167663%_
                             _%hd166755167666%_
                             _%tl166754167668%_
                             _%e166759167671%_
                             _%hd166758167674%_
                             _%tl166757167676%_
                             _%__splice170802170803%_
                             _%target166760167679%_
                             _%tl166762167681%_)
                      (letrec ((_%loop166763167684%_
                                (lambda (_%hd166761167687%_
                                         _%args166767167689%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166761167687%_))
                                      (let ((_%e166764167692%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166761167687%_))))
                                        (let ((_%lp-tl166766167697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166764167692%_)))
                                              (_%lp-hd166765167695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166764167692%_))))
                                          (let ((__tmp171932
                                                 (cons _%lp-hd166765167695%_
                                                       _%args166767167689%_)))
                                            (declare (not safe))
                                            (_%loop166763167684%_
                                             _%lp-tl166766167697%_
                                             __tmp171932))))
                                      (let ((_%args166768167700%_
                                             (reverse _%args166767167689%_)))
                                        (let ((_%L167703%_
                                               _%args166768167700%_)
                                              (_%L167704%_ _%hd166758167674%_)
                                              (_%L167705%_ _%hd166749167650%_)
                                              (_%L167706%_ _%hd166740167626%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167706%_
                                                      'call-method))
                                                   (let ((__tmp171933
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166715%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167705%_
                                                      __tmp171933)))
                                              (_%__kont170800170801%_
                                               _%L167703%_
                                               _%L167704%_
                                               _%L167705%_
                                               _%L167706%_)
                                              (_%__match171091171092%_
                                               _%e166732167599%_
                                               _%hd166731167602%_
                                               _%tl166730167604%_
                                               _%e166735167607%_
                                               _%hd166734167610%_
                                               _%tl166733167612%_
                                               _%e166738167615%_
                                               _%hd166737167618%_
                                               _%tl166736167620%_
                                               _%e166741167623%_
                                               _%hd166740167626%_
                                               _%tl166739167628%_
                                               _%e166744167631%_
                                               _%hd166743167634%_
                                               _%tl166742167636%_
                                               _%e166747167639%_
                                               _%hd166746167642%_
                                               _%tl166745167644%_
                                               _%e166750167647%_
                                               _%hd166749167650%_
                                               _%tl166748167652%_
                                               _%e166753167655%_
                                               _%hd166752167658%_
                                               _%tl166751167660%_
                                               _%e166756167663%_
                                               _%hd166755167666%_
                                               _%tl166754167668%_
                                               _%e166759167671%_
                                               _%hd166758167674%_
                                               _%tl166757167676%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166763167684%_
                           _%target166760167679%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170798170799%_))
                  (let ((_%e166732167599%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170798170799%_))))
                    (let ((_%tl166730167604%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166732167599%_)))
                          (_%hd166731167602%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166732167599%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166730167604%_))
                          (let ((_%e166735167607%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166730167604%_))))
                            (let ((_%tl166733167612%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166735167607%_)))
                                  (_%hd166734167610%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166735167607%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166734167610%_))
                                  (let ((_%e166738167615%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166734167610%_))))
                                    (let ((_%tl166736167620%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166738167615%_)))
                                          (_%hd166737167618%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166738167615%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166737167618%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166737167618%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166736167620%_))
                                                  (let ((_%e166741167623%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166736167620%_))))
                                                    (let ((_%tl166739167628%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166741167623%_)))
                                                          (_%hd166740167626%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166741167623%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166739167628%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl166733167612%_))
                      (let ((_%e166744167631%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl166733167612%_))))
                        (let ((_%tl166742167636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e166744167631%_)))
                              (_%hd166743167634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e166744167631%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd166743167634%_))
                              (let ((_%e166747167639%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd166743167634%_))))
                                (let ((_%tl166745167644%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166747167639%_)))
                                      (_%hd166746167642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166747167639%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd166746167642%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd166746167642%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl166745167644%_))
                                              (let ((_%e166750167647%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl166745167644%_))))
                                                (let ((_%tl166748167652%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e166750167647%_)))
                                                      (_%hd166749167650%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e166750167647%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl166748167652%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl166742167636%_))
                                                          (let ((_%e166753167655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl166742167636%_))))
                    (let ((_%tl166751167660%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166753167655%_)))
                          (_%hd166752167658%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166753167655%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166752167658%_))
                          (let ((_%e166756167663%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166752167658%_))))
                            (let ((_%tl166754167668%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166756167663%_)))
                                  (_%hd166755167666%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166756167663%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166755167666%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166755167666%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166754167668%_))
                                          (let ((_%e166759167671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166754167668%_))))
                                            (let ((_%tl166757167676%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166759167671%_)))
                                                  (_%hd166758167674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166759167671%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166757167676%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl166751167660%_))
                                                      (let ((_%__splice170802170803%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl166751167660%_ '0))))
                (let ((_%tl166762167681%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170802170803%_ '1)))
                      (_%target166760167679%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170802170803%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166762167681%_))
                      (_%__match170903170904%_
                       _%e166732167599%_
                       _%hd166731167602%_
                       _%tl166730167604%_
                       _%e166735167607%_
                       _%hd166734167610%_
                       _%tl166733167612%_
                       _%e166738167615%_
                       _%hd166737167618%_
                       _%tl166736167620%_
                       _%e166741167623%_
                       _%hd166740167626%_
                       _%tl166739167628%_
                       _%e166744167631%_
                       _%hd166743167634%_
                       _%tl166742167636%_
                       _%e166747167639%_
                       _%hd166746167642%_
                       _%tl166745167644%_
                       _%e166750167647%_
                       _%hd166749167650%_
                       _%tl166748167652%_
                       _%e166753167655%_
                       _%hd166752167658%_
                       _%tl166751167660%_
                       _%e166756167663%_
                       _%hd166755167666%_
                       _%tl166754167668%_
                       _%e166759167671%_
                       _%hd166758167674%_
                       _%tl166757167676%_
                       _%__splice170802170803%_
                       _%target166760167679%_
                       _%tl166762167681%_)
                      (_%__match171091171092%_
                       _%e166732167599%_
                       _%hd166731167602%_
                       _%tl166730167604%_
                       _%e166735167607%_
                       _%hd166734167610%_
                       _%tl166733167612%_
                       _%e166738167615%_
                       _%hd166737167618%_
                       _%tl166736167620%_
                       _%e166741167623%_
                       _%hd166740167626%_
                       _%tl166739167628%_
                       _%e166744167631%_
                       _%hd166743167634%_
                       _%tl166742167636%_
                       _%e166747167639%_
                       _%hd166746167642%_
                       _%tl166745167644%_
                       _%e166750167647%_
                       _%hd166749167650%_
                       _%tl166748167652%_
                       _%e166753167655%_
                       _%hd166752167658%_
                       _%tl166751167660%_
                       _%e166756167663%_
                       _%hd166755167666%_
                       _%tl166754167668%_
                       _%e166759167671%_
                       _%hd166758167674%_
                       _%tl166757167676%_))))
              (_%__match171091171092%_
               _%e166732167599%_
               _%hd166731167602%_
               _%tl166730167604%_
               _%e166735167607%_
               _%hd166734167610%_
               _%tl166733167612%_
               _%e166738167615%_
               _%hd166737167618%_
               _%tl166736167620%_
               _%e166741167623%_
               _%hd166740167626%_
               _%tl166739167628%_
               _%e166744167631%_
               _%hd166743167634%_
               _%tl166742167636%_
               _%e166747167639%_
               _%hd166746167642%_
               _%tl166745167644%_
               _%e166750167647%_
               _%hd166749167650%_
               _%tl166748167652%_
               _%e166753167655%_
               _%hd166752167658%_
               _%tl166751167660%_
               _%e166756167663%_
               _%hd166755167666%_
               _%tl166754167668%_
               _%e166759167671%_
               _%hd166758167674%_
               _%tl166757167676%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match171295171296%_
                                                   _%e166732167599%_
                                                   _%hd166731167602%_
                                                   _%tl166730167604%_
                                                   _%e166735167607%_
                                                   _%hd166734167610%_
                                                   _%tl166733167612%_
                                                   _%e166738167615%_
                                                   _%hd166737167618%_
                                                   _%tl166736167620%_
                                                   _%e166741167623%_
                                                   _%hd166740167626%_
                                                   _%tl166739167628%_
                                                   _%e166744167631%_
                                                   _%hd166743167634%_
                                                   _%tl166742167636%_
                                                   _%e166747167639%_
                                                   _%hd166746167642%_
                                                   _%tl166745167644%_
                                                   _%e166750167647%_
                                                   _%hd166749167650%_
                                                   _%tl166748167652%_
                                                   _%e166753167655%_
                                                   _%hd166752167658%_
                                                   _%tl166751167660%_))))
                                          (_%__match171295171296%_
                                           _%e166732167599%_
                                           _%hd166731167602%_
                                           _%tl166730167604%_
                                           _%e166735167607%_
                                           _%hd166734167610%_
                                           _%tl166733167612%_
                                           _%e166738167615%_
                                           _%hd166737167618%_
                                           _%tl166736167620%_
                                           _%e166741167623%_
                                           _%hd166740167626%_
                                           _%tl166739167628%_
                                           _%e166744167631%_
                                           _%hd166743167634%_
                                           _%tl166742167636%_
                                           _%e166747167639%_
                                           _%hd166746167642%_
                                           _%tl166745167644%_
                                           _%e166750167647%_
                                           _%hd166749167650%_
                                           _%tl166748167652%_
                                           _%e166753167655%_
                                           _%hd166752167658%_
                                           _%tl166751167660%_))
                                      (_%__match170971170972%_
                                       _%e166732167599%_
                                       _%hd166731167602%_
                                       _%tl166730167604%_
                                       _%e166735167607%_
                                       _%hd166734167610%_
                                       _%tl166733167612%_
                                       _%e166738167615%_
                                       _%hd166737167618%_
                                       _%tl166736167620%_
                                       _%e166741167623%_
                                       _%hd166740167626%_
                                       _%tl166739167628%_
                                       _%e166744167631%_
                                       _%hd166743167634%_
                                       _%tl166742167636%_
                                       _%e166747167639%_
                                       _%hd166746167642%_
                                       _%tl166745167644%_
                                       _%e166750167647%_
                                       _%hd166749167650%_
                                       _%tl166748167652%_
                                       _%e166753167655%_
                                       _%hd166752167658%_
                                       _%tl166751167660%_
                                       _%e166756167663%_
                                       _%hd166755167666%_
                                       _%tl166754167668%_))
                                  (_%__match171295171296%_
                                   _%e166732167599%_
                                   _%hd166731167602%_
                                   _%tl166730167604%_
                                   _%e166735167607%_
                                   _%hd166734167610%_
                                   _%tl166733167612%_
                                   _%e166738167615%_
                                   _%hd166737167618%_
                                   _%tl166736167620%_
                                   _%e166741167623%_
                                   _%hd166740167626%_
                                   _%tl166739167628%_
                                   _%e166744167631%_
                                   _%hd166743167634%_
                                   _%tl166742167636%_
                                   _%e166747167639%_
                                   _%hd166746167642%_
                                   _%tl166745167644%_
                                   _%e166750167647%_
                                   _%hd166749167650%_
                                   _%tl166748167652%_
                                   _%e166753167655%_
                                   _%hd166752167658%_
                                   _%tl166751167660%_))))
                          (_%__match171295171296%_
                           _%e166732167599%_
                           _%hd166731167602%_
                           _%tl166730167604%_
                           _%e166735167607%_
                           _%hd166734167610%_
                           _%tl166733167612%_
                           _%e166738167615%_
                           _%hd166737167618%_
                           _%tl166736167620%_
                           _%e166741167623%_
                           _%hd166740167626%_
                           _%tl166739167628%_
                           _%e166744167631%_
                           _%hd166743167634%_
                           _%tl166742167636%_
                           _%e166747167639%_
                           _%hd166746167642%_
                           _%tl166745167644%_
                           _%e166750167647%_
                           _%hd166749167650%_
                           _%tl166748167652%_
                           _%e166753167655%_
                           _%hd166752167658%_
                           _%tl166751167660%_))))
                  (_%__match171233171234%_
                   _%e166732167599%_
                   _%hd166731167602%_
                   _%tl166730167604%_
                   _%e166735167607%_
                   _%hd166734167610%_
                   _%tl166733167612%_
                   _%e166738167615%_
                   _%hd166737167618%_
                   _%tl166736167620%_
                   _%e166741167623%_
                   _%hd166740167626%_
                   _%tl166739167628%_
                   _%e166744167631%_
                   _%hd166743167634%_
                   _%tl166742167636%_
                   _%e166747167639%_
                   _%hd166746167642%_
                   _%tl166745167644%_
                   _%e166750167647%_
                   _%hd166749167650%_
                   _%tl166748167652%_))
              (_%__kont170816170817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170816170817%_))
                                          (_%__kont170816170817%_))
                                      (_%__kont170816170817%_))))
                              (_%__kont170816170817%_))))
                      (_%__kont170816170817%_))
                  (_%__kont170816170817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170816170817%_))
                                              (_%__kont170816170817%_))
                                          (_%__kont170816170817%_))))
                                  (_%__kont170816170817%_))))
                          (_%__kont170816170817%_))))
                  (_%__kont170816170817%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self165654%_ _%stx165655%_)
        (letrec ((_%force-e165657%_
                  (lambda (_%target166713%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target166713%_ '()))
                                      '()))))))
          (let* ((_%__stx171300171301%_ _%stx165655%_)
                 (_%g165665165887%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171300171301%_)))))
            (let ((_%__kont171302171303%_
                   (lambda (_%L166659%_ _%L166660%_ _%L166661%_ _%L166662%_)
                     (let ((_%$method166707%_
                            (let ((__tmp171935
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165654%_ 'methods)))
                                  (__tmp171934
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166660%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171935 __tmp171934)))
                           (_%args166708%_
                            (map (lambda (_%g166695166697%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165654%_
                                      _%g166695166697%_)))
                                 (let ((__tmp171936
                                        (lambda (_%g166699166702%_
                                                 _%g166700166704%_)
                                          (cons _%g166699166702%_
                                                _%g166700166704%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171936 '() _%L166659%_)))))
                       (let ((__tmp171937
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e165657%_
                                             _%$method166707%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165654%_
                                                               'receiver))
                                                            '()))
                                                _%args166708%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171937 _%stx165655%_)))))
                  (_%__kont171306171307%_
                   (lambda (_%L166491%_
                            _%L166492%_
                            _%L166493%_
                            _%L166494%_
                            _%L166495%_)
                     (let ((_%$method166547%_
                            (let ((__tmp171939
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165654%_ 'methods)))
                                  (__tmp171938
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166492%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171939 __tmp171938)))
                           (_%args166548%_
                            (map (lambda (_%g166535166537%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165654%_
                                      _%g166535166537%_)))
                                 (let ((__tmp171940
                                        (lambda (_%g166539166542%_
                                                 _%g166540166544%_)
                                          (cons _%g166539166542%_
                                                _%g166540166544%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171940 '() _%L166491%_)))))
                       (let ((__tmp171941
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e165657%_
                                                   _%$method166547%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165654%_ 'receiver))
                          '()))
              _%args166548%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171941 _%stx165655%_)))))
                  (_%__kont171310171311%_
                   (lambda (_%L166322%_ _%L166323%_ _%L166324%_)
                     (let* ((_%$field166356%_
                             (let ((__tmp171943
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self165654%_ 'slots)))
                                   (__tmp171942
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L166322%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171943 __tmp171942)))
                            (__tmp171944
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self165654%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field166356%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self165654%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171944 _%stx165655%_))))
                  (_%__kont171312171313%_
                   (lambda (_%L166196%_ _%L166197%_ _%L166198%_ _%L166199%_)
                     (let ((_%$field166234%_
                            (let ((__tmp171946
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165654%_ 'slots)))
                                  (__tmp171945
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166197%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171946 __tmp171945)))
                           (_%expr166235%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self165654%_ _%L166196%_))))
                       (let ((__tmp171947
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self165654%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field166234%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165654%_ 'receiver))
                          '()))
              (cons _%expr166235%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171947 _%stx165655%_)))))
                  (_%__kont171314171315%_
                   (lambda (_%L166068%_ _%L166069%_)
                     (let* ((_%accessor166091%_
                             (let ((__tmp171948
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166069%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171948)))
                            (_%klass166093%_
                             (let ((__tmp171949
                                    (##structure-ref
                                     _%accessor166091%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165655%_
                                __tmp171949)))
                            (_%slot166095%_
                             (##structure-ref
                              _%accessor166091%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp171950
                                       (##structure-ref
                                        _%accessor166091%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171950))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166093%_
                                       _%slot166095%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166093%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx165655%_
                           (let* ((_%$field166101%_
                                   (let ((__tmp171951
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165654%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171951 _%slot166095%_)))
                                  (__tmp171952
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165654%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165654%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171952
                              _%stx165655%_))))))
                  (_%__kont171316171317%_
                   (lambda (_%L165963%_ _%L165964%_ _%L165965%_)
                     (let* ((_%mutator165993%_
                             (let ((__tmp171953
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165965%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171953)))
                            (_%klass165995%_
                             (let ((__tmp171954
                                    (##structure-ref
                                     _%mutator165993%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165655%_
                                __tmp171954)))
                            (_%slot165997%_
                             (##structure-ref
                              _%mutator165993%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165999%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self165654%_ _%L165963%_))))
                       (if (and (let ((__tmp171955
                                       (##structure-ref
                                        _%mutator165993%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171955))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165995%_
                                       _%slot165997%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165995%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171956
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165965%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165964%_
                                                                '()))
                                                    (cons _%expr165999%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171956 _%stx165655%_))
                           (let* ((_%$field166005%_
                                   (let ((__tmp171957
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165654%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171957 _%slot165997%_)))
                                  (__tmp171958
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165654%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165654%_ 'receiver))
                               '()))
                   (cons _%expr165999%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171958
                              _%stx165655%_))))))
                  (_%__kont171318171319%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self165654%_ _%stx165655%_)))))
              (let* ((_%__match171799171800%_
                      (lambda (_%e165861165899%_
                               _%hd165860165902%_
                               _%tl165859165904%_
                               _%e165864165907%_
                               _%hd165863165910%_
                               _%tl165862165912%_
                               _%e165867165915%_
                               _%hd165866165918%_
                               _%tl165865165920%_
                               _%e165870165923%_
                               _%hd165869165926%_
                               _%tl165868165928%_
                               _%e165873165931%_
                               _%hd165872165934%_
                               _%tl165871165936%_
                               _%e165876165939%_
                               _%hd165875165942%_
                               _%tl165874165944%_
                               _%e165879165947%_
                               _%hd165878165950%_
                               _%tl165877165952%_
                               _%e165882165955%_
                               _%hd165881165958%_
                               _%tl165880165960%_)
                        (let ((_%L165963%_ _%hd165881165958%_)
                              (_%L165964%_ _%hd165878165950%_)
                              (_%L165965%_ _%hd165869165926%_))
                          (if (and (let ((__tmp171959
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165654%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165964%_
                                      __tmp171959))
                                   (let ((__tmp171960
                                          (let ((__tmp171961
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165965%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171961))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171960
                                      'gxc#!mutator::t)))
                              (_%__kont171316171317%_
                               _%L165963%_
                               _%L165964%_
                               _%L165965%_)
                              (_%__kont171318171319%_)))))
                     (_%__match171797171798%_
                      (lambda (_%e165861165899%_
                               _%hd165860165902%_
                               _%tl165859165904%_
                               _%e165864165907%_
                               _%hd165863165910%_
                               _%tl165862165912%_
                               _%e165867165915%_
                               _%hd165866165918%_
                               _%tl165865165920%_
                               _%e165870165923%_
                               _%hd165869165926%_
                               _%tl165868165928%_
                               _%e165873165931%_
                               _%hd165872165934%_
                               _%tl165871165936%_
                               _%e165876165939%_
                               _%hd165875165942%_
                               _%tl165874165944%_
                               _%e165879165947%_
                               _%hd165878165950%_
                               _%tl165877165952%_
                               _%e165882165955%_
                               _%hd165881165958%_
                               _%tl165880165960%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165880165960%_))
                            (_%__match171799171800%_
                             _%e165861165899%_
                             _%hd165860165902%_
                             _%tl165859165904%_
                             _%e165864165907%_
                             _%hd165863165910%_
                             _%tl165862165912%_
                             _%e165867165915%_
                             _%hd165866165918%_
                             _%tl165865165920%_
                             _%e165870165923%_
                             _%hd165869165926%_
                             _%tl165868165928%_
                             _%e165873165931%_
                             _%hd165872165934%_
                             _%tl165871165936%_
                             _%e165876165939%_
                             _%hd165875165942%_
                             _%tl165874165944%_
                             _%e165879165947%_
                             _%hd165878165950%_
                             _%tl165877165952%_
                             _%e165882165955%_
                             _%hd165881165958%_
                             _%tl165880165960%_)
                            (_%__kont171318171319%_))))
                     (_%__match171791171792%_
                      (lambda (_%e165861165899%_
                               _%hd165860165902%_
                               _%tl165859165904%_
                               _%e165864165907%_
                               _%hd165863165910%_
                               _%tl165862165912%_
                               _%e165867165915%_
                               _%hd165866165918%_
                               _%tl165865165920%_
                               _%e165870165923%_
                               _%hd165869165926%_
                               _%tl165868165928%_
                               _%e165873165931%_
                               _%hd165872165934%_
                               _%tl165871165936%_
                               _%e165876165939%_
                               _%hd165875165942%_
                               _%tl165874165944%_
                               _%e165879165947%_
                               _%hd165878165950%_
                               _%tl165877165952%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165871165936%_))
                            (let ((_%e165882165955%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165871165936%_))))
                              (let ((_%tl165880165960%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165882165955%_)))
                                    (_%hd165881165958%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165882165955%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165880165960%_))
                                    (_%__match171799171800%_
                                     _%e165861165899%_
                                     _%hd165860165902%_
                                     _%tl165859165904%_
                                     _%e165864165907%_
                                     _%hd165863165910%_
                                     _%tl165862165912%_
                                     _%e165867165915%_
                                     _%hd165866165918%_
                                     _%tl165865165920%_
                                     _%e165870165923%_
                                     _%hd165869165926%_
                                     _%tl165868165928%_
                                     _%e165873165931%_
                                     _%hd165872165934%_
                                     _%tl165871165936%_
                                     _%e165876165939%_
                                     _%hd165875165942%_
                                     _%tl165874165944%_
                                     _%e165879165947%_
                                     _%hd165878165950%_
                                     _%tl165877165952%_
                                     _%e165882165955%_
                                     _%hd165881165958%_
                                     _%tl165880165960%_)
                                    (_%__kont171318171319%_))))
                            (_%__kont171318171319%_))))
                     (_%__match171737171738%_
                      (lambda (_%e165837166012%_
                               _%hd165836166015%_
                               _%tl165835166017%_
                               _%e165840166020%_
                               _%hd165839166023%_
                               _%tl165838166025%_
                               _%e165843166028%_
                               _%hd165842166031%_
                               _%tl165841166033%_
                               _%e165846166036%_
                               _%hd165845166039%_
                               _%tl165844166041%_
                               _%e165849166044%_
                               _%hd165848166047%_
                               _%tl165847166049%_
                               _%e165852166052%_
                               _%hd165851166055%_
                               _%tl165850166057%_
                               _%e165855166060%_
                               _%hd165854166063%_
                               _%tl165853166065%_)
                        (let ((_%L166068%_ _%hd165854166063%_)
                              (_%L166069%_ _%hd165845166039%_))
                          (if (and (let ((__tmp171962
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165654%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166068%_
                                      __tmp171962))
                                   (let ((__tmp171963
                                          (let ((__tmp171964
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166069%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171964))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171963
                                      'gxc#!accessor::t)))
                              (_%__kont171314171315%_ _%L166068%_ _%L166069%_)
                              (_%__kont171318171319%_)))))
                     (_%__match171735171736%_
                      (lambda (_%e165837166012%_
                               _%hd165836166015%_
                               _%tl165835166017%_
                               _%e165840166020%_
                               _%hd165839166023%_
                               _%tl165838166025%_
                               _%e165843166028%_
                               _%hd165842166031%_
                               _%tl165841166033%_
                               _%e165846166036%_
                               _%hd165845166039%_
                               _%tl165844166041%_
                               _%e165849166044%_
                               _%hd165848166047%_
                               _%tl165847166049%_
                               _%e165852166052%_
                               _%hd165851166055%_
                               _%tl165850166057%_
                               _%e165855166060%_
                               _%hd165854166063%_
                               _%tl165853166065%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165847166049%_))
                            (_%__match171737171738%_
                             _%e165837166012%_
                             _%hd165836166015%_
                             _%tl165835166017%_
                             _%e165840166020%_
                             _%hd165839166023%_
                             _%tl165838166025%_
                             _%e165843166028%_
                             _%hd165842166031%_
                             _%tl165841166033%_
                             _%e165846166036%_
                             _%hd165845166039%_
                             _%tl165844166041%_
                             _%e165849166044%_
                             _%hd165848166047%_
                             _%tl165847166049%_
                             _%e165852166052%_
                             _%hd165851166055%_
                             _%tl165850166057%_
                             _%e165855166060%_
                             _%hd165854166063%_
                             _%tl165853166065%_)
                            (_%__match171791171792%_
                             _%e165837166012%_
                             _%hd165836166015%_
                             _%tl165835166017%_
                             _%e165840166020%_
                             _%hd165839166023%_
                             _%tl165838166025%_
                             _%e165843166028%_
                             _%hd165842166031%_
                             _%tl165841166033%_
                             _%e165846166036%_
                             _%hd165845166039%_
                             _%tl165844166041%_
                             _%e165849166044%_
                             _%hd165848166047%_
                             _%tl165847166049%_
                             _%e165852166052%_
                             _%hd165851166055%_
                             _%tl165850166057%_
                             _%e165855166060%_
                             _%hd165854166063%_
                             _%tl165853166065%_))))
                     (_%__match171681171682%_
                      (lambda (_%e165802166108%_
                               _%hd165801166111%_
                               _%tl165800166113%_
                               _%e165805166116%_
                               _%hd165804166119%_
                               _%tl165803166121%_
                               _%e165808166124%_
                               _%hd165807166127%_
                               _%tl165806166129%_
                               _%e165811166132%_
                               _%hd165810166135%_
                               _%tl165809166137%_
                               _%e165814166140%_
                               _%hd165813166143%_
                               _%tl165812166145%_
                               _%e165817166148%_
                               _%hd165816166151%_
                               _%tl165815166153%_
                               _%e165820166156%_
                               _%hd165819166159%_
                               _%tl165818166161%_
                               _%e165823166164%_
                               _%hd165822166167%_
                               _%tl165821166169%_
                               _%e165826166172%_
                               _%hd165825166175%_
                               _%tl165824166177%_
                               _%e165829166180%_
                               _%hd165828166183%_
                               _%tl165827166185%_
                               _%e165832166188%_
                               _%hd165831166191%_
                               _%tl165830166193%_)
                        (let ((_%L166196%_ _%hd165831166191%_)
                              (_%L166197%_ _%hd165828166183%_)
                              (_%L166198%_ _%hd165819166159%_)
                              (_%L166199%_ _%hd165810166135%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166199%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166199%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171965
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165654%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166198%_
                                      __tmp171965)))
                              (_%__kont171312171313%_
                               _%L166196%_
                               _%L166197%_
                               _%L166198%_
                               _%L166199%_)
                              (_%__kont171318171319%_)))))
                     (_%__match171673171674%_
                      (lambda (_%e165802166108%_
                               _%hd165801166111%_
                               _%tl165800166113%_
                               _%e165805166116%_
                               _%hd165804166119%_
                               _%tl165803166121%_
                               _%e165808166124%_
                               _%hd165807166127%_
                               _%tl165806166129%_
                               _%e165811166132%_
                               _%hd165810166135%_
                               _%tl165809166137%_
                               _%e165814166140%_
                               _%hd165813166143%_
                               _%tl165812166145%_
                               _%e165817166148%_
                               _%hd165816166151%_
                               _%tl165815166153%_
                               _%e165820166156%_
                               _%hd165819166159%_
                               _%tl165818166161%_
                               _%e165823166164%_
                               _%hd165822166167%_
                               _%tl165821166169%_
                               _%e165826166172%_
                               _%hd165825166175%_
                               _%tl165824166177%_
                               _%e165829166180%_
                               _%hd165828166183%_
                               _%tl165827166185%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165821166169%_))
                            (let ((_%e165832166188%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165821166169%_))))
                              (let ((_%tl165830166193%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165832166188%_)))
                                    (_%hd165831166191%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165832166188%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165830166193%_))
                                    (_%__match171681171682%_
                                     _%e165802166108%_
                                     _%hd165801166111%_
                                     _%tl165800166113%_
                                     _%e165805166116%_
                                     _%hd165804166119%_
                                     _%tl165803166121%_
                                     _%e165808166124%_
                                     _%hd165807166127%_
                                     _%tl165806166129%_
                                     _%e165811166132%_
                                     _%hd165810166135%_
                                     _%tl165809166137%_
                                     _%e165814166140%_
                                     _%hd165813166143%_
                                     _%tl165812166145%_
                                     _%e165817166148%_
                                     _%hd165816166151%_
                                     _%tl165815166153%_
                                     _%e165820166156%_
                                     _%hd165819166159%_
                                     _%tl165818166161%_
                                     _%e165823166164%_
                                     _%hd165822166167%_
                                     _%tl165821166169%_
                                     _%e165826166172%_
                                     _%hd165825166175%_
                                     _%tl165824166177%_
                                     _%e165829166180%_
                                     _%hd165828166183%_
                                     _%tl165827166185%_
                                     _%e165832166188%_
                                     _%hd165831166191%_
                                     _%tl165830166193%_)
                                    (_%__kont171318171319%_))))
                            (_%__match171797171798%_
                             _%e165802166108%_
                             _%hd165801166111%_
                             _%tl165800166113%_
                             _%e165805166116%_
                             _%hd165804166119%_
                             _%tl165803166121%_
                             _%e165808166124%_
                             _%hd165807166127%_
                             _%tl165806166129%_
                             _%e165811166132%_
                             _%hd165810166135%_
                             _%tl165809166137%_
                             _%e165814166140%_
                             _%hd165813166143%_
                             _%tl165812166145%_
                             _%e165817166148%_
                             _%hd165816166151%_
                             _%tl165815166153%_
                             _%e165820166156%_
                             _%hd165819166159%_
                             _%tl165818166161%_
                             _%e165823166164%_
                             _%hd165822166167%_
                             _%tl165821166169%_))))
                     (_%__match171595171596%_
                      (lambda (_%e165768166242%_
                               _%hd165767166245%_
                               _%tl165766166247%_
                               _%e165771166250%_
                               _%hd165770166253%_
                               _%tl165769166255%_
                               _%e165774166258%_
                               _%hd165773166261%_
                               _%tl165772166263%_
                               _%e165777166266%_
                               _%hd165776166269%_
                               _%tl165775166271%_
                               _%e165780166274%_
                               _%hd165779166277%_
                               _%tl165778166279%_
                               _%e165783166282%_
                               _%hd165782166285%_
                               _%tl165781166287%_
                               _%e165786166290%_
                               _%hd165785166293%_
                               _%tl165784166295%_
                               _%e165789166298%_
                               _%hd165788166301%_
                               _%tl165787166303%_
                               _%e165792166306%_
                               _%hd165791166309%_
                               _%tl165790166311%_
                               _%e165795166314%_
                               _%hd165794166317%_
                               _%tl165793166319%_)
                        (let ((_%L166322%_ _%hd165794166317%_)
                              (_%L166323%_ _%hd165785166293%_)
                              (_%L166324%_ _%hd165776166269%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166324%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166324%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171966
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165654%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166323%_
                                      __tmp171966)))
                              (_%__kont171310171311%_
                               _%L166322%_
                               _%L166323%_
                               _%L166324%_)
                              (_%__match171799171800%_
                               _%e165768166242%_
                               _%hd165767166245%_
                               _%tl165766166247%_
                               _%e165771166250%_
                               _%hd165770166253%_
                               _%tl165769166255%_
                               _%e165774166258%_
                               _%hd165773166261%_
                               _%tl165772166263%_
                               _%e165777166266%_
                               _%hd165776166269%_
                               _%tl165775166271%_
                               _%e165780166274%_
                               _%hd165779166277%_
                               _%tl165778166279%_
                               _%e165783166282%_
                               _%hd165782166285%_
                               _%tl165781166287%_
                               _%e165786166290%_
                               _%hd165785166293%_
                               _%tl165784166295%_
                               _%e165789166298%_
                               _%hd165788166301%_
                               _%tl165787166303%_)))))
                     (_%__match171593171594%_
                      (lambda (_%e165768166242%_
                               _%hd165767166245%_
                               _%tl165766166247%_
                               _%e165771166250%_
                               _%hd165770166253%_
                               _%tl165769166255%_
                               _%e165774166258%_
                               _%hd165773166261%_
                               _%tl165772166263%_
                               _%e165777166266%_
                               _%hd165776166269%_
                               _%tl165775166271%_
                               _%e165780166274%_
                               _%hd165779166277%_
                               _%tl165778166279%_
                               _%e165783166282%_
                               _%hd165782166285%_
                               _%tl165781166287%_
                               _%e165786166290%_
                               _%hd165785166293%_
                               _%tl165784166295%_
                               _%e165789166298%_
                               _%hd165788166301%_
                               _%tl165787166303%_
                               _%e165792166306%_
                               _%hd165791166309%_
                               _%tl165790166311%_
                               _%e165795166314%_
                               _%hd165794166317%_
                               _%tl165793166319%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165787166303%_))
                            (_%__match171595171596%_
                             _%e165768166242%_
                             _%hd165767166245%_
                             _%tl165766166247%_
                             _%e165771166250%_
                             _%hd165770166253%_
                             _%tl165769166255%_
                             _%e165774166258%_
                             _%hd165773166261%_
                             _%tl165772166263%_
                             _%e165777166266%_
                             _%hd165776166269%_
                             _%tl165775166271%_
                             _%e165780166274%_
                             _%hd165779166277%_
                             _%tl165778166279%_
                             _%e165783166282%_
                             _%hd165782166285%_
                             _%tl165781166287%_
                             _%e165786166290%_
                             _%hd165785166293%_
                             _%tl165784166295%_
                             _%e165789166298%_
                             _%hd165788166301%_
                             _%tl165787166303%_
                             _%e165792166306%_
                             _%hd165791166309%_
                             _%tl165790166311%_
                             _%e165795166314%_
                             _%hd165794166317%_
                             _%tl165793166319%_)
                            (_%__match171673171674%_
                             _%e165768166242%_
                             _%hd165767166245%_
                             _%tl165766166247%_
                             _%e165771166250%_
                             _%hd165770166253%_
                             _%tl165769166255%_
                             _%e165774166258%_
                             _%hd165773166261%_
                             _%tl165772166263%_
                             _%e165777166266%_
                             _%hd165776166269%_
                             _%tl165775166271%_
                             _%e165780166274%_
                             _%hd165779166277%_
                             _%tl165778166279%_
                             _%e165783166282%_
                             _%hd165782166285%_
                             _%tl165781166287%_
                             _%e165786166290%_
                             _%hd165785166293%_
                             _%tl165784166295%_
                             _%e165789166298%_
                             _%hd165788166301%_
                             _%tl165787166303%_
                             _%e165792166306%_
                             _%hd165791166309%_
                             _%tl165790166311%_
                             _%e165795166314%_
                             _%hd165794166317%_
                             _%tl165793166319%_))))
                     (_%__match171583171584%_
                      (lambda (_%e165768166242%_
                               _%hd165767166245%_
                               _%tl165766166247%_
                               _%e165771166250%_
                               _%hd165770166253%_
                               _%tl165769166255%_
                               _%e165774166258%_
                               _%hd165773166261%_
                               _%tl165772166263%_
                               _%e165777166266%_
                               _%hd165776166269%_
                               _%tl165775166271%_
                               _%e165780166274%_
                               _%hd165779166277%_
                               _%tl165778166279%_
                               _%e165783166282%_
                               _%hd165782166285%_
                               _%tl165781166287%_
                               _%e165786166290%_
                               _%hd165785166293%_
                               _%tl165784166295%_
                               _%e165789166298%_
                               _%hd165788166301%_
                               _%tl165787166303%_
                               _%e165792166306%_
                               _%hd165791166309%_
                               _%tl165790166311%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165791166309%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165790166311%_))
                                (let ((_%e165795166314%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165790166311%_))))
                                  (let ((_%tl165793166319%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165795166314%_)))
                                        (_%hd165794166317%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165795166314%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165793166319%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165787166303%_))
                                            (_%__match171595171596%_
                                             _%e165768166242%_
                                             _%hd165767166245%_
                                             _%tl165766166247%_
                                             _%e165771166250%_
                                             _%hd165770166253%_
                                             _%tl165769166255%_
                                             _%e165774166258%_
                                             _%hd165773166261%_
                                             _%tl165772166263%_
                                             _%e165777166266%_
                                             _%hd165776166269%_
                                             _%tl165775166271%_
                                             _%e165780166274%_
                                             _%hd165779166277%_
                                             _%tl165778166279%_
                                             _%e165783166282%_
                                             _%hd165782166285%_
                                             _%tl165781166287%_
                                             _%e165786166290%_
                                             _%hd165785166293%_
                                             _%tl165784166295%_
                                             _%e165789166298%_
                                             _%hd165788166301%_
                                             _%tl165787166303%_
                                             _%e165792166306%_
                                             _%hd165791166309%_
                                             _%tl165790166311%_
                                             _%e165795166314%_
                                             _%hd165794166317%_
                                             _%tl165793166319%_)
                                            (_%__match171673171674%_
                                             _%e165768166242%_
                                             _%hd165767166245%_
                                             _%tl165766166247%_
                                             _%e165771166250%_
                                             _%hd165770166253%_
                                             _%tl165769166255%_
                                             _%e165774166258%_
                                             _%hd165773166261%_
                                             _%tl165772166263%_
                                             _%e165777166266%_
                                             _%hd165776166269%_
                                             _%tl165775166271%_
                                             _%e165780166274%_
                                             _%hd165779166277%_
                                             _%tl165778166279%_
                                             _%e165783166282%_
                                             _%hd165782166285%_
                                             _%tl165781166287%_
                                             _%e165786166290%_
                                             _%hd165785166293%_
                                             _%tl165784166295%_
                                             _%e165789166298%_
                                             _%hd165788166301%_
                                             _%tl165787166303%_
                                             _%e165792166306%_
                                             _%hd165791166309%_
                                             _%tl165790166311%_
                                             _%e165795166314%_
                                             _%hd165794166317%_
                                             _%tl165793166319%_))
                                        (_%__match171797171798%_
                                         _%e165768166242%_
                                         _%hd165767166245%_
                                         _%tl165766166247%_
                                         _%e165771166250%_
                                         _%hd165770166253%_
                                         _%tl165769166255%_
                                         _%e165774166258%_
                                         _%hd165773166261%_
                                         _%tl165772166263%_
                                         _%e165777166266%_
                                         _%hd165776166269%_
                                         _%tl165775166271%_
                                         _%e165780166274%_
                                         _%hd165779166277%_
                                         _%tl165778166279%_
                                         _%e165783166282%_
                                         _%hd165782166285%_
                                         _%tl165781166287%_
                                         _%e165786166290%_
                                         _%hd165785166293%_
                                         _%tl165784166295%_
                                         _%e165789166298%_
                                         _%hd165788166301%_
                                         _%tl165787166303%_))))
                                (_%__match171797171798%_
                                 _%e165768166242%_
                                 _%hd165767166245%_
                                 _%tl165766166247%_
                                 _%e165771166250%_
                                 _%hd165770166253%_
                                 _%tl165769166255%_
                                 _%e165774166258%_
                                 _%hd165773166261%_
                                 _%tl165772166263%_
                                 _%e165777166266%_
                                 _%hd165776166269%_
                                 _%tl165775166271%_
                                 _%e165780166274%_
                                 _%hd165779166277%_
                                 _%tl165778166279%_
                                 _%e165783166282%_
                                 _%hd165782166285%_
                                 _%tl165781166287%_
                                 _%e165786166290%_
                                 _%hd165785166293%_
                                 _%tl165784166295%_
                                 _%e165789166298%_
                                 _%hd165788166301%_
                                 _%tl165787166303%_))
                            (_%__match171797171798%_
                             _%e165768166242%_
                             _%hd165767166245%_
                             _%tl165766166247%_
                             _%e165771166250%_
                             _%hd165770166253%_
                             _%tl165769166255%_
                             _%e165774166258%_
                             _%hd165773166261%_
                             _%tl165772166263%_
                             _%e165777166266%_
                             _%hd165776166269%_
                             _%tl165775166271%_
                             _%e165780166274%_
                             _%hd165779166277%_
                             _%tl165778166279%_
                             _%e165783166282%_
                             _%hd165782166285%_
                             _%tl165781166287%_
                             _%e165786166290%_
                             _%hd165785166293%_
                             _%tl165784166295%_
                             _%e165789166298%_
                             _%hd165788166301%_
                             _%tl165787166303%_))))
                     (_%__match171515171516%_
                      (lambda (_%e165717166363%_
                               _%hd165716166366%_
                               _%tl165715166368%_
                               _%e165720166371%_
                               _%hd165719166374%_
                               _%tl165718166376%_
                               _%e165723166379%_
                               _%hd165722166382%_
                               _%tl165721166384%_
                               _%e165726166387%_
                               _%hd165725166390%_
                               _%tl165724166392%_
                               _%e165729166395%_
                               _%hd165728166398%_
                               _%tl165727166400%_
                               _%e165732166403%_
                               _%hd165731166406%_
                               _%tl165730166408%_
                               _%e165735166411%_
                               _%hd165734166414%_
                               _%tl165733166416%_
                               _%e165738166419%_
                               _%hd165737166422%_
                               _%tl165736166424%_
                               _%e165741166427%_
                               _%hd165740166430%_
                               _%tl165739166432%_
                               _%e165744166435%_
                               _%hd165743166438%_
                               _%tl165742166440%_
                               _%e165747166443%_
                               _%hd165746166446%_
                               _%tl165745166448%_
                               _%e165750166451%_
                               _%hd165749166454%_
                               _%tl165748166456%_
                               _%e165753166459%_
                               _%hd165752166462%_
                               _%tl165751166464%_
                               _%__splice171308171309%_
                               _%target165754166467%_
                               _%tl165756166469%_)
                        (letrec ((_%loop165757166472%_
                                  (lambda (_%hd165755166475%_
                                           _%args165761166477%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165755166475%_))
                                        (let ((_%e165758166480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165755166475%_))))
                                          (let ((_%lp-tl165760166485%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165758166480%_)))
                                                (_%lp-hd165759166483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165758166480%_))))
                                            (let ((__tmp171967
                                                   (cons _%lp-hd165759166483%_
                                                         _%args165761166477%_)))
                                              (declare (not safe))
                                              (_%loop165757166472%_
                                               _%lp-tl165760166485%_
                                               __tmp171967))))
                                        (let ((_%args165762166488%_
                                               (reverse _%args165761166477%_)))
                                          (let ((_%L166491%_
                                                 _%args165762166488%_)
                                                (_%L166492%_
                                                 _%hd165752166462%_)
                                                (_%L166493%_
                                                 _%hd165743166438%_)
                                                (_%L166494%_
                                                 _%hd165734166414%_)
                                                (_%L166495%_
                                                 _%hd165725166390%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166495%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166494%_
                                                        'call-method))
                                                     (let ((__tmp171968
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165654%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166493%_
                                                        __tmp171968)))
                                                (_%__kont171306171307%_
                                                 _%L166491%_
                                                 _%L166492%_
                                                 _%L166493%_
                                                 _%L166494%_
                                                 _%L166495%_)
                                                (_%__kont171318171319%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop165757166472%_
                             _%target165754166467%_
                             '())))))
                     (_%__match171473171474%_
                      (lambda (_%e165717166363%_
                               _%hd165716166366%_
                               _%tl165715166368%_
                               _%e165720166371%_
                               _%hd165719166374%_
                               _%tl165718166376%_
                               _%e165723166379%_
                               _%hd165722166382%_
                               _%tl165721166384%_
                               _%e165726166387%_
                               _%hd165725166390%_
                               _%tl165724166392%_
                               _%e165729166395%_
                               _%hd165728166398%_
                               _%tl165727166400%_
                               _%e165732166403%_
                               _%hd165731166406%_
                               _%tl165730166408%_
                               _%e165735166411%_
                               _%hd165734166414%_
                               _%tl165733166416%_
                               _%e165738166419%_
                               _%hd165737166422%_
                               _%tl165736166424%_
                               _%e165741166427%_
                               _%hd165740166430%_
                               _%tl165739166432%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd165740166430%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165739166432%_))
                                (let ((_%e165744166435%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165739166432%_))))
                                  (let ((_%tl165742166440%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165744166435%_)))
                                        (_%hd165743166438%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165744166435%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165742166440%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165736166424%_))
                                            (let ((_%e165747166443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165736166424%_))))
                                              (let ((_%tl165745166448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165747166443%_)))
                                                    (_%hd165746166446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165747166443%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd165746166446%_))
                                                    (let ((_%e165750166451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd165746166446%_))))
                                                      (let ((_%tl165748166456%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165750166451%_)))
                    (_%hd165749166454%_
                     (let () (declare (not safe)) (##car _%e165750166451%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd165749166454%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd165749166454%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165748166456%_))
                            (let ((_%e165753166459%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165748166456%_))))
                              (let ((_%tl165751166464%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165753166459%_)))
                                    (_%hd165752166462%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165753166459%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165751166464%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl165745166448%_))
                                        (let ((_%__splice171308171309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl165745166448%_
                                                  '0))))
                                          (let ((_%tl165756166469%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171308171309%_
                                                    '1)))
                                                (_%target165754166467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171308171309%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165756166469%_))
                                                (_%__match171515171516%_
                                                 _%e165717166363%_
                                                 _%hd165716166366%_
                                                 _%tl165715166368%_
                                                 _%e165720166371%_
                                                 _%hd165719166374%_
                                                 _%tl165718166376%_
                                                 _%e165723166379%_
                                                 _%hd165722166382%_
                                                 _%tl165721166384%_
                                                 _%e165726166387%_
                                                 _%hd165725166390%_
                                                 _%tl165724166392%_
                                                 _%e165729166395%_
                                                 _%hd165728166398%_
                                                 _%tl165727166400%_
                                                 _%e165732166403%_
                                                 _%hd165731166406%_
                                                 _%tl165730166408%_
                                                 _%e165735166411%_
                                                 _%hd165734166414%_
                                                 _%tl165733166416%_
                                                 _%e165738166419%_
                                                 _%hd165737166422%_
                                                 _%tl165736166424%_
                                                 _%e165741166427%_
                                                 _%hd165740166430%_
                                                 _%tl165739166432%_
                                                 _%e165744166435%_
                                                 _%hd165743166438%_
                                                 _%tl165742166440%_
                                                 _%e165747166443%_
                                                 _%hd165746166446%_
                                                 _%tl165745166448%_
                                                 _%e165750166451%_
                                                 _%hd165749166454%_
                                                 _%tl165748166456%_
                                                 _%e165753166459%_
                                                 _%hd165752166462%_
                                                 _%tl165751166464%_
                                                 _%__splice171308171309%_
                                                 _%target165754166467%_
                                                 _%tl165756166469%_)
                                                (_%__kont171318171319%_))))
                                        (_%__kont171318171319%_))
                                    (_%__kont171318171319%_))))
                            (_%__kont171318171319%_))
                        (_%__kont171318171319%_))
                    (_%__kont171318171319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171318171319%_))))
                                            (_%__match171797171798%_
                                             _%e165717166363%_
                                             _%hd165716166366%_
                                             _%tl165715166368%_
                                             _%e165720166371%_
                                             _%hd165719166374%_
                                             _%tl165718166376%_
                                             _%e165723166379%_
                                             _%hd165722166382%_
                                             _%tl165721166384%_
                                             _%e165726166387%_
                                             _%hd165725166390%_
                                             _%tl165724166392%_
                                             _%e165729166395%_
                                             _%hd165728166398%_
                                             _%tl165727166400%_
                                             _%e165732166403%_
                                             _%hd165731166406%_
                                             _%tl165730166408%_
                                             _%e165735166411%_
                                             _%hd165734166414%_
                                             _%tl165733166416%_
                                             _%e165738166419%_
                                             _%hd165737166422%_
                                             _%tl165736166424%_))
                                        (_%__match171797171798%_
                                         _%e165717166363%_
                                         _%hd165716166366%_
                                         _%tl165715166368%_
                                         _%e165720166371%_
                                         _%hd165719166374%_
                                         _%tl165718166376%_
                                         _%e165723166379%_
                                         _%hd165722166382%_
                                         _%tl165721166384%_
                                         _%e165726166387%_
                                         _%hd165725166390%_
                                         _%tl165724166392%_
                                         _%e165729166395%_
                                         _%hd165728166398%_
                                         _%tl165727166400%_
                                         _%e165732166403%_
                                         _%hd165731166406%_
                                         _%tl165730166408%_
                                         _%e165735166411%_
                                         _%hd165734166414%_
                                         _%tl165733166416%_
                                         _%e165738166419%_
                                         _%hd165737166422%_
                                         _%tl165736166424%_))))
                                (_%__match171797171798%_
                                 _%e165717166363%_
                                 _%hd165716166366%_
                                 _%tl165715166368%_
                                 _%e165720166371%_
                                 _%hd165719166374%_
                                 _%tl165718166376%_
                                 _%e165723166379%_
                                 _%hd165722166382%_
                                 _%tl165721166384%_
                                 _%e165726166387%_
                                 _%hd165725166390%_
                                 _%tl165724166392%_
                                 _%e165729166395%_
                                 _%hd165728166398%_
                                 _%tl165727166400%_
                                 _%e165732166403%_
                                 _%hd165731166406%_
                                 _%tl165730166408%_
                                 _%e165735166411%_
                                 _%hd165734166414%_
                                 _%tl165733166416%_
                                 _%e165738166419%_
                                 _%hd165737166422%_
                                 _%tl165736166424%_))
                            (_%__match171583171584%_
                             _%e165717166363%_
                             _%hd165716166366%_
                             _%tl165715166368%_
                             _%e165720166371%_
                             _%hd165719166374%_
                             _%tl165718166376%_
                             _%e165723166379%_
                             _%hd165722166382%_
                             _%tl165721166384%_
                             _%e165726166387%_
                             _%hd165725166390%_
                             _%tl165724166392%_
                             _%e165729166395%_
                             _%hd165728166398%_
                             _%tl165727166400%_
                             _%e165732166403%_
                             _%hd165731166406%_
                             _%tl165730166408%_
                             _%e165735166411%_
                             _%hd165734166414%_
                             _%tl165733166416%_
                             _%e165738166419%_
                             _%hd165737166422%_
                             _%tl165736166424%_
                             _%e165741166427%_
                             _%hd165740166430%_
                             _%tl165739166432%_))))
                     (_%__match171405171406%_
                      (lambda (_%e165673166555%_
                               _%hd165672166558%_
                               _%tl165671166560%_
                               _%e165676166563%_
                               _%hd165675166566%_
                               _%tl165674166568%_
                               _%e165679166571%_
                               _%hd165678166574%_
                               _%tl165677166576%_
                               _%e165682166579%_
                               _%hd165681166582%_
                               _%tl165680166584%_
                               _%e165685166587%_
                               _%hd165684166590%_
                               _%tl165683166592%_
                               _%e165688166595%_
                               _%hd165687166598%_
                               _%tl165686166600%_
                               _%e165691166603%_
                               _%hd165690166606%_
                               _%tl165689166608%_
                               _%e165694166611%_
                               _%hd165693166614%_
                               _%tl165692166616%_
                               _%e165697166619%_
                               _%hd165696166622%_
                               _%tl165695166624%_
                               _%e165700166627%_
                               _%hd165699166630%_
                               _%tl165698166632%_
                               _%__splice171304171305%_
                               _%target165701166635%_
                               _%tl165703166637%_)
                        (letrec ((_%loop165704166640%_
                                  (lambda (_%hd165702166643%_
                                           _%args165708166645%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165702166643%_))
                                        (let ((_%e165705166648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165702166643%_))))
                                          (let ((_%lp-tl165707166653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165705166648%_)))
                                                (_%lp-hd165706166651%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165705166648%_))))
                                            (let ((__tmp171969
                                                   (cons _%lp-hd165706166651%_
                                                         _%args165708166645%_)))
                                              (declare (not safe))
                                              (_%loop165704166640%_
                                               _%lp-tl165707166653%_
                                               __tmp171969))))
                                        (let ((_%args165709166656%_
                                               (reverse _%args165708166645%_)))
                                          (let ((_%L166659%_
                                                 _%args165709166656%_)
                                                (_%L166660%_
                                                 _%hd165699166630%_)
                                                (_%L166661%_
                                                 _%hd165690166606%_)
                                                (_%L166662%_
                                                 _%hd165681166582%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166662%_
                                                        'call-method))
                                                     (let ((__tmp171970
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165654%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166661%_
                                                        __tmp171970)))
                                                (_%__kont171302171303%_
                                                 _%L166659%_
                                                 _%L166660%_
                                                 _%L166661%_
                                                 _%L166662%_)
                                                (_%__match171593171594%_
                                                 _%e165673166555%_
                                                 _%hd165672166558%_
                                                 _%tl165671166560%_
                                                 _%e165676166563%_
                                                 _%hd165675166566%_
                                                 _%tl165674166568%_
                                                 _%e165679166571%_
                                                 _%hd165678166574%_
                                                 _%tl165677166576%_
                                                 _%e165682166579%_
                                                 _%hd165681166582%_
                                                 _%tl165680166584%_
                                                 _%e165685166587%_
                                                 _%hd165684166590%_
                                                 _%tl165683166592%_
                                                 _%e165688166595%_
                                                 _%hd165687166598%_
                                                 _%tl165686166600%_
                                                 _%e165691166603%_
                                                 _%hd165690166606%_
                                                 _%tl165689166608%_
                                                 _%e165694166611%_
                                                 _%hd165693166614%_
                                                 _%tl165692166616%_
                                                 _%e165697166619%_
                                                 _%hd165696166622%_
                                                 _%tl165695166624%_
                                                 _%e165700166627%_
                                                 _%hd165699166630%_
                                                 _%tl165698166632%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop165704166640%_
                             _%target165701166635%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171300171301%_))
                    (let ((_%e165673166555%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171300171301%_))))
                      (let ((_%tl165671166560%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165673166555%_)))
                            (_%hd165672166558%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165673166555%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165671166560%_))
                            (let ((_%e165676166563%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165671166560%_))))
                              (let ((_%tl165674166568%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165676166563%_)))
                                    (_%hd165675166566%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165676166563%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd165675166566%_))
                                    (let ((_%e165679166571%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd165675166566%_))))
                                      (let ((_%tl165677166576%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e165679166571%_)))
                                            (_%hd165678166574%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e165679166571%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd165678166574%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd165678166574%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl165677166576%_))
                                                    (let ((_%e165682166579%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl165677166576%_))))
                                                      (let ((_%tl165680166584%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165682166579%_)))
                    (_%hd165681166582%_
                     (let () (declare (not safe)) (##car _%e165682166579%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl165680166584%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl165674166568%_))
                        (let ((_%e165685166587%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl165674166568%_))))
                          (let ((_%tl165683166592%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165685166587%_)))
                                (_%hd165684166590%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165685166587%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd165684166590%_))
                                (let ((_%e165688166595%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd165684166590%_))))
                                  (let ((_%tl165686166600%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165688166595%_)))
                                        (_%hd165687166598%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165688166595%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd165687166598%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd165687166598%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165686166600%_))
                                                (let ((_%e165691166603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165686166600%_))))
                                                  (let ((_%tl165689166608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165691166603%_)))
                                                        (_%hd165690166606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165691166603%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165689166608%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl165683166592%_))
                                                            (let ((_%e165694166611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165683166592%_))))
                      (let ((_%tl165692166616%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165694166611%_)))
                            (_%hd165693166614%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165694166611%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd165693166614%_))
                            (let ((_%e165697166619%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd165693166614%_))))
                              (let ((_%tl165695166624%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165697166619%_)))
                                    (_%hd165696166622%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165697166619%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd165696166622%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd165696166622%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165695166624%_))
                                            (let ((_%e165700166627%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165695166624%_))))
                                              (let ((_%tl165698166632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165700166627%_)))
                                                    (_%hd165699166630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165700166627%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl165698166632%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl165692166616%_))
                                                        (let ((_%__splice171304171305%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl165692166616%_ '0))))
                  (let ((_%tl165703166637%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171304171305%_ '1)))
                        (_%target165701166635%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171304171305%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl165703166637%_))
                        (_%__match171405171406%_
                         _%e165673166555%_
                         _%hd165672166558%_
                         _%tl165671166560%_
                         _%e165676166563%_
                         _%hd165675166566%_
                         _%tl165674166568%_
                         _%e165679166571%_
                         _%hd165678166574%_
                         _%tl165677166576%_
                         _%e165682166579%_
                         _%hd165681166582%_
                         _%tl165680166584%_
                         _%e165685166587%_
                         _%hd165684166590%_
                         _%tl165683166592%_
                         _%e165688166595%_
                         _%hd165687166598%_
                         _%tl165686166600%_
                         _%e165691166603%_
                         _%hd165690166606%_
                         _%tl165689166608%_
                         _%e165694166611%_
                         _%hd165693166614%_
                         _%tl165692166616%_
                         _%e165697166619%_
                         _%hd165696166622%_
                         _%tl165695166624%_
                         _%e165700166627%_
                         _%hd165699166630%_
                         _%tl165698166632%_
                         _%__splice171304171305%_
                         _%target165701166635%_
                         _%tl165703166637%_)
                        (_%__match171593171594%_
                         _%e165673166555%_
                         _%hd165672166558%_
                         _%tl165671166560%_
                         _%e165676166563%_
                         _%hd165675166566%_
                         _%tl165674166568%_
                         _%e165679166571%_
                         _%hd165678166574%_
                         _%tl165677166576%_
                         _%e165682166579%_
                         _%hd165681166582%_
                         _%tl165680166584%_
                         _%e165685166587%_
                         _%hd165684166590%_
                         _%tl165683166592%_
                         _%e165688166595%_
                         _%hd165687166598%_
                         _%tl165686166600%_
                         _%e165691166603%_
                         _%hd165690166606%_
                         _%tl165689166608%_
                         _%e165694166611%_
                         _%hd165693166614%_
                         _%tl165692166616%_
                         _%e165697166619%_
                         _%hd165696166622%_
                         _%tl165695166624%_
                         _%e165700166627%_
                         _%hd165699166630%_
                         _%tl165698166632%_))))
                (_%__match171593171594%_
                 _%e165673166555%_
                 _%hd165672166558%_
                 _%tl165671166560%_
                 _%e165676166563%_
                 _%hd165675166566%_
                 _%tl165674166568%_
                 _%e165679166571%_
                 _%hd165678166574%_
                 _%tl165677166576%_
                 _%e165682166579%_
                 _%hd165681166582%_
                 _%tl165680166584%_
                 _%e165685166587%_
                 _%hd165684166590%_
                 _%tl165683166592%_
                 _%e165688166595%_
                 _%hd165687166598%_
                 _%tl165686166600%_
                 _%e165691166603%_
                 _%hd165690166606%_
                 _%tl165689166608%_
                 _%e165694166611%_
                 _%hd165693166614%_
                 _%tl165692166616%_
                 _%e165697166619%_
                 _%hd165696166622%_
                 _%tl165695166624%_
                 _%e165700166627%_
                 _%hd165699166630%_
                 _%tl165698166632%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171797171798%_
                                                     _%e165673166555%_
                                                     _%hd165672166558%_
                                                     _%tl165671166560%_
                                                     _%e165676166563%_
                                                     _%hd165675166566%_
                                                     _%tl165674166568%_
                                                     _%e165679166571%_
                                                     _%hd165678166574%_
                                                     _%tl165677166576%_
                                                     _%e165682166579%_
                                                     _%hd165681166582%_
                                                     _%tl165680166584%_
                                                     _%e165685166587%_
                                                     _%hd165684166590%_
                                                     _%tl165683166592%_
                                                     _%e165688166595%_
                                                     _%hd165687166598%_
                                                     _%tl165686166600%_
                                                     _%e165691166603%_
                                                     _%hd165690166606%_
                                                     _%tl165689166608%_
                                                     _%e165694166611%_
                                                     _%hd165693166614%_
                                                     _%tl165692166616%_))))
                                            (_%__match171797171798%_
                                             _%e165673166555%_
                                             _%hd165672166558%_
                                             _%tl165671166560%_
                                             _%e165676166563%_
                                             _%hd165675166566%_
                                             _%tl165674166568%_
                                             _%e165679166571%_
                                             _%hd165678166574%_
                                             _%tl165677166576%_
                                             _%e165682166579%_
                                             _%hd165681166582%_
                                             _%tl165680166584%_
                                             _%e165685166587%_
                                             _%hd165684166590%_
                                             _%tl165683166592%_
                                             _%e165688166595%_
                                             _%hd165687166598%_
                                             _%tl165686166600%_
                                             _%e165691166603%_
                                             _%hd165690166606%_
                                             _%tl165689166608%_
                                             _%e165694166611%_
                                             _%hd165693166614%_
                                             _%tl165692166616%_))
                                        (_%__match171473171474%_
                                         _%e165673166555%_
                                         _%hd165672166558%_
                                         _%tl165671166560%_
                                         _%e165676166563%_
                                         _%hd165675166566%_
                                         _%tl165674166568%_
                                         _%e165679166571%_
                                         _%hd165678166574%_
                                         _%tl165677166576%_
                                         _%e165682166579%_
                                         _%hd165681166582%_
                                         _%tl165680166584%_
                                         _%e165685166587%_
                                         _%hd165684166590%_
                                         _%tl165683166592%_
                                         _%e165688166595%_
                                         _%hd165687166598%_
                                         _%tl165686166600%_
                                         _%e165691166603%_
                                         _%hd165690166606%_
                                         _%tl165689166608%_
                                         _%e165694166611%_
                                         _%hd165693166614%_
                                         _%tl165692166616%_
                                         _%e165697166619%_
                                         _%hd165696166622%_
                                         _%tl165695166624%_))
                                    (_%__match171797171798%_
                                     _%e165673166555%_
                                     _%hd165672166558%_
                                     _%tl165671166560%_
                                     _%e165676166563%_
                                     _%hd165675166566%_
                                     _%tl165674166568%_
                                     _%e165679166571%_
                                     _%hd165678166574%_
                                     _%tl165677166576%_
                                     _%e165682166579%_
                                     _%hd165681166582%_
                                     _%tl165680166584%_
                                     _%e165685166587%_
                                     _%hd165684166590%_
                                     _%tl165683166592%_
                                     _%e165688166595%_
                                     _%hd165687166598%_
                                     _%tl165686166600%_
                                     _%e165691166603%_
                                     _%hd165690166606%_
                                     _%tl165689166608%_
                                     _%e165694166611%_
                                     _%hd165693166614%_
                                     _%tl165692166616%_))))
                            (_%__match171797171798%_
                             _%e165673166555%_
                             _%hd165672166558%_
                             _%tl165671166560%_
                             _%e165676166563%_
                             _%hd165675166566%_
                             _%tl165674166568%_
                             _%e165679166571%_
                             _%hd165678166574%_
                             _%tl165677166576%_
                             _%e165682166579%_
                             _%hd165681166582%_
                             _%tl165680166584%_
                             _%e165685166587%_
                             _%hd165684166590%_
                             _%tl165683166592%_
                             _%e165688166595%_
                             _%hd165687166598%_
                             _%tl165686166600%_
                             _%e165691166603%_
                             _%hd165690166606%_
                             _%tl165689166608%_
                             _%e165694166611%_
                             _%hd165693166614%_
                             _%tl165692166616%_))))
                    (_%__match171735171736%_
                     _%e165673166555%_
                     _%hd165672166558%_
                     _%tl165671166560%_
                     _%e165676166563%_
                     _%hd165675166566%_
                     _%tl165674166568%_
                     _%e165679166571%_
                     _%hd165678166574%_
                     _%tl165677166576%_
                     _%e165682166579%_
                     _%hd165681166582%_
                     _%tl165680166584%_
                     _%e165685166587%_
                     _%hd165684166590%_
                     _%tl165683166592%_
                     _%e165688166595%_
                     _%hd165687166598%_
                     _%tl165686166600%_
                     _%e165691166603%_
                     _%hd165690166606%_
                     _%tl165689166608%_))
                (_%__kont171318171319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171318171319%_))
                                            (_%__kont171318171319%_))
                                        (_%__kont171318171319%_))))
                                (_%__kont171318171319%_))))
                        (_%__kont171318171319%_))
                    (_%__kont171318171319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171318171319%_))
                                                (_%__kont171318171319%_))
                                            (_%__kont171318171319%_))))
                                    (_%__kont171318171319%_))))
                            (_%__kont171318171319%_))))
                    (_%__kont171318171319%_))))))))))
